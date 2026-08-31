#!/usr/bin/env python3
"""Generate EG411Formal/OmegaTree5.lean from omega5_tree.json.

Emits the certified kill-tree as a Lean proof, using the parametric lemmas in
EG411Formal/OmegaTreeSupport.lean (cap_kill_3/4/5, dead_kill_2, terminal_bound,
terminal_formula, terminal_low_kill, phi_prod_5).
"""
import json
import os

HERE = os.path.dirname(os.path.abspath(__file__))
TREE = json.load(open(os.path.join(HERE, "omega5_tree.json")))["tree"]
OUT = os.path.join(HERE, "..", "EG411Formal", "OmegaTree5.lean")

VARS = ["p", "q", "r", "s", "t"]
HPRIME = {"p": "hp", "q": "hq", "r": "hr", "s": "hs", "t": "ht"}
HLT = ["h1", "h2", "h3", "h4"]  # h1 : p < q, ..., h4 : s < t
HDVD = {"p": "hd1", "q": "hd2", "r": "hd3", "s": "hd4", "t": "hd5"}


def prod_nested(terms):
    """Right-nested product string."""
    if len(terms) == 1:
        return terms[0]
    rest = prod_nested(terms[1:])
    if len(terms) == 2:
        return f"{terms[0]} * {rest}"
    return f"{terms[0]} * ({rest})"


def heq_sides(A, B, depth):
    """LHS/RHS of the node equation for remaining vars VARS[depth:]."""
    vs = VARS[depth:]
    lhs = prod_nested([f"({v} - 1)" for v in vs])
    rhs = prod_nested(vs)
    return f"{A} * ({lhs})", f"{B} * ({rhs}) + 2"


def filter_pred(prefix, A=None, B=None, sep=" ∧ "):
    """Filter predicate conjuncts (as a string after 'fun v => ')."""
    conj = ["Nat.Prime v"]
    for pr in prefix:
        conj.append(f"¬ {pr} ∣ (v - 1)")
    if A is not None:
        D = f"(({A} - {B}) * v - {A})"
        M = f"({A} * v - {A} + 2)"
        conj.append(f"{D} ∣ {M}")
        conj.append(f"Nat.Prime ({M} / {D})")
        conj.append(f"v < {M} / {D}")
    return sep.join(conj)


L = []  # output lines


def emit(s=""):
    L.append(s)


def emit_chain_conditions(ind, depth, prefix):
    """Chain conditions for variable VARS[depth] against all primes in prefix."""
    v = VARS[depth]
    names = []
    for i, pr in enumerate(prefix):
        nm = f"hch{depth}_{pr}"
        names.append(nm)
        emit(f"{ind}have {nm} : ¬ ({pr}:ℕ) ∣ ({v} - 1) :=")
        emit(f"{ind}  hchain {pr} {v} (by norm_num) {HPRIME[v]} hd{i + 1} {HDVD[v]}")
    return names


