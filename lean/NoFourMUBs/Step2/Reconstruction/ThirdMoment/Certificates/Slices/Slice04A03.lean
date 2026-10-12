import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P131A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P135A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P139A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P142A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P146A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P148A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P152A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P154A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P158A03
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice04A03_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P131A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P135A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P139A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P142A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P146A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P148A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P152A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P154A03 (P158A03))))))))

theorem Slice04A03_length : Slice04A03_residual.length = 13 := by rfl

theorem Slice04A03_checked (i : Fin 13) : zeroII (Slice04A03_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice04A03_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P131A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P135A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P139A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P142A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P146A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P148A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P152A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P154A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P158A03))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice04A03_residual (fun n hn =>
    Slice04A03_checked ⟨n, by simpa only [Slice04A03_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice04A03_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
