"""
Forge: certified omega-tree JSON -> generated Lean 4 proof file.

Emits EG411Formal/OmegaTree<W>.lean proving omega<W>_empty: no solution of
3*phi(n) = 2n+2 has exactly W distinct prime factors (W >= 5).

2026-07-25 REWRITE. The previous version emitted a SKETCH, not compilable Lean:
  * it called `solution_squarefree n hn` / `solution_min_prime_ge_five n hn ...`
    but `n` is IMPLICIT in both (signature is `{n} (hn)`);
  * it emitted `phi_prod_distinct_<W> p1 ... (by assumption) ·` — invalid syntax,
    and no such lemma exists (the real one is `phi_prod_<W>`, taking primality +
    strict-order args);
  * it wrapped `cap_kill_<j>` in `absurd heq (Nat.ne_of_gt ...)` as though it
    returned an inequality — it returns `False` directly and TAKES `heq`;
  * it REFERENCED chain hypotheses `hch_<depth>_<p>` at every branch and terminal
    but never EMITTED them (they existed only in a comment "agent: materialize").
Everything below now mirrors the hand-verified `OmegaTree5.lean` exactly.

Relies on support lemmas in EG411Formal/OmegaTreeSupport.lean:
  phi_prod_<k>       : totient of a product of k distinct primes = prod (p_i - 1)
                       args: (hp_1..hp_k) (h_lt_1..h_lt_{k-1})
  cap_kill_<j>       : (hc : 1 <= c) (hnum : B*c^j + 2 < A*(c-1)^j)
                       (h1 : c <= x1) (h12 : x1 <= x2) ... (heq) -> False
  dead_kill_2        : (hAB : A <= B) (heq) -> False
  terminal_bound     : (hBA : B < A) (heq) (hst : s < t) (hs2 : 2 <= s) ->
                       A*s^2 + A < B*s^2 + 2*A*s + 2
  terminal_formula   : ... (hden : A < (A-B)*s) ->
                       ((A-B)*s - A) dvd (A*s - A + 2) /\ (A*s-A+2)/((A-B)*s-A) = t
  terminal_low_kill  : ... (hlow : (A-B)*s <= A) -> False
and on SolutionStructure.lean:
  solution_min_prime_ge_five {n} (hn) : forall q, q.Prime -> q dvd n -> 5 <= q
  solution_no_prime_chain    {n} (hn) : forall r s, r.Prime -> s.Prime ->
                                        r dvd n -> s dvd n -> not (r dvd (s-1))

Per branch node: branch set = (Finset.Ioo mx cap).filter (prime + chain) computed by
one native_decide into a literal set, then fin_cases.
Per terminal node: one native_decide showing the s-filter (prime + chain + dvd +
t-prime + t>s) over the bounded range is empty; membership from terminal_formula
yields the contradiction.
"""
import json, sys

W   = int(sys.argv[1]) if len(sys.argv) > 1 else 5
SRC = sys.argv[2] if len(sys.argv) > 2 else f"omega{W}_tree.json"
DST = sys.argv[3] if len(sys.argv) > 3 else f"../EG411Formal/OmegaTree{W}.lean"

tree = json.load(open(SRC))["tree"]
L = []  # emitted lines

VARS = ["p1", "p2", "p3", "p4", "p5", "p6", "p7", "p8"][:W]


def prod_expr(vs):
    if len(vs) == 1:
        return vs[0]
    return f"{vs[0]} * ({prod_expr(vs[1:])})"


def prodm1_expr(vs):
    if len(vs) == 1:
        return f"({vs[0]} - 1)"
    return f"({vs[0]} - 1) * ({prodm1_expr(vs[1:])})"


def emit_chain_haves(P, depth, pad):
    """Materialize `hch_<depth>_<p> : ¬ p ∣ (x - 1)` for every concrete prefix prime.

    `P[i]` is the concrete value substituted for variable index `i`, so its
    divisibility witness is `hd{i+1}`.  The current variable is `VARS[depth]`
    with primality `hp_{depth}` and divisibility `hd{depth+1}`.
    """
    x = VARS[depth]
    for i, p in enumerate(P):
        L.append(
            f"{pad}have hch_{depth}_{p} : ¬ ({p} : ℕ) ∣ ({x} - 1) := "
            f"hchain {p} {x} (by norm_num) hp_{depth} hd{i + 1} hd{depth + 1}"
        )


