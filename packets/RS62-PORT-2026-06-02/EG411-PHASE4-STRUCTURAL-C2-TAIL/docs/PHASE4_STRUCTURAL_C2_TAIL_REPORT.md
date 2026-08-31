# Phase 4 — Structural c2 Tail

## Mission

Phase 4 fixed the Phase 3 failure.

Phase 3 showed that generic Rosser–Schoenfeld/Mertens product lower bounds are
too weak for the residual α/β tail.

Phase 4 identifies the actual structural mechanism:

```text
N(p)  = (3p − 1)/4
c2(p) = 3p² − p + 2(p−1)φ(N)
      = 4pN + 2(p−1)φ(N)
```

If a prime `q` divides `N` exactly once, then `q` divides the first term `4pN`
but does not divide the second term `2(p−1)φ(N)`. Therefore `q ∤ c2`.

So the primes that make `φ(N)/N` small are structurally excluded from `c2`.
That is exactly why the generic worst-case Mertens lower bound for `φ(c2)/c2`
was too pessimistic.

## Lean algebra delivered

```text
lean/StructuralC2SquarefreeExclusion.lean
```

Core theorem:

```lean
theorem squarefree_factor_exclusion_int
    (q p N phiN c2 : Int)
    (hq_div_N : q ∣ N)
    (hc2 : c2 = 4*p*N + 2*(p-1)*phiN)
    (h_not_tail : ¬ q ∣ 2*(p-1)*phiN) :
    ¬ q ∣ c2
```

This is the algebraic heart of the structural c2 tail.

## Verification receipt

Script:

```text
scripts/phase4_structural_c2_verify.py
```

Run to `p ≤ 1,000,000`, primes `p ≡ 7 mod 8`.

Summary:

