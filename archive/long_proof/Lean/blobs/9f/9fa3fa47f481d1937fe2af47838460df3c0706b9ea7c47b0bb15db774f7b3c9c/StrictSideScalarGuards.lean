import CentiradianPhysical
import Mathlib.Tactic.Positivity

/-!
Exact scalar part of MinimalConstruction/Proofs/STRICT_DOMAIN.md at
NoFourMUBS ffa68fceefcc8a85f7dcb7918ee5c09888bec80d, source blob
80197ac4fee93bfb4ca93e2ec9b492e99610fb75.

The definitions below use the already checked campaign Gram convention.
The P identities are proved as complex polynomial identities, not supplied
as certificate hypotheses. No product-regularity or physical completion is
assumed. This module establishes only the listed initial constructor guards.
-/

set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

def gramG (s t r : ℂ) : ℝ := 27 - 3 * gramP s t r + gramJ s t r
def gramEta (s t r : ℂ) : ℝ := 9 - gramP s t r + gramJ s t r
def gramChi (s t r : ℂ) : ℝ :=
  gramW s t r - (gramP s t r - 9) * (gramP s t r - 18) +
    (gramP s t r - 15) * gramJ s t r

def sideP0 (s t r : ℂ) : ℂ :=
  r * s ^ 2 + conj r * t ^ 2 + (3 - (Complex.normSq r : ℂ)) * s * t
def sideP1 (s t r : ℂ) : ℂ := sideP0 (conj s) r t
def sideP2 (s t r : ℂ) : ℂ := sideP0 (conj t) (conj r) s

theorem gramInvariant_eq (s t r : ℂ) :
    gramInvariant s t r = 4 * gramG s t r ^ 2 * gramEta s t r - gramChi s t r ^ 2 := rfl

/-- The entire strict scalar locus has eta positive and g nonzero. -/
theorem strict_eta_pos_g_ne_zero {s t r : ℂ} (hR : 0 < gramInvariant s t r) :
    0 < gramEta s t r ∧ gramG s t r ≠ 0 := by
  rw [gramInvariant_eq] at hR
  have heta : 0 < gramEta s t r := by
    by_contra h
    have hn : gramEta s t r ≤ 0 := le_of_not_gt h
    have hp : 4 * gramG s t r ^ 2 * gramEta s t r ≤ 0 :=
      mul_nonpos_of_nonneg_of_nonpos (by positivity) hn
    nlinarith [sq_nonneg (gramChi s t r)]
  refine ⟨heta, ?_⟩
  intro hg
  rw [hg] at hR
  nlinarith [sq_nonneg (gramChi s t r)]

/-- The norm-square identity is universal in the three complex correlations. -/
theorem sideP0_normSq (s t r : ℂ) :
    Complex.normSq (sideP0 s t r) = gramG s t r ^ 2 +
      (9 - Complex.normSq r) * gramChi s t r +
      (9 - Complex.normSq r) ^ 2 * gramEta s t r := by
  simp [sideP0, gramG, gramEta, gramChi, gramP, gramJ, gramW,
    Complex.normSq_apply, Complex.mul_re, Complex.mul_im, pow_two]
  <;> ring

theorem gramP_rotate1 (s t r : ℂ) : gramP (conj s) r t = gramP s t r := by
  simp [gramP] <;> ring

theorem gramJ_rotate1 (s t r : ℂ) : gramJ (conj s) r t = gramJ s t r := by
  simp [gramJ, Complex.mul_re, Complex.mul_im] <;> ring

theorem gramW_rotate1 (s t r : ℂ) : gramW (conj s) r t = gramW s t r := by
  simp [gramW] <;> ring

theorem gramP_rotate2 (s t r : ℂ) : gramP (conj t) (conj r) s = gramP s t r := by
  simp [gramP] <;> ring

theorem gramJ_rotate2 (s t r : ℂ) : gramJ (conj t) (conj r) s = gramJ s t r := by
  simp [gramJ, Complex.mul_re, Complex.mul_im] <;> ring

