import KernelAtlas.Edge.Chart
import KernelAtlas.Edge.Normal

/-! The local graph image bound, using the already checked horizontal X-image enclosure. -/

open Hadamard6 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

def graphImageOK (B : EBallD) : Bool := decide (B.nX * 20 < 9 * 36 * 2 ^ pp)

lemma graphImageOK_radius {B : EBallD} (h : graphImageOK B = true) :
    rn B.nX / 36 < (9 / 20 : ℝ) := by
  have hz : B.nX * 20 < 9 * 36 * 2 ^ pp := of_decide_eq_true h
  have hr := Nat.cast_lt (α := ℝ).mpr hz
  norm_num [rn, pp] at hr ⊢
  linarith

/-- The graph neighbourhood of radius 9/20 contains every checked edge image. -/
theorem graphImageOK_sound {B : EBallD} {D : EBoxD} (hg : graphImageOK B = true)
    (hi : boundOK D.hb B.nX (hor36 (l36 (difF6 (qModels B D)))) = true)
    {u : Fin 4 → ℝ} (hu : Seed.InBox D.hb u) {Q : RMat6}
    (hq : ∀ i j, (gT (qModels B D) (Seed.ix i j)).Has u (Q i j : ℂ)) :
    frob (hor (Q - F6phase)) < (9 / 20 : ℝ) :=
  (image_bound hu hq hi).trans_lt (graphImageOK_radius hg)

end NoFourMUBs.KernelAtlas.Edge
