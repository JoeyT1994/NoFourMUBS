import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P131A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P135A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P139A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P142A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P146A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P148A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P152A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P154A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P158A11
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice04A11_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P131A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P135A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P139A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P142A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P146A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P148A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P152A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P154A11 (P158A11))))))))

theorem Slice04A11_length : Slice04A11_residual.length = 7 := by rfl

theorem Slice04A11_checked (i : Fin 7) : zeroII (Slice04A11_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice04A11_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P131A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P135A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P139A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P142A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P146A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P148A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P152A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P154A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P158A11))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice04A11_residual (fun n hn =>
    Slice04A11_checked ⟨n, by simpa only [Slice04A11_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice04A11_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
