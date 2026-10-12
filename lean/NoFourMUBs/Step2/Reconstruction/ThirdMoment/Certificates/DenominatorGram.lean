import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.DenominatorInputs
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.MonomialTransport1

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
open scoped ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- The constant divisor introduces only the existing Gram scalar g.
No new polynomial coefficient array is used. -/
theorem P045_seed_factor (p : Seed) :
    polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P045 =
      -((p 0 : ℂ)*(p 1)*(p 2)*(p 3)) * (seedG p : ℂ) *
        polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P003 := by
  have hj : (seedJ p : ℂ) =
      seedS p*seedRho p*star (seedT p) + conj (seedS p*seedRho p*star (seedT p)) :=
    (Complex.add_conj _).symm
  simp only [seedG,seedP,seedX,seedY,seedZ,Complex.ofReal_add,Complex.ofReal_sub,
    Complex.ofReal_mul,Complex.ofReal_ofNat,Complex.normSq_eq_conj_mul_self,hj,
    seedS,seedT,seedRho,Complex.star_def,map_add,map_neg,map_mul,map_one,map_inv₀,
    starRingEnd_self_apply,NoFourMUBs.Step1Geo.conj_circle,inv_inv]
  simp only [polynomialValue,P045,P003,
    P045A01,P045A02,P045A03,P045A04,P045A05,P045A06,P045A07,P045A08,
    P034A01,P034A02,P034A03,P034A04,P034A05,P034A06,P034A07,P034A08,
    P003A01,P003A02,P003A03,P003A04,P003A05,P003A06,
    sliceValue,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
    IntegerReflector.evalII,IntegerReflector.evalI,Coefficients.eval,
    List.map_cons,List.map_nil,List.tail_cons,List.tail_nil,
    Int.cast_neg,Int.cast_ofNat,Int.cast_zero,Int.cast_one,
    zero_add,add_zero,mul_zero,mul_one]
  field_simp [Circle.coe_ne_zero (p 0),Circle.coe_ne_zero (p 1),
    Circle.coe_ne_zero (p 2),Circle.coe_ne_zero (p 3)]
  <;> ring

theorem P045_strict_ne_zero (p : StrictSeed) :
    polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P045 ≠ 0 := by
  have hR : 0 < Centiradian20261006.gramInvariant (seedS p.1) (seedT p.1) (seedRho p.1) := p.2
  have hg : seedG p.1 ≠ 0 := (StrictReconstruction20261007.strict_eta_pos_g_ne_zero hR).2
  have hm : -((p.1 0 : ℂ)*(p.1 1)*(p.1 2)*(p.1 3)) ≠ 0 :=
    neg_ne_zero.mpr (mul_ne_zero (mul_ne_zero (mul_ne_zero
      (Circle.coe_ne_zero (p.1 0)) (Circle.coe_ne_zero (p.1 1)))
      (Circle.coe_ne_zero (p.1 2))) (Circle.coe_ne_zero (p.1 3)))
  rw [P045_seed_factor]
  exact mul_ne_zero (mul_ne_zero hm (Complex.ofReal_ne_zero.mpr hg)) (P003_strict_ne_zero p)

/-- The supplied W11 constant common denominator has no strict-domain zeros. -/
theorem P031_strict_ne_zero (p : StrictSeed) :
    polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P031 ≠ 0 := by
  rw [← Product021_value]
  exact mul_ne_zero (P045_strict_ne_zero p) (P004_strict_ne_zero p)

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
