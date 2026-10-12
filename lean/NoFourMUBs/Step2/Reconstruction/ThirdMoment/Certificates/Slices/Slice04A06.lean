import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P131A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P135A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P139A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P142A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P146A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P148A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P152A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P154A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P158A06
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice04A06_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P131A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P135A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P139A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P142A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P146A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P148A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P152A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P154A06 (P158A06))))))))

theorem Slice04A06_length : Slice04A06_residual.length = 12 := by rfl

theorem Slice04A06_checked (i : Fin 12) : zeroII (Slice04A06_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice04A06_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P131A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P135A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P139A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P142A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P146A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P148A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P152A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P154A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P158A06))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice04A06_residual (fun n hn =>
    Slice04A06_checked ⟨n, by simpa only [Slice04A06_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice04A06_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
