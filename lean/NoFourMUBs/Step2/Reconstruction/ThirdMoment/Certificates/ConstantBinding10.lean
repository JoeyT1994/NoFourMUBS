import NoFourMUBs.Step2.Reconstruction.ThirdMoment.SeedResiduals
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.ConstantImageReduction
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.DenominatorSide
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.DenominatorGram
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P044

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option profiler true
set_option profiler.threshold 1000
set_option linter.unusedSimpArgs false
open Matrix Hadamard6
open scoped ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- The original constant summand at (1,0) is the actual matrix expression. -/
theorem savedConstantBinding10 (p : StrictSeed) :
    (seedOneConstant (transposedSeed p.1) 1 0 +
      (seedChi p.1 : ℂ) / (seedG p.1 : ℂ) * seedOneLinear (transposedSeed p.1) 1 0) *
        seedImageConstant p.1 1 0 +
      (seedEta p.1 : ℂ) * seedOneLinear (transposedSeed p.1) 1 0 *
        seedImageLinear p.1 1 0 =
        polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P044 /
          polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P045 := by
  have hR : 0 < Centiradian20261006.gramInvariant
      (seedS p.1) (seedT p.1) (seedRho p.1) := p.2
  have hg : (seedG p.1 : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr
    (StrictReconstruction20261007.strict_eta_pos_g_ne_zero hR).2
  obtain ⟨hP0,hP1,_⟩ := StrictReconstruction20261007.strict_sideP_nonzero hR
  have hQ1 := StrictReconstruction20261007.conj_ne_zero_of_ne_zero hP1
  change (3 + (seedChi p.1 : ℂ) / (seedG p.1 : ℂ) * 0) *
      seedImageConstant p.1 1 0 + (seedEta p.1 : ℂ) * 0 * seedImageLinear p.1 1 0 = _
  rw [P045_seed_factor,P003_side_factor,seedImageConstant_reduced p]
  simp only [mul_zero,zero_mul,add_zero,Matrix.smul_apply,smul_eq_mul]
  field_simp [hg,hP0,hQ1,Circle.coe_ne_zero (p.1 0),Circle.coe_ne_zero (p.1 1),
    Circle.coe_ne_zero (p.1 2),Circle.coe_ne_zero (p.1 3)]
  rw [Matrix.adjugate_fin_three
    (FourierGramNumerators.gram (seedS p.1) (seedT p.1) (seedRho p.1))]
  simp only [Matrix.mul_apply,Fin.sum_univ_three,Matrix.conjTranspose_apply,
    FourierGramNumerators.gram,constantGramNumerator,
    StrictReconstruction20261007.PreRhoAlignment.gramData,seedCorner,corner,
    Matrix.of_apply,Matrix.cons_val_zero',Matrix.cons_val_succ',
    Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_two,
    Matrix.head_cons,Matrix.tail_cons,Complex.star_def,map_neg,map_add,map_sub,
    map_mul,map_inv₀,map_pow,map_ofNat,Complex.conj_ofReal,starRingEnd_self_apply,
    mul_zero,zero_mul,add_zero,zero_add,mul_one,one_mul]
  simp only [seedS,seedT,seedRho,Complex.star_def,map_add,map_neg,map_sub,map_mul,
    map_pow,map_one,map_ofNat,map_inv₀,starRingEnd_self_apply,
    NoFourMUBs.Step1Geo.conj_circle,inv_inv]
  field_simp [Circle.coe_ne_zero (p.1 0),Circle.coe_ne_zero (p.1 1),
    Circle.coe_ne_zero (p.1 2),Circle.coe_ne_zero (p.1 3)]
  conv_rhs =>
    simp only [polynomialValue,P044,
      P044A00,P044A01,P044A02,P044A03,P044A04,P044A05,P044A06,P044A07,
      sliceValue,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
      IntegerReflector.evalII,IntegerReflector.evalI,Coefficients.eval,
      List.map_cons,List.map_nil,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,
      Int.cast_one,zero_add,add_zero,mul_zero,mul_one]
  ring

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
