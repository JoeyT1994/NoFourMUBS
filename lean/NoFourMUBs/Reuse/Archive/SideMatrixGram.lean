import NoFourMUBs.Reuse.Archive.SideMatrixRows
import NoFourMUBs.Reuse.Archive.StrictSideOrientedRoot
import Mathlib.Tactic.FinCases

/-! Literal M and G of RECONSTRUCTION.md Section 2, with their Gram identity. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

def sideMatrixCore (mu nu a b c d : ℂ) : Hadamard6.Mat3 :=
  !![1, 0, 0; mu, a, b; nu, c, d]

def normalizedSideGram (mu nu v : ℂ) : Hadamard6.Mat3 :=
  !![1, conj mu, conj nu; mu, 1, conj v; nu, v, 1]

def reconstructionGram (s t r : ℂ) : Hadamard6.Mat3 :=
  !![3, conj s, conj t; s, 3, conj r; t, r, 3]

def prescribedMatrix (s t r : ℂ) (epsilon : ℝ) (delta : ℂ) : Hadamard6.Mat3 :=
  sideMatrixCore (s / 3) (t / 3)
    (prescribedSigma s t r epsilon delta)
    (prescribedQ s t r epsilon delta * conj (prescribedSigma s t r epsilon delta))
    (prescribedCPlus s t r epsilon delta * prescribedSigma s t r epsilon delta)
    (prescribedCMinus s t r epsilon delta * conj (prescribedSigma s t r epsilon delta))

theorem sideMatrixCore_gram (mu nu a b c d v : ℂ)
    (hrow1 : Complex.normSq mu + Complex.normSq a + Complex.normSq b = 1)
    (hrow2 : Complex.normSq nu + Complex.normSq c + Complex.normSq d = 1)
    (hrow21 : nu * conj mu + c * conj a + d * conj b = v) :
    sideMatrixCore mu nu a b c d * Matrix.conjTranspose (sideMatrixCore mu nu a b c d) =
      normalizedSideGram mu nu v := by
  have h11 : mu * conj mu + a * conj a + b * conj b = 1 := by
    simp only [Complex.mul_conj]
    exact_mod_cast hrow1
  have h22 : nu * conj nu + c * conj c + d * conj d = 1 := by
    simp only [Complex.mul_conj]
    exact_mod_cast hrow2
  have h12 : mu * conj nu + a * conj c + b * conj d = conj v := by
    have h := congrArg (fun w : ℂ => conj w) hrow21
    simpa [mul_comm] using h
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [sideMatrixCore, normalizedSideGram, Matrix.mul_apply, Matrix.conjTranspose_apply,
      Fin.sum_univ_three, Complex.star_def, h11, h22, hrow21, h12]

theorem scale_normalizedSideGram (s t r : ℂ) :
    (3 : ℂ) • normalizedSideGram (s / 3) (t / 3) (r / 3) = reconstructionGram s t r := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [normalizedSideGram, reconstructionGram, Matrix.smul_apply, map_ofNat]
  <;> ring

/-- Literal reconstruction identity, with every scalar prerequisite discharged. -/
theorem prescribed_matrix_gram {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) (hn : 0 < preRhoN s)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon)
    (ho : 0 ≤ (prescribedDF s t r epsilon delta).re) :
    (3 : ℂ) • (prescribedMatrix s t r epsilon delta *
      Matrix.conjTranspose (prescribedMatrix s t r epsilon delta)) = reconstructionGram s t r := by
  obtain ⟨h1, h2, h21⟩ := prescribed_matrix_row_data hR hg hn he hd ho
  have hm := sideMatrixCore_gram (s / 3) (t / 3)
    (prescribedSigma s t r epsilon delta)
    (prescribedQ s t r epsilon delta * conj (prescribedSigma s t r epsilon delta))
    (prescribedCPlus s t r epsilon delta * prescribedSigma s t r epsilon delta)
    (prescribedCMinus s t r epsilon delta * conj (prescribedSigma s t r epsilon delta))
    (r / 3) h1 h2 h21
  change prescribedMatrix s t r epsilon delta *
    Matrix.conjTranspose (prescribedMatrix s t r epsilon delta) =
    normalizedSideGram (s / 3) (t / 3) (r / 3) at hm
  rw [hm, scale_normalizedSideGram]

/-- Actual strict seeds admit an oriented literal reconstruction M with 3MM*=G. -/
theorem strict_seed_matrix_gram_exists (E : Hadamard6.Mat3) (hE : Hadamard6.EntrywiseUnit E)
    (hR : 0 < gramInvariant (seedS E) (seedT E) (seedR E))
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    ∃ delta : ℂ,
      delta ^ 2 = prescribedDeltaRadicand (seedS E) (seedT E) (seedR E) epsilon ∧
      0 ≤ (prescribedDF (seedS E) (seedT E) (seedR E) epsilon delta).re ∧
      (3 : ℂ) • (prescribedMatrix (seedS E) (seedT E) (seedR E) epsilon delta *
        Matrix.conjTranspose (prescribedMatrix (seedS E) (seedT E) (seedR E) epsilon delta)) =
          reconstructionGram (seedS E) (seedT E) (seedR E) := by
  obtain ⟨delta, hd, ho, hn, _⟩ := strict_seed_oriented_guards_exist E hE hR he
  have hg := (strict_seed_initial_guards E hE hR).1
  exact ⟨delta, hd, ho, prescribed_matrix_gram hR hg hn he hd ho⟩

end
end StrictReconstruction20261007

#print axioms StrictReconstruction20261007.sideMatrixCore_gram
#print axioms StrictReconstruction20261007.prescribed_matrix_gram
#print axioms StrictReconstruction20261007.strict_seed_matrix_gram_exists
