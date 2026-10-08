import AngularLeaf
import Root0CoverData
import Root0Leaves15
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile24 : LeafStatement moments EX EY hull0 hull1 ⟨(3/8),(1/2)⟩ ⟨0,(1/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(3/8),(13/32)⟩ ⟨0,(1/32)⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨0,(1/32)⟩ (25/64) (leaf0381 s t r ex ey hm hex hey) (leaf0380 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/8),(13/32)⟩ ⟨0,(1/16)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨0,(1/16)⟩ (1/32) node0000 (leaf0379 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(13/32),(7/16)⟩ ⟨0,(1/32)⟩ := split_x ⟨(13/32),(7/16)⟩ ⟨0,(1/32)⟩ (27/64) (leaf0378 s t r ex ey hm hex hey) (leaf0377 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(13/32),(7/16)⟩ ⟨0,(1/16)⟩ := split_y ⟨(13/32),(7/16)⟩ ⟨0,(1/16)⟩ (1/32) node0002 (leaf0376 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(3/8),(7/16)⟩ ⟨0,(1/16)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨0,(1/16)⟩ (13/32) node0001 node0003
  have node0005 : Holds P ⟨(3/8),(13/32)⟩ ⟨(1/16),(1/8)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(1/16),(1/8)⟩ (3/32) (leaf0375 s t r ex ey hm hex hey) (leaf0374 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(3/8),(7/16)⟩ ⟨(1/16),(1/8)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(1/16),(1/8)⟩ (13/32) node0005 (leaf0373 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(3/8),(7/16)⟩ ⟨0,(1/8)⟩ := split_y ⟨(3/8),(7/16)⟩ ⟨0,(1/8)⟩ (1/16) node0004 node0006
  have node0008 : Holds P ⟨(7/16),(15/32)⟩ ⟨(1/32),(1/16)⟩ := split_x ⟨(7/16),(15/32)⟩ ⟨(1/32),(1/16)⟩ (29/64) (leaf0371 s t r ex ey hm hex hey) (leaf0370 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(7/16),(15/32)⟩ ⟨0,(1/16)⟩ := split_y ⟨(7/16),(15/32)⟩ ⟨0,(1/16)⟩ (1/32) (leaf0372 s t r ex ey hm hex hey) node0008
  have node0010 : Holds P ⟨(7/16),(1/2)⟩ ⟨0,(1/16)⟩ := split_x ⟨(7/16),(1/2)⟩ ⟨0,(1/16)⟩ (15/32) node0009 (leaf0369 s t r ex ey hm hex hey)
  have node0011 : Holds P ⟨(15/32),(1/2)⟩ ⟨(1/16),(1/8)⟩ := split_y ⟨(15/32),(1/2)⟩ ⟨(1/16),(1/8)⟩ (3/32) (leaf0367 s t r ex ey hm hex hey) (leaf0366 s t r ex ey hm hex hey)
  have node0012 : Holds P ⟨(7/16),(1/2)⟩ ⟨(1/16),(1/8)⟩ := split_x ⟨(7/16),(1/2)⟩ ⟨(1/16),(1/8)⟩ (15/32) (leaf0368 s t r ex ey hm hex hey) node0011
  have node0013 : Holds P ⟨(7/16),(1/2)⟩ ⟨0,(1/8)⟩ := split_y ⟨(7/16),(1/2)⟩ ⟨0,(1/8)⟩ (1/16) node0010 node0012
  have node0014 : Holds P ⟨(3/8),(1/2)⟩ ⟨0,(1/8)⟩ := split_x ⟨(3/8),(1/2)⟩ ⟨0,(1/8)⟩ (7/16) node0007 node0013
  exact node0014
#print axioms tile24
end Root0Angular20261003
