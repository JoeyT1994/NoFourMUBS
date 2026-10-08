import AngularLeaf
import Root0CoverData
import Root0Leaves17
import Root0Leaves18
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile22 : LeafStatement moments EX EY hull0 hull1 ⟨(1/4),(3/8)⟩ ⟨(3/4),(7/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/4),(9/32)⟩ ⟨(3/4),(13/16)⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨(3/4),(13/16)⟩ (25/32) (leaf0447 s t r ex ey hm hex hey) (leaf0446 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(9/32),(5/16)⟩ ⟨(3/4),(13/16)⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨(3/4),(13/16)⟩ (25/32) (leaf0445 s t r ex ey hm hex hey) (leaf0444 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/4),(5/16)⟩ ⟨(3/4),(13/16)⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨(3/4),(13/16)⟩ (9/32) node0000 node0001
  have node0003 : Holds P ⟨(1/4),(9/32)⟩ ⟨(13/16),(27/32)⟩ := split_x ⟨(1/4),(9/32)⟩ ⟨(13/16),(27/32)⟩ (17/64) (leaf0443 s t r ex ey hm hex hey) (leaf0442 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(1/4),(17/64)⟩ ⟨(27/32),(7/8)⟩ := split_y ⟨(1/4),(17/64)⟩ ⟨(27/32),(7/8)⟩ (55/64) (leaf0441 s t r ex ey hm hex hey) (leaf0440 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(1/4),(9/32)⟩ ⟨(27/32),(7/8)⟩ := split_x ⟨(1/4),(9/32)⟩ ⟨(27/32),(7/8)⟩ (17/64) node0004 (leaf0439 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(1/4),(9/32)⟩ ⟨(13/16),(7/8)⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨(13/16),(7/8)⟩ (27/32) node0003 node0005
  have node0007 : Holds P ⟨(9/32),(5/16)⟩ ⟨(27/32),(7/8)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(27/32),(7/8)⟩ (19/64) (leaf0437 s t r ex ey hm hex hey) (leaf0436 s t r ex ey hm hex hey)
  have node0008 : Holds P ⟨(9/32),(5/16)⟩ ⟨(13/16),(7/8)⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨(13/16),(7/8)⟩ (27/32) (leaf0438 s t r ex ey hm hex hey) node0007
  have node0009 : Holds P ⟨(1/4),(5/16)⟩ ⟨(13/16),(7/8)⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨(13/16),(7/8)⟩ (9/32) node0006 node0008
  have node0010 : Holds P ⟨(1/4),(5/16)⟩ ⟨(3/4),(7/8)⟩ := split_y ⟨(1/4),(5/16)⟩ ⟨(3/4),(7/8)⟩ (13/16) node0002 node0009
  have node0011 : Holds P ⟨(5/16),(11/32)⟩ ⟨(3/4),(13/16)⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨(3/4),(13/16)⟩ (25/32) (leaf0435 s t r ex ey hm hex hey) (leaf0434 s t r ex ey hm hex hey)
  have node0012 : Holds P ⟨(11/32),(3/8)⟩ ⟨(3/4),(13/16)⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨(3/4),(13/16)⟩ (25/32) (leaf0433 s t r ex ey hm hex hey) (leaf0432 s t r ex ey hm hex hey)
  have node0013 : Holds P ⟨(5/16),(3/8)⟩ ⟨(3/4),(13/16)⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨(3/4),(13/16)⟩ (11/32) node0011 node0012
  have node0014 : Holds P ⟨(5/16),(11/32)⟩ ⟨(13/16),(7/8)⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨(13/16),(7/8)⟩ (27/32) (leaf0431 s t r ex ey hm hex hey) (leaf0430 s t r ex ey hm hex hey)
  have node0015 : Holds P ⟨(11/32),(3/8)⟩ ⟨(13/16),(7/8)⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨(13/16),(7/8)⟩ (27/32) (leaf0429 s t r ex ey hm hex hey) (leaf0428 s t r ex ey hm hex hey)
  have node0016 : Holds P ⟨(5/16),(3/8)⟩ ⟨(13/16),(7/8)⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨(13/16),(7/8)⟩ (11/32) node0014 node0015
  have node0017 : Holds P ⟨(5/16),(3/8)⟩ ⟨(3/4),(7/8)⟩ := split_y ⟨(5/16),(3/8)⟩ ⟨(3/4),(7/8)⟩ (13/16) node0013 node0016
  have node0018 : Holds P ⟨(1/4),(3/8)⟩ ⟨(3/4),(7/8)⟩ := split_x ⟨(1/4),(3/8)⟩ ⟨(3/4),(7/8)⟩ (5/16) node0010 node0017
  exact node0018
#print axioms tile22
end Root0Angular20261003
