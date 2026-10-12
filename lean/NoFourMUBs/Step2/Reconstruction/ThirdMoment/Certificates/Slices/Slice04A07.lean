import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P131A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P135A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P139A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P142A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P146A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P148A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P152A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P154A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P158A07
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice04A07_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P131A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P135A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P139A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P142A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P146A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P148A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P152A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P154A07 (P158A07))))))))

theorem Slice04A07_length : Slice04A07_residual.length = 11 := by rfl

theorem Slice04A07_checked (i : Fin 11) : zeroII (Slice04A07_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice04A07_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P131A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P135A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P139A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P142A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P146A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P148A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P152A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P154A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P158A07))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice04A07_residual (fun n hn =>
    Slice04A07_checked ⟨n, by simpa only [Slice04A07_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice04A07_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
