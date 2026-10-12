import NoFourMUBs.Step2.Reconstruction.ThirdMoment.ConstantGramCancellation
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.SeedResiduals

set_option autoImplicit false
set_option maxHeartbeats 1000000
open Matrix Hadamard6
open StrictReconstruction20261007 Centiradian20261006
open scoped ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment

/-- The same actual constant matrix with the repeated Gram factor cancelled. -/
theorem seedImageConstant_reduced (p : StrictSeed) :
    seedImageConstant p.1 =
      ((seedG p.1 : ℂ) *
        (sideP0 (seedS p.1) (seedT p.1) (seedRho p.1) *
          conj (sideP1 (seedS p.1) (seedT p.1) (seedRho p.1))))⁻¹ •
      ((seedCorner p.1)ᴴ *
        constantGramNumerator (seedS p.1) (conj (seedS p.1))
          (seedT p.1) (conj (seedT p.1)) (seedRho p.1) (conj (seedRho p.1)) *
        (FourierGramNumerators.gram (seedS p.1) (seedT p.1) (seedRho p.1)).adjugateᴴ *
        seedCorner p.1) := by
  have hR : 0 < gramInvariant (seedS p.1) (seedT p.1) (seedRho p.1) := p.2
  have hg : (seedG p.1 : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (strict_eta_pos_g_ne_zero hR).2
  obtain ⟨hP,hQ,_⟩ := strict_sideP_nonzero hR
  have hB := conj_ne_zero_of_ne_zero hQ
  let E := seedCorner p.1
  let G := FourierGramNumerators.gram (seedS p.1) (seedT p.1) (seedRho p.1)
  let g : ℂ := seedG p.1
  let D := sideP0 (seedS p.1) (seedT p.1) (seedRho p.1) *
    conj (sideP1 (seedS p.1) (seedT p.1) (seedRho p.1))
  let C := constantGramNumerator (seedS p.1) (conj (seedS p.1))
    (seedT p.1) (conj (seedT p.1)) (seedRho p.1) (conj (seedRho p.1))
  have hC : G.adjugate * seedOneConstant p.1 = (g/D) • C :=
    oneConstant_adjugate _ _ _ hP hB
  have hstar : star g = g := Complex.conj_ofReal _
  have hD : D ≠ 0 := mul_ne_zero hP hB
  change _ = (g*D)⁻¹ • (Eᴴ*C*G.adjugateᴴ*E)
  simp only [seedImageConstant,seedCoefficient_adjugate p.1]
  change (-Eᴴ*(g⁻¹ • G.adjugate))*seedOneConstant p.1*
      (-Eᴴ*(g⁻¹ • G.adjugate))ᴴ = _
  calc
    _ = (g⁻¹*g⁻¹) • (Eᴴ*(G.adjugate*seedOneConstant p.1)*G.adjugateᴴ*E) := by
      simp only [Matrix.conjTranspose_mul,Matrix.conjTranspose_smul,
        Matrix.conjTranspose_neg,Matrix.conjTranspose_conjTranspose,
        star_inv₀,hstar,Matrix.neg_mul,Matrix.mul_neg,smul_neg,neg_neg,
        Matrix.smul_mul,Matrix.mul_smul,smul_smul,Matrix.mul_assoc]
    _ = ((g⁻¹*g⁻¹)*(g/D)) • (Eᴴ*C*G.adjugateᴴ*E) := by
      rw [hC]
      simp only [Matrix.mul_smul,Matrix.smul_mul,smul_smul]
    _ = _ := by
      congr 1
      field_simp [show g ≠ 0 from hg,hD]

end NoFourMUBs.Step2.Reconstruction.ThirdMoment
