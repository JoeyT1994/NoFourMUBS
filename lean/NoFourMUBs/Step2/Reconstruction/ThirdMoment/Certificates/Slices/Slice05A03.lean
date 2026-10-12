import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P161A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P165A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P168A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P172A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P175A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P179A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P182A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P186A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P189A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P191A03
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice05A03_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P161A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P165A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P168A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P172A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P175A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P179A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P182A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P186A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P189A03 (P191A03)))))))))

theorem Slice05A03_length : Slice05A03_residual.length = 16 := by rfl

theorem Slice05A03_checked (i : Fin 16) : zeroII (Slice05A03_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice05A03_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P161A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P165A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P168A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P172A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P175A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P179A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P182A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P186A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P189A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P191A03)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice05A03_residual (fun n hn =>
    Slice05A03_checked ⟨n, by simpa only [Slice05A03_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice05A03_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
