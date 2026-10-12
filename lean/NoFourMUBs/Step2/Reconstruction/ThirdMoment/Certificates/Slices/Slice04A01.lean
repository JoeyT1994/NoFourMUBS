import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P131A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P135A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P139A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P142A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P146A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P148A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P152A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P154A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P158A01
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice04A01_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P131A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P135A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P139A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P142A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P146A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P148A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P152A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P154A01 (P158A01))))))))

theorem Slice04A01_length : Slice04A01_residual.length = 13 := by rfl

theorem Slice04A01_checked (i : Fin 13) : zeroII (Slice04A01_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice04A01_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P131A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P135A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P139A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P142A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P146A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P148A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P152A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P154A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P158A01))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice04A01_residual (fun n hn =>
    Slice04A01_checked ⟨n, by simpa only [Slice04A01_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice04A01_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
