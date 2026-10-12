import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P161A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P165A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P168A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P172A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P175A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P179A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P182A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P186A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P189A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P191A08
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice05A08_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P161A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P165A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P168A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P172A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P175A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P179A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P182A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P186A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P189A08 (P191A08)))))))))

theorem Slice05A08_length : Slice05A08_residual.length = 14 := by rfl

theorem Slice05A08_checked (i : Fin 14) : zeroII (Slice05A08_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice05A08_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P161A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P165A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P168A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P172A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P175A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P179A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P182A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P186A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P189A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P191A08)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice05A08_residual (fun n hn =>
    Slice05A08_checked ⟨n, by simpa only [Slice05A08_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice05A08_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
