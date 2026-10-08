import ParametricPhysicalSide
import Root1Cap
import Root1Moments
import Root1AngularCover

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot1Actual20261003
open Mub6 Mub6.Numerical Mub6.Classification
open CompactCover GlobalCornerDomain ShoulderRadian20261003
open ShoulderRoot1Centers20261003 ShoulderRoot1Data20261003
noncomputable section

def InRoot1 (H : Mat6) : Prop :=
  ShoulderPhysicalSide20261003.InCube rootCenters radii H

/-- The complete retained root1 cube has strictly positive radius in each
coordinate. This statement does not assert that a physical matrix lies in it. -/
theorem root1_radius_positive (k : Fin 4) : 0 < radii k := by
  norm_num [radii]

/-- Physical exclusion of the full closed root1 phase cube on the all-corner
GlobalMax domain. Every quantitative premise of the shared consumer is supplied
by a checked theorem for this same cube. -/
theorem globalMax_root1_excluded {H : Mat6} (hH : GlobalMax H)
    (hroot : InRoot1 H) : False := by
  apply ShoulderPhysicalSide20261003.cube_exclusion
    rootCenters radii cap moments seeds hull0 hull1 hull0_reject hull1_reject
    ?_ ?_ ?_ ?_ hH hroot
  · exact ShoulderRoot1Angular20261003.full_square
  · intro θ hθ
    simpa [cap] using ShoulderRoot1Cap20261003.cube_cap hθ
  · intro θ hθ
    exact ShoulderRoot1Moments20261003.moment_boxes_sound hθ
  · intro θ hθ
    exact ShoulderRoot1Moments20261003.phase_boxes_sound hθ

theorem no_globalMax_in_root1 : ¬ ∃ H : Mat6, GlobalMax H ∧ InRoot1 H := by
  rintro ⟨H,hH,hroot⟩
  exact globalMax_root1_excluded hH hroot

/-- A literal closed-interval form fixes both the four physical entries and
their radian coordinates, without any certificate or cover hypothesis. -/
theorem globalMax_root1_literal_excluded {H : Mat6} {a b c d : ℝ}
    (hH : GlobalMax H)
    (ha : -1074/512 ≤ a ∧ a ≤ -1072/512)
    (hb : -560/512 ≤ b ∧ b ≤ -558/512)
    (hc : -2/512 ≤ c ∧ c ≤ 0)
    (hd : -1608/512 ≤ d ∧ d ≤ -1606/512)
    (h00 : H 1 1=cis a) (h01 : H 1 2=cis b)
    (h10 : H 2 1=cis c) (h11 : H 2 2=cis d) : False := by
  apply globalMax_root1_excluded hH
  refine ⟨![a,b,c,d],?_,h00,h01,h10,h11⟩
  intro k
  fin_cases k <;> norm_num [rootCenters,radii]
  all_goals apply abs_le.mpr
  all_goals constructor <;> linarith

#print axioms root1_radius_positive
#print axioms globalMax_root1_excluded
#print axioms no_globalMax_in_root1
#print axioms globalMax_root1_literal_excluded
end
end ShoulderRoot1Actual20261003
