import AngularLeaf
import Root0CoverData
import Root0Leaves10
import Root0Leaves11
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile33 : LeafStatement moments EX EY hull0 hull1 ⟨(1/2),(5/8)⟩ ⟨(1/8),(1/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(17/32),(9/16)⟩ ⟨(1/8),(5/32)⟩ := split_x ⟨(17/32),(9/16)⟩ ⟨(1/8),(5/32)⟩ (35/64) (leaf0265 s t r ex ey hm hex hey) (leaf0264 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(17/32),(9/16)⟩ ⟨(1/8),(3/16)⟩ := split_y ⟨(17/32),(9/16)⟩ ⟨(1/8),(3/16)⟩ (5/32) node0000 (leaf0263 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/2),(9/16)⟩ ⟨(1/8),(3/16)⟩ := split_x ⟨(1/2),(9/16)⟩ ⟨(1/8),(3/16)⟩ (17/32) (leaf0266 s t r ex ey hm hex hey) node0001
  have node0003 : Holds P ⟨(1/2),(9/16)⟩ ⟨(1/8),(1/4)⟩ := split_y ⟨(1/2),(9/16)⟩ ⟨(1/8),(1/4)⟩ (3/16) node0002 (leaf0262 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(9/16),(19/32)⟩ ⟨(5/32),(3/16)⟩ := split_x ⟨(9/16),(19/32)⟩ ⟨(5/32),(3/16)⟩ (37/64) (leaf0260 s t r ex ey hm hex hey) (leaf0259 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(9/16),(19/32)⟩ ⟨(1/8),(3/16)⟩ := split_y ⟨(9/16),(19/32)⟩ ⟨(1/8),(3/16)⟩ (5/32) (leaf0261 s t r ex ey hm hex hey) node0004
  have node0006 : Holds P ⟨(19/32),(5/8)⟩ ⟨(1/8),(3/16)⟩ := split_y ⟨(19/32),(5/8)⟩ ⟨(1/8),(3/16)⟩ (5/32) (leaf0258 s t r ex ey hm hex hey) (leaf0257 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(9/16),(5/8)⟩ ⟨(1/8),(3/16)⟩ := split_x ⟨(9/16),(5/8)⟩ ⟨(1/8),(3/16)⟩ (19/32) node0005 node0006
  have node0008 : Holds P ⟨(9/16),(19/32)⟩ ⟨(3/16),(1/4)⟩ := split_y ⟨(9/16),(19/32)⟩ ⟨(3/16),(1/4)⟩ (7/32) (leaf0256 s t r ex ey hm hex hey) (leaf0255 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(19/32),(5/8)⟩ ⟨(3/16),(7/32)⟩ := split_x ⟨(19/32),(5/8)⟩ ⟨(3/16),(7/32)⟩ (39/64) (leaf0254 s t r ex ey hm hex hey) (leaf0253 s t r ex ey hm hex hey)
  have node0010 : Holds P ⟨(39/64),(5/8)⟩ ⟨(7/32),(1/4)⟩ := split_y ⟨(39/64),(5/8)⟩ ⟨(7/32),(1/4)⟩ (15/64) (leaf0251 s t r ex ey hm hex hey) (leaf0250 s t r ex ey hm hex hey)
  have node0011 : Holds P ⟨(19/32),(5/8)⟩ ⟨(7/32),(1/4)⟩ := split_x ⟨(19/32),(5/8)⟩ ⟨(7/32),(1/4)⟩ (39/64) (leaf0252 s t r ex ey hm hex hey) node0010
  have node0012 : Holds P ⟨(19/32),(5/8)⟩ ⟨(3/16),(1/4)⟩ := split_y ⟨(19/32),(5/8)⟩ ⟨(3/16),(1/4)⟩ (7/32) node0009 node0011
  have node0013 : Holds P ⟨(9/16),(5/8)⟩ ⟨(3/16),(1/4)⟩ := split_x ⟨(9/16),(5/8)⟩ ⟨(3/16),(1/4)⟩ (19/32) node0008 node0012
  have node0014 : Holds P ⟨(9/16),(5/8)⟩ ⟨(1/8),(1/4)⟩ := split_y ⟨(9/16),(5/8)⟩ ⟨(1/8),(1/4)⟩ (3/16) node0007 node0013
  have node0015 : Holds P ⟨(1/2),(5/8)⟩ ⟨(1/8),(1/4)⟩ := split_x ⟨(1/2),(5/8)⟩ ⟨(1/8),(1/4)⟩ (9/16) node0003 node0014
  exact node0015
#print axioms tile33
end Root0Angular20261003
