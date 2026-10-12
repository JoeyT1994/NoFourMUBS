import NoFourMUBs.Reuse.Archive.StrictSeedGuards
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic.FieldSimp

/-!
Next initial MC3 segment from STRICT_DOMAIN.md and SIDE_FIBER.md at
NoFourMUBS ffa68fceefcc8a85f7dcb7918ee5c09888bec80d. The literal sheet
formula is z=(chi + epsilon*i*sqrt(R))/(2g), epsilon^2=1. The quotient
forms used in the proof dossier are explicitly identified below with the
literal lambda and delta formulas of RECONSTRUCTION.md Section 2.

The delta equation records the prescribed square-root choice; it is not
an added nonvanishing hypothesis. Both allowed roots are covered. The
final theorem derives the g sign from an actual entrywise-unit seed.
No dF/rho/sigma transfer identity is assumed or claimed by this module.
-/

set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

def sideZ (s t r : ℂ) (epsilon : ℝ) : ℂ :=
  ((gramChi s t r : ℂ) + ((epsilon * Real.sqrt (gramInvariant s t r) : ℝ) : ℂ) * Complex.I) /
    ((2 * gramG s t r : ℝ) : ℂ)

theorem sideZ_re (s t r : ℂ) (epsilon : ℝ) :
    (sideZ s t r epsilon).re = gramChi s t r / (2 * gramG s t r) := by
  unfold sideZ
  rw [Complex.div_ofReal_re]
  simp

