import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P161A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P165A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P168A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P172A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P175A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P179A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P182A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P186A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P189A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P191A01
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice05A01_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P161A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P165A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P168A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P172A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P175A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P179A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P182A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P186A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P189A01 (P191A01)))))))))

theorem Slice05A01_length : Slice05A01_residual.length = 16 := by rfl

theorem Slice05A01_checked (i : Fin 16) : zeroII (Slice05A01_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice05A01_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P161A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P165A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P168A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P172A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P175A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P179A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P182A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P186A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P189A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P191A01)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice05A01_residual (fun n hn =>
    Slice05A01_checked ⟨n, by simpa only [Slice05A01_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice05A01_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