def emit_branch_body(node, depth, ind):
    """Body of a branch node: cap, chain conditions, membership, set, fin_cases."""
    A, B, j, cap = node["A"], node["B"], node["j"], node["cap"]
    v = VARS[depth]
    lo = node["P"][-1] if node["P"] else 4
    children = node.get("children", [])

    # cap kill
    les = " ".join(f"{HLT[k]}.le" for k in range(depth, 4))
    emit(f"{ind}have hcap{depth} : {v} < {cap} := by")
    emit(f"{ind}  by_contra hge")
    emit(f"{ind}  exact cap_kill_{j} (c := {cap}) (by norm_num) (by norm_num) (by omega)")
    emit(f"{ind}    {les} heq{depth}")
    # chain conditions
    names = emit_chain_conditions(ind, depth, node["P"])
    # membership
    pred = filter_pred(node["P"])
    fset = f"(Finset.Ioo {lo} {cap}).filter\n{ind}    (fun v => {pred})"
    mems = ", ".join([HPRIME[v]] + names)
    emit(f"{ind}have hmem{depth} : {v} ∈ {fset} :=")
    emit(f"{ind}  Finset.mem_filter.mpr ⟨Finset.mem_Ioo.mpr ⟨by omega, hcap{depth}⟩, {mems}⟩")
    branches = [c["P"][-1] for c in children]
    if branches:
        emit(f"{ind}have hset{depth} : {fset}")
        if len(branches) > 8:
            lit1 = ", ".join(str(b) for b in branches[:8])
            lit2 = ", ".join(str(b) for b in branches[8:])
            emit(f"{ind}    = ({{{lit1},")
            emit(f"{ind}        {lit2}}} : Finset ℕ) := by native_decide")
        else:
            lit = "{" + ", ".join(str(b) for b in branches) + "}"
            emit(f"{ind}    = ({lit} : Finset ℕ) := by native_decide")
        emit(f"{ind}rw [hset{depth}] at hmem{depth}")
        emit(f"{ind}fin_cases hmem{depth}")
        for c in children:
            emit(f"{ind}· -- {VARS[depth]} = {c['P'][-1]}")
            emit_child(c, depth + 1, ind + "  ")
    else:
        emit(f"{ind}have hset{depth} : {fset}")
        emit(f"{ind}    = (∅ : Finset ℕ) := by native_decide")
        emit(f"{ind}rw [hset{depth}] at hmem{depth}")
        emit(f"{ind}simp at hmem{depth}")


def emit_child(node, depth, ind):
    """Code inside a fin_cases bullet: fold constant, then kill/recurse.
    depth = number of fixed primes = index of current variable."""
    A, B = node["A"], node["B"]
    # fold the just-substituted prime into the constants
    lhs, rhs = heq_sides(A, B, depth)
    emit(f"{ind}have heq{depth} : {lhs}")
    emit(f"{ind}    = {rhs} := by")
    emit(f"{ind}  ring_nf at heq{depth - 1} ⊢")
    emit(f"{ind}  omega")
    kill = node["kill"]
    if kill == "branch":
        emit_branch_body(node, depth, ind)
    elif kill == "dead_AleB":
        emit(f"{ind}exact dead_kill_2 (by norm_num) heq{depth}")
    elif kill == "terminal":
        emit_terminal(node, depth, ind)
    else:
        raise ValueError(kill)


def emit_terminal(node, depth, ind):
    """Terminal node: depth == 3, two variables s < t remain."""
    assert depth == 3
    A, B, s_hi = node["A"], node["B"], node["s_hi"]
    prefix = node["P"]
    lo = prefix[-1]
    emit(f"{ind}have hs2 : 2 ≤ s := by omega")
    emit(f"{ind}have hbnd := terminal_bound (by norm_num) heq3 h4 hs2")
    emit(f"{ind}have hshi : s ≤ {s_hi} := by nlinarith [hbnd]")
    emit(f"{ind}by_cases hden : {A} < ({A} - {B}) * s")
    emit(f"{ind}· obtain ⟨hdvd, htval⟩ := terminal_formula (by norm_num) heq3 h4 hs2 hden")
    ind2 = ind + "  "
    names = emit_chain_conditions(ind2, 3, prefix)
    pred = filter_pred(prefix, A, B, sep=f" ∧\n{ind2}      ")
    fset = f"(Finset.Ioc {lo} {s_hi}).filter (fun v =>\n{ind2}      {pred})"
    mems = ", ".join(["hs"] + names + ["hdvd"])
    emit(f"{ind2}have hmem3 : s ∈ {fset} :=")
    emit(f"{ind2}  Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨by omega, hshi⟩,")
    emit(f"{ind2}    {mems},")
    emit(f"{ind2}    by rw [htval]; exact ht, by rw [htval]; exact h4⟩")
    emit(f"{ind2}have hempty : {fset}")
    emit(f"{ind2}    = ∅ := by native_decide")
    emit(f"{ind2}rw [hempty] at hmem3")
    emit(f"{ind2}simp at hmem3")
    emit(f"{ind}· exact terminal_low_kill (by norm_num) heq3 h4 hs2 (by omega)")


