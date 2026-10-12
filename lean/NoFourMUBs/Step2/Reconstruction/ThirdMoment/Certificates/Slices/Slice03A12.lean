import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P096A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P100A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P104A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P107A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P111A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P113A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P116A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P119A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P122A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P126A12
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice03A12_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P096A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P100A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P104A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P107A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P111A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P113A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P116A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P119A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P122A12 (P126A12)))))))))

theorem Slice03A12_length : Slice03A12_residual.length = 9 := by rfl

theorem Slice03A12_checked (i : Fin 9) : zeroII (Slice03A12_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice03A12_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P096A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P100A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P104A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P107A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P111A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P113A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P116A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P119A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P122A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P126A12)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice03A12_residual (fun n hn =>
    Slice03A12_checked ⟨n, by simpa only [Slice03A12_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice03A12_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
