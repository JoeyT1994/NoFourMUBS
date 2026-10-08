import AngularLeaf
import Root0CoverData
import Root0Leaves14
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile26 : LeafStatement moments EX EY hull0 hull1 ⟨(3/8),(1/2)⟩ ⟨(1/4),(3/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(3/8),(13/32)⟩ ⟨(1/4),(5/16)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(1/4),(5/16)⟩ (9/32) (leaf0357 s t r ex ey hm hex hey) (leaf0356 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/8),(7/16)⟩ ⟨(1/4),(5/16)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(1/4),(5/16)⟩ (13/32) node0000 (leaf0355 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(3/8),(13/32)⟩ ⟨(5/16),(11/32)⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨(5/16),(11/32)⟩ (25/64) (leaf0354 s t r ex ey hm hex hey) (leaf0353 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(3/8),(25/64)⟩ ⟨(23/64),(3/8)⟩ := split_x ⟨(3/8),(25/64)⟩ ⟨(23/64),(3/8)⟩ (49/128) (leaf0351 s t r ex ey hm hex hey) (leaf0350 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(3/8),(25/64)⟩ ⟨(11/32),(3/8)⟩ := split_y ⟨(3/8),(25/64)⟩ ⟨(11/32),(3/8)⟩ (23/64) (leaf0352 s t r ex ey hm hex hey) node0003
  have node0005 : Holds P ⟨(25/64),(13/32)⟩ ⟨(11/32),(3/8)⟩ := split_y ⟨(25/64),(13/32)⟩ ⟨(11/32),(3/8)⟩ (23/64) (leaf0349 s t r ex ey hm hex hey) (leaf0348 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(3/8),(13/32)⟩ ⟨(11/32),(3/8)⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨(11/32),(3/8)⟩ (25/64) node0004 node0005
  have node0007 : Holds P ⟨(3/8),(13/32)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(5/16),(3/8)⟩ (11/32) node0002 node0006
  have node0008 : Holds P ⟨(13/32),(7/16)⟩ ⟨(11/32),(3/8)⟩ := split_x ⟨(13/32),(7/16)⟩ ⟨(11/32),(3/8)⟩ (27/64) (leaf0346 s t r ex ey hm hex hey) (leaf0345 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(13/32),(7/16)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(13/32),(7/16)⟩ ⟨(5/16),(3/8)⟩ (11/32) (leaf0347 s t r ex ey hm hex hey) node0008
  have node0010 : Holds P ⟨(3/8),(7/16)⟩ ⟨(5/16),(3/8)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(5/16),(3/8)⟩ (13/32) node0007 node0009
  have node0011 : Holds P ⟨(3/8),(7/16)⟩ ⟨(1/4),(3/8)⟩ := split_y ⟨(3/8),(7/16)⟩ ⟨(1/4),(3/8)⟩ (5/16) node0001 node0010
  have node0012 : Holds P ⟨(7/16),(15/32)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(7/16),(15/32)⟩ ⟨(5/16),(3/8)⟩ (11/32) (leaf0342 s t r ex ey hm hex hey) (leaf0343 s t r ex ey hm hex hey)
  have node0013 : Holds P ⟨(7/16),(1/2)⟩ ⟨(5/16),(3/8)⟩ := split_x ⟨(7/16),(1/2)⟩ ⟨(5/16),(3/8)⟩ (15/32) node0012 (leaf0341 s t r ex ey hm hex hey)
  have node0014 : Holds P ⟨(7/16),(1/2)⟩ ⟨(1/4),(3/8)⟩ := split_y ⟨(7/16),(1/2)⟩ ⟨(1/4),(3/8)⟩ (5/16) (leaf0344 s t r ex ey hm hex hey) node0013
  have node0015 : Holds P ⟨(3/8),(1/2)⟩ ⟨(1/4),(3/8)⟩ := split_x ⟨(3/8),(1/2)⟩ ⟨(1/4),(3/8)⟩ (7/16) node0011 node0014
  exact node0015
#print axioms tile26
end Root0Angular20261003