theorem sideZ_normSq {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    Complex.normSq (sideZ s t r epsilon) = gramEta s t r := by
  have hg := (strict_eta_pos_g_ne_zero hR).2
  have h2g : 2 * gramG s t r ≠ 0 := mul_ne_zero (by norm_num) hg
  unfold sideZ
  rw [Complex.normSq_div, Complex.normSq_add_mul_I, Complex.normSq_ofReal]
  apply (div_eq_iff (mul_ne_zero h2g h2g)).2
  rw [mul_pow, he, one_mul, Real.sq_sqrt hR.le, gramInvariant_eq]
  ring

theorem normSq_real_add_conj (g c : ℝ) (z : ℂ) :
    Complex.normSq ((g : ℂ) + (c : ℂ) * conj z) =
      g ^ 2 + 2 * g * c * z.re + c ^ 2 * Complex.normSq z := by
  simp [Complex.normSq_apply, Complex.mul_re, Complex.mul_im]
  <;> ring

def sideLambda (s t r : ℂ) (epsilon c : ℝ) (P : ℂ) : ℂ :=
  ((gramG s t r : ℂ) + (c : ℂ) * conj (sideZ s t r epsilon)) / conj P

def sideLambda0 (s t r : ℂ) (epsilon : ℝ) : ℂ :=
  sideLambda s t r epsilon (9 - Complex.normSq r) (sideP0 s t r)
def sideLambda1 (s t r : ℂ) (epsilon : ℝ) : ℂ :=
  sideLambda s t r epsilon (9 - Complex.normSq t) (sideP1 s t r)
def sideLambda2 (s t r : ℂ) (epsilon : ℝ) : ℂ :=
  sideLambda s t r epsilon (9 - Complex.normSq s) (sideP2 s t r)

/-- Algebraic helper; the three literal P norm identities discharge its premise. -/
theorem sideLambda_normSq {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) (c : ℝ) (P : ℂ)
    (hP : Complex.normSq P = gramG s t r ^ 2 + c * gramChi s t r + c ^ 2 * gramEta s t r) :
    Complex.normSq (sideLambda s t r epsilon c P) = 1 := by
  have hg := (strict_eta_pos_g_ne_zero hR).2
  have hp : 0 < Complex.normSq P := by
    rw [hP]
    exact strict_quadratic_pos hR c
  have hnum :
      Complex.normSq ((gramG s t r : ℂ) + (c : ℂ) * conj (sideZ s t r epsilon)) =
        Complex.normSq P := by
    rw [normSq_real_add_conj, sideZ_re, sideZ_normSq hR he, hP]
    field_simp [hg]
    <;> ring
  unfold sideLambda
  rw [Complex.normSq_div, Complex.normSq_conj, hnum]
  exact div_self (ne_of_gt hp)

/-- Every prescribed lambda is a unit on both strict sheets. -/
theorem strict_sideLambda_units {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    Complex.normSq (sideLambda0 s t r epsilon) = 1 ∧
    Complex.normSq (sideLambda1 s t r epsilon) = 1 ∧
    Complex.normSq (sideLambda2 s t r epsilon) = 1 := by
  exact ⟨sideLambda_normSq hR he _ _ (sideP0_normSq s t r),
    sideLambda_normSq hR he _ _ (sideP1_normSq s t r),
    sideLambda_normSq hR he _ _ (sideP2_normSq s t r)⟩

def sideDeltaRadicand (s t r : ℂ) (epsilon : ℝ) : ℂ :=
  ((gramG s t r / 27 : ℝ) : ℂ) * sideLambda0 s t r epsilon /
    (sideLambda1 s t r epsilon * sideLambda2 s t r epsilon)

theorem sideDeltaRadicand_normSq {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    Complex.normSq (sideDeltaRadicand s t r epsilon) = (gramG s t r / 27) ^ 2 := by
  obtain ⟨h0, h1, h2⟩ := strict_sideLambda_units hR he
  simp [sideDeltaRadicand, Complex.normSq_div, Complex.normSq_mul, h0, h1, h2,
    Complex.normSq_ofReal, pow_two]
  <;> ring

/-- Any prescribed square root is nonzero on the positive g branch. -/
theorem strict_delta_guard {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = sideDeltaRadicand s t r epsilon) :
    Complex.normSq delta = gramG s t r / 27 ∧ delta ≠ 0 := by
  have hnorm := congrArg Complex.normSq hd
  rw [pow_two, Complex.normSq_mul, sideDeltaRadicand_normSq hR he] at hnorm
  have hn := Complex.normSq_nonneg delta
  have hg27 : 0 < gramG s t r / 27 := div_pos hg (by norm_num)
  have heq : Complex.normSq delta = gramG s t r / 27 := by nlinarith
  refine ⟨heq, Complex.normSq_pos.mp ?_⟩
  rw [heq]
  exact hg27

/-- The actual strict seed discharges the positive-g premise for both sheets
and every square-root choice, without a physical completion hypothesis. -/
theorem strict_seed_delta_guard (E : Hadamard6.Mat3)
    (hE : Hadamard6.EntrywiseUnit E)
    (hR : 0 < gramInvariant (seedS E) (seedT E) (seedR E))
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) {delta : ℂ}
    (hd : delta ^ 2 = sideDeltaRadicand (seedS E) (seedT E) (seedR E) epsilon) :
    Complex.normSq delta = gramG (seedS E) (seedT E) (seedR E) / 27 ∧ delta ≠ 0 := by
  exact strict_delta_guard hR (strict_seed_initial_guards E hE hR).1 he hd

/-- Literal lambda formula in RECONSTRUCTION.md Section 2. -/
def prescribedLambda (s t r : ℂ) (epsilon c : ℝ) (P : ℂ) : ℂ :=
  P * ((gramG s t r : ℂ) + (c : ℂ) * conj (sideZ s t r epsilon)) /
    (Complex.normSq P : ℂ)

theorem prescribedLambda_eq_sideLambda (s t r : ℂ) (epsilon c : ℝ)
    (P : ℂ) (hP : P ≠ 0) :
    prescribedLambda s t r epsilon c P = sideLambda s t r epsilon c P := by
  have hcP : conj P ≠ 0 := by
    intro h
    apply hP
    have h' := congrArg (fun z : ℂ => conj z) h
    simpa using h'
  unfold prescribedLambda sideLambda
  rw [← Complex.mul_conj P]
  field_simp [hP, hcP]
  <;> ring

def prescribedLambda0 (s t r : ℂ) (epsilon : ℝ) : ℂ :=
  prescribedLambda s t r epsilon (9 - Complex.normSq r) (sideP0 s t r)
def prescribedLambda1 (s t r : ℂ) (epsilon : ℝ) : ℂ :=
  prescribedLambda s t r epsilon (9 - Complex.normSq t) (sideP1 s t r)
def prescribedLambda2 (s t r : ℂ) (epsilon : ℝ) : ℂ :=
  prescribedLambda s t r epsilon (9 - Complex.normSq s) (sideP2 s t r)

theorem prescribedLambdas_eq_sideLambdas {s t r : ℂ}
    (hR : 0 < gramInvariant s t r) (epsilon : ℝ) :
    prescribedLambda0 s t r epsilon = sideLambda0 s t r epsilon ∧
    prescribedLambda1 s t r epsilon = sideLambda1 s t r epsilon ∧
    prescribedLambda2 s t r epsilon = sideLambda2 s t r epsilon := by
  obtain ⟨h0, h1, h2⟩ := strict_sideP_nonzero hR
  exact ⟨prescribedLambda_eq_sideLambda s t r epsilon _ _ h0,
    prescribedLambda_eq_sideLambda s t r epsilon _ _ h1,
    prescribedLambda_eq_sideLambda s t r epsilon _ _ h2⟩

/-- Literal conjugate-product radicand in RECONSTRUCTION.md Section 2. -/
def prescribedDeltaRadicand (s t r : ℂ) (epsilon : ℝ) : ℂ :=
  ((gramG s t r / 27 : ℝ) : ℂ) * prescribedLambda0 s t r epsilon *
    conj (prescribedLambda1 s t r epsilon) * conj (prescribedLambda2 s t r epsilon)

theorem prescribedDeltaRadicand_eq_sideDeltaRadicand {s t r : ℂ}
    (hR : 0 < gramInvariant s t r) {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    prescribedDeltaRadicand s t r epsilon = sideDeltaRadicand s t r epsilon := by
  obtain ⟨e0, e1, e2⟩ := prescribedLambdas_eq_sideLambdas hR epsilon
  obtain ⟨h0, h1, h2⟩ := strict_sideLambda_units hR he
  have hn1 : sideLambda1 s t r epsilon ≠ 0 := Complex.normSq_pos.mp (by rw [h1]; norm_num)
  have hn2 : sideLambda2 s t r epsilon ≠ 0 := Complex.normSq_pos.mp (by rw [h2]; norm_num)
  have hc1 : conj (sideLambda1 s t r epsilon) * sideLambda1 s t r epsilon = 1 := by
    rw [← Complex.normSq_eq_conj_mul_self, h1]
    norm_num
  have hc2 : conj (sideLambda2 s t r epsilon) * sideLambda2 s t r epsilon = 1 := by
    rw [← Complex.normSq_eq_conj_mul_self, h2]
    norm_num
  unfold prescribedDeltaRadicand sideDeltaRadicand
  rw [e0, e1, e2]
  apply (eq_div_iff (mul_ne_zero hn1 hn2)).2
  calc
    _ = ((gramG s t r / 27 : ℝ) : ℂ) * sideLambda0 s t r epsilon *
        (conj (sideLambda1 s t r epsilon) * sideLambda1 s t r epsilon) *
        (conj (sideLambda2 s t r epsilon) * sideLambda2 s t r epsilon) := by ring
    _ = _ := by rw [hc1, hc2]; ring

/-- Actual-seed nonvanishing for the literal, conjugate-product recipe. -/
theorem strict_seed_prescribed_delta_guard (E : Hadamard6.Mat3)
    (hE : Hadamard6.EntrywiseUnit E)
    (hR : 0 < gramInvariant (seedS E) (seedT E) (seedR E))
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) {delta : ℂ}
    (hd : delta ^ 2 = prescribedDeltaRadicand (seedS E) (seedT E) (seedR E) epsilon) :
    Complex.normSq delta = gramG (seedS E) (seedT E) (seedR E) / 27 ∧ delta ≠ 0 := by
  rw [prescribedDeltaRadicand_eq_sideDeltaRadicand hR he] at hd
  exact strict_seed_delta_guard E hE hR he hd

end
end StrictReconstruction20261007

#print axioms StrictReconstruction20261007.sideZ_normSq
#print axioms StrictReconstruction20261007.strict_sideLambda_units
#print axioms StrictReconstruction20261007.sideDeltaRadicand_normSq
#print axioms StrictReconstruction20261007.strict_seed_delta_guard
#print axioms StrictReconstruction20261007.prescribedLambda_eq_sideLambda
#print axioms StrictReconstruction20261007.prescribedDeltaRadicand_eq_sideDeltaRadicand
#print axioms StrictReconstruction20261007.strict_seed_prescribed_delta_guard
