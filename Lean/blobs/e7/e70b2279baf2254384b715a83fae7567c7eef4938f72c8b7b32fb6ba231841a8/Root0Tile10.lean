import AngularLeaf
import Root0CoverData
import Root0Leaves54
import Root0Leaves55
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile10 : LeafStatement moments EX EY hull0 hull1 ⟨(1/8),(1/4)⟩ ⟨(1/4),(3/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/8),(3/16)⟩ ⟨(1/4),(5/16)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(1/4),(5/16)⟩ (5/32) (leaf1323 s t r ex ey hm hex hey) (leaf1322 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/32),(3/16)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(5/32),(3/16)⟩ ⟨(5/16),(3/8)⟩ (11/32) (leaf1320 s t r ex ey hm hex hey) (leaf1319 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/8),(3/16)⟩ ⟨(5/16),(3/8)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(5/16),(3/8)⟩ (5/32) (leaf1321 s t r ex ey hm hex hey) node0001
  have node0003 : Holds P ⟨(1/8),(3/16)⟩ ⟨(1/4),(3/8)⟩ := split_y ⟨(1/8),(3/16)⟩ ⟨(1/4),(3/8)⟩ (5/16) node0000 node0002
  have node0004 : Holds P ⟨(3/16),(1/4)⟩ ⟨(1/4),(5/16)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(1/4),(5/16)⟩ (7/32) (leaf1318 s t r ex ey hm hex hey) (leaf1317 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(3/16),(7/32)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(3/16),(7/32)⟩ ⟨(5/16),(3/8)⟩ (11/32) (leaf1316 s t r ex ey hm hex hey) (leaf1315 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(7/32),(1/4)⟩ ⟨(11/32),(3/8)⟩ := split_x ⟨(7/32),(1/4)⟩ ⟨(11/32),(3/8)⟩ (15/64) (leaf1313 s t r ex ey hm hex hey) (leaf1312 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(7/32),(1/4)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(5/16),(3/8)⟩ (11/32) (leaf1314 s t r ex ey hm hex hey) node0006
  have node0008 : Holds P ⟨(3/16),(1/4)⟩ ⟨(5/16),(3/8)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(5/16),(3/8)⟩ (7/32) node0005 node0007
  have node0009 : Holds P ⟨(3/16),(1/4)⟩ ⟨(1/4),(3/8)⟩ := split_y ⟨(3/16),(1/4)⟩ ⟨(1/4),(3/8)⟩ (5/16) node0004 node0008
  have node0010 : Holds P ⟨(1/8),(1/4)⟩ ⟨(1/4),(3/8)⟩ := split_x ⟨(1/8),(1/4)⟩ ⟨(1/4),(3/8)⟩ (3/16) node0003 node0009
  exact node0010
#print axioms tile10
end Root0Angular20261003
