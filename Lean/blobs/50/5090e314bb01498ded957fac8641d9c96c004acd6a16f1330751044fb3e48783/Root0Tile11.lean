import AngularLeaf
import Root0CoverData
import Root0Leaves54
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile11 : LeafStatement moments EX EY hull0 hull1 ⟨(1/8),(1/4)⟩ ⟨(3/8),(1/2)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/32),(3/16)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(5/32),(3/16)⟩ ⟨(3/8),(13/32)⟩ (11/64) (leaf1310 s t r ex ey hm hex hey) (leaf1309 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/32),(3/16)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(5/32),(3/16)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0000 (leaf1308 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/8),(3/16)⟩ ⟨(3/8),(7/16)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(3/8),(7/16)⟩ (5/32) (leaf1311 s t r ex ey hm hex hey) node0001
  have node0003 : Holds P ⟨(1/8),(3/16)⟩ ⟨(7/16),(1/2)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(7/16),(1/2)⟩ (5/32) (leaf1307 s t r ex ey hm hex hey) (leaf1306 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(1/8),(3/16)⟩ ⟨(3/8),(1/2)⟩ := split_y ⟨(1/8),(3/16)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0002 node0003
  have node0005 : Holds P ⟨(3/16),(7/32)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(3/16),(7/32)⟩ ⟨(3/8),(13/32)⟩ (13/64) (leaf1305 s t r ex ey hm hex hey) (leaf1304 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(3/16),(7/32)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(3/16),(7/32)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0005 (leaf1303 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(15/64),(1/4)⟩ ⟨(3/8),(13/32)⟩ := split_y ⟨(15/64),(1/4)⟩ ⟨(3/8),(13/32)⟩ (25/64) (leaf1301 s t r ex ey hm hex hey) (leaf1300 s t r ex ey hm hex hey)
  have node0008 : Holds P ⟨(7/32),(1/4)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(7/32),(1/4)⟩ ⟨(3/8),(13/32)⟩ (15/64) (leaf1302 s t r ex ey hm hex hey) node0007
  have node0009 : Holds P ⟨(7/32),(1/4)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0008 (leaf1299 s t r ex ey hm hex hey)
  have node0010 : Holds P ⟨(3/16),(1/4)⟩ ⟨(3/8),(7/16)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(3/8),(7/16)⟩ (7/32) node0006 node0009
  have node0011 : Holds P ⟨(7/32),(1/4)⟩ ⟨(7/16),(1/2)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(7/16),(1/2)⟩ (15/32) (leaf1297 s t r ex ey hm hex hey) (leaf1296 s t r ex ey hm hex hey)
  have node0012 : Holds P ⟨(3/16),(1/4)⟩ ⟨(7/16),(1/2)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(7/16),(1/2)⟩ (7/32) (leaf1298 s t r ex ey hm hex hey) node0011
  have node0013 : Holds P ⟨(3/16),(1/4)⟩ ⟨(3/8),(1/2)⟩ := split_y ⟨(3/16),(1/4)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0010 node0012
  have node0014 : Holds P ⟨(1/8),(1/4)⟩ ⟨(3/8),(1/2)⟩ := split_x ⟨(1/8),(1/4)⟩ ⟨(3/8),(1/2)⟩ (3/16) node0004 node0013
  exact node0014
#print axioms tile11
end Root0Angular20261003
