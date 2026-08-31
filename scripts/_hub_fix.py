import io

ROOT = r"C:\Users\jared\Local Sites\woocommerce-enterprise"

# ============ MathResearch.tsx ============
p = ROOT + r"\src\pages\public\MathResearch.tsx"
src = io.open(p, encoding="utf-8").read()
n0 = src
applied = []

def rep(old, new, tag):
    global src
    if old in src:
        src = src.replace(old, new)
        applied.append("OK   " + tag)
    else:
        applied.append("MISS " + tag)

rep("{ tone: 'closed', tag: 'CLOSED', title: 'Erdős #411, r = 2 obstruction branch', body: 'Lean 4 + Mathlib proof package with one named Rosser–Schoenfeld analytic tail dependency.' },",
    "{ tone: 'closed', tag: 'CONDITIONAL + ω-LADDER', title: 'Erdős #411, r = 2', body: 'Kernel-checked reduction to Steinerberger’s totient equation. Conditionally closed with NO custom axiom; unconditionally any further exceptional prime needs ω(N) ≥ 6 (kernel) and ≥ 8 (certified computation, past the published frontier).' },",
    "status-card")

rep("New · 2026-05-27 · Closed",
    "Updated 2026-06-10 · Conditional closure + kernel ω-ladder",
    "badge")

rep('<span className="block text-[var(--eu-gold)] mt-1">Machine-checked closed.</span>',
    '<span className="block text-[var(--eu-gold)] mt-1">Reduced to one conjecture. Conditionally closed.</span>',
    "h2")

old_para = "A 46-year-old open problem from Erdős &amp; Graham, kernel-checked in Lean 4 + Mathlib."
i = src.find(old_para)
if i >= 0:
    j = src.find("</p>", i)
    new_para = ("A 46-year-old problem from Erdős &amp; Graham: the r = 2 case reduces — kernel-checked, axiom-free — to Steinerberger’s totient equation. "
        "Conditionally closed with no custom axiom; unconditionally, any further exceptional prime needs ω(N) ≥ 6 in the kernel, ≥ 8 by hostile-reviewed computation — past the published frontier.\n\t\t\t\t\t\t\t\t\t")
    src = src[:i] + new_para + src[j:]
    applied.append("OK   headline-para")
else:
    applied.append("MISS headline-para")

rep("Two Erdős problems closed in Lean 4 modulo named axioms, with reproducible source packages.",
    "Two Erdős problems, kernel-grade artifacts, reproducible source packages.",
    "two-problems-line")

rep("{' '}via Rosser–Schoenfeld 1962 + iterated-φ obstruction;",
    "{' '}conditionally closed via the totient-equation bridge + ω-ladder;",
    "via-line")

# stat block "1 / Named axiom"
old_stat = "Named axiom"
if old_stat in src:
    # the value "1" sits a few lines above; replace the pair conservatively
    k = src.find(old_stat)
    seg = src[k-600:k]
    vpos = seg.rfind(">\n\t\t\t\t\t\t\t\t\t\t\t\t1\n")
    if vpos >= 0:
        seg = seg[:vpos] + ">\n\t\t\t\t\t\t\t\t\t\t\t\t0\n" + seg[vpos+len(">\n\t\t\t\t\t\t\t\t\t\t\t\t1\n"):]
        src = src[:k-600] + seg + src[k:]
        applied.append("OK   stat-value 1->0")
    else:
        applied.append("MISS stat-value (manual check)")
    src = src.replace("Named axiom", "Custom axioms", 1)
    applied.append("OK   stat-label")
else:
    applied.append("MISS stat-label")

# Lean substrate card
old_sub = '<code className="font-mono text-xs bg-white/[0.08] px-1.5 py-0.5 rounded">EG411Formal</code>, holds the closure.'
i = src.find(old_sub)
if i >= 0:
    j = src.find("</p>", i)
    cc = '<code className="font-mono text-xs bg-white/[0.08] px-1.5 py-0.5 rounded">'
    new_sub = (cc + "EG411Formal</code>, holds the results. Kernel files: "
        + cc + "RealResult.lean</code> (reduction + conditional closure), "
        + cc + "CascadeLemma.lean</code>, " + cc + "SolutionStructure.lean</code>, "
        + cc + "OmegaLadder.lean</code>, " + cc + "OmegaTree5.lean</code>, "
        + cc + "OmegaCapstone.lean</code>. Headline footprints "
        + cc + "{`{propext, Classical.choice, Quot.sound}`}</code> — no custom axiom "
        "(the ω ≥ 6 level adds 33 disclosed native_decide scan certificates). "
        + cc + "lake build EG411Formal</code> comes up green.\n\t\t\t\t\t\t\t\t")
    src = src[:i] + new_sub + src[j:]
    applied.append("OK   substrate-card")