theorem gramW_rotate2 (s t r : ℂ) : gramW (conj t) (conj r) s = gramW s t r := by
  simp [gramW] <;> ring

theorem sideP1_normSq (s t r : ℂ) :
    Complex.normSq (sideP1 s t r) = gramG s t r ^ 2 +
      (9 - Complex.normSq t) * gramChi s t r +
      (9 - Complex.normSq t) ^ 2 * gramEta s t r := by
  simpa only [sideP1, gramG, gramChi, gramEta, gramP_rotate1,
    gramJ_rotate1, gramW_rotate1] using sideP0_normSq (conj s) r t

theorem sideP2_normSq (s t r : ℂ) :
    Complex.normSq (sideP2 s t r) = gramG s t r ^ 2 +
      (9 - Complex.normSq s) * gramChi s t r +
      (9 - Complex.normSq s) ^ 2 * gramEta s t r := by
  simpa only [sideP2, gramG, gramChi, gramEta, gramP_rotate2,
    gramJ_rotate2, gramW_rotate2] using sideP0_normSq (conj t) (conj r) s

/-- Completing the square with denominators cleared. -/
theorem strict_quadratic_pos {s t r : ℂ} (hR : 0 < gramInvariant s t r) (c : ℝ) :
    0 < gramG s t r ^ 2 + c * gramChi s t r + c ^ 2 * gramEta s t r := by
  have heta := (strict_eta_pos_g_ne_zero hR).1
  have hid :
      4 * gramEta s t r * (gramG s t r ^ 2 + c * gramChi s t r + c ^ 2 * gramEta s t r) =
        (2 * gramEta s t r * c + gramChi s t r) ^ 2 + gramInvariant s t r := by
    rw [gramInvariant_eq]
    ring
  have hp : 0 < 4 * gramEta s t r *
      (gramG s t r ^ 2 + c * gramChi s t r + c ^ 2 * gramEta s t r) := by
    rw [hid]
    nlinarith [sq_nonneg (2 * gramEta s t r * c + gramChi s t r)]
  exact (mul_pos_iff_of_pos_left (by positivity : 0 < 4 * gramEta s t r)).mp hp

/-- All three actual prescribed P divisors are nonzero on the full R>0 locus. -/
theorem strict_sideP_nonzero {s t r : ℂ} (hR : 0 < gramInvariant s t r) :
    sideP0 s t r ≠ 0 ∧ sideP1 s t r ≠ 0 ∧ sideP2 s t r ≠ 0 := by
  have h0 : 0 < Complex.normSq (sideP0 s t r) := by
    rw [sideP0_normSq]
    exact strict_quadratic_pos hR _
  have h1 : 0 < Complex.normSq (sideP1 s t r) := by
    rw [sideP1_normSq]
    exact strict_quadratic_pos hR _
  have h2 : 0 < Complex.normSq (sideP2 s t r) := by
    rw [sideP2_normSq]
    exact strict_quadratic_pos hR _
  exact ⟨Complex.normSq_pos.mp h0, Complex.normSq_pos.mp h1, Complex.normSq_pos.mp h2⟩

/-- The complement determinant inequality forces p<9 and the positive g sign. -/
theorem strict_scalar_positive_branch {s t r : ℂ}
    (hdet : 0 ≤ 27 - 3 * gramP s t r - gramJ s t r)
    (hR : 0 < gramInvariant s t r) :
    gramP s t r < 9 ∧ 0 < gramG s t r := by
  have heta := (strict_eta_pos_g_ne_zero hR).1
  dsimp [gramEta] at heta
  constructor
  · linarith
  · dsimp [gramG]
    linarith

end
end StrictReconstruction20261007

#print axioms StrictReconstruction20261007.sideP0_normSq
#print axioms StrictReconstruction20261007.sideP1_normSq
#print axioms StrictReconstruction20261007.sideP2_normSq
#print axioms StrictReconstruction20261007.strict_sideP_nonzero
#print axioms StrictReconstruction20261007.strict_scalar_positive_branch
