import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P096
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P100
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P104
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P107
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P111
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P113
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P116
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P119
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P122
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P126
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice03A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice03A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice03A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice03A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice03A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice03A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice03A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice03A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice03A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice03A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice03A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice03A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice03A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice03A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice03A14

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- All coefficients of the saved W21 constant residual cancel. -/
theorem ClearedSum03_value {R : Type*} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P096 + (polynomialValue a b c d P100 + (polynomialValue a b c d P104 + (polynomialValue a b c d P107 + (polynomialValue a b c d P111 + (polynomialValue a b c d P113 + (polynomialValue a b c d P116 + (polynomialValue a b c d P119 + (polynomialValue a b c d P122 + (polynomialValue a b c d P126))))))))) = 0 := by
  have hz : Coefficients.allZero (Coefficients.add (P096.map (sliceValue b c d)) (Coefficients.add (P100.map (sliceValue b c d)) (Coefficients.add (P104.map (sliceValue b c d)) (Coefficients.add (P107.map (sliceValue b c d)) (Coefficients.add (P111.map (sliceValue b c d)) (Coefficients.add (P113.map (sliceValue b c d)) (Coefficients.add (P116.map (sliceValue b c d)) (Coefficients.add (P119.map (sliceValue b c d)) (Coefficients.add (P122.map (sliceValue b c d)) ((P126.map (sliceValue b c d)))))))))))) := by
    refine ⟨?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , True.intro⟩
    · exact Slice03A00_value b c d
    · exact Slice03A01_value b c d
    · exact Slice03A02_value b c d
    · exact Slice03A03_value b c d
    · exact Slice03A04_value b c d
    · exact Slice03A05_value b c d
    · exact Slice03A06_value b c d
    · exact Slice03A07_value b c d
    · exact Slice03A08_value b c d
    · exact Slice03A09_value b c d
    · exact Slice03A10_value b c d
    · exact Slice03A11_value b c d
    · exact Slice03A12_value b c d
    · exact Slice03A13_value b c d
    · exact Slice03A14_value b c d
    · change (0 : R) + _ = 0
      simp [sliceValue, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, Coefficients.eval]
  have he := Coefficients.eval_allZero a _ hz
  simpa only [Coefficients.eval_add,polynomialValue] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
