import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P131A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P135A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P139A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P142A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P146A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P148A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P152A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P154A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P158A00
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice04A00_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P131A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P135A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P139A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P142A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P146A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P148A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P152A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P154A00 (P158A00))))))))

theorem Slice04A00_length : Slice04A00_residual.length = 12 := by rfl

theorem Slice04A00_checked (i : Fin 12) : zeroII (Slice04A00_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice04A00_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P131A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P135A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P139A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P142A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P146A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P148A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P152A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P154A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P158A00))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice04A00_residual (fun n hn =>
    Slice04A00_checked ⟨n, by simpa only [Slice04A00_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice04A00_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
