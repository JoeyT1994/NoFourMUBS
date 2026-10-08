import AngularLeaf
import Root0CoverData
import Root0Leaves09
import Root0Leaves10
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile34 : LeafStatement moments EX EY hull0 hull1 ⟨(1/2),(5/8)⟩ ⟨(1/4),(3/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/2),(9/16)⟩ ⟨(5/16),(3/8)⟩ := split_x ⟨(1/2),(9/16)⟩ ⟨(5/16),(3/8)⟩ (17/32) (leaf0248 s t r ex ey hm hex hey) (leaf0247 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(1/2),(9/16)⟩ ⟨(1/4),(3/8)⟩ := split_y ⟨(1/2),(9/16)⟩ ⟨(1/4),(3/8)⟩ (5/16) (leaf0249 s t r ex ey hm hex hey) node0000
  have node0002 : Holds P ⟨(9/16),(5/8)⟩ ⟨(1/4),(5/16)⟩ := split_x ⟨(9/16),(5/8)⟩ ⟨(1/4),(5/16)⟩ (19/32) (leaf0246 s t r ex ey hm hex hey) (leaf0245 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(9/16),(19/32)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(9/16),(19/32)⟩ ⟨(5/16),(3/8)⟩ (11/32) (leaf0244 s t r ex ey hm hex hey) (leaf0243 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(39/64),(5/8)⟩ ⟨(11/32),(3/8)⟩ := split_y ⟨(39/64),(5/8)⟩ ⟨(11/32),(3/8)⟩ (23/64) (leaf0240 s t r ex ey hm hex hey) (leaf0239 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(19/32),(5/8)⟩ ⟨(11/32),(3/8)⟩ := split_x ⟨(19/32),(5/8)⟩ ⟨(11/32),(3/8)⟩ (39/64) (leaf0241 s t r ex ey hm hex hey) node0004
  have node0006 : Holds P ⟨(19/32),(5/8)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(19/32),(5/8)⟩ ⟨(5/16),(3/8)⟩ (11/32) (leaf0242 s t r ex ey hm hex hey) node0005
  have node0007 : Holds P ⟨(9/16),(5/8)⟩ ⟨(5/16),(3/8)⟩ := split_x ⟨(9/16),(5/8)⟩ ⟨(5/16),(3/8)⟩ (19/32) node0003 node0006
  have node0008 : Holds P ⟨(9/16),(5/8)⟩ ⟨(1/4),(3/8)⟩ := split_y ⟨(9/16),(5/8)⟩ ⟨(1/4),(3/8)⟩ (5/16) node0002 node0007
  have node0009 : Holds P ⟨(1/2),(5/8)⟩ ⟨(1/4),(3/8)⟩ := split_x ⟨(1/2),(5/8)⟩ ⟨(1/4),(3/8)⟩ (9/16) node0001 node0008
  exact node0009
#print axioms tile34
end Root0Angular20261003
