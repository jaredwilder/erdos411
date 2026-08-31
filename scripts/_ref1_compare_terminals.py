"""REFUTER-1: compare the project's omega7 terminal set against my fresh walk.

Streams the 70MB omega7_tree.json with a regex (no full JSON parse) and
extracts the prefix P of every node with "kill": "terminal" (i.e. alive j==2
nodes the project actually solved).  Compares as a set against the union of
my _ref1_w7_noncascade.jsonl + _ref1_w7_cascade.jsonl terminal records.
Also asserts every project terminal record has "found": [] (no solutions).
"""
import json, re, os, sys

here = os.path.dirname(os.path.abspath(__file__))

# --- project terminals (raw text scan; serialization order is fixed:
#     "P": [...], "A": n, "B": n, "j": 2, "kill": "terminal")
pat = re.compile(r'"P": \[([0-9, ]+)\], "A": \d+, "B": \d+, "j": 2, '
                 r'"kill": "terminal"')
found_nonempty = re.compile(r'"found": \[\[')
theirs = set()
with open(os.path.join(here, "omega7_tree.json"), "r") as f:
    blob = f.read()
for m in pat.finditer(blob):
    theirs.add(tuple(int(x) for x in m.group(1).split(",")))
nonempty_found = len(found_nonempty.findall(blob))
del blob

# --- my terminals
import glob
mine = set()
my_solutions = 0
for p in sorted(glob.glob(os.path.join(here, "_ref1_w7_*.jsonl"))):
    with open(p) as f:
        for line in f:
            try:
                r = json.loads(line)
            except Exception:
                continue  # truncated tail line from a killed run
            mine.add(tuple(r["P"]))
            my_solutions += len(r["f"])

only_theirs = theirs - mine
only_mine = mine - theirs
print(f"project terminals: {len(theirs)}")
print(f"my terminals:      {len(mine)}")
print(f"in project only:   {len(only_theirs)} {sorted(only_theirs)[:5]}")
print(f"in mine only:      {len(only_mine)} {sorted(only_mine)[:5]}")
print(f"project nonempty 'found' records: {nonempty_found}")
print(f"my solutions found: {my_solutions}")
ok = (not only_theirs and not only_mine and nonempty_found == 0
      and my_solutions == 0)
print("TERMINAL-SET COMPARISON:", "IDENTICAL+EMPTY" if ok else "DISCREPANCY")
sys.exit(0 if ok else 1)
