import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.DenominatorSingle
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.DenominatorGram
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product029

set_option autoImplicit false
set_option maxHeartbeats 1000000
set_option linter.unusedSimpArgs false

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- The original constant cofactor removes one unit phase from the linear cofactor. -/
theorem P028_eq_b_mul_P061 {R : Type*} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P028 = b * polynomialValue a b c d P061 := by
  simp only [polynomialValue,P028,P061,
    P028A00,P028A01,P028A02,P028A03,P061A00,P061A01,P061A02,P061A03,
    sliceValue,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
    IntegerReflector.evalII,IntegerReflector.evalI,Coefficients.eval,
    List.map_cons,List.map_nil,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,
    Int.cast_one,zero_add,add_zero,mul_zero,mul_one]
  ring

/-- Reuse checked products to factor the large constant divisor. -/
theorem P060_seed_factor (p : StrictSeed) :
    polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P060 =
      -((p.1 0 : ℂ) * (p.1 1)^2 * (p.1 2) * (p.1 3)) * (seedG p.1 : ℂ) *
        polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P027 := by
  have hprod : polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P060 *
      polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P061 ≠ 0 := by
    rw [Product029_value]; exact P031_strict_ne_zero p
  apply mul_right_cancel₀ (mul_ne_zero_iff.mp hprod).2
  calc
    _ = polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P031 :=
      Product029_value _ _ _ _
    _ = polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P045 *
        polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P004 :=
      (Product021_value _ _ _ _).symm
    _ = -((p.1 0 : ℂ) * (p.1 1) * (p.1 2) * (p.1 3)) * (seedG p.1 : ℂ) *
        (polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P003 *
          polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P004) := by
      rw [P045_seed_factor]; ring
    _ = -((p.1 0 : ℂ) * (p.1 1) * (p.1 2) * (p.1 3)) * (seedG p.1 : ℂ) *
        (polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P027 *
          polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P028) := by
      rw [Product000_value,Product012_value]
    _ = _ := by rw [P028_eq_b_mul_P061]; ring

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
