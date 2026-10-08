import AngularLeaf
import Root0CoverData
import Root0Leaves01
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile43 : LeafStatement moments EX EY hull0 hull1 ⟨(5/8),(3/4)⟩ ⟨(3/8),(1/2)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/8),(21/32)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(5/8),(21/32)⟩ ⟨(3/8),(13/32)⟩ (41/64) (leaf0038 s t r ex ey hm hex hey) (leaf0037 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/8),(21/32)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(5/8),(21/32)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0000 (leaf0036 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(21/32),(11/16)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(21/32),(11/16)⟩ ⟨(3/8),(13/32)⟩ (43/64) (leaf0035 s t r ex ey hm hex hey) (leaf0034 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(21/32),(11/16)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(21/32),(11/16)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0002 (leaf0033 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(5/8),(11/16)⟩ ⟨(3/8),(7/16)⟩ := split_x ⟨(5/8),(11/16)⟩ ⟨(3/8),(7/16)⟩ (21/32) node0001 node0003
  have node0005 : Holds P ⟨(21/32),(11/16)⟩ ⟨(7/16),(1/2)⟩ := split_y ⟨(21/32),(11/16)⟩ ⟨(7/16),(1/2)⟩ (15/32) (leaf0031 s t r ex ey hm hex hey) (leaf0030 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(5/8),(11/16)⟩ ⟨(7/16),(1/2)⟩ := split_x ⟨(5/8),(11/16)⟩ ⟨(7/16),(1/2)⟩ (21/32) (leaf0032 s t r ex ey hm hex hey) node0005
  have node0007 : Holds P ⟨(5/8),(11/16)⟩ ⟨(3/8),(1/2)⟩ := split_y ⟨(5/8),(11/16)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0004 node0006
  have node0008 : Holds P ⟨(5/8),(3/4)⟩ ⟨(3/8),(1/2)⟩ := split_x ⟨(5/8),(3/4)⟩ ⟨(3/8),(1/2)⟩ (11/16) node0007 (leaf0029 s t r ex ey hm hex hey)
  exact node0008
#print axioms tile43
end Root0Angular20261003
