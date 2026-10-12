import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P161A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P165A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P168A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P172A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P175A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P179A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P182A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P186A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P189A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P191A09
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice05A09_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P161A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P165A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P168A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P172A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P175A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P179A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P182A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P186A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P189A09 (P191A09)))))))))

theorem Slice05A09_length : Slice05A09_residual.length = 13 := by rfl

theorem Slice05A09_checked (i : Fin 13) : zeroII (Slice05A09_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice05A09_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P161A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P165A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P168A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P172A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P175A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P179A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P182A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P186A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P189A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P191A09)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice05A09_residual (fun n hn =>
    Slice05A09_checked ⟨n, by simpa only [Slice05A09_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice05A09_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