else:
    applied.append("MISS substrate-card")

# status card "Erdős #411 is closed."
old_st = '<span className="text-emerald-300 font-semibold">Erdős #411 is closed.</span>'
i = src.find(old_st)
if i >= 0:
    j = src.find("</p>", i)
    cw = '<code className="font-mono text-xs bg-white/[0.08] px-1.5 py-0.5 rounded text-white">'
    SP = "{' '}"
    new_st = ('<span className="text-emerald-300 font-semibold">Erdős #411 r = 2: conditionally closed, with an unconditional kernel ω-ladder.</span>' + SP
        + "The kernel theorem" + SP + cw + "exceptional_high_omega_six</code>" + SP
        + 'proves any exceptional prime beyond 7 and 47 has <span className="font-mono">ω(N) ≥ 6</span>; hostile-reviewed computation (272,676-terminal kill-tree, triple-implemented) pushes the bar to' + SP
        + '<span className="font-mono">ω(N) ≥ 8</span> — beyond the published frontier (Hercher: ω ≥ 7). Assuming Steinerberger’s totient conjecture, the exceptional primes are exactly 7 and 47 — a theorem with no custom axiom. Full write-up at' + SP
        + '<Link to="/research/erdos-411" className="text-[var(--eu-gold)] font-semibold hover:underline">/research/erdos-411</Link>.\n\t\t\t\t\t\t\t\t')
    src = src[:i] + new_st + src[j:]
    applied.append("OK   status-card-2460")
else:
    applied.append("MISS status-card-2460")

rep("two Erdős problems closed in Lean 4 modulo named axioms, machine-verified obstruction calculus,",
    "two Erdős problems driven to kernel-grade artifacts (one closed modulo named count-bounds, one conditionally closed with a new unconditional ω-ladder), machine-verified obstruction calculus,",
    "hero-prose")

rep('<HeroStat value="2" label="Erdős problems closed" sublabel="Lean 4 closures modulo named axioms · #203 + #411 r=2" color="gold" delay={0.15} />',
    '<HeroStat value="2" label="Erdős problems, kernel-grade" sublabel="#203 closed mod 2 named axioms · #411 r=2 conditional + ω≥6 kernel" color="gold" delay={0.15} />',
    "hero-stat")

io.open(p, "w", encoding="utf-8").write(src)
print("MathResearch.tsx changed:", src != n0)
for a in applied: print(" ", a)

# ============ manifest.json ============
m = ROOT + r"\src\data\math-research-manifest.json"
src = io.open(m, encoding="utf-8").read()
n0 = src
applied = []

rep_t = [
 ("the EG#203 shadow-rigidity closure equivalence + closure line. EG#203 is closed by shadow rigidity.",
  "the EG#203 shadow-rigidity equivalence (a kernel-checked REFORMULATION of the conjecture — not an independent closure; the closure-modulo-axioms route is EG203AtomicCitations).",
  "manifest-201"),
 ('"title": "EG#203 closed by shadow rigidity"',
  '"title": "EG#203 ⇔ shadow rigidity (reformulation)"',
  "manifest-card14-title"),
 ('"scope": "Final closure line: shadow rigidity implies every ordinary m coprime to 6 has a prime translate m·2^k·3^l + 1. EG#203 is closed."',
  '"scope": "Kernel-checked implication: shadow rigidity gives every ordinary m a prime translate. NOTE: shadow rigidity is equivalent to EG#203 itself (no proper divisor ⇔ prime), so this is a reformulation, not an unconditional closure. The honest closure (modulo 2 named count-bound axioms) is EG203AtomicCitations.eg203_closed_atomic."',
  "manifest-card14-scope"),
 ("The closure is exactly equivalent to shadow rigidity over the two-dimensional S-unit lattice.",
  "The closure is exactly equivalent to shadow rigidity over the two-dimensional S-unit lattice (a tautological reformulation: ‘V has no proper divisor’ ⇔ ‘V is prime’ — documented as such).",
  "manifest-card13-scope"),
]
for old, new, tag in rep_t:
    if old in src:
        src = src.replace(old, new)
        applied.append("OK   " + tag)
    else:
        applied.append("MISS " + tag)

io.open(m, "w", encoding="utf-8").write(src)
print("manifest.json changed:", src != n0)
for a in applied: print(" ", a)
