"""
REFUTER 2 (independent pass) - step 1: walk omega7_tree.json, collect ALL terminals,
classify divisor-mode vs scan-mode, validate node invariants:
  - A,B recomputed from P must match stored A,B
  - c = A-B > 0 at every terminal
  - K == A*B + 2*(A-B)
  - s_hi == (A + isqrt(K))//c + 2
  - mode=='divisor' <=> s_hi - P[-1] > 200000
  - found must be [] (summary claims no solutions)
  - len(P) == 5 (omega 7 => j==2 at depth 5)
Emits divisor terminals to _r2b_divisor_terminals.jsonl, stats to stdout.
"""
import json, sys
from math import isqrt

PATH = "omega7_tree.json"
data = json.load(open(PATH))
print("summary:", json.dumps(data["summary"]))

bad = []
terminals = 0
divisor_terms = []
scan_terms = 0
dead = 0
branches = 0
found_nonempty = []

stack = [data["tree"]]
while stack:
    node = stack.pop()
    kill = node.get("kill")
    if kill == "branch":
        branches += 1
        stack.extend(node.get("children", []))
        continue
    if kill == "dead_AleB":
        dead += 1
        continue
    if kill != "terminal":
        bad.append(("unknown_kill", node.get("P"), kill))
        continue
    terminals += 1
    P = node["P"]; A = node["A"]; B = node["B"]
    # recompute A,B from P independently
    A2 = 3
    for p in P: A2 *= (p - 1)
    B2 = 2
    for p in P: B2 *= p
    if A2 != A or B2 != B:
        bad.append(("AB_mismatch", P, A, B, A2, B2)); continue
    if len(P) != 5:
        bad.append(("len_P", P))
    c = A - B
    if c <= 0:
        bad.append(("c_nonpos_terminal", P, c)); continue
    K = node["K"]; s_hi = node["s_hi"]
    if K != A * B + 2 * c:
        bad.append(("K_mismatch", P, K, A * B + 2 * c))
    if s_hi != (A + isqrt(K)) // c + 2:
        bad.append(("s_hi_mismatch", P, s_hi, (A + isqrt(K)) // c + 2))
    mx = P[-1]
    is_div = (node.get("mode") == "divisor")
    should_div = (s_hi - mx > 200000)
    if is_div != should_div:
        bad.append(("mode_classification", P, is_div, should_div, s_hi - mx))
    if node.get("found"):
        found_nonempty.append((P, node["found"]))
    if is_div:
        divisor_terms.append({
            "P": P, "A": A, "B": B, "K": K, "s_hi": s_hi,
            "K_factors": node.get("K_factors"),
            "found": node.get("found", []),
        })
    else:
        scan_terms += 1
        # validate scan field exists
        if "scan" not in node:
            bad.append(("scan_missing", P))

print(f"terminals={terminals} scan_mode={scan_terms} divisor_mode={len(divisor_terms)} dead_AleB={dead} branches={branches}")
print(f"found_nonempty={len(found_nonempty)}")
print(f"invariant_violations={len(bad)}")
for b in bad[:40]:
    print("  BAD:", b)

with open("_r2b_divisor_terminals.jsonl", "w") as f:
    for t in divisor_terms:
        f.write(json.dumps(t) + "\n")

# window-size distribution for divisor terminals: window = s_hi - max(mx, A//c)
import collections
hist = collections.Counter()
wins = []
for t in divisor_terms:
    A, B, K = t["A"], t["B"], t["K"]
    c = A - B
    lo = max(t["P"][-1], A // c)
    win = t["s_hi"] - lo
    wins.append(win)
    if win <= 0: hist["<=0"] += 1
    elif win <= 200000: hist["<=2e5"] += 1
    elif win <= 2_000_000: hist["<=2e6"] += 1
    elif win <= 20_000_000: hist["<=2e7"] += 1
    elif win <= 10**9: hist["<=1e9"] += 1
    else: hist[">1e9"] += 1
wins.sort()
print("window histogram:", dict(hist))
if wins:
    print("window min/median/max:", wins[0], wins[len(wins)//2], wins[-1])
Ks = sorted(t["K"] for t in divisor_terms)
if Ks:
    print("K min/median/max digits:", len(str(Ks[0])), len(str(Ks[len(Ks)//2])), len(str(Ks[-1])))
# min K/A ratio (negative-branch question: can A > K ever happen?)
minratio = None
for t in divisor_terms:
    r = t["K"] / t["A"]
    if minratio is None or r < minratio: minratio = r
print("min K/A over divisor terminals:", minratio)
