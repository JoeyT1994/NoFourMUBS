import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P096A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P100A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P104A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P107A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P111A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P113A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P116A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P119A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P122A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P126A03
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice03A03_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P096A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P100A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P104A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P107A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P111A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P113A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P116A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P119A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P122A03 (P126A03)))))))))

theorem Slice03A03_length : Slice03A03_residual.length = 15 := by rfl

theorem Slice03A03_checked (i : Fin 15) : zeroII (Slice03A03_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice03A03_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P096A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P100A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P104A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P107A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P111A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P113A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P116A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P119A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P122A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P126A03)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice03A03_residual (fun n hn =>
    Slice03A03_checked ⟨n, by simpa only [Slice03A03_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice03A03_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
