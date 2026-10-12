import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P032
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P036
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P039
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P043
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P046
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P050
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P054
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P058
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P062
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P064
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice01A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice01A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice01A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice01A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice01A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice01A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice01A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice01A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice01A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice01A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice01A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice01A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice01A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice01A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice01A14

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- All coefficients of the saved W11 constant residual cancel. -/
theorem ClearedSum01_value {R : Type*} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P032 + (polynomialValue a b c d P036 + (polynomialValue a b c d P039 + (polynomialValue a b c d P043 + (polynomialValue a b c d P046 + (polynomialValue a b c d P050 + (polynomialValue a b c d P054 + (polynomialValue a b c d P058 + (polynomialValue a b c d P062 + (polynomialValue a b c d P064))))))))) = 0 := by
  have hz : Coefficients.allZero (Coefficients.add (P032.map (sliceValue b c d)) (Coefficients.add (P036.map (sliceValue b c d)) (Coefficients.add (P039.map (sliceValue b c d)) (Coefficients.add (P043.map (sliceValue b c d)) (Coefficients.add (P046.map (sliceValue b c d)) (Coefficients.add (P050.map (sliceValue b c d)) (Coefficients.add (P054.map (sliceValue b c d)) (Coefficients.add (P058.map (sliceValue b c d)) (Coefficients.add (P062.map (sliceValue b c d)) ((P064.map (sliceValue b c d)))))))))))) := by
    refine ⟨?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , True.intro⟩
    · exact Slice01A00_value b c d
    · exact Slice01A01_value b c d
    · exact Slice01A02_value b c d
    · exact Slice01A03_value b c d
    · exact Slice01A04_value b c d
    · exact Slice01A05_value b c d
    · exact Slice01A06_value b c d
    · exact Slice01A07_value b c d
    · exact Slice01A08_value b c d
    · exact Slice01A09_value b c d
    · exact Slice01A10_value b c d
    · exact Slice01A11_value b c d
    · exact Slice01A12_value b c d
    · exact Slice01A13_value b c d
    · exact Slice01A14_value b c d
    · change (0 : R) + _ = 0
      simp [sliceValue, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, Coefficients.eval]
  have he := Coefficients.eval_allZero a _ hz
  simpa only [Coefficients.eval_add,polynomialValue] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
