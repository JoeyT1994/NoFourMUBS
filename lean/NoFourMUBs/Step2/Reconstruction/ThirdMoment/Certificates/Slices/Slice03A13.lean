import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P096A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P100A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P104A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P107A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P111A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P113A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P116A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P119A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P122A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P126A13
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice03A13_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P096A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P100A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P104A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P107A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P111A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P113A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P116A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P119A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P122A13 (P126A13)))))))))

theorem Slice03A13_length : Slice03A13_residual.length = 8 := by rfl

theorem Slice03A13_checked (i : Fin 8) : zeroII (Slice03A13_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice03A13_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P096A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P100A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P104A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P107A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P111A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P113A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P116A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P119A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P122A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P126A13)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice03A13_residual (fun n hn =>
    Slice03A13_checked ⟨n, by simpa only [Slice03A13_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice03A13_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
