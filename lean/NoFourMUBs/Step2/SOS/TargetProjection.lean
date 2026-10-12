import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.PhysicalTarget
import NoFourMUBs.Step2.SOS.TargetCornerSum
import NoFourMUBs.Step2.SOS.TargetPsiSum
import NoFourMUBs.Step2.SOS.TargetTail

noncomputable section
namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000

theorem physical_target_projection {H : CMatrix} (hH : IsHadamard H) :
    (11593580544000 : ℝ) * physicalTargetMoment H =
      Integer.Sparse.eval Arithmetic.target (Semantics.momentVector H) := by
  rw [← extendRow_eval Arithmetic.target H]
  have h0 := targetPsiSum hH
  have h1 := targetCornerSum hH
  have h2 := targetTail hH
  have hc : extendRow Arithmetic.target =
      Integer.Sparse.merge (Integer.Sparse.scale 8051097600 targetPsiSumProjection) (Integer.Sparse.merge (Integer.Sparse.scale 4528742400 targetCornerSumProjection) (Integer.Sparse.scale 11593580544000 targetTailProjection)) := by decide +kernel
  have hf : physicalTargetMoment H =
      (∑ i, ∑ j, targetPsiTerm H i j) + (∑ i, ∑ j, targetCornerTerm H i j) +
        (-180 * injectiveMoment H cubicExponent + 9) := by
    simp only [physicalTargetMoment, targetPsiTerm, targetCornerTerm, Finset.mul_sum]
    ring
  rw [hf, hc, Integer.Sparse.eval_merge, Integer.Sparse.eval_merge]
  simp only [Integer.Sparse.eval_scale]
  linear_combination (8051097600 : ℝ) * h0 + (4528742400 : ℝ) * h1 + (11593580544000 : ℝ) * h2

end NoFourMUBs.Step2.SOS.Semantics
