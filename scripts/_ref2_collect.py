"""REFUTER 2 phase 1: walk omega7_tree.json, validate structural invariants on EVERY node,
extract all mode=divisor terminals to a compact JSONL for the deep audit phase."""
import json, sys
from math import isqrt, prod

sys.setrecursionlimit(10000)

with open("omega7_tree.json") as f:
    data = json.load(f)

summary = data["summary"]
tree = data["tree"]

stats = {
    "nodes": 0, "terminals": 0, "branches": 0, "dead": 0,
    "divisor_terminals": 0, "scan_terminals": 0,
    "found_nonempty": 0,
    "errors": [],
}

div_out = open("_ref2_divisor_terminals.jsonl", "w")

def err(msg):
    stats["errors"].append(msg)
    if len(stats["errors"]) <= 50:
        print("ERROR:", msg)

def walk(node):
    stats["nodes"] += 1
    P = node["P"]
    A_claim, B_claim, j = node["A"], node["B"], node["j"]
    A = 3 * prod(p - 1 for p in P)
    B = 2 * prod(P)
    if A != A_claim or B != B_claim:
        err(f"A/B mismatch at P={P}: claimed A={A_claim} B={B_claim}, real A={A} B={B}")
    if j != 7 - len(P):
        err(f"j mismatch at P={P}: j={j}")
    kill = node["kill"]
    if kill == "dead_AleB":
        stats["dead"] += 1
        if not (A <= B):
            err(f"dead_AleB but A>B at P={P}")
        return
    if kill == "terminal":
        stats["terminals"] += 1
        if j != 2:
            err(f"terminal with j={j} at P={P}")
        if not (A > B):
            err(f"terminal with A<=B at P={P}")
        c = A - B
        K = A * B + 2 * c
        if node["K"] != K:
            err(f"K mismatch at P={P}: claimed {node['K']} real {K}")
        r = isqrt(K)
        s_hi = (A + r) // c + 2
        if node["s_hi"] != s_hi:
            err(f"s_hi mismatch at P={P}: claimed {node['s_hi']} real {s_hi}")
        mx = P[-1]
        if node.get("found"):
            stats["found_nonempty"] += 1
            err(f"FOUND NONEMPTY at P={P}: {node['found']}")
        if node.get("mode") == "divisor":
            stats["divisor_terminals"] += 1
            if s_hi - mx <= 200000:
                err(f"divisor mode but small range at P={P}: s_hi-mx={s_hi-mx}")
            kf = {int(k): v for k, v in node["K_factors"].items()}
            # multiply-back check on EVERY divisor terminal (cheap)
            back = prod(q ** e for q, e in kf.items())
            if back != K:
                err(f"K_factors multiply-back FAIL at P={P}: product={back} K={K}")
            ndiv = prod(e + 1 for e in kf.values())
            div_out.write(json.dumps({
                "P": P, "A": A, "B": B, "K": K, "s_hi": s_hi,
                "K_factors": node["K_factors"], "ndiv": ndiv,
                "found": node.get("found", []),
            }) + "\n")
        else:
            stats["scan_terminals"] += 1
            if s_hi - mx > 200000:
                err(f"scan mode but large range at P={P}: s_hi-mx={s_hi-mx}")
            if "scan" not in node:
                err(f"scan terminal missing scan count at P={P}")
        return
    if kill == "branch":
        stats["branches"] += 1
        for ch in node.get("children", []):
            walk(ch)
        return
    err(f"unknown kill={kill} at P={P}")

walk(tree)
div_out.close()

print(json.dumps({k: v for k, v in stats.items() if k != "errors"}, indent=1))
print("total errors:", len(stats["errors"]))
print("summary claims:", summary)
print("terminals match summary:", stats["terminals"] == summary["terminals"])
print("branches match summary:", stats["branches"] == summary["branches"])
print("solutions claimed:", summary["solutions"])