# ---------------- file ----------------
emit("-- AUTO-GENERATED by scripts/gen_omega_tree5.py from scripts/omega5_tree.json.")
emit("-- Regenerate instead of hand-editing.")
emit("import EG411Formal.SolutionStructure")
emit("import EG411Formal.OmegaTreeSupport")
emit()
emit("/-!")
emit("# EG#411 (r=2): no solution with five distinct prime factors")
emit()
emit("For `n` satisfying `3·φ(n) = 2n + 2`, there is **no** solution that is a product of")
emit("five distinct primes (`omega5_empty`).  This extends the ω-ladder of")
emit("`OmegaLadder.lean` (ω = 3 → 1295, ω = 4 → 1679615) one rung higher: at ω = 5 the")
emit("ladder terminates with the empty set.")
emit()
emit("The proof mirrors a machine-enumerated kill-tree (`scripts/omega5_tree.json`,")
emit("enumerator `scripts/omega_tree_enumerator.py`).  Writing the equation in product")
emit("form `A·∏(pᵢ−1) = B·∏pᵢ + 2` with the already-fixed prefix folded into")
emit("`A = 3·∏(p−1)`, `B = 2·∏p`, each tree node is killed by one of:")
emit()
emit("* **cap** — `B·cʲ + 2 < A·(c−1)ʲ` forces the next prime below `c`")
emit("  (`cap_kill_3/4/5`), and the surviving primes in the window are exactly the")
emit("  listed branches (a `native_decide` filter computation, using the chain")
emit("  conditions `¬ p ∣ (x−1)` from `solution_no_prime_chain`);")
emit("* **dead** — `A ≤ B` is outright impossible (`dead_kill_2`);")
emit("* **terminal** — two primes `s < t` remain; `t` is pinned to the exact quotient")
emit("  `(As−A+2)/((A−B)s−A)` (`terminal_formula`), `s` is bounded by a quadratic")
emit("  (`terminal_bound`), and one `native_decide` scan certifies the window is empty.")
emit("-/")
emit()
emit("namespace EG411Structure")
emit()
emit("set_option linter.style.nativeDecide false")
emit()
emit("set_option maxHeartbeats 1600000 in")
emit("-- 36 case branches with a `ring_nf` constant-fold at every node and 22 terminal")
emit("-- `native_decide` scans exceed the default budget.")
emit("/-- The equation `3·φ(n) = 2n + 2` has no solution with exactly five distinct")
emit("prime factors. -/")
emit("theorem omega5_empty {n : ℕ} (hn : 3 * Nat.totient n = 2 * n + 2)")
emit("    (p q r s t : ℕ) (hp : p.Prime) (hq : q.Prime) (hr : r.Prime) (hs : s.Prime)")
emit("    (ht : t.Prime) (h1 : p < q) (h2 : q < r) (h3 : r < s) (h4 : s < t)")
emit("    (hN : n = p * q * r * s * t) : False := by")
emit("  have hN' : n = p * (q * (r * (s * t))) := by rw [hN]; ring")
emit("  have hd1 : p ∣ n := ⟨q * (r * (s * t)), hN'⟩")
emit("  have hd2 : q ∣ n := ⟨p * (r * (s * t)), by rw [hN']; ring⟩")
emit("  have hd3 : r ∣ n := ⟨p * (q * (s * t)), by rw [hN']; ring⟩")
emit("  have hd4 : s ∣ n := ⟨p * (q * (r * t)), by rw [hN']; ring⟩")
emit("  have hp5 : 5 ≤ p := solution_min_prime_ge_five hn p hp hd1")
emit("  have hchain := solution_no_prime_chain hn")
_lhs0, _rhs0 = heq_sides(3, 2, 0)
emit(f"  have heq0 : {_lhs0}")
emit(f"      = {_rhs0} := by")
emit("    have h := hn")
emit("    rw [hN', phi_prod_5 hp hq hr hs ht h1 h2 h3 h4] at h")
emit("    exact h")

emit_branch_body(TREE, 0, "  ")

emit()
emit("end EG411Structure")

open(OUT, "w", encoding="utf-8", newline="\n").write("\n".join(L) + "\n")
print(f"wrote {os.path.normpath(OUT)} ({len(L)} lines)")
