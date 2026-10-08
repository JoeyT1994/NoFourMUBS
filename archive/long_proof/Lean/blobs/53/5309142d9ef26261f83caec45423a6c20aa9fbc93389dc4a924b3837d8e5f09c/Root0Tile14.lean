import AngularLeaf
import Root0CoverData
import Root0Leaves52
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile14 : LeafStatement moments EX EY hull0 hull1 ⟨(1/8),(1/4)⟩ ⟨(3/4),(7/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/32),(3/16)⟩ ⟨(3/4),(13/16)⟩ := split_y ⟨(5/32),(3/16)⟩ ⟨(3/4),(13/16)⟩ (25/32) (leaf1269 s t r ex ey hm hex hey) (leaf1268 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(1/8),(3/16)⟩ ⟨(3/4),(13/16)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(3/4),(13/16)⟩ (5/32) (leaf1270 s t r ex ey hm hex hey) node0000
  have node0002 : Holds P ⟨(1/8),(3/16)⟩ ⟨(13/16),(7/8)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(13/16),(7/8)⟩ (5/32) (leaf1267 s t r ex ey hm hex hey) (leaf1266 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(1/8),(3/16)⟩ ⟨(3/4),(7/8)⟩ := split_y ⟨(1/8),(3/16)⟩ ⟨(3/4),(7/8)⟩ (13/16) node0001 node0002
  have node0004 : Holds P ⟨(3/16),(7/32)⟩ ⟨(25/32),(13/16)⟩ := split_x ⟨(3/16),(7/32)⟩ ⟨(25/32),(13/16)⟩ (13/64) (leaf1264 s t r ex ey hm hex hey) (leaf1263 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(3/16),(7/32)⟩ ⟨(3/4),(13/16)⟩ := split_y ⟨(3/16),(7/32)⟩ ⟨(3/4),(13/16)⟩ (25/32) (leaf1265 s t r ex ey hm hex hey) node0004
  have node0006 : Holds P ⟨(7/32),(1/4)⟩ ⟨(25/32),(13/16)⟩ := split_x ⟨(7/32),(1/4)⟩ ⟨(25/32),(13/16)⟩ (15/64) (leaf1261 s t r ex ey hm hex hey) (leaf1260 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(7/32),(1/4)⟩ ⟨(3/4),(13/16)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(3/4),(13/16)⟩ (25/32) (leaf1262 s t r ex ey hm hex hey) node0006
  have node0008 : Holds P ⟨(3/16),(1/4)⟩ ⟨(3/4),(13/16)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(3/4),(13/16)⟩ (7/32) node0005 node0007
  have node0009 : Holds P ⟨(3/16),(7/32)⟩ ⟨(13/16),(7/8)⟩ := split_y ⟨(3/16),(7/32)⟩ ⟨(13/16),(7/8)⟩ (27/32) (leaf1259 s t r ex ey hm hex hey) (leaf1258 s t r ex ey hm hex hey)
  have node0010 : Holds P ⟨(7/32),(1/4)⟩ ⟨(13/16),(27/32)⟩ := split_x ⟨(7/32),(1/4)⟩ ⟨(13/16),(27/32)⟩ (15/64) (leaf1257 s t r ex ey hm hex hey) (leaf1256 s t r ex ey hm hex hey)
  have node0011 : Holds P ⟨(7/32),(1/4)⟩ ⟨(13/16),(7/8)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(13/16),(7/8)⟩ (27/32) node0010 (leaf1255 s t r ex ey hm hex hey)
  have node0012 : Holds P ⟨(3/16),(1/4)⟩ ⟨(13/16),(7/8)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(13/16),(7/8)⟩ (7/32) node0009 node0011
  have node0013 : Holds P ⟨(3/16),(1/4)⟩ ⟨(3/4),(7/8)⟩ := split_y ⟨(3/16),(1/4)⟩ ⟨(3/4),(7/8)⟩ (13/16) node0008 node0012
  have node0014 : Holds P ⟨(1/8),(1/4)⟩ ⟨(3/4),(7/8)⟩ := split_x ⟨(1/8),(1/4)⟩ ⟨(3/4),(7/8)⟩ (3/16) node0003 node0013
  exact node0014
#print axioms tile14
end Root0Angular20261003
