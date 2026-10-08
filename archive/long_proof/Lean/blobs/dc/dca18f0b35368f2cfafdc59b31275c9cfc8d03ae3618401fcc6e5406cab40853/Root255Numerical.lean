import GlobalCornerCore
import Root255CoverageReview

set_option autoImplicit false
set_option maxHeartbeats 1000000
namespace Mub6.Classification.RadianFrontier20261003
open Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CompactCover
open Mub6.Classification.GlobalCornerDomain
open ShoulderRadian20261003
noncomputable section

/-- The external campaign uses four actual corner phases measured in radians.
This is a distinct coordinate interface from the signed rational-circle cells. -/
structure Cell where
  parameters : Fin 4 → Interval

def Cell.Contains (c : Cell) (H : CompactCover.Mat6) : Prop :=
  ∃ θ : Fin 4 → ℝ, (∀ i, Mem (c.parameters i) (θ i)) ∧
    H 1 1 = cis (θ 0) ∧ H 1 2 = cis (θ 1) ∧
    H 2 1 = cis (θ 2) ∧ H 2 2 = cis (θ 3)

/-- Literal grid coordinates of the retained external original cube 255.
All boundary faces are included. -/
def root255 : Cell :=
  ⟨![⟨-253/256,-252/256⟩,⟨281/256,282/256⟩,
      ⟨282/256,283/256⟩,⟨-254/256,-253/256⟩]⟩

theorem root255_parameters_iff (θ : Fin 4 → ℝ) :
    (∀ i, Mem (root255.parameters i) (θ i)) ↔
      ShoulderRoot255Trig20261003.Cube θ := by
  rw [GlobalAssemblyCoverageReview20261003.root255_cube_iff_grid]
  constructor
  · intro h
    have h0 := h 0
    have h1 := h 1
    have h2 := h 2
    have h3 := h 3
    norm_num [root255, Mem, Matrix.cons_val_succ] at h0 h1 h2 h3 ⊢
    exact ⟨h0,h1,h2,h3⟩
  · rintro ⟨h0,h1,h2,h3⟩ i
    fin_cases i <;>
      norm_num [root255, Mem, Matrix.cons_val_succ] at h0 h1 h2 h3 ⊢ <;> assumption

/-- The existing exact positive-width certificate transported into the
numerical Fin 6 convention, with unchanged phases and normalization. -/
theorem root255_no_normalized_carrier {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (hc : root255.Contains H) : False := by
  obtain ⟨θ,hθ,h00,h01,h10,h11⟩ := hc
  apply ShoulderRoot25520261003.no_hadamard_in_root255
    (ClassificationCover.public_of_numerical hH.1)
  · intro j
    exact hH.2.1 (ClassificationCover.indexEquiv j)
  · intro i
    exact hH.2.2 (ClassificationCover.indexEquiv i)
  · exact (root255_parameters_iff θ).mp hθ
  · exact h00
  · exact h01
  · exact h10
  · exact h11

/-- Physical leaf semantics used by the radian campaign. No global cover
is asserted by a single closed leaf. -/
def Live (c : Cell) : Prop :=
  ∃ H : CompactCover.Mat6, NormalizedCarrier H ∧ c.Contains H ∧
    OccursAsQuartetEdge (FourPhaseWorker.normalizedNumerical H)

theorem root255_closed : ¬ Live root255 := by
  rintro ⟨H,hH,hc,_⟩
  exact root255_no_normalized_carrier hH hc

/-- The exclusion also holds on the unrestricted maximal-corner domain. -/
theorem root255_no_global_max {H : CompactCover.Mat6}
    (hH : GlobalMax H) (hc : root255.Contains H) : False :=
  root255_no_normalized_carrier hH.1 hc

#print axioms root255_parameters_iff
#print axioms root255_no_normalized_carrier
#print axioms root255_closed
#print axioms root255_no_global_max
end
end Mub6.Classification.RadianFrontier20261003
