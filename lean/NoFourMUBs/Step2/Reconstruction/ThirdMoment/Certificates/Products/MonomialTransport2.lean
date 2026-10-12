import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.MonomialTransport0
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P008
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P031
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P036
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P037
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P038

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
variable {R : Type*} [CommRing R]

theorem P008_value (a b c d : R) : polynomialValue a b c d P008 = b := by
  simp only [polynomialValue,P008,P008A00,sliceValue,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
    IntegerReflector.evalII,IntegerReflector.evalI,Coefficients.eval,
    List.map_cons,List.map_nil,Int.cast_one,zero_add,add_zero,mul_zero,mul_one]

theorem P031_eq_b_mul_P038 (a b c d : R) :
    polynomialValue a b c d P031 = b * polynomialValue a b c d P038 := by
  have hz : sliceValue b c d [] = (0 : R) := rfl
  have h2 : sliceValue b c d P031A02 = b * sliceValue b c d P038A02 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P038A02 = P031A02 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P038A02)
  have h3 : sliceValue b c d P031A03 = b * sliceValue b c d P038A03 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P038A03 = P031A03 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P038A03)
  have h4 : sliceValue b c d P031A04 = b * sliceValue b c d P038A04 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P038A04 = P031A04 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P038A04)
  have h5 : sliceValue b c d P031A05 = b * sliceValue b c d P038A05 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P038A05 = P031A05 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P038A05)
  have h6 : sliceValue b c d P031A06 = b * sliceValue b c d P038A06 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P038A06 = P031A06 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P038A06)
  have h7 : sliceValue b c d P031A07 = b * sliceValue b c d P038A07 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P038A07 = P031A07 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P038A07)
  have h8 : sliceValue b c d P031A08 = b * sliceValue b c d P038A08 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P038A08 = P031A08 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P038A08)
  have h9 : sliceValue b c d P031A09 = b * sliceValue b c d P038A09 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P038A09 = P031A09 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P038A09)
  have h10 : sliceValue b c d P031A10 = b * sliceValue b c d P038A10 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P038A10 = P031A10 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P038A10)
  have h11 : sliceValue b c d P031A11 = b * sliceValue b c d P038A11 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P038A11 = P031A11 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P038A11)
  have h12 : sliceValue b c d P031A12 = b * sliceValue b c d P038A12 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P038A12 = P031A12 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P038A12)
  have h13 : sliceValue b c d P031A13 = b * sliceValue b c d P038A13 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P038A13 = P031A13 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P038A13)
  have h14 : sliceValue b c d P031A14 = b * sliceValue b c d P038A14 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P038A14 = P031A14 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P038A14)
  have hm : P031.map (sliceValue b c d) =
      Coefficients.scale b (P038.map (sliceValue b c d)) := by
    simp only [P031,P038,Coefficients.scale,List.map_cons,List.map_nil,
      h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13,h14,hz,mul_zero]
  unfold polynomialValue
  rw [hm,Coefficients.eval_scale]

theorem Product017_value (a b c d : R) :
    polynomialValue a b c d P038 * polynomialValue a b c d P008 =
      polynomialValue a b c d P031 := by
  rw [P008_value,P031_eq_b_mul_P038,mul_comm]

theorem P036_eq_b_mul_P037 (a b c d : R) :
    polynomialValue a b c d P036 = b * polynomialValue a b c d P037 := by
  have hz : sliceValue b c d [] = (0 : R) := rfl
  have h0 : sliceValue b c d P036A00 = b * sliceValue b c d P037A00 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P037A00 = P036A00 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P037A00)
  have h1 : sliceValue b c d P036A01 = b * sliceValue b c d P037A01 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P037A01 = P036A01 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P037A01)
  have h2 : sliceValue b c d P036A02 = b * sliceValue b c d P037A02 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P037A02 = P036A02 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P037A02)
  have h3 : sliceValue b c d P036A03 = b * sliceValue b c d P037A03 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P037A03 = P036A03 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P037A03)
  have h4 : sliceValue b c d P036A04 = b * sliceValue b c d P037A04 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P037A04 = P036A04 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P037A04)
  have h5 : sliceValue b c d P036A05 = b * sliceValue b c d P037A05 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P037A05 = P036A05 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P037A05)
  have h6 : sliceValue b c d P036A06 = b * sliceValue b c d P037A06 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P037A06 = P036A06 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P037A06)
  have h7 : sliceValue b c d P036A07 = b * sliceValue b c d P037A07 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P037A07 = P036A07 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P037A07)
  have h8 : sliceValue b c d P036A08 = b * sliceValue b c d P037A08 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P037A08 = P036A08 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P037A08)
  have h9 : sliceValue b c d P036A09 = b * sliceValue b c d P037A09 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P037A09 = P036A09 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P037A09)
  have h10 : sliceValue b c d P036A10 = b * sliceValue b c d P037A10 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P037A10 = P036A10 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P037A10)
  have h11 : sliceValue b c d P036A11 = b * sliceValue b c d P037A11 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P037A11 = P036A11 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P037A11)
  have h12 : sliceValue b c d P036A12 = b * sliceValue b c d P037A12 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P037A12 = P036A12 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P037A12)
  have h13 : sliceValue b c d P036A13 = b * sliceValue b c d P037A13 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P037A13 = P036A13 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P037A13)
  have h14 : sliceValue b c d P036A14 = b * sliceValue b c d P037A14 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P037A14 = P036A14 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P037A14)
  have hm : P036.map (sliceValue b c d) =
      Coefficients.scale b (P037.map (sliceValue b c d)) := by
    simp only [P036,P037,Coefficients.scale,List.map_cons,List.map_nil,
      h0,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13,h14,hz,mul_zero]
  unfold polynomialValue
  rw [hm,Coefficients.eval_scale]

theorem Product018_value (a b c d : R) :
    polynomialValue a b c d P037 * polynomialValue a b c d P008 =
      polynomialValue a b c d P036 := by
  rw [P008_value,P036_eq_b_mul_P037,mul_comm]

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
