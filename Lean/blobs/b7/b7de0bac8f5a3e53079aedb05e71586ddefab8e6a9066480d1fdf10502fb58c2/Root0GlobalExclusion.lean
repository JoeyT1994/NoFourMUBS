import Root0ActualBounds
import Root0SeedBoxes
import Root0AngularCover

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot0Actual20261003
open Mub6 Mub6.Numerical Mub6.Classification
open CompactCover GlobalCornerDomain
noncomputable section

/-- Exclusion of the complete original positive-width root0 cube on the
all-corner GlobalMax domain. No eligible-side or reconstruction predicate is
part of this statement. This module requires the complete checked cover. -/
theorem globalMax_root0_excluded {H : Mat6} (hH : GlobalMax H)
    (hroot : InRoot0 H) : False := by
  have hm := vertical_moment_boxes hroot
  have he := normalized_root0_seed_boxes hH.1 hroot
  exact Root0Angular20261003.side_exclusion hm he.1 he.2
    (vertical_system hH.1) (globalMax_root0_corner_caps hH hroot)

theorem no_globalMax_in_root0 : ¬ ∃ H : Mat6, GlobalMax H ∧ InRoot0 H := by
  rintro ⟨H,hH,hroot⟩
  exact globalMax_root0_excluded hH hroot

#print axioms globalMax_root0_excluded
#print axioms no_globalMax_in_root0
end
end ShoulderRoot0Actual20261003
