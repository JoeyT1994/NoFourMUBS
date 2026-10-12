import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P131A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P135A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P139A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P142A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P146A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P148A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P152A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P154A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P158A10
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice04A10_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P131A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P135A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P139A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P142A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P146A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P148A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P152A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P154A10 (P158A10))))))))

theorem Slice04A10_length : Slice04A10_residual.length = 8 := by rfl

theorem Slice04A10_checked (i : Fin 8) : zeroII (Slice04A10_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice04A10_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P131A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P135A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P139A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P142A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P146A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P148A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P152A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P154A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P158A10))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice04A10_residual (fun n hn =>
    Slice04A10_checked ⟨n, by simpa only [Slice04A10_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice04A10_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
