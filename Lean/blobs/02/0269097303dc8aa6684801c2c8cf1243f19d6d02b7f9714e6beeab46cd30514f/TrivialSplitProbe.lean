import PhaseTape
import OrdinalRoots

/- Diagnostic: structural split reduction only. Leaf checks are deliberately
always true and have no physical soundness claim. A failing file grants no
partial theorem credit. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000
open Seed0024ClusterTubeCover20261007
namespace Seed0024SplitDiagnostics20261007

def alwaysTrueChecks : LeafChecks 48 :=
  ⟨fun _ _ => true, fun _ _ => true⟩

def diagnosticCell : Cell := childCell (ordinalCell 2241383) 4

#print List.ofFn
#print Seed0024ClusterTubeCover20261007.childList

/-- Same concrete parent cell; the one-leaf path is the control. -/
theorem one_leaf_control :
    checkTape alwaysTrueChecks [diagnosticCell] [0] = true := by
  decide +kernel

/-- The exact32-child path under test, with arithmetic removed. -/
theorem split_control :
    checkTape alwaysTrueChecks [diagnosticCell] (54 :: List.replicate 32 0) = true := by
  decide +kernel

#print axioms one_leaf_control
#print axioms split_control
end Seed0024SplitDiagnostics20261007
