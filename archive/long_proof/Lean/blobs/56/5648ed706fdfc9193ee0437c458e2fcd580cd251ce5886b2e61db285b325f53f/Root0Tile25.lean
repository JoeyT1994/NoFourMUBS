import AngularLeaf
import Root0CoverData
import Root0Leaves14
import Root0Leaves15
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile25 : LeafStatement moments EX EY hull0 hull1 ⟨(3/8),(1/2)⟩ ⟨(1/8),(1/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(3/8),(13/32)⟩ ⟨(1/8),(3/16)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(1/8),(3/16)⟩ (5/32) (leaf0365 s t r ex ey hm hex hey) (leaf0364 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/8),(7/16)⟩ ⟨(1/8),(3/16)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(1/8),(3/16)⟩ (13/32) node0000 (leaf0363 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(3/8),(13/32)⟩ ⟨(3/16),(1/4)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(3/16),(1/4)⟩ (7/32) (leaf0362 s t r ex ey hm hex hey) (leaf0361 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(3/8),(7/16)⟩ ⟨(3/16),(1/4)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(3/16),(1/4)⟩ (13/32) node0002 (leaf0360 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(3/8),(7/16)⟩ ⟨(1/8),(1/4)⟩ := split_y ⟨(3/8),(7/16)⟩ ⟨(1/8),(1/4)⟩ (3/16) node0001 node0003
  have node0005 : Holds P ⟨(7/16),(1/2)⟩ ⟨(1/8),(1/4)⟩ := split_y ⟨(7/16),(1/2)⟩ ⟨(1/8),(1/4)⟩ (3/16) (leaf0359 s t r ex ey hm hex hey) (leaf0358 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(3/8),(1/2)⟩ ⟨(1/8),(1/4)⟩ := split_x ⟨(3/8),(1/2)⟩ ⟨(1/8),(1/4)⟩ (7/16) node0004 node0005
  exact node0006
#print axioms tile25
end Root0Angular20261003
