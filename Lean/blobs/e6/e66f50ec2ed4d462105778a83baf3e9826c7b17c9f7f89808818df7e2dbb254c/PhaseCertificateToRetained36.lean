import PhaseTape
import OrdinalRoots
import ApproximatePhaseFrontend
import ApproximateF6GraphExclusion

/- Literal ordinal tape acceptance is joined to the actual physical 36-box
exclusion. LeafSound and all concrete tape checks remain explicit premises. -/
set_option autoImplicit false
noncomputable section
open Seed0024ClusterTubeCover20261007
open Mub6.GlobalBoxCover20261006 Mub6.MaximalRadian20261006 Seed0024Geometry20261007

namespace Seed0024ClusterTube20261007

def phaseCentreLabel (k : Fin 48) (theta : Turns) : Prop :=
  centreProjectorLabel k (turnRay theta)

theorem checked_ordinal_tapes_cover (checks : LeafChecks 48) (width : ℕ)
    (hw : 0<width) (tags : Fin (rootShardCount width) → List UInt8)
    (hsound : LeafSound checks ClosedPhaseDomain phaseCentreLabel)
    (hchecks : ∀s,checkTape checks (rootShardCells width s.val) (tags s)=true) :
    ∀theta,UnitCube theta → ClosedPhaseDomain theta → ∃k,phaseCentreLabel k theta :=
  checked_tapes_cover_unit_cube checks ClosedPhaseDomain phaseCentreLabel hsound
    (fun s : Fin (rootShardCount width) => rootShardCells width s.val) tags hchecks
    (every_root_in_checked_sharding width hw)

theorem centre_cover_of_checked_ordinal_tapes (checks : LeafChecks 48) (width : ℕ)
    (hw : 0<width) (tags : Fin (rootShardCount width) → List UInt8)
    (hsound : LeafSound checks ClosedPhaseDomain phaseCentreLabel)
    (hchecks : ∀s,checkTape checks (rootShardCells width s.val) (tags s)=true) :
    ApproximateF6CentreCover := by
  intro z hz
  obtain ⟨theta,hcube,hz',hphase⟩ := approximate_ray_exists_phase_input z hz
  obtain ⟨k,hk⟩ := checked_ordinal_tapes_cover checks width hw tags hsound hchecks
    theta hcube (strictPhaseDomain_closed hphase)
  refine ⟨k,?_⟩
  change centreProjectorLabel k (turnRay theta) at hk
  rwa [hz'] at hk

theorem retained36_no_live_of_checked_ordinal_tapes (checks : LeafChecks 48) (width : ℕ)
    (hw : 0<width) (tags : Fin (rootShardCount width) → List UInt8)
    (hsound : LeafSound checks ClosedPhaseDomain phaseCentreLabel)
    (hchecks : ∀s,checkTape checks (rootShardCells width s.val) (tags s)=true)
    {b : SeedBox} (hb : b∈Seed0024Geometry20261007.residual) :
    ¬Live MaximalQuartetPhasePopulation b.box :=
  retained36_no_live_of_centre_cover
    (centre_cover_of_checked_ordinal_tapes checks width hw tags hsound hchecks) hb

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.checked_ordinal_tapes_cover
#print axioms Seed0024ClusterTube20261007.centre_cover_of_checked_ordinal_tapes
#print axioms Seed0024ClusterTube20261007.retained36_no_live_of_checked_ordinal_tapes
