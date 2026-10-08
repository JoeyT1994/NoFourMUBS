import EndpointLeafRejection
import IntegerBallLabelNoInit
import PhaseCertificateToRetained36

/-! Generic composition keeps the lookup table symbolic throughout the two
leaf proofs. No concrete table is imported or evaluated in this module. -/
set_option autoImplicit false
set_option trace.profiler true
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007
namespace Seed0024ClusterTube20261007.GenericComposition

theorem literal_leafSound (table : SupplierTable)
    (hTable : SupplierNeededTableSound table) :
    LeafSound (⟨scalarRejectCheck table, ballLabelCheck table⟩ : LeafChecks 48)
      ClosedPhaseDomain phaseCentreLabel := by
  constructor
  · intro s k theta hs ht hc hf
    change scalarRejectCheck table s k = true at hc
    exact scalarRejectCheck_sound table hTable s hs.1 k theta ht hc (hf k)
  · intro s k theta hs ht hc
    change ballLabelCheck table s k = true at hc
    change centreProjectorLabel k (turnRay theta)
    exact ballLabelCheck_sound table hTable s k theta ht hc

#print axioms literal_leafSound
end Seed0024ClusterTube20261007.GenericComposition
