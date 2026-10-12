import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P096A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P100A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P104A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P107A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P111A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P113A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P116A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P119A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P122A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P126A09
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice03A09_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P096A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P100A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P104A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P107A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P111A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P113A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P116A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P119A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P122A09 (P126A09)))))))))

theorem Slice03A09_length : Slice03A09_residual.length = 12 := by rfl

theorem Slice03A09_checked (i : Fin 12) : zeroII (Slice03A09_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice03A09_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P096A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P100A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P104A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P107A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P111A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P113A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P116A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P119A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P122A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P126A09)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice03A09_residual (fun n hn =>
    Slice03A09_checked ⟨n, by simpa only [Slice03A09_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice03A09_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
