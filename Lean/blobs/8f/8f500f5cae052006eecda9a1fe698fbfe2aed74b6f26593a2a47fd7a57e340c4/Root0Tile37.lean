import AngularLeaf
import Root0CoverData
import Root0Leaves09
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile37 : LeafStatement moments EX EY hull0 hull1 ⟨(1/2),(5/8)⟩ ⟨(5/8),(3/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(9/16),(5/8)⟩ ⟨(5/8),(3/4)⟩ := split_y ⟨(9/16),(5/8)⟩ ⟨(5/8),(3/4)⟩ (11/16) (leaf0221 s t r ex ey hm hex hey) (leaf0220 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(1/2),(5/8)⟩ ⟨(5/8),(3/4)⟩ := split_x ⟨(1/2),(5/8)⟩ ⟨(5/8),(3/4)⟩ (9/16) (leaf0222 s t r ex ey hm hex hey) node0000
  exact node0001
#print axioms tile37
end Root0Angular20261003
