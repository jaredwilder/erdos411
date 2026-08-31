import Mathlib.Data.Nat.Totient
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Logic.Function.Iterate
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-! # Proof that fastTotient = Nat.totient

Strategy: Function.iterate bridges Nat.fold → divOut correctness.
Then a 5-component fold invariant for the outer trial-division loop. -/

section FastTotientProof

-- ════════════════════════════════════════════
-- DEFINITIONS (before `open Nat` — `phi` avoids φ clash)
-- ════════════════════════════════════════════

private def divStep (q x : ℕ) : ℕ := if q ∣ x then x / q else x

private def divOut (q m : ℕ) : ℕ :=
 Nat.fold (Nat.log q m + 1) (fun _ _ x => divStep q x) m

def fastTotient (n : ℕ) : ℕ :=
 if n = 0 then 0
 else
 let ⟨phi, m⟩ := Nat.fold (Nat.sqrt n + 1)
 (fun i _ (acc : ℕ × ℕ) =>
 let q := i + 2
 if q * q > acc.2 ∨ acc.2 ≤ 1 then acc
 else if q ∣ acc.2 then (acc.1 / q * (q - 1), divOut q acc.2)
 else acc)
 (n, n)
 if m > 1 then phi / m * (m - 1) else phi

-- ════════════════════════════════════════════
-- Open Nat for φ notation, ordCompl, etc.
-- ════════════════════════════════════════════
open Nat

-- ════════════════════════════════════════════
-- PART 1: Nat.fold ↔ Function.iterate
-- ════════════════════════════════════════════

