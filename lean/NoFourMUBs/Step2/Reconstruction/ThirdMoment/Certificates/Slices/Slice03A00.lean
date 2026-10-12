import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P096A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P100A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P104A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P107A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P111A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P113A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P116A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P119A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P122A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P126A00
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice03A00_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P096A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P100A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P104A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P107A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P111A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P113A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P116A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P119A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P122A00 (P126A00)))))))))

theorem Slice03A00_length : Slice03A00_residual.length = 15 := by rfl

theorem Slice03A00_checked (i : Fin 15) : zeroII (Slice03A00_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice03A00_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P096A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P100A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P104A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P107A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P111A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P113A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P116A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P119A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P122A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P126A00)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice03A00_residual (fun n hn =>
    Slice03A00_checked ⟨n, by simpa only [Slice03A00_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice03A00_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
