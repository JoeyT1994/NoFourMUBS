import AngularLeaf
import Root0CoverData
import Root0Leaves09
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile35 : LeafStatement moments EX EY hull0 hull1 ⟨(1/2),(5/8)⟩ ⟨(3/8),(1/2)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/2),(17/32)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(1/2),(17/32)⟩ ⟨(3/8),(7/16)⟩ (13/32) (leaf0238 s t r ex ey hm hex hey) (leaf0237 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(17/32),(9/16)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(17/32),(9/16)⟩ ⟨(3/8),(7/16)⟩ (13/32) (leaf0236 s t r ex ey hm hex hey) (leaf0235 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/2),(9/16)⟩ ⟨(3/8),(7/16)⟩ := split_x ⟨(1/2),(9/16)⟩ ⟨(3/8),(7/16)⟩ (17/32) node0000 node0001
  have node0003 : Holds P ⟨(1/2),(9/16)⟩ ⟨(3/8),(1/2)⟩ := split_y ⟨(1/2),(9/16)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0002 (leaf0234 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(9/16),(19/32)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(9/16),(19/32)⟩ ⟨(3/8),(7/16)⟩ (13/32) (leaf0233 s t r ex ey hm hex hey) (leaf0232 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(19/32),(5/8)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(19/32),(5/8)⟩ ⟨(3/8),(13/32)⟩ (39/64) (leaf0231 s t r ex ey hm hex hey) (leaf0230 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(19/32),(5/8)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(19/32),(5/8)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0005 (leaf0229 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(9/16),(5/8)⟩ ⟨(3/8),(7/16)⟩ := split_x ⟨(9/16),(5/8)⟩ ⟨(3/8),(7/16)⟩ (19/32) node0004 node0006
  have node0008 : Holds P ⟨(9/16),(5/8)⟩ ⟨(7/16),(1/2)⟩ := split_x ⟨(9/16),(5/8)⟩ ⟨(7/16),(1/2)⟩ (19/32) (leaf0228 s t r ex ey hm hex hey) (leaf0227 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(9/16),(5/8)⟩ ⟨(3/8),(1/2)⟩ := split_y ⟨(9/16),(5/8)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0007 node0008
  have node0010 : Holds P ⟨(1/2),(5/8)⟩ ⟨(3/8),(1/2)⟩ := split_x ⟨(1/2),(5/8)⟩ ⟨(3/8),(1/2)⟩ (9/16) node0003 node0009
  exact node0010
#print axioms tile35
end Root0Angular20261003
