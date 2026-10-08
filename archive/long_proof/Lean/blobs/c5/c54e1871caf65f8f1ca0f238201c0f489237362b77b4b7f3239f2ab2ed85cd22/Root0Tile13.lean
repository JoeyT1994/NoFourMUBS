import AngularLeaf
import Root0CoverData
import Root0Leaves52
import Root0Leaves53
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile13 : LeafStatement moments EX EY hull0 hull1 ⟨(1/8),(1/4)⟩ ⟨(5/8),(3/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/32),(3/16)⟩ ⟨(5/8),(11/16)⟩ := split_y ⟨(5/32),(3/16)⟩ ⟨(5/8),(11/16)⟩ (21/32) (leaf1283 s t r ex ey hm hex hey) (leaf1282 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(1/8),(3/16)⟩ ⟨(5/8),(11/16)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(5/8),(11/16)⟩ (5/32) (leaf1284 s t r ex ey hm hex hey) node0000
  have node0002 : Holds P ⟨(5/32),(3/16)⟩ ⟨(11/16),(3/4)⟩ := split_y ⟨(5/32),(3/16)⟩ ⟨(11/16),(3/4)⟩ (23/32) (leaf1280 s t r ex ey hm hex hey) (leaf1279 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(1/8),(3/16)⟩ ⟨(11/16),(3/4)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(11/16),(3/4)⟩ (5/32) (leaf1281 s t r ex ey hm hex hey) node0002
  have node0004 : Holds P ⟨(1/8),(3/16)⟩ ⟨(5/8),(3/4)⟩ := split_y ⟨(1/8),(3/16)⟩ ⟨(5/8),(3/4)⟩ (11/16) node0001 node0003
  have node0005 : Holds P ⟨(3/16),(7/32)⟩ ⟨(5/8),(11/16)⟩ := split_y ⟨(3/16),(7/32)⟩ ⟨(5/8),(11/16)⟩ (21/32) (leaf1278 s t r ex ey hm hex hey) (leaf1277 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(7/32),(1/4)⟩ ⟨(5/8),(11/16)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(5/8),(11/16)⟩ (21/32) (leaf1276 s t r ex ey hm hex hey) (leaf1275 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(3/16),(1/4)⟩ ⟨(5/8),(11/16)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(5/8),(11/16)⟩ (7/32) node0005 node0006
  have node0008 : Holds P ⟨(3/16),(7/32)⟩ ⟨(11/16),(3/4)⟩ := split_y ⟨(3/16),(7/32)⟩ ⟨(11/16),(3/4)⟩ (23/32) (leaf1274 s t r ex ey hm hex hey) (leaf1273 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(7/32),(1/4)⟩ ⟨(11/16),(3/4)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(11/16),(3/4)⟩ (23/32) (leaf1272 s t r ex ey hm hex hey) (leaf1271 s t r ex ey hm hex hey)
  have node0010 : Holds P ⟨(3/16),(1/4)⟩ ⟨(11/16),(3/4)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(11/16),(3/4)⟩ (7/32) node0008 node0009
  have node0011 : Holds P ⟨(3/16),(1/4)⟩ ⟨(5/8),(3/4)⟩ := split_y ⟨(3/16),(1/4)⟩ ⟨(5/8),(3/4)⟩ (11/16) node0007 node0010
  have node0012 : Holds P ⟨(1/8),(1/4)⟩ ⟨(5/8),(3/4)⟩ := split_x ⟨(1/8),(1/4)⟩ ⟨(5/8),(3/4)⟩ (3/16) node0004 node0011
  exact node0012
#print axioms tile13
end Root0Angular20261003