def emit_node(node, depth, ind):
    """Emit proof text for the node.  Context available at this point:
       - prefix primes are CONCRETE numerals (substituted by fin_cases above)
       - remaining variables vs = VARS[depth:], sorted, all prime, all > max(P)
       - heq : A * prodm1(vs) = B * prod(vs) + 2   (with concrete A B)
       - hd<i> : VARS[i-1] ∣ n  for every i
       - hchain : the no-prime-chain family
       - h_lt_<i> : VARS[i] < VARS[i+1]
    """
    A, B, j, P = node["A"], node["B"], node["j"], node["P"]
    vs = VARS[depth:]
    pad = " " * ind

    if node["kill"] == "dead_AleB":
        L.append(f"{pad}-- dead node P={P} A={A} <= B={B}")
        L.append(f"{pad}exact dead_kill_{j} (by norm_num) heq")
        return

    if node["kill"] == "terminal":
        s, t = vs[0], vs[1]
        mx = P[-1] if P else 4
        K = node["K"]
        s_hi = node["s_hi"]
        L.append(f"{pad}-- terminal P={P} A={A} B={B} K={K} scan<= {s_hi}")
        emit_chain_haves(P, depth, pad)
        L.append(f"{pad}have hs2 : 2 ≤ {s} := by omega")
        L.append(
            f"{pad}have hbnd := terminal_bound (by norm_num : ({B}:ℕ) < {A}) heq "
            f"h_lt_{depth} hs2"
        )
        L.append(f"{pad}have hshi : {s} ≤ {s_hi} := by nlinarith [hbnd]")
        chain_pred = "".join(f" ∧ ¬ ({p} : ℕ) ∣ (v - 1)" for p in P)
        L.append(f"{pad}by_cases hden : {A} < ({A} - {B}) * {s}")
        L.append(
            f"{pad}· obtain ⟨hdvd, htval⟩ := terminal_formula "
            f"(by norm_num : ({B}:ℕ) < {A}) heq h_lt_{depth} hs2 hden"
        )
        L.append(f"{pad}  have hmem : {s} ∈ (Finset.Ioc {mx} {s_hi}).filter")
        L.append(
            f"{pad}      (fun v => v.Prime{chain_pred} ∧ (({A} - {B}) * v - {A}) ∣ "
            f"({A} * v - {A} + 2)"
        )
        L.append(
            f"{pad}        ∧ Nat.Prime (({A} * v - {A} + 2) / (({A} - {B}) * v - {A}))"
        )
        L.append(
            f"{pad}        ∧ v < ({A} * v - {A} + 2) / (({A} - {B}) * v - {A})) := by"
        )
        chrefs = "".join(f"hch_{depth}_{p}, " for p in P)
        L.append(
            f"{pad}    refine Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨by omega, hshi⟩, "
            f"hp_{depth}, {chrefs}hdvd, ?_, ?_⟩"
        )
        L.append(f"{pad}    · rw [htval]; exact hp_{depth + 1}")
        L.append(f"{pad}    · rw [htval]; exact h_lt_{depth}")
        L.append(f"{pad}  have hempty : (Finset.Ioc {mx} {s_hi}).filter")
        L.append(
            f"{pad}      (fun v => v.Prime{chain_pred} ∧ (({A} - {B}) * v - {A}) ∣ "
            f"({A} * v - {A} + 2)"
        )
        L.append(
            f"{pad}        ∧ Nat.Prime (({A} * v - {A} + 2) / (({A} - {B}) * v - {A}))"
        )
        L.append(
            f"{pad}        ∧ v < ({A} * v - {A} + 2) / (({A} - {B}) * v - {A})) "
            f"= ∅ := by native_decide"
        )
        L.append(f"{pad}  rw [hempty] at hmem; exact absurd hmem (Finset.not_mem_empty _)")
        L.append(
            f"{pad}· exact terminal_low_kill (by norm_num : ({B}:ℕ) < {A}) heq "
            f"h_lt_{depth} hs2 (by omega)"
        )
        return

    # ---- branch node ----
    x = vs[0]
    mx = P[-1] if P else 4
    cap = node["cap"]
    kids = list(node["children"])
    branch_vals = [c["P"][-1] for c in kids]
    chain_pred = "".join(f" ∧ ¬ ({p} : ℕ) ∣ (v - 1)" for p in P)
    set_lit = "{" + ", ".join(map(str, branch_vals)) + "}" if branch_vals else "∅"
    L.append(f"{pad}-- branch P={P} A={A} B={B} j={j} cap={cap} -> {branch_vals}")
    emit_chain_haves(P, depth, pad)
    # cap_kill_<j> consumes heq and yields False directly.
    ords = " ".join(f"h_lt_{depth + i}.le" for i in range(j - 1))
    L.append(f"{pad}have hcap : {x} < {cap} := by")
    L.append(f"{pad}  by_contra hge")
    L.append(f"{pad}  push_neg at hge")
    L.append(
        f"{pad}  exact cap_kill_{j} (c := {cap}) (by norm_num) (by norm_num) hge "
        f"{ords} heq".rstrip()
    )
    chrefs = "".join(f", hch_{depth}_{p}" for p in P)
    L.append(
        f"{pad}have hmem : {x} ∈ (Finset.Ioo {mx} {cap}).filter "
        f"(fun v => v.Prime{chain_pred}) :="
    )
    L.append(
        f"{pad}  Finset.mem_filter.mpr ⟨Finset.mem_Ioo.mpr ⟨by omega, hcap⟩, "
        f"hp_{depth}{chrefs}⟩"
    )
    L.append(
        f"{pad}have hset : (Finset.Ioo {mx} {cap}).filter (fun v => v.Prime{chain_pred}) "
        f"= ({set_lit} : Finset ℕ) := by native_decide"
    )
    L.append(f"{pad}rw [hset] at hmem")
    L.append(f"{pad}fin_cases hmem")
    for c in kids:
        v = c["P"][-1]
        A2, B2 = c["A"], c["B"]
        rest = vs[1:]
        L.append(f"{pad}· -- {x} = {v}")
        L.append(
            f"{pad}  have heq : {A2} * ({prodm1_expr(rest)}) "
            f"= {B2} * ({prod_expr(rest)}) + 2 := by"
        )
        L.append(f"{pad}    ring_nf at heq ⊢")
        L.append(f"{pad}    omega")
        emit_node(c, depth + 1, ind + 2)


