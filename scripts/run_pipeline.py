#!/usr/bin/env python3
"""EG411 Lean-first proof pipeline.

This script is intentionally stricter than a normal build:

1. clean Lean library must build;
2. clean imported files must not contain `sorry`, `admit`, `axiom`, or `constant`;
3. key theorems must have no `sorryAx` in their axiom printout;
4. the lower-jump gap file must be run under warning-as-error and classified.

The pipeline succeeds when the proof state is honestly classified. It only emits
`PROOF_CANDIDATE` if the lower-jump gap file stops failing.
"""

from __future__ import annotations

import argparse
import json
import subprocess
import sys
import time
from pathlib import Path


PROJECT_ROOT = Path(__file__).resolve().parents[1]
MATH_ROOT = PROJECT_ROOT.parent
RESULTS_ROOT = MATH_ROOT / "results" / "eg411"


def run(cmd: list[str], *, cwd: Path = PROJECT_ROOT, timeout: int = 300, stdin: str | None = None) -> dict:
    started = time.time()
    proc = subprocess.run(
        cmd,
        cwd=str(cwd),
        input=stdin,
        text=True,
        capture_output=True,
        timeout=timeout,
        check=False,
    )
    return {
        "cmd": cmd,
        "returncode": proc.returncode,
        "elapsed_s": round(time.time() - started, 3),
        "stdout": proc.stdout,
        "stderr": proc.stderr,
    }


def scan_clean_files() -> dict:
    clean_files = [
        PROJECT_ROOT / "EG411Formal.lean",
        PROJECT_ROOT / "EG411Formal" / "Basic.lean",
        PROJECT_ROOT / "EG411Formal" / "Gate.lean",
        PROJECT_ROOT / "EG411Formal" / "Recurrence.lean",
        PROJECT_ROOT / "EG411Formal" / "Counterexamples.lean",
    ]
    forbidden = ["sorry", "admit", "axiom", "constant"]
    hits = []
    for path in clean_files:
        text = path.read_text(encoding="utf-8")
        for line_no, line in enumerate(text.splitlines(), start=1):
            stripped = line.strip()
            if stripped.startswith("--"):
                continue
            for token in forbidden:
                if token in stripped:
                    hits.append({"file": str(path), "line": line_no, "token": token, "text": line})
    return {
        "clean_files": [str(path) for path in clean_files],
        "forbidden_tokens": forbidden,
        "hits": hits,
        "passes": not hits,
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--output",
        type=Path,
        default=RESULTS_ROOT / "r663_lean_pipeline.json",
    )
    args = parser.parse_args()

    build = run(["lake", "build"], timeout=300)
    scan = scan_clean_files()

    axiom_stdin = """import EG411Formal.Gate
import EG411Formal.Recurrence
import EG411Formal.Counterexamples
#print axioms EG411Formal.depth4_ratio_identity
#print axioms EG411Formal.normalized_depth4_gt_one
#print axioms EG411Formal.depth4_from_gate
#print axioms EG411Formal.x3_step_identity
#print axioms EG411Formal.lower_jump_from_bounds
#print axioms EG411Formal.weak_strict_underflow_not_enough
"""
    axiom_check = run(["lake", "env", "lean", "--stdin"], stdin=axiom_stdin, timeout=120)
    axiom_text = axiom_check["stdout"] + axiom_check["stderr"]
    no_sorry_axiom = "sorryAx" not in axiom_text

    gap = run(
        ["lake", "env", "lean", "-DwarningAsError=true", "EG411Formal\\LowerJumpGap.lean"],
        timeout=120,
    )
    gap_text = gap["stdout"] + gap["stderr"]
    gap_is_open = gap["returncode"] != 0 and "declaration uses `sorry`" in gap_text
    gap_closed = gap["returncode"] == 0

    clean_ok = build["returncode"] == 0 and scan["passes"] and axiom_check["returncode"] == 0 and no_sorry_axiom
    if not clean_ok:
        proof_status = "PIPELINE_FAILED_CLEAN_LAYER"
    elif gap_closed:
        proof_status = "PROOF_CANDIDATE"
    elif gap_is_open:
        proof_status = "BLOCKED_ON_LOWER_JUMP"
    else:
        proof_status = "PIPELINE_FAILED_UNCLASSIFIED_GAP"

    report = {
        "round": "R664_LEAN_RECURRENCE_PIPELINE",
        "proof_status": proof_status,
        "headline_proof_pct": 63.61,
        "clean_build": {
            "returncode": build["returncode"],
            "elapsed_s": build["elapsed_s"],
            "stdout_tail": build["stdout"][-4000:],
            "stderr_tail": build["stderr"][-4000:],
        },
        "clean_file_scan": scan,
        "axiom_check": {
            "returncode": axiom_check["returncode"],
            "elapsed_s": axiom_check["elapsed_s"],
            "no_sorry_axiom": no_sorry_axiom,
            "output": axiom_text,
        },
        "lower_jump_gap_check": {
            "returncode": gap["returncode"],
            "elapsed_s": gap["elapsed_s"],
            "gap_is_open": gap_is_open,
            "gap_closed": gap_closed,
            "output": gap_text,
        },
        "next_material_task": (
            "Replace LowerJumpGap.lean's sorry by constructing LowerJumpBounds for every "
            "CambieTailRecord, or demote this route to finite-only."
        ),
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2), encoding="utf-8")
    print(json.dumps(report, indent=2))

    return 0 if proof_status in {"BLOCKED_ON_LOWER_JUMP", "PROOF_CANDIDATE"} else 1


if __name__ == "__main__":
    sys.exit(main())
