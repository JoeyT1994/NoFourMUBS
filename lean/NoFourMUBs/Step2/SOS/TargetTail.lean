import NoFourMUBs.Step2.SOS.Canonical177
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.TargetProjectionTerms

noncomputable section
namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000

def targetTailProjection : Integer.Sparse (Fin 1613) := [(0, 9), (1227, -180)]

theorem targetTail {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (-180 * injectiveMoment H cubicExponent + 9) =
      Integer.Sparse.eval targetTailProjection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨3, 3, cubicExponent⟩ : ExponentCode) (by change 3 ≤ 6; decide +kernel) (by change 3 ≤ 6; decide +kernel)) = canonicalInput11340.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H cubicExponent =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨3, 3, cubicExponent⟩ : ExponentCode) (by change 3 ≤ 6; decide +kernel) (by change 3 ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11340 hH))).trans (oldProjectionSound44 hH)
  have h0 : Normalization.momentVector H 0 = 1 := by
    change injectiveMoment H (![] : Matrix (Fin 0) (Fin 0) ℤ) = 1
    norm_num [injectiveMoment, exponentMonomial, average_const]
  have hc : targetTailProjection = Integer.Sparse.merge
      (Integer.Sparse.scale (-180) oldProjection44) [(0, 9)] := by decide +kernel
  rw [hc, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale]
  simp only [Integer.Sparse.eval, List.map_cons, List.map_nil, List.sum_cons, List.sum_nil, add_zero] at *
  rw [h0]
  linear_combination (-180 : ℝ) * hh0

end NoFourMUBs.Step2.SOS.Semantics
