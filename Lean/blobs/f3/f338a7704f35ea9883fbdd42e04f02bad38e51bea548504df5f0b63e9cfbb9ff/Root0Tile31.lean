import AngularLeaf
import Root0CoverData
import Root0Leaves11
import Root0Leaves12
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile31 : LeafStatement moments EX EY hull0 hull1 ⟨(3/8),(1/2)⟩ ⟨(7/8),1⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(3/8),(13/32)⟩ ⟨(29/32),(15/16)⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨(29/32),(15/16)⟩ (25/64) (leaf0293 s t r ex ey hm hex hey) (leaf0292 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/8),(13/32)⟩ ⟨(7/8),(15/16)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(7/8),(15/16)⟩ (29/32) (leaf0294 s t r ex ey hm hex hey) node0000
  have node0002 : Holds P ⟨(13/32),(7/16)⟩ ⟨(7/8),(15/16)⟩ := split_y ⟨(13/32),(7/16)⟩ ⟨(7/8),(15/16)⟩ (29/32) (leaf0291 s t r ex ey hm hex hey) (leaf0290 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(3/8),(7/16)⟩ ⟨(7/8),(15/16)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(7/8),(15/16)⟩ (13/32) node0001 node0002
  have node0004 : Holds P ⟨(3/8),(25/64)⟩ ⟨(15/16),(31/32)⟩ := split_y ⟨(3/8),(25/64)⟩ ⟨(15/16),(31/32)⟩ (61/64) (leaf0289 s t r ex ey hm hex hey) (leaf0288 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(25/64),(13/32)⟩ ⟨(15/16),(31/32)⟩ := split_y ⟨(25/64),(13/32)⟩ ⟨(15/16),(31/32)⟩ (61/64) (leaf0287 s t r ex ey hm hex hey) (leaf0286 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(3/8),(13/32)⟩ ⟨(15/16),(31/32)⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨(15/16),(31/32)⟩ (25/64) node0004 node0005
  have node0007 : Holds P ⟨(3/8),(25/64)⟩ ⟨(31/32),1⟩ := split_y ⟨(3/8),(25/64)⟩ ⟨(31/32),1⟩ (63/64) (leaf0285 s t r ex ey hm hex hey) (leaf0284 s t r ex ey hm hex hey)
  have node0008 : Holds P ⟨(25/64),(13/32)⟩ ⟨(31/32),1⟩ := split_y ⟨(25/64),(13/32)⟩ ⟨(31/32),1⟩ (63/64) (leaf0283 s t r ex ey hm hex hey) (leaf0282 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(3/8),(13/32)⟩ ⟨(31/32),1⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨(31/32),1⟩ (25/64) node0007 node0008
  have node0010 : Holds P ⟨(3/8),(13/32)⟩ ⟨(15/16),1⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(15/16),1⟩ (31/32) node0006 node0009
  have node0011 : Holds P ⟨(13/32),(7/16)⟩ ⟨(31/32),1⟩ := split_x ⟨(13/32),(7/16)⟩ ⟨(31/32),1⟩ (27/64) (leaf0280 s t r ex ey hm hex hey) (leaf0279 s t r ex ey hm hex hey)
  have node0012 : Holds P ⟨(13/32),(7/16)⟩ ⟨(15/16),1⟩ := split_y ⟨(13/32),(7/16)⟩ ⟨(15/16),1⟩ (31/32) (leaf0281 s t r ex ey hm hex hey) node0011
  have node0013 : Holds P ⟨(3/8),(7/16)⟩ ⟨(15/16),1⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(15/16),1⟩ (13/32) node0010 node0012
  have node0014 : Holds P ⟨(3/8),(7/16)⟩ ⟨(7/8),1⟩ := split_y ⟨(3/8),(7/16)⟩ ⟨(7/8),1⟩ (15/16) node0003 node0013
  have node0015 : Holds P ⟨(7/16),(1/2)⟩ ⟨(7/8),(15/16)⟩ := split_x ⟨(7/16),(1/2)⟩ ⟨(7/8),(15/16)⟩ (15/32) (leaf0278 s t r ex ey hm hex hey) (leaf0277 s t r ex ey hm hex hey)
  have node0016 : Holds P ⟨(7/16),(1/2)⟩ ⟨(15/16),1⟩ := split_x ⟨(7/16),(1/2)⟩ ⟨(15/16),1⟩ (15/32) (leaf0276 s t r ex ey hm hex hey) (leaf0275 s t r ex ey hm hex hey)
  have node0017 : Holds P ⟨(7/16),(1/2)⟩ ⟨(7/8),1⟩ := split_y ⟨(7/16),(1/2)⟩ ⟨(7/8),1⟩ (15/16) node0015 node0016
  have node0018 : Holds P ⟨(3/8),(1/2)⟩ ⟨(7/8),1⟩ := split_x ⟨(3/8),(1/2)⟩ ⟨(7/8),1⟩ (7/16) node0014 node0017
  exact node0018
#print axioms tile31
end Root0Angular20261003
