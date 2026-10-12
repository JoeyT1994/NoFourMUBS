import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P011
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P012
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P000
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product004A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product004A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product004A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product004A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product004A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product004A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product004A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product004A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product004A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product004A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product004A12

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- The complete supplied cofactor product, with primitive integer scales. -/
theorem Product004_value {R : Type*} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P011 * polynomialValue a b c d P012 = polynomialValue a b c d P000 := by
  have hz0 : sliceValue b c d [] = (0 : R) := rfl
  have hz : Coefficients.allZero (Coefficients.add (CriticalZeroSumAssembly20261003.Coefficients.mul (P011.map (sliceValue b c d)) (P012.map (sliceValue b c d))) (Coefficients.neg (P000.map (sliceValue b c d)))) := by
    refine ⟨?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , True.intro⟩
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product004A02_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product004A03_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product004A04_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product004A05_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product004A06_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product004A07_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product004A08_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product004A09_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product004A10_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product004A11_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product004A12_value b c d))
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