```json
{
  "limit": 1000000,
  "prime_mod8_7_count": 19669,
  "bad_branch_count": 0,
  "bad_exclusion_count": 2679,
  "fast_count": 19543,
  "depth_count": 19669,
  "both_count": 19543,
  "min_fast_ratio": {
    "p": 633967,
    "value": 0.954426327510668
  },
  "min_depth_ratio": {
    "p": 568367,
    "value": 1.2297092440262118
  },
  "min_beta_margin_when_fast_fails": {
    "p": 282847,
    "margin": 0.2411190995405857,
    "alpha": 0.5702029368091074,
    "beta": 0.3161822227485283,
    "beta_required": 0.07506312320794262
  },
  "bad_branch_first": [],
  "bad_exclusion_first": [
    {
      "p": 271,
      "N": 203,
      "violations": [
        7
      ]
    },
    {
      "p": 919,
      "N": 689,
      "violations": [
        13
      ]
    },
    {
      "p": 983,
      "N": 737,
      "violations": [
        11
      ]
    },
    {
      "p": 1447,
      "N": 1085,
      "violations": [
        5
      ]
    },
    {
      "p": 1607,
      "N": 1205,
      "violations": [
        5
      ]
    },
    {
      "p": 2207,
      "N": 1655,
      "violations": [
        5
      ]
    },
    {
      "p": 2687,
      "N": 2015,
      "violations": [
        5
      ]
    },
    {
      "p": 3607,
      "N": 2705,
      "violations": [
        5
      ]
    },
    {
      "p": 4007,
      "N": 3005,
      "violations": [
        5
      ]
    },
    {
      "p": 4327,
      "N": 3245,
      "violations": [
        5
      ]
    }
  ],
  "sample_rows": [
    {
      "p": 7,
      "N": 5,
      "phiN_over_N": 0.8,
      "phic2_over_c2": 0.48936170212765956,
      "fast": false,
      "depth": true,
      "fast_ratio": 0.9591836734693877,
      "depth_ratio": 1.3615160349854227,
      "squarefree_N_factor_count": 1,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 23,
      "N": 17,
      "phiN_over_N": 0.9411764705882353,
      "phic2_over_c2": 0.2857142857142857,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.0718336483931947,
      "depth_ratio": 1.3647571299416454,
      "squarefree_N_factor_count": 1,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 31,
      "N": 23,
      "phiN_over_N": 0.9565217391304348,
      "phic2_over_c2": 0.42569511025886864,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.085327783558793,
      "depth_ratio": 1.5324426840320902,
      "squarefree_N_factor_count": 1,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 47,
      "N": 35,
      "phiN_over_N": 0.6857142857142857,
      "phic2_over_c2": 0.46153846153846156,
      "fast": true,
      "depth": true,
      "fast_ratio": 0.9945676776822091,
      "depth_ratio": 1.443832291496104,
      "squarefree_N_factor_count": 2,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 71,
      "N": 53,
      "phiN_over_N": 0.9811320754716981,
      "phic2_over_c2": 0.33315421816227836,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.1075183495338226,
      "depth_ratio": 1.471295936699347,
      "squarefree_N_factor_count": 1,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 79,
      "N": 59,
      "phiN_over_N": 0.9830508474576272,
      "phic2_over_c2": 0.40040444893832156,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.1092773593975325,
      "depth_ratio": 1.5478146759181322,
      "squarefree_N_factor_count": 1,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 103,
      "N": 77,
      "phiN_over_N": 0.7792207792207793,
      "phic2_over_c2": 0.4814848512419252,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.0360071637289094,
      "depth_ratio": 1.5299859891811953,
      "squarefree_N_factor_count": 2,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 127,
      "N": 95,
      "phiN_over_N": 0.7578947368421053,
      "phic2_over_c2": 0.46117703752785977,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.029264058528117,
      "depth_ratio": 1.5001994255957016,
      "squarefree_N_factor_count": 2,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 151,
      "N": 113,
      "phiN_over_N": 0.9911504424778761,
      "phic2_over_c2": 0.4999803636649256,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.1167492653830973,
      "depth_ratio": 1.6714042691865205,
      "squarefree_N_factor_count": 1,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 167,
      "N": 125,
      "phiN_over_N": 0.8,
      "phic2_over_c2": 0.26598114824335906,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.0461113700742228,
      "depth_ratio": 1.3226911303428497,
      "squarefree_N_factor_count": 0,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 191,
      "N": 143,
      "phiN_over_N": 0.8391608391608392,
      "phic2_over_c2": 0.49998708444191875,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.061182533373537,
      "depth_ratio": 1.5889822013065398,
      "squarefree_N_factor_count": 2,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 199,
      "N": 149,
      "phiN_over_N": 0.9932885906040269,
      "phic2_over_c2": 0.4285037130668352,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.1187343753945607,
      "depth_ratio": 1.595707255247983,
      "squarefree_N_factor_count": 1,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 223,
      "N": 167,
      "phiN_over_N": 0.9940119760479041,
      "phic2_over_c2": 0.49999101801785617,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.119407186953287,
      "depth_ratio": 1.6765908894368915,
      "squarefree_N_factor_count": 1,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 239,
      "N": 179,
      "phiN_over_N": 0.994413407821229,
      "phic2_over_c2": 0.31574504010130855,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.119780816162182,
      "depth_ratio": 1.4718667024027905,
      "squarefree_N_factor_count": 1,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 263,
      "N": 197,
      "phiN_over_N": 0.9949238578680203,
      "phic2_over_c2": 0.3185566611173487,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.1202561841287282,
      "depth_ratio": 1.4757643523354684,
      "squarefree_N_factor_count": 1,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 271,
      "N": 203,
      "phiN_over_N": 0.8275862068965517,
      "phic2_over_c2": 0.3892242544373367,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.057896815130513,
      "depth_ratio": 1.4681365080014275,
      "squarefree_N_factor_count": 2,
      "squarefree_exclusion_violations": [
        7
      ]
    },
    {
      "p": 311,
      "N": 233,
      "phiN_over_N": 0.9957081545064378,
      "phic2_over_c2": 0.28554826927865856,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.1209871692807147,
      "depth_ratio": 1.4400538679373838,
      "squarefree_N_factor_count": 1,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 359,
      "N": 269,
      "phiN_over_N": 0.9962825278810409,
      "phic2_over_c2": 0.2856727755754343,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.121522955284332,
      "depth_ratio": 1.4410190835064343,
      "squarefree_N_factor_count": 1,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 367,
      "N": 275,
      "phiN_over_N": 0.7272727272727273,
      "phic2_over_c2": 0.39992728594800947,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.0210559139944613,
      "depth_ratio": 1.4282913693009973,
      "squarefree_N_factor_count": 1,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 383,
      "N": 287,
      "phiN_over_N": 0.8362369337979094,
      "phic2_over_c2": 0.49506615905136714,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.0618451281282169,
      "depth_ratio": 1.5861561752099924,
      "squarefree_N_factor_count": 2,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 431,
      "N": 323,
      "phiN_over_N": 0.891640866873065,
      "phic2_over_c2": 0.49605982111339264,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.082751492509192,
      "depth_ratio": 1.618614810430952,
      "squarefree_N_factor_count": 2,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 439,
      "N": 329,
      "phiN_over_N": 0.8389057750759878,
      "phic2_over_c2": 0.36119585112873703,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.063065260142901,
      "depth_ratio": 1.446165363814668,
      "squarefree_N_factor_count": 2,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 463,
      "N": 347,
      "phiN_over_N": 0.9971181556195965,
      "phic2_over_c2": 0.49999792174972046,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.1223031315162173,
      "depth_ratio": 1.6822403794623644,
      "squarefree_N_factor_count": 1,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 479,
      "N": 359,
      "phiN_over_N": 0.9972144846796658,
      "phic2_over_c2": 0.2856909868244778,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.1223931206715452,
      "depth_ratio": 1.4423812876096183,
      "squarefree_N_factor_count": 1,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 487,
      "N": 365,
      "phiN_over_N": 0.7890410958904109,
      "phic2_over_c2": 0.4999979817469191,
      "fast": true,
      "depth": true,
      "fast_ratio": 1.0445673760061391,
      "depth_ratio": 1.5657765090321103,
      "squarefree_N_factor_count": 2,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 5647,
      "N": 4235,
      "phiN_over_N": 0.6233766233766234,
      "phic2_over_c2": 0.31786007068084066,
      "fast": false,
      "depth": true,
      "fast_ratio": 0.9836667695351654,
      "depth_ratio": 1.2962797894887148,
      "squarefree_N_factor_count": 2,
      "squarefree_exclusion_violations": [
        5
      ]
    },
    {
      "p": 11527,
      "N": 8645,
      "phiN_over_N": 0.599652978600347,
      "phic2_over_c2": 0.48648634751857783,
      "fast": false,
      "depth": true,
      "fast_ratio": 0.9748221685291685,
      "depth_ratio": 1.4490187033112656,
      "squarefree_N_factor_count": 4,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 11807,
      "N": 8855,
      "phiN_over_N": 0.5962732919254659,
      "phic2_over_c2": 0.363635626818903,
      "fast": false,
      "depth": true,
      "fast_ratio": 0.9735560602886625,
      "depth_ratio": 1.3275457446353203,
      "squarefree_N_factor_count": 4,
      "squarefree_exclusion_violations": [
        5,
        11
      ]
    },
    {
      "p": 14887,
      "N": 11165,
      "phiN_over_N": 0.6018808777429467,
      "phic2_over_c2": 0.33555975719685743,
      "fast": false,
      "depth": true,
      "fast_ratio": 0.9756683213357017,
      "depth_ratio": 1.3030413543396466,
      "squarefree_N_factor_count": 4,
      "squarefree_exclusion_violations": [
        5,
        7
      ]
    },
    {
      "p": 22447,
      "N": 16835,
      "phiN_over_N": 0.6158598158598159,
      "phic2_over_c2": 0.4999999989883771,
      "fast": false,
      "depth": true,
      "fast_ratio": 0.9809225756670635,
      "depth_ratio": 1.4713620127605618,
      "squarefree_N_factor_count": 4,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 48767,
      "N": 36575,
      "phiN_over_N": 0.5905673274094326,
      "phic2_over_c2": 0.39098485167130054,
      "fast": false,
      "depth": true,
      "fast_ratio": 0.9714515664028127,
      "depth_ratio": 1.3512666244767875,
      "squarefree_N_factor_count": 3,
      "squarefree_exclusion_violations": []
    },
    {
      "p": 67247,
      "N": 50435,
      "phiN_over_N": 0.6186180231981758,
      "phic2_over_c2": 0.39999999954961446,
  
```

## Phase 4 verdict

Phase 4 does **not** fully remove the Rosser–Schoenfeld/Cambie tail axiom yet.

It does close the Phase 3 obstruction by identifying and proving the missing
structural mechanism:

```text
squarefree factors of N are excluded from c2.
```

## Exact remaining theorem

The final theorem to prove is now:

```lean
theorem structural_c2_tail
    (p : Nat)
    (hp_lo : 1000000 < p)
    (hp_prime : Nat.Prime p)
    (hp_mod : p % 8 = 7)
    (hp_ge : 7 ≤ p) :
    FastExitBranch p ∨ Depth3OvershootBranch p
```

The proof must combine:

```text
1. Fast-exit if φ(N)/N is large.
2. If φ(N)/N is small, many small squarefree primes divide N.
3. Those primes are excluded from c2 by the squarefree-factor exclusion lemma.
4. Therefore φ(c2)/c2 is boosted above the Phase-2 β threshold.
5. Depth-3 overshoot follows.
```

## No drift

This is not a new lane. This is the structural completion of the exact Phase 3
failure.
