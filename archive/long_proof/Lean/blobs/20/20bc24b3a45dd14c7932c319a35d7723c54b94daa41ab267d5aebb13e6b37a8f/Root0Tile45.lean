import AngularLeaf
import Root0CoverData
import Root0Leaves00
import Root0Leaves01
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile45 : LeafStatement moments EX EY hull0 hull1 ⟨(5/8),(3/4)⟩ ⟨(5/8),(3/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/8),(11/16)⟩ ⟨(5/8),(3/4)⟩ := split_y ⟨(5/8),(11/16)⟩ ⟨(5/8),(3/4)⟩ (11/16) (leaf0024 s t r ex ey hm hex hey) (leaf0023 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/8),(3/4)⟩ ⟨(5/8),(3/4)⟩ := split_x ⟨(5/8),(3/4)⟩ ⟨(5/8),(3/4)⟩ (11/16) node0000 (leaf0022 s t r ex ey hm hex hey)
  exact node0001
#print axioms tile45
end Root0Angular20261003
