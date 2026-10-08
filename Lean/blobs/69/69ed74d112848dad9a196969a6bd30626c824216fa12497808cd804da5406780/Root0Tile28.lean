import AngularLeaf
import Root0CoverData
import Root0Leaves13
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile28 : LeafStatement moments EX EY hull0 hull1 ⟨(3/8),(1/2)⟩ ⟨(1/2),(5/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(3/8),(13/32)⟩ ⟨(1/2),(9/16)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(1/2),(9/16)⟩ (17/32) (leaf0319 s t r ex ey hm hex hey) (leaf0318 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/8),(7/16)⟩ ⟨(1/2),(9/16)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(1/2),(9/16)⟩ (13/32) node0000 (leaf0317 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(3/8),(13/32)⟩ ⟨(9/16),(5/8)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(9/16),(5/8)⟩ (19/32) (leaf0316 s t r ex ey hm hex hey) (leaf0315 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(3/8),(7/16)⟩ ⟨(9/16),(5/8)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(9/16),(5/8)⟩ (13/32) node0002 (leaf0314 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(3/8),(7/16)⟩ ⟨(1/2),(5/8)⟩ := split_y ⟨(3/8),(7/16)⟩ ⟨(1/2),(5/8)⟩ (9/16) node0001 node0003
  have node0005 : Holds P ⟨(7/16),(1/2)⟩ ⟨(1/2),(5/8)⟩ := split_y ⟨(7/16),(1/2)⟩ ⟨(1/2),(5/8)⟩ (9/16) (leaf0313 s t r ex ey hm hex hey) (leaf0312 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(3/8),(1/2)⟩ ⟨(1/2),(5/8)⟩ := split_x ⟨(3/8),(1/2)⟩ ⟨(1/2),(5/8)⟩ (7/16) node0004 node0005
  exact node0006
#print axioms tile28
end Root0Angular20261003
