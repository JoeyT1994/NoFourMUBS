import NoFourMUBs.Step2.FourierTaoBridge
import OAI.Analysis.MutuallyUnbiased.Fourier.FourierTheorem

/-! Reuse the existing single-matrix Fourier theorem through the checked
matrix-model and Tao-orbit bridges. This is not a new proof of that theorem. -/

namespace NoFourMUBs.Step2

theorem fourier_vanishing {H : Hadamard6.Mat6} (hH : Hadamard6.IsHadamard H)
    (hTao : ¬ Hadamard6.IsTaoOrbit H) (π : Equiv.Perm OAI.MUB6.Coord) :
    OAI.MUB6.g (FourierBridge.toOAI H) (OAI.MUB6.permuteCharge π OAI.MUB6.alpha) = 0 :=
  OAI.MUB6.fourier_vanishing (FourierBridge.hadamard_toOAI hH)
    (FourierBridge.nonTao_toOAI hTao) π

theorem fourier_vanishing_transpose {H : Hadamard6.Mat6}
    (hH : Hadamard6.IsHadamard H) (hTao : ¬ Hadamard6.IsTaoOrbit H)
    (π : Equiv.Perm OAI.MUB6.Coord) :
    OAI.MUB6.g (FourierBridge.toOAI H).transpose
      (OAI.MUB6.permuteCharge π OAI.MUB6.alpha) = 0 :=
  OAI.MUB6.fourier_vanishing (FourierBridge.hadamard_toOAI hH).transpose
    (FourierBridge.nonTao_toOAI_transpose hTao) π

end NoFourMUBs.Step2
