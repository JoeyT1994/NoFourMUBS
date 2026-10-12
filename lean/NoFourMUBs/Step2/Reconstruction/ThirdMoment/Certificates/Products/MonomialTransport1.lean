import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product015
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.MonomialTransport0
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.MonomialTail
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P045
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P048
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P049
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P052
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P053
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P056
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P057

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
variable {R : Type*} [CommRing R]

theorem P048_eq_a_mul_P034 (a b c d : R) :
    polynomialValue a b c d P048 = a * polynomialValue a b c d P034 := by
  have hz : sliceValue b c d [] = (0 : R) := rfl
  simp only [polynomialValue,P048,P034,List.map_cons,List.map_nil,
    Coefficients.eval,P048A02,P048A03,P048A04,P048A05,P048A06,P048A07,P048A08,P048A09,hz,zero_add,mul_zero,add_zero]

theorem P035_eq_a_mul_P049 (a b c d : R) :
    polynomialValue a b c d P035 = a * polynomialValue a b c d P049 := by
  have hz : sliceValue b c d [] = (0 : R) := rfl
  simp only [polynomialValue,P035,P049,List.map_cons,List.map_nil,
    Coefficients.eval,P049A00,P049A01,P049A02,P049A03,P049A04,P049A05,hz,zero_add,mul_zero,add_zero]

theorem P034_eq_c_mul_P045 (a b c d : R) :
    polynomialValue a b c d P034 = c * polynomialValue a b c d P045 := by
  have hz : sliceValue b c d [] = (0 : R) := rfl
  have h1 : sliceValue b c d P034A01 = c * sliceValue b c d P045A01 := by
    have hs : P034A01.map List.tail = P045A01 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P034A01 (by rfl)
  have h2 : sliceValue b c d P034A02 = c * sliceValue b c d P045A02 := by
    have hs : P034A02.map List.tail = P045A02 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P034A02 (by rfl)
  have h3 : sliceValue b c d P034A03 = c * sliceValue b c d P045A03 := by
    have hs : P034A03.map List.tail = P045A03 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P034A03 (by rfl)
  have h4 : sliceValue b c d P034A04 = c * sliceValue b c d P045A04 := by
    have hs : P034A04.map List.tail = P045A04 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P034A04 (by rfl)
  have h5 : sliceValue b c d P034A05 = c * sliceValue b c d P045A05 := by
    have hs : P034A05.map List.tail = P045A05 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P034A05 (by rfl)
  have h6 : sliceValue b c d P034A06 = c * sliceValue b c d P045A06 := by
    have hs : P034A06.map List.tail = P045A06 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P034A06 (by rfl)
  have h7 : sliceValue b c d P034A07 = c * sliceValue b c d P045A07 := by
    have hs : P034A07.map List.tail = P045A07 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P034A07 (by rfl)
  have h8 : sliceValue b c d P034A08 = c * sliceValue b c d P045A08 := by
    have hs : P034A08.map List.tail = P045A08 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P034A08 (by rfl)
  have hm : P034.map (sliceValue b c d) =
      Coefficients.scale c (P045.map (sliceValue b c d)) := by
    simp only [P034,P045,Coefficients.scale,List.map_cons,List.map_nil,
      h1,h2,h3,h4,h5,h6,h7,h8,hz,mul_zero]
  unfold polynomialValue
  rw [hm,Coefficients.eval_scale]

theorem P004_eq_c_mul_P035 (a b c d : R) :
    polynomialValue a b c d P004 = c * polynomialValue a b c d P035 := by
  have hz : sliceValue b c d [] = (0 : R) := rfl
  have h1 : sliceValue b c d P004A01 = c * sliceValue b c d P035A01 := by
    have hs : P004A01.map List.tail = P035A01 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P004A01 (by rfl)
  have h2 : sliceValue b c d P004A02 = c * sliceValue b c d P035A02 := by
    have hs : P004A02.map List.tail = P035A02 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P004A02 (by rfl)
  have h3 : sliceValue b c d P004A03 = c * sliceValue b c d P035A03 := by
    have hs : P004A03.map List.tail = P035A03 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P004A03 (by rfl)
  have h4 : sliceValue b c d P004A04 = c * sliceValue b c d P035A04 := by
    have hs : P004A04.map List.tail = P035A04 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P004A04 (by rfl)
  have h5 : sliceValue b c d P004A05 = c * sliceValue b c d P035A05 := by
    have hs : P004A05.map List.tail = P035A05 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P004A05 (by rfl)
  have h6 : sliceValue b c d P004A06 = c * sliceValue b c d P035A06 := by
    have hs : P004A06.map List.tail = P035A06 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P004A06 (by rfl)
  have hm : P004.map (sliceValue b c d) =
      Coefficients.scale c (P035.map (sliceValue b c d)) := by
    simp only [P004,P035,Coefficients.scale,List.map_cons,List.map_nil,
      h1,h2,h3,h4,h5,h6,hz,mul_zero]
  unfold polynomialValue
  rw [hm,Coefficients.eval_scale]

