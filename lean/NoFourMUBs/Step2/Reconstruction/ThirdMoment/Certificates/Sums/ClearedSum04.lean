import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P131
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P135
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P139
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P142
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P146
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P148
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P152
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P154
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P158
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice04A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice04A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice04A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice04A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice04A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice04A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice04A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice04A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice04A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice04A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice04A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice04A11

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- All coefficients of the saved W12 linear residual cancel. -/
theorem ClearedSum04_value {R : Type*} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P131 + (polynomialValue a b c d P135 + (polynomialValue a b c d P139 + (polynomialValue a b c d P142 + (polynomialValue a b c d P146 + (polynomialValue a b c d P148 + (polynomialValue a b c d P152 + (polynomialValue a b c d P154 + (polynomialValue a b c d P158)))))))) = 0 := by
  have hz : Coefficients.allZero (Coefficients.add (P131.map (sliceValue b c d)) (Coefficients.add (P135.map (sliceValue b c d)) (Coefficients.add (P139.map (sliceValue b c d)) (Coefficients.add (P142.map (sliceValue b c d)) (Coefficients.add (P146.map (sliceValue b c d)) (Coefficients.add (P148.map (sliceValue b c d)) (Coefficients.add (P152.map (sliceValue b c d)) (Coefficients.add (P154.map (sliceValue b c d)) ((P158.map (sliceValue b c d))))))))))) := by
    refine ⟨?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , True.intro⟩
    · exact Slice04A00_value b c d
    · exact Slice04A01_value b c d
    · exact Slice04A02_value b c d
    · exact Slice04A03_value b c d
    · exact Slice04A04_value b c d
    · exact Slice04A05_value b c d
    · exact Slice04A06_value b c d
    · exact Slice04A07_value b c d
    · exact Slice04A08_value b c d
    · exact Slice04A09_value b c d
    · exact Slice04A10_value b c d
    · exact Slice04A11_value b c d
    · change (0 : R) + _ = 0
      simp [sliceValue, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, Coefficients.eval]
    · change (0 : R) + _ = 0
      simp [sliceValue, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, Coefficients.eval]
    · change (0 : R) + _ = 0
      simp [sliceValue, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, Coefficients.eval]
    · change (0 : R) + _ = 0
      simp [sliceValue, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, Coefficients.eval]
  have he := Coefficients.eval_allZero a _ hz
  simpa only [Coefficients.eval_add,polynomialValue] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
