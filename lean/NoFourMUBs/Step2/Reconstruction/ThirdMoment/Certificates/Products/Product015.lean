import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P034
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P035
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P031
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product015A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product015A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product015A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product015A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product015A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product015A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product015A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product015A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product015A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product015A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product015A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product015A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product015A14

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- The complete supplied cofactor product, with primitive integer scales. -/
theorem Product015_value {R : Type*} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P034 * polynomialValue a b c d P035 = polynomialValue a b c d P031 := by
  have hz0 : sliceValue b c d [] = (0 : R) := rfl
  have hz : Coefficients.allZero (Coefficients.add (CriticalZeroSumAssembly20261003.Coefficients.mul (P034.map (sliceValue b c d)) (P035.map (sliceValue b c d))) (Coefficients.neg (P031.map (sliceValue b c d)))) := by
    refine ⟨?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , True.intro⟩
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simp only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero]
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product015A02_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product015A03_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product015A04_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product015A05_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product015A06_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product015A07_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product015A08_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product015A09_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product015A10_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product015A11_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product015A12_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product015A13_value b c d))
    · simpa only [hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero,sub_eq_add_neg] using
        (sub_eq_zero.mpr (Product015A14_value b c d))
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
