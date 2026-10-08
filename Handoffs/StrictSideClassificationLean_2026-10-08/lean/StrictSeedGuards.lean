import StrictSideScalarGuards
import Hadamard6.GramInvariant

/-!
Actual phase-seed binding of the strict-domain scalar guards. The seed is
any entrywise-unit 3 by 3 matrix. It need not be part of a physical order-six
matrix, product regular, invertible, or already completed.

The determinant/Gram theorem reused here belongs to classification pin
57b03025ecbe259e474281f49e201ea7cb474e34. The supplied strict-domain proof
is MinimalConstruction/Proofs/STRICT_DOMAIN.md, blob
80197ac4fee93bfb4ca93e2ec9b492e99610fb75.
-/

set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

def seedS (E : Hadamard6.Mat3) : ℂ :=
  -conj ((E * Matrix.conjTranspose E) 0 1)
def seedT (E : Hadamard6.Mat3) : ℂ :=
  -(E * Matrix.conjTranspose E) 2 0
def seedR (E : Hadamard6.Mat3) : ℂ :=
  -conj ((E * Matrix.conjTranspose E) 1 2)

/-- These are the literal negative lower-triangular correlations of 6I-EE*. -/
theorem seedS_eq_negative_rowGram (E : Hadamard6.Mat3) :
    seedS E = -(E * Matrix.conjTranspose E) 1 0 := by
  have h := (Matrix.isHermitian_mul_conjTranspose_self E).apply (1 : Fin 3) 0
  simpa [seedS, Complex.star_def] using congrArg Neg.neg h

theorem seedR_eq_negative_rowGram (E : Hadamard6.Mat3) :
    seedR E = -(E * Matrix.conjTranspose E) 2 1 := by
  have h := (Matrix.isHermitian_mul_conjTranspose_self E).apply (2 : Fin 3) 1
  simpa [seedR, Complex.star_def] using congrArg Neg.neg h

theorem seedP_eq_offDiagonalNormSum (E : Hadamard6.Mat3) :
    gramP (seedS E) (seedT E) (seedR E) =
      (Hadamard6.offDiagonalNormSum (E * Matrix.conjTranspose E)).re := by
  simp [gramP, seedS, seedT, seedR, Hadamard6.offDiagonalNormSum,
    Complex.star_def, Complex.normSq_apply, Complex.mul_re]
  <;> ring

theorem seedJ_eq_negative_gramTau (E : Hadamard6.Mat3) :
    gramJ (seedS E) (seedT E) (seedR E) =
      -2 * (Hadamard6.gramTau (E * Matrix.conjTranspose E)).re := by
  simp [gramJ, seedS, seedT, seedR, Hadamard6.gramTau,
    Complex.mul_re, Complex.mul_im]
  <;> ring

/-- The nonnegative complement determinant is derived from the actual seed. -/
theorem seed_complement_determinant (E : Hadamard6.Mat3)
    (hE : Hadamard6.EntrywiseUnit E) :
    Complex.normSq E.det =
      27 - 3 * gramP (seedS E) (seedT E) (seedR E) -
        gramJ (seedS E) (seedT E) (seedR E) := by
  have hd := Hadamard6.det_eq_of_hermitian_diagonal_three
    (Matrix.isHermitian_mul_conjTranspose_self E)
    (Hadamard6.rowGram_diagonal_three hE)
  have hn : (Matrix.det (E * Matrix.conjTranspose E)).re = Complex.normSq E.det := by
    simp [Matrix.det_mul, Matrix.det_conjTranspose, Complex.star_def, Complex.mul_conj]
  have hr := congrArg Complex.re hd
  rw [hn] at hr
  simp [Complex.mul_re, Complex.star_def] at hr
  have hp := seedP_eq_offDiagonalNormSum E
  have hj := seedJ_eq_negative_gramTau E
  linarith

/-- Explicit binding to the four source variables of RECONSTRUCTION.md. -/
theorem dephased_seed_correlations (a b c d : ℂ) :
    seedS (Hadamard6.corner a b c d) = -1 - a - b ∧
    seedT (Hadamard6.corner a b c d) = -1 - c - d ∧
    seedR (Hadamard6.corner a b c d) = -1 - c * conj a - d * conj b := by
  refine ⟨?_, ?_, ?_⟩ <;>
    simp [seedS, seedT, seedR, Hadamard6.corner, Matrix.mul_apply,
      Matrix.conjTranspose_apply, Fin.sum_univ_three] <;> ring

/-- The full-domain initial scalar and P guards, specialized to an actual seed. -/
theorem strict_seed_initial_guards (E : Hadamard6.Mat3)
    (hE : Hadamard6.EntrywiseUnit E)
    (hR : 0 < gramInvariant (seedS E) (seedT E) (seedR E)) :
    0 < gramG (seedS E) (seedT E) (seedR E) ∧
    0 < gramEta (seedS E) (seedT E) (seedR E) ∧
    gramP (seedS E) (seedT E) (seedR E) < 9 ∧
    Complex.normSq (seedS E) < 9 ∧
    Complex.normSq (seedT E) < 9 ∧
    Complex.normSq (seedR E) < 9 ∧
    0 < 1 - Complex.normSq (seedS E) / 9 ∧
    sideP0 (seedS E) (seedT E) (seedR E) ≠ 0 ∧
    sideP1 (seedS E) (seedT E) (seedR E) ≠ 0 ∧
    sideP2 (seedS E) (seedT E) (seedR E) ≠ 0 := by
  have hdet : 0 ≤ 27 - 3 * gramP (seedS E) (seedT E) (seedR E) -
      gramJ (seedS E) (seedT E) (seedR E) := by
    rw [← seed_complement_determinant E hE]
    exact Complex.normSq_nonneg _
  obtain ⟨hp, hg⟩ := strict_scalar_positive_branch hdet hR
  have heta := (strict_eta_pos_g_ne_zero hR).1
  have hs0 := Complex.normSq_nonneg (seedS E)
  have ht0 := Complex.normSq_nonneg (seedT E)
  have hr0 := Complex.normSq_nonneg (seedR E)
  have hs : Complex.normSq (seedS E) < 9 := by
    dsimp [gramP] at hp
    linarith
  have ht : Complex.normSq (seedT E) < 9 := by
    dsimp [gramP] at hp
    linarith
  have hr : Complex.normSq (seedR E) < 9 := by
    dsimp [gramP] at hp
    linarith
  have hn : 0 < 1 - Complex.normSq (seedS E) / 9 := by linarith
  obtain ⟨hP0, hP1, hP2⟩ := strict_sideP_nonzero hR
  exact ⟨hg, heta, hp, hs, ht, hr, hn, hP0, hP1, hP2⟩

end
end StrictReconstruction20261007

#print axioms StrictReconstruction20261007.seed_complement_determinant
#print axioms StrictReconstruction20261007.dephased_seed_correlations
#print axioms StrictReconstruction20261007.strict_seed_initial_guards
