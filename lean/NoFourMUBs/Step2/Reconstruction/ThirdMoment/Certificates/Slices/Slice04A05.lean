import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P131A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P135A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P139A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P142A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P146A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P148A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P152A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P154A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P158A05
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice04A05_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P131A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P135A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P139A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P142A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P146A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P148A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P152A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P154A05 (P158A05))))))))

theorem Slice04A05_length : Slice04A05_residual.length = 12 := by rfl

theorem Slice04A05_checked (i : Fin 12) : zeroII (Slice04A05_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice04A05_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P131A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P135A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P139A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P142A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P146A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P148A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P152A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P154A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P158A05))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice04A05_residual (fun n hn =>
    Slice04A05_checked ⟨n, by simpa only [Slice04A05_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice04A05_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
