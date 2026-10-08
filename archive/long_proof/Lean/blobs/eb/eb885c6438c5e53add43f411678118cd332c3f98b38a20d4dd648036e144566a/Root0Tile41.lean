import AngularLeaf
import Root0CoverData
import Root0Leaves08
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile41 : LeafStatement moments EX EY hull0 hull1 ⟨(5/8),(3/4)⟩ ⟨(1/8),(1/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/8),(21/32)⟩ ⟨(1/8),(3/16)⟩ := split_y ⟨(5/8),(21/32)⟩ ⟨(1/8),(3/16)⟩ (5/32) (leaf0207 s t r ex ey hm hex hey) (leaf0206 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/8),(11/16)⟩ ⟨(1/8),(3/16)⟩ := split_x ⟨(5/8),(11/16)⟩ ⟨(1/8),(3/16)⟩ (21/32) node0000 (leaf0205 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(5/8),(21/32)⟩ ⟨(7/32),(1/4)⟩ := split_x ⟨(5/8),(21/32)⟩ ⟨(7/32),(1/4)⟩ (41/64) (leaf0203 s t r ex ey hm hex hey) (leaf0202 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(5/8),(21/32)⟩ ⟨(3/16),(1/4)⟩ := split_y ⟨(5/8),(21/32)⟩ ⟨(3/16),(1/4)⟩ (7/32) (leaf0204 s t r ex ey hm hex hey) node0002
  have node0004 : Holds P ⟨(21/32),(11/16)⟩ ⟨(3/16),(1/4)⟩ := split_y ⟨(21/32),(11/16)⟩ ⟨(3/16),(1/4)⟩ (7/32) (leaf0201 s t r ex ey hm hex hey) (leaf0200 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(5/8),(11/16)⟩ ⟨(3/16),(1/4)⟩ := split_x ⟨(5/8),(11/16)⟩ ⟨(3/16),(1/4)⟩ (21/32) node0003 node0004
  have node0006 : Holds P ⟨(5/8),(11/16)⟩ ⟨(1/8),(1/4)⟩ := split_y ⟨(5/8),(11/16)⟩ ⟨(1/8),(1/4)⟩ (3/16) node0001 node0005
  have node0007 : Holds P ⟨(5/8),(3/4)⟩ ⟨(1/8),(1/4)⟩ := split_x ⟨(5/8),(3/4)⟩ ⟨(1/8),(1/4)⟩ (11/16) node0006 (leaf0199 s t r ex ey hm hex hey)
  exact node0007
#print axioms tile41
end Root0Angular20261003
