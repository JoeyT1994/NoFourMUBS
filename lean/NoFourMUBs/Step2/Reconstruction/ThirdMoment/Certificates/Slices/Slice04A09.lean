import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P131A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P135A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P139A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P142A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P146A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P148A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P152A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P154A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P158A09
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice04A09_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P131A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P135A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P139A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P142A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P146A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P148A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P152A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P154A09 (P158A09))))))))

theorem Slice04A09_length : Slice04A09_residual.length = 9 := by rfl

theorem Slice04A09_checked (i : Fin 9) : zeroII (Slice04A09_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice04A09_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P131A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P135A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P139A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P142A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P146A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P148A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P152A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P154A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P158A09))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice04A09_residual (fun n hn =>
    Slice04A09_checked ⟨n, by simpa only [Slice04A09_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice04A09_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
