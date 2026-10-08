import AngularLeaf
import Root0CoverData
import Root0Leaves00
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile47 : LeafStatement moments EX EY hull0 hull1 ⟨(5/8),(3/4)⟩ ⟨(7/8),1⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/8),(11/16)⟩ ⟨(7/8),1⟩ := split_y ⟨(5/8),(11/16)⟩ ⟨(7/8),1⟩ (15/16) (leaf0018 s t r ex ey hm hex hey) (leaf0017 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/8),(3/4)⟩ ⟨(7/8),1⟩ := split_x ⟨(5/8),(3/4)⟩ ⟨(7/8),1⟩ (11/16) node0000 (leaf0016 s t r ex ey hm hex hey)
  exact node0001
#print axioms tile47
end Root0Angular20261003
