import SquareBallLabelNoInit
import EndpointLeafRejection
import PhaseForest

/-! Split of the exact leaf bridge, preserving every data premise and predicate. -/
set_option autoImplicit false
set_option maxRecDepth 4096
open Seed0024ClusterTube20261007
open Seed0024ClusterTubeTable20261007
namespace Seed0024LightPhase20261007

def leafFeasible (theta : Seed0024ClusterTubeCover20261007.Turns) : Prop :=
  ∀ k : Fin 6, |‖phaseSum (fourierTarget theta k)‖ - Real.sqrt 6| ≤ (1 : ℝ) / 5

def bridgeChecks (table : SupplierTable) : Seed0024ClusterTubeCover20261007.LeafChecks 48 :=
  ⟨scalarRejectCheck table, squareBallLabelCheck table⟩

theorem bridgeChecks_sound (table : SupplierTable)
    (hTable : SupplierNeededTableSound table) :
    Seed0024ClusterTubeCover20261007.LeafSound (bridgeChecks table) leafFeasible
      (fun k theta => centreProjectorLabel k (turnRay theta)) := by
  constructor
  · intro s k theta hs ht hc hf
    exact scalarRejectCheck_sound table hTable s hs.1 k theta ht hc (hf k)
  · intro s k theta hs ht hc
    exact squareBallLabelCheck_sound table hTable s k theta ht hc
#print axioms bridgeChecks_sound


end Seed0024LightPhase20261007
