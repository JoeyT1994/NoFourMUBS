import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P020
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P022
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P019
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product010A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product010A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product010A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product010A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product010A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product010A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product010A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product010A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product010A10

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- The complete supplied cofactor product, with primitive integer scales. -/
theorem Product010_value {R : Type*} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P020 * polynomialValue a b c d P022 = polynomialValue a b c d P019 := by
  have hz0 : sliceValue b c d [] = (0 : R) := rfl
  have hz : Coefficients.allZero (Coefficients.add (CriticalZeroSumAssembly20261003.Coefficients.mul (P020.map (sliceValue b c d)) (P022.map (sliceValue b c d))) (Coefficients.neg (P019.map (sliceValue b c d)))) := by
    refine ⟨?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , True.intro⟩
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product010A02_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product010A03_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product010A04_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product010A05_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product010A06_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product010A07_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product010A08_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product010A09_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product010A10_value b c d))
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
  have he := Coefficients.eval_allZero a _ hz
  simp only [Coefficients.eval_add,Coefficients.eval_neg,Coefficients.eval_scale,
    CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [polynomialValue,sub_eq_add_neg] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
