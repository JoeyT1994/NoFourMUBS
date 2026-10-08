import StrictSeedGuards
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic.FieldSimp

/-!
Next initial MC3 segment from STRICT_DOMAIN.md and SIDE_FIBER.md at
NoFourMUBS ffa68fceefcc8a85f7dcb7918ee5c09888bec80d. The literal sheet
formula is z=(chi + epsilon*i*sqrt(R))/(2g), epsilon^2=1. The lambda
and delta radicand formulas below are the supplied constructor formulas.

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
  simp [sideZ]

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

end
end StrictReconstruction20261007

#print axioms StrictReconstruction20261007.sideZ_normSq
#print axioms StrictReconstruction20261007.strict_sideLambda_units
#print axioms StrictReconstruction20261007.sideDeltaRadicand_normSq
#print axioms StrictReconstruction20261007.strict_seed_delta_guard
