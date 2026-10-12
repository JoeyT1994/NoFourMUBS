import NoFourMUBs.Step2.SOS.NormalizationContextData
import NoFourMUBs.Step2.SOS.IntegerProjection
import OAI.Analysis.MutuallyUnbiased.Certificate.Interpretation

/-! Connect the active certificate coordinates to the normalization context.
The zero-relation rule is a specialization of the existing projection checker. -/

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate

def extendRow (v : Integer.Sparse (Fin 1400)) : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.reindex activeEmbedding v

theorem extendRow_eval (v : Integer.Sparse (Fin 1400)) (H : CMatrix) :
    Integer.Sparse.eval (extendRow v) (momentVector H) =
      Integer.Sparse.eval v (Semantics.momentVector H) := by
  rw [extendRow, Integer.Sparse.eval_reindex]
  congr 1
  funext i
  exact active_moment H i

theorem projected_zero {ι : Type*} [LinearOrder ι] {m : ℕ}
    (x : ι → ℝ) (z : Fin m → ℝ) (d L : ℤ)
    (denominators weights : Fin m → ℤ)
    (target : Integer.Sparse ι) (children : Fin m → Integer.Sparse ι)
    (hL : L ≠ 0) (hweights : ∀ i, weights i * denominators i = -d * L)
    (hrelation : ∑ i, z i = 0)
    (hchildren : ∀ i, (denominators i : ℝ) * z i =
      Integer.Sparse.eval (children i) x)
    (hcheck : Integer.Sparse.merge (Integer.Sparse.scale L target)
      (sumScaled children weights) = []) :
    Integer.Sparse.eval target x = 0 := by
  have h := integer_projection x 0 z 1 (-d) (-d * L) L
    denominators weights target children hL (by ring) hweights
    (by simpa only [Int.cast_one, mul_zero, zero_add] using hrelation)
    hchildren hcheck
  simpa only [mul_zero] using h.symm

end NoFourMUBs.Step2.SOS.Normalization
