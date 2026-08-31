# Large computed artifacts (release assets, not in the git tree)

Four files from the import baseline exceed sane git limits (one exceeds GitHub's
hard 100 MB file cap). They are published gzipped as assets on the
`baseline-eg411formal-2026-08-31` GitHub release. SHA-256 below is of the
**uncompressed** original; verify after `gunzip`.

| original path | bytes | sha256 (uncompressed) | role |
|---|---|---|---|
| `EG411Formal/OmegaTree7.lean` | 658,280,768 | `e111ec3a80cba5d911ee679e3a79b40b78bc34ba84eee5638a51907a6922e0a7` | generated Lean encoding of the ω=7 kill-tree (not imported by the root module) |
| `scripts/omega7_tree.json` | 70,817,203 | `ad6a119475ae10577a70aa86d18c53a8968edb7c620580cc7db6278393403a0f` | the ω=7 kill-tree certificate (272,676 terminals) |
| `scripts/_ref2_divisor_terminals.jsonl` | 32,886,997 | `18b91f2ccc0ab17261b70fec80d462d35267454749ccd2553c0a8dd0dceb13fd` | refuter-2 divisor-mode terminal resolutions |
| `scripts/_r2b_divisor_terminals.jsonl` | 31,109,793 | `9a6ba90d6a7d9f5afa0e17c0a4cfcd39c42e7ba1d5d03b4863767b662bc0e1eb` | refuter-2b divisor-mode terminal resolutions |

Also excluded from the import (not published): the Lake build cache (`.lake/`),
editor/agent scratch (`tmp*.lean`, `.erdos-lean-*/`), and `lakefile.toml.bak-prevendor`.
Everything else in the working corpus is in this tree; see `IMPORT_MANIFEST.sha256`.
