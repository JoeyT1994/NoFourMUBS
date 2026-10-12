import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P001A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P005A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P009A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P013A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P017A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P019A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P023A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P025A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P029A04
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice00A04_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P001A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P005A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P009A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P013A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P017A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P019A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P023A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P025A04 (P029A04))))))))

theorem Slice00A04_length : Slice00A04_residual.length = 12 := by rfl

theorem Slice00A04_checked (i : Fin 12) : zeroII (Slice00A04_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice00A04_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P001A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P005A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P009A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P013A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P017A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P019A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P023A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P025A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P029A04))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice00A04_residual (fun n hn =>
    Slice00A04_checked ⟨n, by simpa only [Slice00A04_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice00A04_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
