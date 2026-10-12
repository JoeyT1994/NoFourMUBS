import NoFourMUBs.Step2.Reconstruction.ForcedProductMoments
import NoFourMUBs.Step2.Reconstruction.SeedModel
import NoFourMUBs.Reuse.Archive.SideMatrixSeedGram
import NoFourMUBs.Reuse.Archive.GramNumerators

set_option autoImplicit false
open Matrix Hadamard6
open scoped ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment

/-- The existing literal Gram matrix is the actual seed complement. -/
theorem seedComplement_eq_gram (p : Seed) :
    sixI3 - seedCorner p * (seedCorner p)ᴴ =
      FourierGramNumerators.gram (seedS p) (seedT p) (seedRho p) := by
  obtain ⟨hs,ht,hr⟩ := seed_correlations p
  have h := StrictReconstruction20261007.reconstructionGram_eq_seedComplement
    (seedCorner p) (seedCorner_entrywiseUnit p)
  rw [hs,ht,hr] at h
  rw [← h]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [StrictReconstruction20261007.reconstructionGram,
      FourierGramNumerators.gram,Complex.star_def]

/-- Reuse the checked three-by-three determinant formula without expanding the seed. -/
theorem seedComplement_det (p : Seed) :
    (sixI3 - seedCorner p * (seedCorner p)ᴴ).det = (seedG p : ℂ) := by
  rw [seedComplement_eq_gram,FourierGramNumerators.gram_det]
  congr 1
  simp only [FourierGramNumerators.g,seedG,seedP,seedX,seedY,seedZ,seedJ,
    mul_comm (seedRho p) (seedS p)]

/-- The forced coefficient matrix has exactly the saved cofactor-over-g form.
The equality also holds with Lean's totalized inverse at singular seeds. -/
theorem seedCoefficient_adjugate (p : Seed) :
    forcedCoefficientMatrix (seedCorner p) =
      -(seedCorner p)ᴴ * ((seedG p : ℂ)⁻¹ •
        (FourierGramNumerators.gram (seedS p) (seedT p) (seedRho p)).adjugate) := by
  unfold forcedCoefficientMatrix
  rw [Matrix.inv_def,Ring.inverse_eq_inv,seedComplement_det,seedComplement_eq_gram]

end NoFourMUBs.Step2.Reconstruction.ThirdMoment
