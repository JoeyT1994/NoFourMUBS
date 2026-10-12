import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P131A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P135A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P139A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P142A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P146A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P148A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P152A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P154A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P158A08
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice04A08_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P131A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P135A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P139A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P142A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P146A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P148A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P152A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P154A08 (P158A08))))))))

theorem Slice04A08_length : Slice04A08_residual.length = 10 := by rfl

theorem Slice04A08_checked (i : Fin 10) : zeroII (Slice04A08_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice04A08_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P131A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P135A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P139A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P142A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P146A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P148A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P152A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P154A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P158A08))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice04A08_residual (fun n hn =>
    Slice04A08_checked ⟨n, by simpa only [Slice04A08_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice04A08_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
