import Root0PhaseBounds

set_option autoImplicit false
namespace ShoulderPhaseReuse20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
noncomputable section

def root0Phases : Fin 4 → RationalRectangle :=
  ![ShoulderRoot0Moments20261003.Phase0,ShoulderRoot0Moments20261003.Phase1,
    ShoulderRoot0Moments20261003.Phase2,ShoulderRoot0Moments20261003.Phase3]

/-- A single coordinate enclosure does not constrain the other three inputs. -/
theorem root0_coordinate (k : Fin 4) {x : ℝ}
    (hx : |x-(ShoulderRoot0Centers20261003.rootCenters k:ℝ)|≤1/512) :
    MemRectangle (root0Phases k) (cis x) := by
  let θ : Fin 4 → ℝ := Function.update
    (fun j => (ShoulderRoot0Centers20261003.rootCenters j:ℝ)) k x
  have hc : ShoulderRoot0Centers20261003.Cube θ := by
    intro j
    by_cases hj : j=k
    · subst j
      simpa [θ] using hx
    · norm_num [θ,Function.update,hj]
  have hh : MemRectangle (root0Phases k) (cis (θ k)) := by
    fin_cases k
    · exact ShoulderRoot0Moments20261003.phase0_sound hc
    · exact ShoulderRoot0Moments20261003.phase1_sound hc
    · exact ShoulderRoot0Moments20261003.phase2_sound hc
    · exact ShoulderRoot0Moments20261003.phase3_sound hc
  simpa [θ] using hh

#print axioms root0_coordinate
end
end ShoulderPhaseReuse20261003
