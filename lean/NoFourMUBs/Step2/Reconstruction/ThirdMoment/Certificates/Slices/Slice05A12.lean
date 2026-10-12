import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P161A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P165A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P168A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P172A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P175A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P179A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P182A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P186A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P189A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P191A12
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice05A12_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P161A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P165A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P168A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P172A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P175A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P179A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P182A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P186A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P189A12 (P191A12)))))))))

theorem Slice05A12_length : Slice05A12_residual.length = 10 := by rfl

theorem Slice05A12_checked (i : Fin 10) : zeroII (Slice05A12_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice05A12_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P161A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P165A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P168A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P172A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P175A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P179A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P182A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P186A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P189A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P191A12)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice05A12_residual (fun n hn =>
    Slice05A12_checked ⟨n, by simpa only [Slice05A12_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice05A12_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
