import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P069
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P072
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P075
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P079
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P081
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P083
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P087
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P090
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P093
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice02A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice02A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice02A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice02A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice02A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice02A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice02A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice02A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice02A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice02A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice02A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Slices.Slice02A11

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- All coefficients of the saved W21 linear residual cancel. -/
theorem ClearedSum02_value {R : Type*} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P069 + (polynomialValue a b c d P072 + (polynomialValue a b c d P075 + (polynomialValue a b c d P079 + (polynomialValue a b c d P081 + (polynomialValue a b c d P083 + (polynomialValue a b c d P087 + (polynomialValue a b c d P090 + (polynomialValue a b c d P093)))))))) = 0 := by
  have hz : Coefficients.allZero (Coefficients.add (P069.map (sliceValue b c d)) (Coefficients.add (P072.map (sliceValue b c d)) (Coefficients.add (P075.map (sliceValue b c d)) (Coefficients.add (P079.map (sliceValue b c d)) (Coefficients.add (P081.map (sliceValue b c d)) (Coefficients.add (P083.map (sliceValue b c d)) (Coefficients.add (P087.map (sliceValue b c d)) (Coefficients.add (P090.map (sliceValue b c d)) ((P093.map (sliceValue b c d))))))))))) := by
    refine ⟨?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , ?_ , True.intro⟩
    · exact Slice02A00_value b c d
    · exact Slice02A01_value b c d
    · exact Slice02A02_value b c d
    · exact Slice02A03_value b c d
    · exact Slice02A04_value b c d
    · exact Slice02A05_value b c d
    · exact Slice02A06_value b c d
    · exact Slice02A07_value b c d
    · exact Slice02A08_value b c d
    · exact Slice02A09_value b c d
    · exact Slice02A10_value b c d
    · exact Slice02A11_value b c d
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
