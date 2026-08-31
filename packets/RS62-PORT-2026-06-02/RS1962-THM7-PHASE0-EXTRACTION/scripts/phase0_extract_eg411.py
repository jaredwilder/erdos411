#!/usr/bin/env python3
from pathlib import Path
import zipfile, re, json, sys, shutil

zip_path = Path(sys.argv[1]) if len(sys.argv) > 1 else Path("EG411Formal.zip")
out = Path("phase0_extract")
if out.exists():
    shutil.rmtree(out)
out.mkdir()
with zipfile.ZipFile(zip_path) as z:
    z.extractall(out)

targets = ["UnconditionalClosure.lean", "OmegaProductBound.lean", "CambieDepth3MertensRequirement.lean"]
for t in targets:
    p = out/t
    if not p.exists():
        continue
    text = p.read_text(encoding="utf-8", errors="ignore")
    print(f"\n== {t} ==")
    for i,l in enumerate(text.splitlines(), start=1):
        if any(s in l for s in ["rosser_schoenfeld", "cambie_depth3_check", "9849", "4 * p ^ 3", "Mertens"]):
            print(f"{i}: {l}")
