import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P161A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P165A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P168A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P172A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P175A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P179A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P182A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P186A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P189A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P191A13
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice05A13_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P161A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P165A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P168A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P172A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P175A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P179A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P182A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P186A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P189A13 (P191A13)))))))))

theorem Slice05A13_length : Slice05A13_residual.length = 9 := by rfl

theorem Slice05A13_checked (i : Fin 9) : zeroII (Slice05A13_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice05A13_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P161A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P165A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P168A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P172A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P175A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P179A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P182A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P186A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P189A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P191A13)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice05A13_residual (fun n hn =>
    Slice05A13_checked ⟨n, by simpa only [Slice05A13_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice05A13_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
