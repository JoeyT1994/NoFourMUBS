import AngularLeaf
import Root0CoverData
import Root0Leaves09
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile38 : LeafStatement moments EX EY hull0 hull1 ⟨(1/2),(5/8)⟩ ⟨(3/4),(7/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/2),(9/16)⟩ ⟨(3/4),(7/8)⟩ := split_y ⟨(1/2),(9/16)⟩ ⟨(3/4),(7/8)⟩ (13/16) (leaf0219 s t r ex ey hm hex hey) (leaf0218 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(9/16),(5/8)⟩ ⟨(3/4),(7/8)⟩ := split_y ⟨(9/16),(5/8)⟩ ⟨(3/4),(7/8)⟩ (13/16) (leaf0217 s t r ex ey hm hex hey) (leaf0216 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/2),(5/8)⟩ ⟨(3/4),(7/8)⟩ := split_x ⟨(1/2),(5/8)⟩ ⟨(3/4),(7/8)⟩ (9/16) node0000 node0001
  exact node0002
#print axioms tile38
end Root0Angular20261003
