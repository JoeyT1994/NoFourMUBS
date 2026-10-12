import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P041
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P042
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P031
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product019A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product019A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product019A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product019A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product019A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product019A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product019A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product019A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product019A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product019A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product019A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product019A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product019A14

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- The complete supplied cofactor product, with primitive integer scales. -/
theorem Product019_value {R : Type*} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P041 * polynomialValue a b c d P042 = polynomialValue a b c d P031 := by
  have hz0 : sliceValue b c d [] = (0 : R) := rfl
  have hz : Coefficients.allZero (Coefficients.add (CriticalZeroSumAssembly20261003.Coefficients.mul (P041.map (sliceValue b c d)) (P042.map (sliceValue b c d))) (Coefficients.neg (P031.map (sliceValue b c d)))) := by
    refine ⟨?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , True.intro⟩
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product019A02_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product019A03_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product019A04_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product019A05_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product019A06_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product019A07_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product019A08_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product019A09_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product019A10_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product019A11_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product019A12_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product019A13_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product019A14_value b c d))
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
