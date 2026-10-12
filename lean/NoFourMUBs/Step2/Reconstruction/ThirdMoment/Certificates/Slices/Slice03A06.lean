import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P096A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P100A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P104A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P107A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P111A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P113A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P116A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P119A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P122A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P126A06
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice03A06_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P096A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P100A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P104A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P107A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P111A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P113A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P116A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P119A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P122A06 (P126A06)))))))))

theorem Slice03A06_length : Slice03A06_residual.length = 15 := by rfl

theorem Slice03A06_checked (i : Fin 15) : zeroII (Slice03A06_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice03A06_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P096A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P100A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P104A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P107A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P111A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P113A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P116A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P119A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P122A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P126A06)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice03A06_residual (fun n hn =>
    Slice03A06_checked ⟨n, by simpa only [Slice03A06_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice03A06_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
