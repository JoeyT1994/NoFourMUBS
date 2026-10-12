import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.DenominatorSingle
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.DenominatorGram
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product019

set_option autoImplicit false
set_option maxHeartbeats 1000000
set_option linter.unusedSimpArgs false

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- The original constant cofactor removes one unit phase from the linear cofactor. -/
theorem P012_eq_c_mul_P042 {R : Type*} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P012 = c * polynomialValue a b c d P042 := by
  simp only [polynomialValue,P012,P042,
    P012A01,P012A02,P012A03,P042A01,P042A02,P042A03,
    sliceValue,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
    IntegerReflector.evalII,IntegerReflector.evalI,Coefficients.eval,
    List.map_cons,List.map_nil,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,
    Int.cast_one,zero_add,add_zero,mul_zero,mul_one]
  ring

/-- Reuse checked products to factor the large constant divisor. -/
theorem P041_seed_factor (p : StrictSeed) :
    polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P041 =
      -((p.1 0 : ℂ) * (p.1 1) * (p.1 2)^2 * (p.1 3)) * (seedG p.1 : ℂ) *
        polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P011 := by
  have hprod : polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P041 *
      polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P042 ≠ 0 := by
    rw [Product019_value]; exact P031_strict_ne_zero p
  apply mul_right_cancel₀ (mul_ne_zero_iff.mp hprod).2
  calc
    _ = polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P031 :=
      Product019_value _ _ _ _
    _ = polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P045 *
        polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P004 :=
      (Product021_value _ _ _ _).symm
    _ = -((p.1 0 : ℂ) * (p.1 1) * (p.1 2) * (p.1 3)) * (seedG p.1 : ℂ) *
        (polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P003 *
          polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P004) := by
      rw [P045_seed_factor]; ring
    _ = -((p.1 0 : ℂ) * (p.1 1) * (p.1 2) * (p.1 3)) * (seedG p.1 : ℂ) *
        (polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P011 *
          polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P012) := by
      rw [Product000_value,Product004_value]
    _ = _ := by rw [P012_eq_c_mul_P042]; ring

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
