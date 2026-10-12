import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P096A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P100A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P104A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P107A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P111A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P113A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P116A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P119A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P122A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P126A02
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice03A02_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P096A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P100A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P104A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P107A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P111A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P113A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P116A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P119A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P122A02 (P126A02)))))))))

theorem Slice03A02_length : Slice03A02_residual.length = 15 := by rfl

theorem Slice03A02_checked (i : Fin 15) : zeroII (Slice03A02_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice03A02_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P096A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P100A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P104A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P107A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P111A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P113A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P116A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P119A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P122A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P126A02)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice03A02_residual (fun n hn =>
    Slice03A02_checked ⟨n, by simpa only [Slice03A02_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice03A02_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
