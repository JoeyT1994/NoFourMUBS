import AngularLeaf
import Root0CoverData
import Root0Leaves15
import Root0Leaves16
import Root0Leaves17
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile23 : LeafStatement moments EX EY hull0 hull1 ⟨(1/4),(3/8)⟩ ⟨(7/8),1⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(17/64),(9/32)⟩ ⟨(7/8),(29/32)⟩ := split_y ⟨(17/64),(9/32)⟩ ⟨(7/8),(29/32)⟩ (57/64) (leaf0426 s t r ex ey hm hex hey) (leaf0425 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(1/4),(9/32)⟩ ⟨(7/8),(29/32)⟩ := split_x ⟨(1/4),(9/32)⟩ ⟨(7/8),(29/32)⟩ (17/64) (leaf0427 s t r ex ey hm hex hey) node0000
  have node0002 : Holds P ⟨(1/4),(9/32)⟩ ⟨(7/8),(15/16)⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨(7/8),(15/16)⟩ (29/32) node0001 (leaf0424 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(9/32),(19/64)⟩ ⟨(7/8),(29/32)⟩ := split_y ⟨(9/32),(19/64)⟩ ⟨(7/8),(29/32)⟩ (57/64) (leaf0423 s t r ex ey hm hex hey) (leaf0422 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(9/32),(5/16)⟩ ⟨(7/8),(29/32)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(7/8),(29/32)⟩ (19/64) node0003 (leaf0421 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(9/32),(19/64)⟩ ⟨(29/32),(15/16)⟩ := split_y ⟨(9/32),(19/64)⟩ ⟨(29/32),(15/16)⟩ (59/64) (leaf0420 s t r ex ey hm hex hey) (leaf0419 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(19/64),(5/16)⟩ ⟨(29/32),(15/16)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(29/32),(15/16)⟩ (59/64) (leaf0418 s t r ex ey hm hex hey) (leaf0417 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(9/32),(5/16)⟩ ⟨(29/32),(15/16)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(29/32),(15/16)⟩ (19/64) node0005 node0006
  have node0008 : Holds P ⟨(9/32),(5/16)⟩ ⟨(7/8),(15/16)⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨(7/8),(15/16)⟩ (29/32) node0004 node0007
  have node0009 : Holds P ⟨(1/4),(5/16)⟩ ⟨(7/8),(15/16)⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨(7/8),(15/16)⟩ (9/32) node0002 node0008
  have node0010 : Holds P ⟨(1/4),(9/32)⟩ ⟨(15/16),1⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨(15/16),1⟩ (31/32) (leaf0416 s t r ex ey hm hex hey) (leaf0415 s t r ex ey hm hex hey)
  have node0011 : Holds P ⟨(19/64),(5/16)⟩ ⟨(15/16),(31/32)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(15/16),(31/32)⟩ (61/64) (leaf0413 s t r ex ey hm hex hey) (leaf0412 s t r ex ey hm hex hey)
  have node0012 : Holds P ⟨(9/32),(5/16)⟩ ⟨(15/16),(31/32)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(15/16),(31/32)⟩ (19/64) (leaf0414 s t r ex ey hm hex hey) node0011
  have node0013 : Holds P ⟨(19/64),(5/16)⟩ ⟨(31/32),1⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(31/32),1⟩ (63/64) (leaf0410 s t r ex ey hm hex hey) (leaf0409 s t r ex ey hm hex hey)
  have node0014 : Holds P ⟨(9/32),(5/16)⟩ ⟨(31/32),1⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(31/32),1⟩ (19/64) (leaf0411 s t r ex ey hm hex hey) node0013
  have node0015 : Holds P ⟨(9/32),(5/16)⟩ ⟨(15/16),1⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨(15/16),1⟩ (31/32) node0012 node0014
  have node0016 : Holds P ⟨(1/4),(5/16)⟩ ⟨(15/16),1⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨(15/16),1⟩ (9/32) node0010 node0015
  have node0017 : Holds P ⟨(1/4),(5/16)⟩ ⟨(7/8),1⟩ := split_y ⟨(1/4),(5/16)⟩ ⟨(7/8),1⟩ (15/16) node0009 node0016
  have node0018 : Holds P ⟨(5/16),(11/32)⟩ ⟨(7/8),(29/32)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(7/8),(29/32)⟩ (21/64) (leaf0408 s t r ex ey hm hex hey) (leaf0407 s t r ex ey hm hex hey)
  have node0019 : Holds P ⟨(5/16),(21/64)⟩ ⟨(29/32),(15/16)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(29/32),(15/16)⟩ (59/64) (leaf0406 s t r ex ey hm hex hey) (leaf0405 s t r ex ey hm hex hey)
  have node0020 : Holds P ⟨(21/64),(11/32)⟩ ⟨(29/32),(15/16)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(29/32),(15/16)⟩ (59/64) (leaf0404 s t r ex ey hm hex hey) (leaf0403 s t r ex ey hm hex hey)
  have node0021 : Holds P ⟨(5/16),(11/32)⟩ ⟨(29/32),(15/16)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(29/32),(15/16)⟩ (21/64) node0019 node0020
  have node0022 : Holds P ⟨(5/16),(11/32)⟩ ⟨(7/8),(15/16)⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨(7/8),(15/16)⟩ (29/32) node0018 node0021
  have node0023 : Holds P ⟨(11/32),(3/8)⟩ ⟨(7/8),(29/32)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(7/8),(29/32)⟩ (23/64) (leaf0402 s t r ex ey hm hex hey) (leaf0401 s t r ex ey hm hex hey)
  have node0024 : Holds P ⟨(11/32),(3/8)⟩ ⟨(29/32),(15/16)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(29/32),(15/16)⟩ (23/64) (leaf0400 s t r ex ey hm hex hey) (leaf0399 s t r ex ey hm hex hey)
  have node0025 : Holds P ⟨(11/32),(3/8)⟩ ⟨(7/8),(15/16)⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨(7/8),(15/16)⟩ (29/32) node0023 node0024
  have node0026 : Holds P ⟨(5/16),(3/8)⟩ ⟨(7/8),(15/16)⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨(7/8),(15/16)⟩ (11/32) node0022 node0025
  have node0027 : Holds P ⟨(5/16),(21/64)⟩ ⟨(15/16),(31/32)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(15/16),(31/32)⟩ (61/64) (leaf0398 s t r ex ey hm hex hey) (leaf0397 s t r ex ey hm hex hey)
  have node0028 : Holds P ⟨(21/64),(11/32)⟩ ⟨(15/16),(31/32)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(15/16),(31/32)⟩ (61/64) (leaf0396 s t r ex ey hm hex hey) (leaf0395 s t r ex ey hm hex hey)
  have node0029 : Holds P ⟨(5/16),(11/32)⟩ ⟨(15/16),(31/32)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(15/16),(31/32)⟩ (21/64) node0027 node0028
  have node0030 : Holds P ⟨(5/16),(21/64)⟩ ⟨(31/32),1⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(31/32),1⟩ (63/64) (leaf0394 s t r ex ey hm hex hey) (leaf0393 s t r ex ey hm hex hey)
  have node0031 : Holds P ⟨(21/64),(11/32)⟩ ⟨(63/64),1⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(63/64),1⟩ (43/128) (leaf0391 s t r ex ey hm hex hey) (leaf0390 s t r ex ey hm hex hey)
  have node0032 : Holds P ⟨(21/64),(11/32)⟩ ⟨(31/32),1⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(31/32),1⟩ (63/64) (leaf0392 s t r ex ey hm hex hey) node0031
  have node0033 : Holds P ⟨(5/16),(11/32)⟩ ⟨(31/32),1⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(31/32),1⟩ (21/64) node0030 node0032
  have node0034 : Holds P ⟨(5/16),(11/32)⟩ ⟨(15/16),1⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨(15/16),1⟩ (31/32) node0029 node0033
  have node0035 : Holds P ⟨(11/32),(23/64)⟩ ⟨(15/16),(31/32)⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨(15/16),(31/32)⟩ (61/64) (leaf0389 s t r ex ey hm hex hey) (leaf0388 s t r ex ey hm hex hey)
  have node0036 : Holds P ⟨(23/64),(3/8)⟩ ⟨(15/16),(31/32)⟩ := split_y ⟨(23/64),(3/8)⟩ ⟨(15/16),(31/32)⟩ (61/64) (leaf0387 s t r ex ey hm hex hey) (leaf0386 s t r ex ey hm hex hey)
  have node0037 : Holds P ⟨(11/32),(3/8)⟩ ⟨(15/16),(31/32)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(15/16),(31/32)⟩ (23/64) node0035 node0036
  have node0038 : Holds P ⟨(11/32),(23/64)⟩ ⟨(31/32),1⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨(31/32),1⟩ (63/64) (leaf0385 s t r ex ey hm hex hey) (leaf0384 s t r ex ey hm hex hey)
  have node0039 : Holds P ⟨(23/64),(3/8)⟩ ⟨(31/32),1⟩ := split_y ⟨(23/64),(3/8)⟩ ⟨(31/32),1⟩ (63/64) (leaf0383 s t r ex ey hm hex hey) (leaf0382 s t r ex ey hm hex hey)
  have node0040 : Holds P ⟨(11/32),(3/8)⟩ ⟨(31/32),1⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(31/32),1⟩ (23/64) node0038 node0039
  have node0041 : Holds P ⟨(11/32),(3/8)⟩ ⟨(15/16),1⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨(15/16),1⟩ (31/32) node0037 node0040
  have node0042 : Holds P ⟨(5/16),(3/8)⟩ ⟨(15/16),1⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨(15/16),1⟩ (11/32) node0034 node0041
  have node0043 : Holds P ⟨(5/16),(3/8)⟩ ⟨(7/8),1⟩ := split_y ⟨(5/16),(3/8)⟩ ⟨(7/8),1⟩ (15/16) node0026 node0042
  have node0044 : Holds P ⟨(1/4),(3/8)⟩ ⟨(7/8),1⟩ := split_x ⟨(1/4),(3/8)⟩ ⟨(7/8),1⟩ (5/16) node0017 node0043
  exact node0044
#print axioms tile23
end Root0Angular20261003
