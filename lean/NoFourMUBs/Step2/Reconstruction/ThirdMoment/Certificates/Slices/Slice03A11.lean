import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P096A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P100A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P104A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P107A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P111A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P113A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P116A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P119A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P122A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P126A11
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice03A11_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P096A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P100A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P104A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P107A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P111A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P113A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P116A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P119A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P122A11 (P126A11)))))))))

theorem Slice03A11_length : Slice03A11_residual.length = 10 := by rfl

theorem Slice03A11_checked (i : Fin 10) : zeroII (Slice03A11_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice03A11_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P096A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P100A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P104A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P107A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P111A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P113A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P116A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P119A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P122A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P126A11)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice03A11_residual (fun n hn =>
    Slice03A11_checked ⟨n, by simpa only [Slice03A11_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice03A11_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
