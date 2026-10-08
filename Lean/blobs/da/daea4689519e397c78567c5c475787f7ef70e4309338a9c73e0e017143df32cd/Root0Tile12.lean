import AngularLeaf
import Root0CoverData
import Root0Leaves53
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile12 : LeafStatement moments EX EY hull0 hull1 ⟨(1/8),(1/4)⟩ ⟨(1/2),(5/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/8),(3/16)⟩ ⟨(1/2),(9/16)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(1/2),(9/16)⟩ (5/32) (leaf1295 s t r ex ey hm hex hey) (leaf1294 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/32),(3/16)⟩ ⟨(9/16),(5/8)⟩ := split_y ⟨(5/32),(3/16)⟩ ⟨(9/16),(5/8)⟩ (19/32) (leaf1292 s t r ex ey hm hex hey) (leaf1291 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/8),(3/16)⟩ ⟨(9/16),(5/8)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(9/16),(5/8)⟩ (5/32) (leaf1293 s t r ex ey hm hex hey) node0001
  have node0003 : Holds P ⟨(1/8),(3/16)⟩ ⟨(1/2),(5/8)⟩ := split_y ⟨(1/8),(3/16)⟩ ⟨(1/2),(5/8)⟩ (9/16) node0000 node0002
  have node0004 : Holds P ⟨(3/16),(1/4)⟩ ⟨(1/2),(9/16)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(1/2),(9/16)⟩ (7/32) (leaf1290 s t r ex ey hm hex hey) (leaf1289 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(3/16),(7/32)⟩ ⟨(9/16),(5/8)⟩ := split_y ⟨(3/16),(7/32)⟩ ⟨(9/16),(5/8)⟩ (19/32) (leaf1288 s t r ex ey hm hex hey) (leaf1287 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(7/32),(1/4)⟩ ⟨(9/16),(5/8)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(9/16),(5/8)⟩ (19/32) (leaf1286 s t r ex ey hm hex hey) (leaf1285 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(3/16),(1/4)⟩ ⟨(9/16),(5/8)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(9/16),(5/8)⟩ (7/32) node0005 node0006
  have node0008 : Holds P ⟨(3/16),(1/4)⟩ ⟨(1/2),(5/8)⟩ := split_y ⟨(3/16),(1/4)⟩ ⟨(1/2),(5/8)⟩ (9/16) node0004 node0007
  have node0009 : Holds P ⟨(1/8),(1/4)⟩ ⟨(1/2),(5/8)⟩ := split_x ⟨(1/8),(1/4)⟩ ⟨(1/2),(5/8)⟩ (3/16) node0003 node0008
  exact node0009
#print axioms tile12
end Root0Angular20261003
