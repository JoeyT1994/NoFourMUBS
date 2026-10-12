import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P222
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P226
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P230
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P233
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P237
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P239
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P242
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P245
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P247
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P251
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice07A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice07A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice07A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice07A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice07A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice07A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice07A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice07A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice07A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice07A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice07A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice07A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice07A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice07A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice07A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice07A15

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- All coefficients of the saved W22 constant residual cancel. -/
theorem ClearedSum07_value {R : Type*} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P222 + (polynomialValue a b c d P226 + (polynomialValue a b c d P230 + (polynomialValue a b c d P233 + (polynomialValue a b c d P237 + (polynomialValue a b c d P239 + (polynomialValue a b c d P242 + (polynomialValue a b c d P245 + (polynomialValue a b c d P247 + (polynomialValue a b c d P251))))))))) = 0 := by
  have hz : Coefficients.allZero (Coefficients.add (P222.map (sliceValue b c d)) (Coefficients.add (P226.map (sliceValue b c d)) (Coefficients.add (P230.map (sliceValue b c d)) (Coefficients.add (P233.map (sliceValue b c d)) (Coefficients.add (P237.map (sliceValue b c d)) (Coefficients.add (P239.map (sliceValue b c d)) (Coefficients.add (P242.map (sliceValue b c d)) (Coefficients.add (P245.map (sliceValue b c d)) (Coefficients.add (P247.map (sliceValue b c d)) ((P251.map (sliceValue b c d)))))))))))) := by
    refine ⟨?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , True.intro⟩
    · exact Slice07A00_value b c d
    · exact Slice07A01_value b c d
    · exact Slice07A02_value b c d
    · exact Slice07A03_value b c d
    · exact Slice07A04_value b c d
    · exact Slice07A05_value b c d
    · exact Slice07A06_value b c d
    · exact Slice07A07_value b c d
    · exact Slice07A08_value b c d
    · exact Slice07A09_value b c d
    · exact Slice07A10_value b c d
    · exact Slice07A11_value b c d
    · exact Slice07A12_value b c d
    · exact Slice07A13_value b c d
    · exact Slice07A14_value b c d
    · exact Slice07A15_value b c d
  have he := Coefficients.eval_allZero a _ hz
  simpa only [Coefficients.eval_add,polynomialValue] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
