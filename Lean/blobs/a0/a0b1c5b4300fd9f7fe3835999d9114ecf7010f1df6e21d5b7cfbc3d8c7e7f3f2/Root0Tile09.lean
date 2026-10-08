import AngularLeaf
import Root0CoverData
import Root0Leaves55
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile09 : LeafStatement moments EX EY hull0 hull1 ⟨(1/8),(1/4)⟩ ⟨(1/8),(1/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/8),(3/16)⟩ ⟨(1/8),(1/4)⟩ := split_y ⟨(1/8),(3/16)⟩ ⟨(1/8),(1/4)⟩ (3/16) (leaf1329 s t r ex ey hm hex hey) (leaf1328 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/16),(1/4)⟩ ⟨(1/8),(3/16)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(1/8),(3/16)⟩ (7/32) (leaf1327 s t r ex ey hm hex hey) (leaf1326 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(3/16),(1/4)⟩ ⟨(3/16),(1/4)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(3/16),(1/4)⟩ (7/32) (leaf1325 s t r ex ey hm hex hey) (leaf1324 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(3/16),(1/4)⟩ ⟨(1/8),(1/4)⟩ := split_y ⟨(3/16),(1/4)⟩ ⟨(1/8),(1/4)⟩ (3/16) node0001 node0002
  have node0004 : Holds P ⟨(1/8),(1/4)⟩ ⟨(1/8),(1/4)⟩ := split_x ⟨(1/8),(1/4)⟩ ⟨(1/8),(1/4)⟩ (3/16) node0000 node0003
  exact node0004
#print axioms tile09
end Root0Angular20261003
