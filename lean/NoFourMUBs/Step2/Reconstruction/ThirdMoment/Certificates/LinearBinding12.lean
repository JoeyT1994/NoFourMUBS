import NoFourMUBs.Step2.Reconstruction.ThirdMoment.SeedResiduals
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.ForcedCoefficient
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.DenominatorSide
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P020

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSimpArgs false
open Matrix Hadamard6
open scoped ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- The original linear summand at (1,2) is the actual matrix expression. -/
theorem savedLinearBinding12 (p : StrictSeed) :
    seedOneConstant (transposedSeed p.1) 1 2 * seedImageLinear p.1 1 2 -
      seedOneLinear (transposedSeed p.1) 1 2 * seedImageConstant p.1 1 2 =
        polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P020 /
          polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P021 := by
  have hR : 0 < Centiradian20261006.gramInvariant
      (seedS p.1) (seedT p.1) (seedRho p.1) := p.2
  have hg : (seedG p.1 : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr
    (StrictReconstruction20261007.strict_eta_pos_g_ne_zero hR).2
  obtain ⟨hP0,hP1,_⟩ := StrictReconstruction20261007.strict_sideP_nonzero hR
  have hQ1 := StrictReconstruction20261007.conj_ne_zero_of_ne_zero hP1
  change (conj (seedT (transposedSeed p.1))) * seedImageLinear p.1 1 2 - 0 * seedImageConstant p.1 1 2 = _
  rw [P021_eq_b_mul_P015,P015_side_factor]
  simp only [zero_mul,sub_zero,seedImageLinear,seedCoefficient_adjugate p.1]
  rw [Matrix.adjugate_fin_three
    (FourierGramNumerators.gram (seedS p.1) (seedT p.1) (seedRho p.1))]
  simp only [Matrix.mul_apply,Fin.sum_univ_three,Matrix.conjTranspose_apply,
    Matrix.neg_apply,Matrix.smul_apply,smul_eq_mul,
    FourierGramNumerators.gram,seedOneLinear,oneLinear,seedCorner,corner,
    Matrix.of_apply,Matrix.cons_val_zero',Matrix.cons_val_succ',
    Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_two,
    Matrix.head_cons,Matrix.tail_cons,Complex.star_def,map_neg,map_add,map_sub,
    map_mul,map_inv₀,map_ofNat,Complex.conj_ofReal,starRingEnd_self_apply,
    mul_zero,zero_mul,add_zero,zero_add,mul_one,one_mul]
  field_simp [hg,hP0,hQ1,Circle.coe_ne_zero (p.1 0),Circle.coe_ne_zero (p.1 1),
    Circle.coe_ne_zero (p.1 2),Circle.coe_ne_zero (p.1 3)]
  have hj : (seedJ p.1 : ℂ) =
      seedS p.1*seedRho p.1*star (seedT p.1) +
        conj (seedS p.1*seedRho p.1*star (seedT p.1)) :=
    (Complex.add_conj _).symm
  simp only [seedG,seedP,seedX,seedY,seedZ,Complex.ofReal_add,Complex.ofReal_sub,
    Complex.ofReal_mul,Complex.ofReal_ofNat,Complex.normSq_eq_conj_mul_self,hj,
    StrictReconstruction20261007.sideP0,StrictReconstruction20261007.sideP1,
    seedS,seedT,seedRho,transposedSeed,Matrix.of_apply,
    Matrix.cons_val_zero',Matrix.cons_val_succ',Matrix.cons_val_zero,Matrix.cons_val_one,
    Matrix.cons_val_two,Matrix.cons_val_three,Matrix.head_cons,Matrix.tail_cons,
    Complex.star_def,map_add,map_neg,map_sub,map_mul,
    map_pow,map_one,map_ofNat,map_inv₀,starRingEnd_self_apply,
    NoFourMUBs.Step1Geo.conj_circle,inv_inv]
  simp only [polynomialValue,P020,
    P020A00,P020A01,P020A02,P020A03,
    sliceValue,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
    IntegerReflector.evalII,IntegerReflector.evalI,Coefficients.eval,
    List.map_cons,List.map_nil,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,
    Int.cast_one,zero_add,add_zero,mul_zero,mul_one]
  field_simp [Circle.coe_ne_zero (p.1 0),Circle.coe_ne_zero (p.1 1),
    Circle.coe_ne_zero (p.1 2),Circle.coe_ne_zero (p.1 3)]
  <;> ring

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
