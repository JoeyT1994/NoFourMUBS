import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P096A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P100A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P104A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P107A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P111A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P113A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P116A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P119A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P122A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P126A01
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice03A01_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P096A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P100A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P104A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P107A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P111A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P113A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P116A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P119A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P122A01 (P126A01)))))))))

theorem Slice03A01_length : Slice03A01_residual.length = 15 := by rfl

theorem Slice03A01_checked (i : Fin 15) : zeroII (Slice03A01_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice03A01_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P096A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P100A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P104A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P107A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P111A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P113A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P116A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P119A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P122A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P126A01)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice03A01_residual (fun n hn =>
    Slice03A01_checked ⟨n, by simpa only [Slice03A01_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice03A01_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
