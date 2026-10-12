import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P096A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P100A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P104A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P107A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P111A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P113A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P116A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P119A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P122A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P126A14
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice03A14_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P096A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P100A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P104A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P107A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P111A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P113A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P116A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P119A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P122A14 (P126A14)))))))))

theorem Slice03A14_length : Slice03A14_residual.length = 7 := by rfl

theorem Slice03A14_checked (i : Fin 7) : zeroII (Slice03A14_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice03A14_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P096A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P100A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P104A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P107A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P111A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P113A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P116A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P119A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P122A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P126A14)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice03A14_residual (fun n hn =>
    Slice03A14_checked ⟨n, by simpa only [Slice03A14_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice03A14_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
