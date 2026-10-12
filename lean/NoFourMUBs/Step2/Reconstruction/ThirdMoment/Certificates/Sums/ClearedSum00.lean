import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P001
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P005
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P009
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P013
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P017
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P019
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P023
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P025
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P029
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice00A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice00A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice00A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice00A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice00A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice00A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice00A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice00A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice00A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice00A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice00A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice00A11

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- All coefficients of the saved W11 linear residual cancel. -/
theorem ClearedSum00_value {R : Type*} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P001 + (polynomialValue a b c d P005 + (polynomialValue a b c d P009 + (polynomialValue a b c d P013 + (polynomialValue a b c d P017 + (polynomialValue a b c d P019 + (polynomialValue a b c d P023 + (polynomialValue a b c d P025 + (polynomialValue a b c d P029)))))))) = 0 := by
  have hz : Coefficients.allZero (Coefficients.add (P001.map (sliceValue b c d)) (Coefficients.add (P005.map (sliceValue b c d)) (Coefficients.add (P009.map (sliceValue b c d)) (Coefficients.add (P013.map (sliceValue b c d)) (Coefficients.add (P017.map (sliceValue b c d)) (Coefficients.add (P019.map (sliceValue b c d)) (Coefficients.add (P023.map (sliceValue b c d)) (Coefficients.add (P025.map (sliceValue b c d)) ((P029.map (sliceValue b c d))))))))))) := by
    refine ⟨?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , True.intro⟩
    · exact Slice00A00_value b c d
    · exact Slice00A01_value b c d
    · exact Slice00A02_value b c d
    · exact Slice00A03_value b c d
    · exact Slice00A04_value b c d
    · exact Slice00A05_value b c d
    · exact Slice00A06_value b c d
    · exact Slice00A07_value b c d
    · exact Slice00A08_value b c d
    · exact Slice00A09_value b c d
    · exact Slice00A10_value b c d
    · exact Slice00A11_value b c d
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
