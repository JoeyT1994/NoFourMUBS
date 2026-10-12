import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P196
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P199
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P201
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P205
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P207
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P209
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P213
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P216
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P219
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice06A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice06A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice06A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice06A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice06A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice06A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice06A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice06A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice06A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice06A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice06A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice06A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice06A12

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- All coefficients of the saved W22 linear residual cancel. -/
theorem ClearedSum06_value {R : Type*} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P196 + (polynomialValue a b c d P199 + (polynomialValue a b c d P201 + (polynomialValue a b c d P205 + (polynomialValue a b c d P207 + (polynomialValue a b c d P209 + (polynomialValue a b c d P213 + (polynomialValue a b c d P216 + (polynomialValue a b c d P219)))))))) = 0 := by
  have hz : Coefficients.allZero (Coefficients.add (P196.map (sliceValue b c d)) (Coefficients.add (P199.map (sliceValue b c d)) (Coefficients.add (P201.map (sliceValue b c d)) (Coefficients.add (P205.map (sliceValue b c d)) (Coefficients.add (P207.map (sliceValue b c d)) (Coefficients.add (P209.map (sliceValue b c d)) (Coefficients.add (P213.map (sliceValue b c d)) (Coefficients.add (P216.map (sliceValue b c d)) ((P219.map (sliceValue b c d))))))))))) := by
    refine ⟨?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , True.intro⟩
    · exact Slice06A00_value b c d
    · exact Slice06A01_value b c d
    · exact Slice06A02_value b c d
    · exact Slice06A03_value b c d
    · exact Slice06A04_value b c d
    · exact Slice06A05_value b c d
    · exact Slice06A06_value b c d
    · exact Slice06A07_value b c d
    · exact Slice06A08_value b c d
    · exact Slice06A09_value b c d
    · exact Slice06A10_value b c d
    · exact Slice06A11_value b c d
    · exact Slice06A12_value b c d
    · change (0 : R) + _ = 0
      simp [sliceValue, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, Coefficients.eval]
    · change (0 : R) + _ = 0
      simp [sliceValue, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, Coefficients.eval]
    · change (0 : R) + _ = 0
      simp [sliceValue, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, Coefficients.eval]
  have he := Coefficients.eval_allZero a _ hz
  simpa only [Coefficients.eval_add,polynomialValue] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
