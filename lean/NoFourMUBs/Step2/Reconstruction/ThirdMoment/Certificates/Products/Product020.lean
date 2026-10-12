import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P040
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P042
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P039
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product020A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product020A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product020A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product020A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product020A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product020A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product020A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product020A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product020A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product020A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product020A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product020A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product020A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product020A14

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- The complete supplied cofactor product, with primitive integer scales. -/
theorem Product020_value {R : Type*} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P040 * polynomialValue a b c d P042 = polynomialValue a b c d P039 := by
  have hz0 : sliceValue b c d [] = (0 : R) := rfl
  have hz : Coefficients.allZero (Coefficients.add (CriticalZeroSumAssembly20261003.Coefficients.mul (P040.map (sliceValue b c d)) (P042.map (sliceValue b c d))) (Coefficients.neg (P039.map (sliceValue b c d)))) := by
    refine ⟨?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , True.intro⟩
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product020A01_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product020A02_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product020A03_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product020A04_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product020A05_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product020A06_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product020A07_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product020A08_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product020A09_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product020A10_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product020A11_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product020A12_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product020A13_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product020A14_value b c d))
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