theorem P052_eq_b_mul_P045 (a b c d : R) :
    polynomialValue a b c d P052 = b * polynomialValue a b c d P045 := by
  have hz : sliceValue b c d [] = (0 : R) := rfl
  have hm : P052.map (sliceValue b c d) =
      Coefficients.scale b (P045.map (sliceValue b c d)) := by
    simp only [P052,P045,Coefficients.scale,List.map_cons,List.map_nil,
      P045A01,P045A02,P045A03,P045A04,P045A05,P045A06,P045A07,P045A08,P052A01,P052A02,P052A03,P052A04,P052A05,P052A06,P052A07,P052A08,sliceValue_shift,pow_one,hz,mul_zero]
  unfold polynomialValue
  rw [hm,Coefficients.eval_scale]

theorem P004_eq_b_mul_P053 (a b c d : R) :
    polynomialValue a b c d P004 = b * polynomialValue a b c d P053 := by
  have hz : sliceValue b c d [] = (0 : R) := rfl
  have h1 : sliceValue b c d P004A01 = b * sliceValue b c d P053A01 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P053A01 = P004A01 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P053A01)
  have h2 : sliceValue b c d P004A02 = b * sliceValue b c d P053A02 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P053A02 = P004A02 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P053A02)
  have h3 : sliceValue b c d P004A03 = b * sliceValue b c d P053A03 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P053A03 = P004A03 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P053A03)
  have h4 : sliceValue b c d P004A04 = b * sliceValue b c d P053A04 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P053A04 = P004A04 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P053A04)
  have h5 : sliceValue b c d P004A05 = b * sliceValue b c d P053A05 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P053A05 = P004A05 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P053A05)
  have h6 : sliceValue b c d P004A06 = b * sliceValue b c d P053A06 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P053A06 = P004A06 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P053A06)
  have hm : P004.map (sliceValue b c d) =
      Coefficients.scale b (P053.map (sliceValue b c d)) := by
    simp only [P004,P053,Coefficients.scale,List.map_cons,List.map_nil,
      h1,h2,h3,h4,h5,h6,hz,mul_zero]
  unfold polynomialValue
  rw [hm,Coefficients.eval_scale]

theorem P056_eq_b_mul_P034 (a b c d : R) :
    polynomialValue a b c d P056 = b * polynomialValue a b c d P034 := by
  have hz : sliceValue b c d [] = (0 : R) := rfl
  have hm : P056.map (sliceValue b c d) =
      Coefficients.scale b (P034.map (sliceValue b c d)) := by
    simp only [P056,P034,Coefficients.scale,List.map_cons,List.map_nil,
      P056A01,P056A02,P056A03,P056A04,P056A05,P056A06,P056A07,P056A08,sliceValue_shift,pow_one,hz,mul_zero]
  unfold polynomialValue
  rw [hm,Coefficients.eval_scale]

theorem P035_eq_b_mul_P057 (a b c d : R) :
    polynomialValue a b c d P035 = b * polynomialValue a b c d P057 := by
  have hz : sliceValue b c d [] = (0 : R) := rfl
  have h1 : sliceValue b c d P035A01 = b * sliceValue b c d P057A01 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P057A01 = P035A01 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P057A01)
  have h2 : sliceValue b c d P035A02 = b * sliceValue b c d P057A02 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P057A02 = P035A02 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P057A02)
  have h3 : sliceValue b c d P035A03 = b * sliceValue b c d P057A03 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P057A03 = P035A03 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P057A03)
  have h4 : sliceValue b c d P035A04 = b * sliceValue b c d P057A04 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P057A04 = P035A04 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P057A04)
  have h5 : sliceValue b c d P035A05 = b * sliceValue b c d P057A05 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P057A05 = P035A05 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P057A05)
  have h6 : sliceValue b c d P035A06 = b * sliceValue b c d P057A06 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P057A06 = P035A06 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P057A06)
  have hm : P035.map (sliceValue b c d) =
      Coefficients.scale b (P057.map (sliceValue b c d)) := by
    simp only [P035,P057,Coefficients.scale,List.map_cons,List.map_nil,
      h1,h2,h3,h4,h5,h6,hz,mul_zero]
  unfold polynomialValue
  rw [hm,Coefficients.eval_scale]

/-- Move the c factor in the already checked product15. -/
theorem Product021_value (a b c d : R) :
    polynomialValue a b c d P045 * polynomialValue a b c d P004 =
      polynomialValue a b c d P031 := by
  rw [P004_eq_c_mul_P035, ← mul_assoc,
    mul_comm (polynomialValue a b c d P045) c, ← P034_eq_c_mul_P045]
  exact Product015_value a b c d

theorem Product023_value (a b c d : R) :
    polynomialValue a b c d P048 * polynomialValue a b c d P049 =
      polynomialValue a b c d P031 := by
  rw [P048_eq_a_mul_P034, mul_comm a (polynomialValue a b c d P034),
    mul_assoc, ← P035_eq_a_mul_P049]
  exact Product015_value a b c d

theorem Product025_value (a b c d : R) :
    polynomialValue a b c d P052 * polynomialValue a b c d P053 =
      polynomialValue a b c d P031 := by
  rw [P052_eq_b_mul_P045, mul_comm b (polynomialValue a b c d P045),
    mul_assoc, ← P004_eq_b_mul_P053]
  exact Product021_value a b c d

theorem Product027_value (a b c d : R) :
    polynomialValue a b c d P056 * polynomialValue a b c d P057 =
      polynomialValue a b c d P031 := by
  rw [P056_eq_b_mul_P034, mul_comm b (polynomialValue a b c d P034),
    mul_assoc, ← P035_eq_b_mul_P057]
  exact Product015_value a b c d

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
