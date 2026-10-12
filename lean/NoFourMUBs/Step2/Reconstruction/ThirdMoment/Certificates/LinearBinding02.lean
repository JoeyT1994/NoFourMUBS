import NoFourMUBs.Step2.Reconstruction.ThirdMoment.SeedResiduals
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.ForcedCoefficient
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.DenominatorSingle
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P010

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
set_option profiler true
set_option profiler.threshold 1000
set_option linter.unusedSimpArgs false
open Matrix Hadamard6
open scoped ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- The original linear summand at (0,2), retaining both actual matrix products. -/
theorem savedLinearBinding02 (p : StrictSeed) :
    seedOneConstant (transposedSeed p.1) 0 2 * seedImageLinear p.1 0 2 -
      seedOneLinear (transposedSeed p.1) 0 2 * seedImageConstant p.1 0 2 =
        polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P010 /
          polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P011 := by
  have hR : 0 < Centiradian20261006.gramInvariant
      (seedS p.1) (seedT p.1) (seedRho p.1) := p.2
  have hg : (seedG p.1 : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr
    (StrictReconstruction20261007.strict_eta_pos_g_ne_zero hR).2
  obtain ⟨hP0,hP1,_⟩ := StrictReconstruction20261007.strict_sideP_nonzero hR
  have hQ1 := StrictReconstruction20261007.conj_ne_zero_of_ne_zero hP1
  have hRT : 0 < Centiradian20261006.gramInvariant
      (seedS (transposedSeed p.1)) (seedT (transposedSeed p.1))
        (seedRho (transposedSeed p.1)) := by
    change 0 < seedR (transposedSeed p.1)
    rw [(transposedSeed_invariants p.1).1]; exact p.2
  obtain ⟨hTP0,hTP1,_⟩ := StrictReconstruction20261007.strict_sideP_nonzero hRT
  have hTQ1 := StrictReconstruction20261007.conj_ne_zero_of_ne_zero hTP1
  rw [P011_side_factor p,P003_side_factor p.1]
  simp only [seedImageLinear,seedImageConstant,seedCoefficient_adjugate p.1]
  rw [Matrix.adjugate_fin_three
    (FourierGramNumerators.gram (seedS p.1) (seedT p.1) (seedRho p.1))]
  simp only [Matrix.mul_apply,Fin.sum_univ_three,Matrix.conjTranspose_apply,
    Matrix.neg_apply,Matrix.smul_apply,smul_eq_mul,
    FourierGramNumerators.gram,seedOneConstant,oneConstant,seedOneLinear,oneLinear,
    productAffine,permanentAffine,mixedAffine,seedCorner,corner,
    Matrix.of_apply,Matrix.cons_val_zero',Matrix.cons_val_succ',
    Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_two,
    Matrix.head_cons,Matrix.tail_cons,Complex.star_def,map_neg,map_add,map_sub,
    map_mul,map_inv₀,map_ofNat,Complex.conj_ofReal,starRingEnd_self_apply,
    mul_zero,zero_mul,add_zero,zero_add,mul_one,one_mul]
  simp only [(transposedSeed_scalar_pair p.1).1,(transposedSeed_scalar_pair p.1).2,
    (transposedSeed_invariants p.1).2]
  field_simp [hg,hP0,hQ1,hTP0,hTQ1,Circle.coe_ne_zero (p.1 0),
    Circle.coe_ne_zero (p.1 1),Circle.coe_ne_zero (p.1 2),Circle.coe_ne_zero (p.1 3)]
  conv_lhs => ring_nf
  have hj : (seedJ p.1 : ℂ) =
      seedS p.1*seedRho p.1*star (seedT p.1) +
        conj (seedS p.1*seedRho p.1*star (seedT p.1)) :=
    (Complex.add_conj _).symm
  simp only [seedG,seedEta,seedChi,seedP,seedX,seedY,seedZ,
    Complex.ofReal_add,Complex.ofReal_sub,Complex.ofReal_mul,Complex.ofReal_pow,
    Complex.ofReal_neg,Complex.ofReal_ofNat,Complex.normSq_eq_conj_mul_self,hj,
    StrictReconstruction20261007.sideP0,StrictReconstruction20261007.sideP1,
    seedS,seedT,seedRho,transposedSeed,Matrix.of_apply,
    Matrix.cons_val_zero',Matrix.cons_val_succ',Matrix.cons_val_zero,
    Matrix.cons_val_one,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.head_cons,Matrix.tail_cons,Complex.star_def,map_add,map_neg,map_sub,map_mul,
    map_pow,map_one,map_ofNat,map_inv₀,starRingEnd_self_apply,
    NoFourMUBs.Step1Geo.conj_circle,inv_inv]
  field_simp [Circle.coe_ne_zero (p.1 0),Circle.coe_ne_zero (p.1 1),
    Circle.coe_ne_zero (p.1 2),Circle.coe_ne_zero (p.1 3)]
  conv_rhs =>
    simp only [polynomialValue,P010,
      P010A00,P010A01,P010A02,P010A03,P010A04,P010A05,P010A06,P010A07,P010A08,
      sliceValue,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
      IntegerReflector.evalII,IntegerReflector.evalI,Coefficients.eval,
      List.map_cons,List.map_nil,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,
      Int.cast_one,zero_add,add_zero,mul_zero,mul_one]
  ring

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