private lemma fold_eq_iterate {α : Type*} (g : α → α) (n : ℕ) (init : α) :
 Nat.fold n (fun (_ : ℕ) (_ : _ < n) => g) init = g^[n] init := by
 induction n with
 | zero => rfl
 | succ n ih =>
 rw [Nat.fold_succ, Function.iterate_succ']
 exact congrArg g ih

-- ════════════════════════════════════════════
-- PART 2: divOut q m = ordCompl[q] m
-- ════════════════════════════════════════════

private lemma divStep_of_dvd {q x : ℕ} (h : q ∣ x) : divStep q x = x / q := by
 simp [divStep, h]

private lemma divStep_of_not_dvd {q x : ℕ} (h : ¬ q ∣ x) : divStep q x = x := by
 simp [divStep, h]

private lemma divStep_ordCompl {q : ℕ} (hq : Nat.Prime q) {m : ℕ} (hm : m ≠ 0) :
 divStep q (ordCompl[q] m) = ordCompl[q] m :=
 divStep_of_not_dvd (Nat.not_dvd_ordCompl hq hm)

private lemma factorization_div_prime {q m : ℕ} (hq : Nat.Prime q) (hdvd : q ∣ m) :
 (m / q).factorization q = m.factorization q - 1 := by
 rw [Nat.factorization_div hdvd, Finsupp.tsub_apply, hq.factorization_self]

private lemma ordCompl_div_eq {q m : ℕ} (hq : Nat.Prime q) (_hm : 0 < m)
 (hdvd : q ∣ m) (hv : 0 < m.factorization q) :
 ordCompl[q] (m / q) = ordCompl[q] m := by
 show (m / q) / q ^ ((m / q).factorization q) = m / q ^ m.factorization q
 rw [factorization_div_prime hq hdvd]
 -- Goal: (m/q) / q^(fac-1) = m / q^fac
 -- Rewrite RHS: q^fac = q * q^(fac-1), then m / (q*q^(fac-1)) = m/q / q^(fac-1)
 conv_rhs => rw [show m.factorization q = (m.factorization q - 1) + 1 from by omega,
 pow_succ, mul_comm, ← Nat.div_div_eq_div_mul]

private lemma iterate_divStep_eq_ordCompl (q : ℕ) (hq : Nat.Prime q) (m : ℕ) (hm : 0 < m) :
 (divStep q)^[m.factorization q] m = ordCompl[q] m := by
 induction h_eq : m.factorization q generalizing m with
 | zero =>
 simp only [Function.iterate_zero, id]
 rw [pow_zero, Nat.div_one]
 | succ v ih =>
 rw [Function.iterate_succ, Function.comp_apply]
 have hdvd : q ∣ m := (hq.dvd_iff_one_le_factorization hm.ne').mpr (by omega)
 rw [divStep_of_dvd hdvd]
 have hm' : 0 < m / q := Nat.div_pos (Nat.le_of_dvd hm hdvd) hq.pos
 have h_eq' : (m / q).factorization q = v := by
 rw [factorization_div_prime hq hdvd]; omega
 rw [ih (m / q) hm' h_eq']
 -- Goal: (m / q) / q ^ v = m / q ^ (v + 1)
 rw [Nat.div_div_eq_div_mul, show q * q ^ v = q ^ (v + 1) from by ring]

private lemma iterate_ge_fixed {α : Type*} (f : α → α) {k n : ℕ} {x y : α}
 (hle : k ≤ n) (hk : f^[k] x = y) (hfy : f y = y) :
 f^[n] x = y := by
 rw [show n = (n - k) + k from by omega, Function.iterate_add_apply, hk]
 exact Function.iterate_fixed hfy _

private lemma pow_factorization_dvd (q m : ℕ) : q ^ m.factorization q ∣ m :=
 ⟨m / q ^ m.factorization q, (Nat.ordProj_mul_ordCompl_eq_self m q).symm⟩

private lemma factorization_le_log {q m : ℕ} (hq : 1 < q) (hm : 0 < m) :
 m.factorization q ≤ Nat.log q m :=
 le_log_of_pow_le hq (Nat.le_of_dvd hm (pow_factorization_dvd q m))

private theorem divOut_eq_ordCompl (q : ℕ) (hq : Nat.Prime q) (m : ℕ) (hm : 0 < m) :
 divOut q m = ordCompl[q] m := by
 unfold divOut
 rw [fold_eq_iterate (divStep q) (Nat.log q m + 1) m]
 exact iterate_ge_fixed (divStep q)
 (by linarith [factorization_le_log hq.one_lt hm])
 (iterate_divStep_eq_ordCompl q hq m hm)
 (divStep_ordCompl hq hm.ne')

-- ════════════════════════════════════════════
-- PART 3: Outer fold invariant
-- ════════════════════════════════════════════

/-- Fold invariant. `nsp` guards on `p * p ≤ acc.2` for early-exit correctness. -/
private structure FI (n i : ℕ) (acc : ℕ × ℕ) : Prop where
 main : acc.1 * acc.2.totient = n.totient * acc.2
 pos : 0 < acc.2
 dvd : acc.2 ∣ n
 pdvd : ∀ r : ℕ, r.Prime → r ∣ acc.2 → r ∣ acc.1
 nsp : ∀ p : ℕ, p.Prime → p < i + 2 → p * p ≤ acc.2 → ¬ p ∣ acc.2

private lemma fi_init (n : ℕ) (hn : 0 < n) : FI n 0 (n, n) where
 main := by ring
 pos := hn
 dvd := dvd_refl n
 pdvd := fun _ _ h => h
 nsp := fun p hp hlt _ _ => by have := hp.two_le; omega

private def outerStep (i : ℕ) (acc : ℕ × ℕ) : ℕ × ℕ :=
 if (i + 2) * (i + 2) > acc.2 ∨ acc.2 ≤ 1 then acc
 else if (i + 2) ∣ acc.2 then (acc.1 / (i + 2) * ((i + 2) - 1), divOut (i + 2) acc.2)
 else acc

private lemma fi_step (n i : ℕ) (acc : ℕ × ℕ) (hI : FI n i acc) :
 FI n (i + 1) (outerStep i acc) := by
 unfold outerStep
 split_ifs with hA hB
 · -- Case 1: early exit
 exact ⟨hI.main, hI.pos, hI.dvd, hI.pdvd,
 fun p hp hlt hsq hpd => by
 rcases Nat.lt_succ_iff_lt_or_eq.mp hlt with h | rfl
 · exact hI.nsp p hp h hsq hpd
 · rcases hA with hqq | h1
 · omega
 · exact absurd (Nat.le_of_dvd hI.pos hpd) (by omega)⟩
 · -- Case 2: q = i+2 divides acc.2, early exit didn't fire
 set q := i + 2 with hq_def
 have hq_ge2 : 2 ≤ q := by omega
 have hqq : q * q ≤ acc.2 := by
 rcases not_or.mp hA with ⟨h1, h2⟩; omega
 have hqP : q.Prime := by
 by_contra hqnP
 have h_mf_lt : q.minFac < q := (Nat.not_prime_iff_minFac_lt hq_ge2).mp hqnP
 exact hI.nsp q.minFac (Nat.minFac_prime (by omega))
 (by omega)
 (le_trans (mul_le_mul' h_mf_lt.le h_mf_lt.le) hqq)
 ((Nat.minFac_dvd q).trans hB)
 rw [divOut_eq_ordCompl q hqP acc.2 hI.pos]
 set M := ordCompl[q] acc.2
 set v := acc.2.factorization q
 have hv1 : 1 ≤ v := (hqP.dvd_iff_one_le_factorization hI.pos.ne').mp hB
 have hMpos : 0 < M := Nat.ordCompl_pos q hI.pos.ne'
 have hdecomp : acc.2 = q ^ v * M :=
 (Nat.ordProj_mul_ordCompl_eq_self acc.2 q).symm
 have hcop : Nat.Coprime (q ^ v) M :=
 Coprime.pow_left v (hqP.coprime_iff_not_dvd.mpr
 (Nat.not_dvd_ordCompl hqP hI.pos.ne'))
 have htot : acc.2.totient = q ^ (v - 1) * (q - 1) * M.totient := by
 rw [hdecomp, totient_mul hcop]
 conv_lhs => rw [show v = (v - 1) + 1 from by omega]
 rw [Nat.totient_prime_pow_succ hqP]
 obtain ⟨k, hk⟩ := hI.pdvd q hqP hB
 constructor
 · -- main: (acc.1/q*(q-1)) * φ(M) = n.totient * M
 have hqp : 0 < q := by omega
 rw [hk, Nat.mul_div_cancel_left _ hqp]
 have H := hI.main; rw [hk, htot, hdecomp] at H
 have hqv : q ^ v = q * q ^ (v - 1) := by
 conv_lhs => rw [show v = (v - 1) + 1 from by omega, pow_succ, mul_comm]
 rw [hqv] at H
 have h1 : q * (k * (q ^ (v - 1) * (q - 1) * φ M)) =
 q * (n.totient * (q ^ (v - 1) * M)) := by nlinarith
 have h2 := Nat.eq_of_mul_eq_mul_left hqp h1
 have hqv1_pos : 0 < q ^ (v - 1) := Nat.pow_pos hqp
 have h3 : q ^ (v - 1) * (k * ((q - 1) * φ M)) =
 q ^ (v - 1) * (n.totient * M) := by nlinarith
 linarith [Nat.eq_of_mul_eq_mul_left hqv1_pos h3]
 · exact hMpos
 · exact (Nat.ordCompl_dvd acc.2 q).trans hI.dvd
 · -- pdvd
 intro r hr hrM
 have hrq : r ≠ q := by
 intro heq; rw [heq] at hrM
 exact Nat.not_dvd_ordCompl hqP hI.pos.ne' hrM
 have hracc : r ∣ acc.2 := dvd_trans hrM (Nat.ordCompl_dvd acc.2 q)
 have hrphi : r ∣ acc.1 := hI.pdvd r hr hracc
 rw [hk] at hrphi
 have hrk : r ∣ k := by
 rcases hr.dvd_mul.mp hrphi with h | h
 · exact absurd ((Nat.prime_dvd_prime_iff_eq hr hqP).mp h) hrq
 · exact h
 show r ∣ acc.1 / q * (q - 1)
 rw [hk, Nat.mul_div_cancel_left _ (by omega : 0 < q)]
 exact dvd_mul_of_dvd_left hrk (q - 1)
 · -- nsp
 intro p hp hlt hsq hpM
 rcases Nat.lt_succ_iff_lt_or_eq.mp hlt with h | hpq
 · exact hI.nsp p hp h (le_trans hsq (Nat.div_le_self _ _)) (dvd_trans hpM (Nat.ordCompl_dvd acc.2 q))
 · subst hpq; exact absurd hpM (Nat.not_dvd_ordCompl hqP hI.pos.ne')
 · -- Case 3: q does not divide acc.2
 exact ⟨hI.main, hI.pos, hI.dvd, hI.pdvd,
 fun p hp hlt hsq hpd => by
 rcases Nat.lt_succ_iff_lt_or_eq.mp hlt with h | rfl
 · exact hI.nsp p hp h hsq hpd
 · exact hB hpd⟩

-- ════════════════════════════════════════════
-- PART 4: fastTotient_eq
-- ════════════════════════════════════════════

private lemma m_one_or_prime {n : ℕ} (hn : 0 < n) {acc : ℕ × ℕ}
 (hI : FI n (Nat.sqrt n + 1) acc) : acc.2 = 1 ∨ acc.2.Prime := by
 by_contra h
 rw [not_or] at h
 obtain ⟨hne1, hnP⟩ := h
 have hgt1 : 1 < acc.2 := by
 rcases Nat.eq_or_lt_of_le (Nat.one_le_iff_ne_zero.mpr hI.pos.ne') with h | h
 · exact absurd h.symm hne1
 · exact h
 have hmin_prime := Nat.minFac_prime (by omega)
 have hmf_dvd := Nat.minFac_dvd acc.2
 have hmf_lt : acc.2.minFac < acc.2 :=
 (Nat.not_prime_iff_minFac_lt (by omega)).mp hnP
 -- minFac² ≤ acc.2 (otherwise acc.2 is prime)
 have hmf_sq : acc.2.minFac * acc.2.minFac ≤ acc.2 := by
 have hdvd' : (acc.2 / acc.2.minFac) ∣ acc.2 := Nat.div_dvd_of_dvd hmf_dvd
 have hgt' : 1 < acc.2 / acc.2.minFac := by
 by_contra hle
 simp only [not_lt] at hle
 nlinarith [Nat.div_mul_cancel hmf_dvd, Nat.mul_le_mul_right acc.2.minFac hle]
 calc acc.2.minFac * acc.2.minFac
 ≤ acc.2.minFac * (acc.2 / acc.2.minFac) :=
 Nat.mul_le_mul_left _ (Nat.minFac_le_of_dvd hgt' hdvd')
 _ = acc.2 := Nat.mul_div_cancel' hmf_dvd
 have hle : acc.2 ≤ n := Nat.le_of_dvd hn hI.dvd
 have hmf_le_sqrt : acc.2.minFac ≤ Nat.sqrt n :=
 le_trans (le_sqrt.mpr hmf_sq) (sqrt_le_sqrt hle)
 exact hI.nsp acc.2.minFac hmin_prime (by omega) hmf_sq hmf_dvd

private lemma fold_preserves_fi (n k : ℕ) (hn : 0 < n) :
 FI n k (Nat.fold k
 (fun i _ (acc : ℕ × ℕ) =>
 let q := i + 2
 if q * q > acc.2 ∨ acc.2 ≤ 1 then acc
 else if q ∣ acc.2 then (acc.1 / q * (q - 1), divOut q acc.2)
 else acc)
 (n, n)) := by
 induction k with
 | zero => exact fi_init n hn
 | succ k ih =>
 rw [Nat.fold_succ]
 exact fi_step n k _ ih

theorem fastTotient_eq (n : ℕ) : fastTotient n = n.totient := by
 unfold fastTotient
 split_ifs with hn
 · subst hn; rfl
 · have hn_pos : 0 < n := Nat.pos_of_ne_zero hn
 -- Get fold invariant first, THEN set, so `set` replaces in hI too
 have hI := fold_preserves_fi n (Nat.sqrt n + 1) hn_pos
 -- Name the fold result; `set` replaces in goal AND hypotheses
 set R := (Nat.sqrt n + 1).fold
 (fun i _ (acc : ℕ × ℕ) =>
 let q := i + 2
 if q * q > acc.2 ∨ acc.2 ≤ 1 then acc
 else if q ∣ acc.2 then (acc.1 / q * (q - 1), divOut q acc.2)
 else acc)
 (n, n)
 rcases m_one_or_prime hn_pos hI with hm1 | hmP
 · -- m = 1
 have : ¬ R.2 > 1 := by omega
 simp only [this, ↓reduceIte]
 have hmain := hI.main
 rw [hm1, Nat.totient_one, mul_one, mul_one] at hmain
 exact hmain
 · -- m is prime
 have hgt1 : R.2 > 1 := hmP.one_lt
 simp only [hgt1, ↓reduceIte]
 have hmain := hI.main
 rw [totient_prime hmP] at hmain
 -- hmain : R.1 * (R.2 - 1) = n.totient * R.2
 obtain ⟨k, hk⟩ := hI.pdvd R.2 hmP (dvd_refl R.2)
 -- hk : R.1 = R.2 * k
 rw [hk] at hmain ⊢
 rw [Nat.mul_div_cancel_left _ hI.pos]
 -- hmain : R.2 * k * (R.2 - 1) = n.totient * R.2
 -- goal : k * (R.2 - 1) = n.totient
 have hmul : R.2 * (k * (R.2 - 1)) = R.2 * n.totient := by
 rw [← mul_assoc, hmain, mul_comm]
 exact Nat.eq_of_mul_eq_mul_left hI.pos hmul

end FastTotientProof
