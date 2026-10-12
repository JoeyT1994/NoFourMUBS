import NoFourMUBs.Step2.CriticalZero.Equivalence
import NoFourMUBs.Step2.FourierTaoBridge
import NoFourMUBs.Step2.SOS.ComplementaryFrames
import OAI.Analysis.MutuallyUnbiased.Matrix.Hadamard

/-! Current-model transpose transport, using the checked signature and
equivalence transpose identities. -/

set_option autoImplicit false
noncomputable section
open Matrix Hadamard6
namespace NoFourMUBs.Step2.Critical

theorem allCritical_transpose {H : Had6} (hH : AllCritical H) :
    AllCritical ⟨H.1.transpose, transpose_isHadamard H.2⟩ := by
  intro f
  have hs : (frameRight ⟨H.1.transpose, transpose_isHadamard H.2⟩ f).im = 0 := by
    rw [frameRight_raw]
    change (sideSignature ((H.1.submatrix (fun i => f.2 (.inr i))
      (fun j => f.1 (.inl j))).transpose)).im = 0
    rw [SOS.sideSignature_transpose]
    exact allCritical_submatrix_signature_im hH _ _
      (f.2.injective.comp Sum.inr_injective) (f.1.injective.comp Sum.inl_injective)
  have h := (frameScalarIdentities ⟨H.1.transpose, transpose_isHadamard H.2⟩ f).2.2.1
  simpa only [hs, zero_pow (by decide : 2 ≠ 0), mul_zero] using h.symm

theorem allCriticalCarrier_transpose {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) : AllCriticalCarrier H.transpose := by
  obtain ⟨hN, A, hA, hC⟩ := hH
  refine ⟨⟨hN.1.transpose, hN.2.2, hN.2.1⟩,
    ⟨A.1.transpose, transpose_isHadamard A.2⟩, ?_, allCritical_transpose hC⟩
  exact congrArg Matrix.transpose hA

#print axioms allCritical_transpose
#print axioms allCriticalCarrier_transpose
end NoFourMUBs.Step2.Critical
