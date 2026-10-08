import AngularLeaf
import Root0CoverData
import Root0Leaves12
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile30 : LeafStatement moments EX EY hull0 hull1 ⟨(3/8),(1/2)⟩ ⟨(3/4),(7/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(3/8),(13/32)⟩ ⟨(3/4),(13/16)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(3/4),(13/16)⟩ (25/32) (leaf0303 s t r ex ey hm hex hey) (leaf0302 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/8),(7/16)⟩ ⟨(3/4),(13/16)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(3/4),(13/16)⟩ (13/32) node0000 (leaf0301 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(3/8),(13/32)⟩ ⟨(13/16),(7/8)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(13/16),(7/8)⟩ (27/32) (leaf0300 s t r ex ey hm hex hey) (leaf0299 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(13/32),(7/16)⟩ ⟨(13/16),(7/8)⟩ := split_y ⟨(13/32),(7/16)⟩ ⟨(13/16),(7/8)⟩ (27/32) (leaf0298 s t r ex ey hm hex hey) (leaf0297 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(3/8),(7/16)⟩ ⟨(13/16),(7/8)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(13/16),(7/8)⟩ (13/32) node0002 node0003
  have node0005 : Holds P ⟨(3/8),(7/16)⟩ ⟨(3/4),(7/8)⟩ := split_y ⟨(3/8),(7/16)⟩ ⟨(3/4),(7/8)⟩ (13/16) node0001 node0004
  have node0006 : Holds P ⟨(7/16),(1/2)⟩ ⟨(3/4),(7/8)⟩ := split_y ⟨(7/16),(1/2)⟩ ⟨(3/4),(7/8)⟩ (13/16) (leaf0296 s t r ex ey hm hex hey) (leaf0295 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(3/8),(1/2)⟩ ⟨(3/4),(7/8)⟩ := split_x ⟨(3/8),(1/2)⟩ ⟨(3/4),(7/8)⟩ (7/16) node0005 node0006
  exact node0007
#print axioms tile30
end Root0Angular20261003
