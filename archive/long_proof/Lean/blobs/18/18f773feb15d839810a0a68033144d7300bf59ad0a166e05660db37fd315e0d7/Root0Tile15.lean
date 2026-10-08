import AngularLeaf
import Root0CoverData
import Root0Leaves52
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile15 : LeafStatement moments EX EY hull0 hull1 ⟨(1/8),(1/4)⟩ ⟨(7/8),1⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/8),(3/16)⟩ ⟨(7/8),1⟩ := split_y ⟨(1/8),(3/16)⟩ ⟨(7/8),1⟩ (15/16) (leaf1254 s t r ex ey hm hex hey) (leaf1253 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(7/32),(1/4)⟩ ⟨(7/8),(15/16)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(7/8),(15/16)⟩ (29/32) (leaf1251 s t r ex ey hm hex hey) (leaf1250 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(3/16),(1/4)⟩ ⟨(7/8),(15/16)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(7/8),(15/16)⟩ (7/32) (leaf1252 s t r ex ey hm hex hey) node0001
  have node0003 : Holds P ⟨(3/16),(1/4)⟩ ⟨(15/16),1⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(15/16),1⟩ (7/32) (leaf1249 s t r ex ey hm hex hey) (leaf1248 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(3/16),(1/4)⟩ ⟨(7/8),1⟩ := split_y ⟨(3/16),(1/4)⟩ ⟨(7/8),1⟩ (15/16) node0002 node0003
  have node0005 : Holds P ⟨(1/8),(1/4)⟩ ⟨(7/8),1⟩ := split_x ⟨(1/8),(1/4)⟩ ⟨(7/8),1⟩ (3/16) node0000 node0004
  exact node0005
#print axioms tile15
end Root0Angular20261003
