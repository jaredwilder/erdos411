from sympy import isprime, primerange
import sys
sys.setrecursionlimit(1000000)
BODY = list(primerange(5, 4000))   # all-but-largest prime drawn from here
PCAP = 10**20
NODECAP = 3_000_000
sols = set()
nodes = [0]
stopped = [False]
def dfs(start, P, Q, facts):
    if stopped[0]: return
    nodes[0]+=1
    if nodes[0] > NODECAP:
        stopped[0]=True; return
    if facts and 3*Q == 2*P+2:
        s=tuple(sorted(facts))
        if s not in sols: sols.add(s); print("SOL(body):", P, list(s), flush=True)
    d = 3*Q - 2*P
    if d > 0 and (3*Q+2) % d == 0:
        q = (3*Q+2)//d
        lp = facts[-1] if facts else 4
        if q > lp and q != 2 and q % 3 != 0 and isprime(q):
            s=tuple(sorted(facts+[q]))
            if s not in sols:
                sols.add(s)
                n=P*q
                print(f"SOL(close): n={n}  {list(s)}  omega={len(s)}", flush=True)
    if 3*Q <= 2*P:
        return
    for i in range(start, len(BODY)):
        p = BODY[i]
        nP = P*p
        if nP > PCAP: break
        dfs(i+1, nP, Q*(p-1), facts+[p])
dfs(0,1,1,[])
print(f"\nnodes={nodes[0]}  hit_cap={stopped[0]}", flush=True)
print("ALL distinct solutions found:", flush=True)
for s in sorted(sols, key=lambda t:(len(t),t)):
    n=1
    for x in s: n*=x
    p4=4*n+1; p=p4//3 if p4%3==0 else None
    eg = p is not None and isprime(p) and p%8==7
    extra = "  <-- NEW non-cascade!" if n not in (5,35,1295,1679615) else ""
    print(f"  n={n}  {list(s)}  EG#411-prime={p if eg else '-'}{extra}", flush=True)
