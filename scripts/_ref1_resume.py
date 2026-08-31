"""REFUTER-1 resume runner: finish remaining terminal jobs for a phase.

Reads every existing _ref1_w7_<phase>*.jsonl, skips completed P's, runs the
rest, appending to _ref1_w7_<phase>_resume.jsonl.  Idempotent: run until the
remaining count hits 0.
"""
import glob, json, os, sys, time

here = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, here)
from _ref1_fresh_enum import CASCADE, collect_jobs, solve_job  # noqa: E402

phase = sys.argv[1]  # "noncascade" | "cascade"
procs = int(sys.argv[2]) if len(sys.argv) > 2 else 16
budget_sec = float(sys.argv[3]) if len(sys.argv) > 3 else 530.0

if phase == "noncascade":
    jobs, wstats = collect_jobs(7, skip_prefix=CASCADE)
else:
    jobs, wstats = collect_jobs(7, root_P=list(CASCADE), root_j=3)

done = set()
for fn in glob.glob(os.path.join(here, f"_ref1_w7_{phase}*.jsonl")):
    with open(fn) as f:
        for line in f:
            try:
                done.add(tuple(json.loads(line)["P"]))
            except Exception:
                pass  # possibly truncated final line from a killed run

remaining = [P for P in jobs if tuple(P) not in done]
print(f"[resume-{phase}] total={len(jobs)} done={len(done)} "
      f"remaining={len(remaining)}", flush=True)
if not remaining:
    print(f"[resume-{phase}] PHASE COMPLETE")
    sys.exit(0)

import multiprocessing as mp

out = open(os.path.join(here, f"_ref1_w7_{phase}_resume.jsonl"), "a")
log = open(os.path.join(here, "_ref1_w7.log"), "a", buffering=1)
t0 = time.time()
solutions = anomalies = 0
donecnt = 0
with mp.Pool(procs) as pool:
    it = pool.imap_unordered(solve_job, remaining, chunksize=32)
    for r in it:
        donecnt += 1
        if r["f"]:
            solutions += len(r["f"])
            log.write(f"[resume-{phase}] !!! SOLUTION {r}\n")
        if r["a"]:
            anomalies += len(r["a"])
            log.write(f"[resume-{phase}] !!! ANOMALY {r}\n")
        out.write(json.dumps(r, separators=(",", ":")) + "\n")
        if donecnt % 2000 == 0:
            el = time.time() - t0
            log.write(f"[resume-{phase}] {donecnt}/{len(remaining)} "
                      f"el={el:.0f}s rate={donecnt/el:.1f}/s\n")
        if time.time() - t0 > budget_sec:
            log.write(f"[resume-{phase}] budget reached at {donecnt}, "
                      f"terminating pool\n")
            pool.terminate()
            break
out.close()
print(f"[resume-{phase}] this pass: {donecnt} terminals, "
      f"solutions={solutions} anomalies={anomalies} "
      f"({time.time()-t0:.0f}s)", flush=True)
log.close()
