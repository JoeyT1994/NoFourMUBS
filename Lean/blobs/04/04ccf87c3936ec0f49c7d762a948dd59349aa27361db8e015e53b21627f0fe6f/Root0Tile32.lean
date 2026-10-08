import AngularLeaf
import Root0CoverData
import Root0Leaves11
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile32 : LeafStatement moments EX EY hull0 hull1 ⟨(1/2),(5/8)⟩ ⟨0,(1/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/2),(17/32)⟩ ⟨(1/16),(1/8)⟩ := split_y ⟨(1/2),(17/32)⟩ ⟨(1/16),(1/8)⟩ (3/32) (leaf0273 s t r ex ey hm hex hey) (leaf0272 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(17/32),(9/16)⟩ ⟨(1/16),(1/8)⟩ := split_y ⟨(17/32),(9/16)⟩ ⟨(1/16),(1/8)⟩ (3/32) (leaf0271 s t r ex ey hm hex hey) (leaf0270 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/2),(9/16)⟩ ⟨(1/16),(1/8)⟩ := split_x ⟨(1/2),(9/16)⟩ ⟨(1/16),(1/8)⟩ (17/32) node0000 node0001
  have node0003 : Holds P ⟨(1/2),(9/16)⟩ ⟨0,(1/8)⟩ := split_y ⟨(1/2),(9/16)⟩ ⟨0,(1/8)⟩ (1/16) (leaf0274 s t r ex ey hm hex hey) node0002
  have node0004 : Holds P ⟨(9/16),(5/8)⟩ ⟨(1/16),(1/8)⟩ := split_x ⟨(9/16),(5/8)⟩ ⟨(1/16),(1/8)⟩ (19/32) (leaf0268 s t r ex ey hm hex hey) (leaf0267 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(9/16),(5/8)⟩ ⟨0,(1/8)⟩ := split_y ⟨(9/16),(5/8)⟩ ⟨0,(1/8)⟩ (1/16) (leaf0269 s t r ex ey hm hex hey) node0004
  have node0006 : Holds P ⟨(1/2),(5/8)⟩ ⟨0,(1/8)⟩ := split_x ⟨(1/2),(5/8)⟩ ⟨0,(1/8)⟩ (9/16) node0003 node0005
  exact node0006
#print axioms tile32
end Root0Angular20261003
