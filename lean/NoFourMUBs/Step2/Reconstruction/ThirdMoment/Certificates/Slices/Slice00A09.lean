import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P001A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P005A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P009A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P013A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P017A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P019A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P023A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P025A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P029A09
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice00A09_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P001A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P005A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P009A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P013A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P017A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P019A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P023A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P025A09 (P029A09))))))))

theorem Slice00A09_length : Slice00A09_residual.length = 8 := by rfl

theorem Slice00A09_checked (i : Fin 8) : zeroII (Slice00A09_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice00A09_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P001A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P005A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P009A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P013A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P017A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P019A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P023A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P025A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P029A09))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice00A09_residual (fun n hn =>
    Slice00A09_checked ⟨n, by simpa only [Slice00A09_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice00A09_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
