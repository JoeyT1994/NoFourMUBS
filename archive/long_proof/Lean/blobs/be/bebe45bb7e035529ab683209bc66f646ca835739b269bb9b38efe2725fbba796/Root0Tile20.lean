import AngularLeaf
import Root0CoverData
import Root0Leaves26
import Root0Leaves27
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile20 : LeafStatement moments EX EY hull0 hull1 ⟨(1/4),(3/8)⟩ ⟨(1/2),(5/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/4),(9/32)⟩ ⟨(1/2),(9/16)⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨(1/2),(9/16)⟩ (17/32) (leaf0663 s t r ex ey hm hex hey) (leaf0662 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(9/32),(5/16)⟩ ⟨(1/2),(9/16)⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨(1/2),(9/16)⟩ (17/32) (leaf0661 s t r ex ey hm hex hey) (leaf0660 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/4),(5/16)⟩ ⟨(1/2),(9/16)⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨(1/2),(9/16)⟩ (9/32) node0000 node0001
  have node0003 : Holds P ⟨(1/4),(9/32)⟩ ⟨(9/16),(5/8)⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨(9/16),(5/8)⟩ (19/32) (leaf0659 s t r ex ey hm hex hey) (leaf0658 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(9/32),(5/16)⟩ ⟨(9/16),(19/32)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(9/16),(19/32)⟩ (19/64) (leaf0657 s t r ex ey hm hex hey) (leaf0656 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(19/64),(5/16)⟩ ⟨(19/32),(5/8)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(19/32),(5/8)⟩ (39/64) (leaf0654 s t r ex ey hm hex hey) (leaf0653 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(9/32),(5/16)⟩ ⟨(19/32),(5/8)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(19/32),(5/8)⟩ (19/64) (leaf0655 s t r ex ey hm hex hey) node0005
  have node0007 : Holds P ⟨(9/32),(5/16)⟩ ⟨(9/16),(5/8)⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨(9/16),(5/8)⟩ (19/32) node0004 node0006
  have node0008 : Holds P ⟨(1/4),(5/16)⟩ ⟨(9/16),(5/8)⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨(9/16),(5/8)⟩ (9/32) node0003 node0007
  have node0009 : Holds P ⟨(1/4),(5/16)⟩ ⟨(1/2),(5/8)⟩ := split_y ⟨(1/4),(5/16)⟩ ⟨(1/2),(5/8)⟩ (9/16) node0002 node0008
  have node0010 : Holds P ⟨(5/16),(11/32)⟩ ⟨(1/2),(9/16)⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨(1/2),(9/16)⟩ (17/32) (leaf0652 s t r ex ey hm hex hey) (leaf0651 s t r ex ey hm hex hey)
  have node0011 : Holds P ⟨(11/32),(3/8)⟩ ⟨(1/2),(9/16)⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨(1/2),(9/16)⟩ (17/32) (leaf0650 s t r ex ey hm hex hey) (leaf0649 s t r ex ey hm hex hey)
  have node0012 : Holds P ⟨(5/16),(3/8)⟩ ⟨(1/2),(9/16)⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨(1/2),(9/16)⟩ (11/32) node0010 node0011
  have node0013 : Holds P ⟨(5/16),(21/64)⟩ ⟨(39/64),(5/8)⟩ := split_x ⟨(5/16),(21/64)⟩ ⟨(39/64),(5/8)⟩ (41/128) (leaf0646 s t r ex ey hm hex hey) (leaf0645 s t r ex ey hm hex hey)
  have node0014 : Holds P ⟨(5/16),(21/64)⟩ ⟨(19/32),(5/8)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(19/32),(5/8)⟩ (39/64) (leaf0647 s t r ex ey hm hex hey) node0013
  have node0015 : Holds P ⟨(21/64),(11/32)⟩ ⟨(19/32),(5/8)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(19/32),(5/8)⟩ (39/64) (leaf0644 s t r ex ey hm hex hey) (leaf0643 s t r ex ey hm hex hey)
  have node0016 : Holds P ⟨(5/16),(11/32)⟩ ⟨(19/32),(5/8)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(19/32),(5/8)⟩ (21/64) node0014 node0015
  have node0017 : Holds P ⟨(5/16),(11/32)⟩ ⟨(9/16),(5/8)⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨(9/16),(5/8)⟩ (19/32) (leaf0648 s t r ex ey hm hex hey) node0016
  have node0018 : Holds P ⟨(11/32),(3/8)⟩ ⟨(19/32),(5/8)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(19/32),(5/8)⟩ (23/64) (leaf0641 s t r ex ey hm hex hey) (leaf0640 s t r ex ey hm hex hey)
  have node0019 : Holds P ⟨(11/32),(3/8)⟩ ⟨(9/16),(5/8)⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨(9/16),(5/8)⟩ (19/32) (leaf0642 s t r ex ey hm hex hey) node0018
  have node0020 : Holds P ⟨(5/16),(3/8)⟩ ⟨(9/16),(5/8)⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨(9/16),(5/8)⟩ (11/32) node0017 node0019
  have node0021 : Holds P ⟨(5/16),(3/8)⟩ ⟨(1/2),(5/8)⟩ := split_y ⟨(5/16),(3/8)⟩ ⟨(1/2),(5/8)⟩ (9/16) node0012 node0020
  have node0022 : Holds P ⟨(1/4),(3/8)⟩ ⟨(1/2),(5/8)⟩ := split_x ⟨(1/4),(3/8)⟩ ⟨(1/2),(5/8)⟩ (5/16) node0009 node0021
  exact node0022
#print axioms tile20
end Root0Angular20261003