# ---- header ----
H = []
H.append(
    "-- AUTO-GENERATED by scripts/omega_tree_to_lean.py — do not hand-edit "
    "(regenerate instead)."
)
H.append(
    f"-- Certified kill-tree for omega = {W}: 3·φ(n) = 2n+2 has NO solution with "
    f"{W} distinct prime factors."
)
H.append("import EG411Formal.SolutionStructure")
H.append("import EG411Formal.OmegaTreeSupport")
H.append("")
H.append("namespace EG411Structure")
H.append("")
H.append("set_option linter.style.nativeDecide false")
H.append("")
H.append("set_option maxHeartbeats 0 in")
hyp_primes = " ".join(f"(hp_{i} : Nat.Prime {VARS[i]})" for i in range(W))
hyp_order = " ".join(
    f"(h_lt_{i} : {VARS[i]} < {VARS[i + 1]})" for i in range(W - 1)
)
H.append(
    f"/-- The equation `3·φ(n) = 2n + 2` has no solution with exactly {W} distinct\n"
    f"prime factors. -/"
)
H.append(f"theorem omega{W}_empty {{n : ℕ}} (hn : 3 * Nat.totient n = 2 * n + 2)")
H.append(f"    ({' '.join(VARS)} : ℕ) {hyp_primes}")
H.append(f"    {hyp_order}")
H.append(f"    (hN : n = {prod_expr(VARS)}) : False := by")
# divisibility witnesses, one per variable
for i, v in enumerate(VARS):
    others = [u for u in VARS if u != v]
    H.append(
        f"  have hd{i + 1} : {v} ∣ n := ⟨{prod_expr(others)}, by rw [hN]; ring⟩"
    )
H.append("  have hchain := solution_no_prime_chain hn")
H.append(f"  have h_gt0 : 4 < {VARS[0]} := by")
H.append(
    f"    have := solution_min_prime_ge_five hn {VARS[0]} hp_0 hd1"
)
H.append("    omega")
phi_args = " ".join(f"hp_{i}" for i in range(W)) + " " + " ".join(
    f"h_lt_{i}" for i in range(W - 1)
)
H.append(
    f"  have heq : 3 * ({prodm1_expr(VARS)}) = 2 * ({prod_expr(VARS)}) + 2 := by"
)
H.append("    have h := hn")
H.append(f"    rw [hN, phi_prod_{W} {phi_args}] at h")
H.append("    exact h")
H.append("")

emit_node(tree, 0, 2)
L.append("")
L.append("end EG411Structure")

open(DST, "w", encoding="utf-8").write("\n".join(H + L) + "\n")
print(f"emitted {DST}: {len(H) + len(L)} lines, theorem omega{W}_empty")
