import AngularLeaf
import Root0CoverData
import Root0Leaves13
import Root0Leaves14
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile27 : LeafStatement moments EX EY hull0 hull1 ⟨(3/8),(1/2)⟩ ⟨(3/8),(1/2)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(3/8),(25/64)⟩ ⟨(3/8),(13/32)⟩ := split_y ⟨(3/8),(25/64)⟩ ⟨(3/8),(13/32)⟩ (25/64) (leaf0340 s t r ex ey hm hex hey) (leaf0339 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/8),(13/32)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨(3/8),(13/32)⟩ (25/64) node0000 (leaf0338 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(3/8),(25/64)⟩ ⟨(13/32),(7/16)⟩ := split_y ⟨(3/8),(25/64)⟩ ⟨(13/32),(7/16)⟩ (27/64) (leaf0337 s t r ex ey hm hex hey) (leaf0336 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(3/8),(13/32)⟩ ⟨(13/32),(7/16)⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨(13/32),(7/16)⟩ (25/64) node0002 (leaf0335 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(3/8),(13/32)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0001 node0003
  have node0005 : Holds P ⟨(13/32),(7/16)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(13/32),(7/16)⟩ ⟨(3/8),(13/32)⟩ (27/64) (leaf0334 s t r ex ey hm hex hey) (leaf0333 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(13/32),(7/16)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(13/32),(7/16)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0005 (leaf0332 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(3/8),(7/16)⟩ ⟨(3/8),(7/16)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0004 node0006
  have node0008 : Holds P ⟨(3/8),(13/32)⟩ ⟨(7/16),(15/32)⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨(7/16),(15/32)⟩ (25/64) (leaf0331 s t r ex ey hm hex hey) (leaf0330 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(3/8),(13/32)⟩ ⟨(15/32),(1/2)⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨(15/32),(1/2)⟩ (25/64) (leaf0329 s t r ex ey hm hex hey) (leaf0328 s t r ex ey hm hex hey)
  have node0010 : Holds P ⟨(3/8),(13/32)⟩ ⟨(7/16),(1/2)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(7/16),(1/2)⟩ (15/32) node0008 node0009
  have node0011 : Holds P ⟨(13/32),(7/16)⟩ ⟨(7/16),(1/2)⟩ := split_y ⟨(13/32),(7/16)⟩ ⟨(7/16),(1/2)⟩ (15/32) (leaf0327 s t r ex ey hm hex hey) (leaf0326 s t r ex ey hm hex hey)
  have node0012 : Holds P ⟨(3/8),(7/16)⟩ ⟨(7/16),(1/2)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(7/16),(1/2)⟩ (13/32) node0010 node0011
  have node0013 : Holds P ⟨(3/8),(7/16)⟩ ⟨(3/8),(1/2)⟩ := split_y ⟨(3/8),(7/16)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0007 node0012
  have node0014 : Holds P ⟨(7/16),(15/32)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(7/16),(15/32)⟩ ⟨(3/8),(7/16)⟩ (13/32) (leaf0325 s t r ex ey hm hex hey) (leaf0324 s t r ex ey hm hex hey)
  have node0015 : Holds P ⟨(15/32),(1/2)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(15/32),(1/2)⟩ ⟨(3/8),(7/16)⟩ (13/32) (leaf0323 s t r ex ey hm hex hey) (leaf0322 s t r ex ey hm hex hey)
  have node0016 : Holds P ⟨(7/16),(1/2)⟩ ⟨(3/8),(7/16)⟩ := split_x ⟨(7/16),(1/2)⟩ ⟨(3/8),(7/16)⟩ (15/32) node0014 node0015
  have node0017 : Holds P ⟨(7/16),(1/2)⟩ ⟨(7/16),(1/2)⟩ := split_x ⟨(7/16),(1/2)⟩ ⟨(7/16),(1/2)⟩ (15/32) (leaf0321 s t r ex ey hm hex hey) (leaf0320 s t r ex ey hm hex hey)
  have node0018 : Holds P ⟨(7/16),(1/2)⟩ ⟨(3/8),(1/2)⟩ := split_y ⟨(7/16),(1/2)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0016 node0017
  have node0019 : Holds P ⟨(3/8),(1/2)⟩ ⟨(3/8),(1/2)⟩ := split_x ⟨(3/8),(1/2)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0013 node0018
  exact node0019
#print axioms tile27
end Root0Angular20261003
