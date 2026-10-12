import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P096A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P100A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P104A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P107A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P111A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P113A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P116A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P119A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P122A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P126A10
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice03A10_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P096A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P100A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P104A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P107A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P111A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P113A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P116A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P119A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P122A10 (P126A10)))))))))

theorem Slice03A10_length : Slice03A10_residual.length = 11 := by rfl

theorem Slice03A10_checked (i : Fin 11) : zeroII (Slice03A10_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice03A10_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P096A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P100A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P104A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P107A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P111A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P113A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P116A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P119A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P122A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P126A10)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice03A10_residual (fun n hn =>
    Slice03A10_checked ⟨n, by simpa only [Slice03A10_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice03A10_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
