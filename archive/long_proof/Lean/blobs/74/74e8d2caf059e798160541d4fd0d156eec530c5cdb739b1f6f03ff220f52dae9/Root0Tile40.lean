import AngularLeaf
import Root0CoverData
import Root0Leaves08
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile40 : LeafStatement moments EX EY hull0 hull1 ⟨(5/8),(3/4)⟩ ⟨0,(1/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/8),(11/16)⟩ ⟨(1/16),(1/8)⟩ := split_x ⟨(5/8),(11/16)⟩ ⟨(1/16),(1/8)⟩ (21/32) (leaf0210 s t r ex ey hm hex hey) (leaf0209 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/8),(11/16)⟩ ⟨0,(1/8)⟩ := split_y ⟨(5/8),(11/16)⟩ ⟨0,(1/8)⟩ (1/16) (leaf0211 s t r ex ey hm hex hey) node0000
  have node0002 : Holds P ⟨(5/8),(3/4)⟩ ⟨0,(1/8)⟩ := split_x ⟨(5/8),(3/4)⟩ ⟨0,(1/8)⟩ (11/16) node0001 (leaf0208 s t r ex ey hm hex hey)
  exact node0002
#print axioms tile40
end Root0Angular20261003
