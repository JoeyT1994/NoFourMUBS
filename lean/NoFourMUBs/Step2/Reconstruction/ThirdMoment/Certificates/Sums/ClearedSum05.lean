import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P161
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P165
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P168
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P172
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P175
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P179
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P182
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P186
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P189
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P191
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice05A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice05A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice05A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice05A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice05A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice05A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice05A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice05A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice05A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice05A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice05A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice05A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice05A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice05A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice05A14

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- All coefficients of the saved W12 constant residual cancel. -/
theorem ClearedSum05_value {R : Type*} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P161 + (polynomialValue a b c d P165 + (polynomialValue a b c d P168 + (polynomialValue a b c d P172 + (polynomialValue a b c d P175 + (polynomialValue a b c d P179 + (polynomialValue a b c d P182 + (polynomialValue a b c d P186 + (polynomialValue a b c d P189 + (polynomialValue a b c d P191))))))))) = 0 := by
  have hz : Coefficients.allZero (Coefficients.add (P161.map (sliceValue b c d)) (Coefficients.add (P165.map (sliceValue b c d)) (Coefficients.add (P168.map (sliceValue b c d)) (Coefficients.add (P172.map (sliceValue b c d)) (Coefficients.add (P175.map (sliceValue b c d)) (Coefficients.add (P179.map (sliceValue b c d)) (Coefficients.add (P182.map (sliceValue b c d)) (Coefficients.add (P186.map (sliceValue b c d)) (Coefficients.add (P189.map (sliceValue b c d)) ((P191.map (sliceValue b c d)))))))))))) := by
    refine ⟨?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , True.intro⟩
    · exact Slice05A00_value b c d
    · exact Slice05A01_value b c d
    · exact Slice05A02_value b c d
    · exact Slice05A03_value b c d
    · exact Slice05A04_value b c d
    · exact Slice05A05_value b c d
    · exact Slice05A06_value b c d
    · exact Slice05A07_value b c d
    · exact Slice05A08_value b c d
    · exact Slice05A09_value b c d
    · exact Slice05A10_value b c d
    · exact Slice05A11_value b c d
    · exact Slice05A12_value b c d
    · exact Slice05A13_value b c d
    · exact Slice05A14_value b c d
    · change (0 : R) + _ = 0
      simp [sliceValue, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, Coefficients.eval]
  have he := Coefficients.eval_allZero a _ hz
  simpa only [Coefficients.eval_add,polynomialValue] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
