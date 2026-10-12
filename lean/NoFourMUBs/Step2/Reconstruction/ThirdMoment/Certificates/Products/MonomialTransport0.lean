import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product000
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P015
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P016
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P021
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P022

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
variable {R : Type*} [CommRing R]

theorem sliceValue_shift (b c d : R) (n : ℕ) (p : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY) :
    sliceValue b c d (CriticalZeroSumAssembly20261003.DenseCoefficients.shift n p) = b^n * sliceValue b c d p := by
  simp only [sliceValue,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_shift,Coefficients.eval_shift]

theorem P003_eq_a_mul_P015 (a b c d : R) :
    polynomialValue a b c d P003 = a * polynomialValue a b c d P015 := by
  have hz : sliceValue b c d [] = (0 : R) := rfl
  simp only [polynomialValue,P003,P015,List.map_cons,List.map_nil,
    Coefficients.eval,P015A00,P015A01,P015A02,P015A03,P015A04,P015A05,hz,zero_add,mul_zero,add_zero]

theorem P016_eq_a_mul_P004 (a b c d : R) :
    polynomialValue a b c d P016 = a * polynomialValue a b c d P004 := by
  have hz : sliceValue b c d [] = (0 : R) := rfl
  simp only [polynomialValue,P016,P004,List.map_cons,List.map_nil,
    Coefficients.eval,P016A02,P016A03,P016A04,P016A05,P016A06,P016A07,hz,zero_add,mul_zero,add_zero]

theorem P021_eq_b_mul_P015 (a b c d : R) :
    polynomialValue a b c d P021 = b * polynomialValue a b c d P015 := by
  have hz : sliceValue b c d [] = (0 : R) := rfl
  have hm : P021.map (sliceValue b c d) =
      Coefficients.scale b (P015.map (sliceValue b c d)) := by
    simp only [P021,P015,Coefficients.scale,List.map_cons,List.map_nil,
      P015A00,P015A01,P015A02,P015A03,P015A04,P015A05,P021A00,P021A01,P021A02,P021A03,P021A04,P021A05,sliceValue_shift,pow_one,hz,mul_zero]
  unfold polynomialValue
  rw [hm,Coefficients.eval_scale]

theorem P016_eq_b_mul_P022 (a b c d : R) :
    polynomialValue a b c d P016 = b * polynomialValue a b c d P022 := by
  have hz : sliceValue b c d [] = (0 : R) := rfl
  have h2 : sliceValue b c d P016A02 = b * sliceValue b c d P022A02 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P022A02 = P016A02 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P022A02)
  have h3 : sliceValue b c d P016A03 = b * sliceValue b c d P022A03 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P022A03 = P016A03 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P022A03)
  have h4 : sliceValue b c d P016A04 = b * sliceValue b c d P022A04 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P022A04 = P016A04 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P022A04)
  have h5 : sliceValue b c d P016A05 = b * sliceValue b c d P022A05 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P022A05 = P016A05 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P022A05)
  have h6 : sliceValue b c d P016A06 = b * sliceValue b c d P022A06 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P022A06 = P016A06 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P022A06)
  have h7 : sliceValue b c d P016A07 = b * sliceValue b c d P022A07 := by
    have hs : CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 P022A07 = P016A07 := rfl
    rw [← hs]
    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P022A07)
  have hm : P016.map (sliceValue b c d) =
      Coefficients.scale b (P022.map (sliceValue b c d)) := by
    simp only [P016,P022,Coefficients.scale,List.map_cons,List.map_nil,
      h2,h3,h4,h5,h6,h7,hz,mul_zero]
  unfold polynomialValue
  rw [hm,Coefficients.eval_scale]

/-- Reuse the already checked product after moving its a factor. -/
theorem Product006_value (a b c d : R) :
    polynomialValue a b c d P015 * polynomialValue a b c d P016 =
      polynomialValue a b c d P000 := by
  rw [P016_eq_a_mul_P004,← mul_assoc,mul_comm (polynomialValue a b c d P015) a,
    ← P003_eq_a_mul_P015]
  exact Product000_value a b c d

/-- Move the b factor between the same two factors. -/
theorem Product009_value (a b c d : R) :
    polynomialValue a b c d P021 * polynomialValue a b c d P022 =
      polynomialValue a b c d P000 := by
  rw [P021_eq_b_mul_P015,mul_comm b (polynomialValue a b c d P015),mul_assoc,
    ← P016_eq_b_mul_P022]
  exact Product006_value a b c d

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
