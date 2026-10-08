import AngularLeaf
import Root0CoverData
import Root0Leaves27
import Root0Leaves28
import Root0Leaves29
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile19 : LeafStatement moments EX EY hull0 hull1 ⟨(1/4),(3/8)⟩ ⟨(3/8),(1/2)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/4),(17/64)⟩ ⟨(3/8),(13/32)⟩ := split_y ⟨(1/4),(17/64)⟩ ⟨(3/8),(13/32)⟩ (25/64) (leaf0697 s t r ex ey hm hex hey) (leaf0696 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(17/64),(9/32)⟩ ⟨(3/8),(13/32)⟩ := split_y ⟨(17/64),(9/32)⟩ ⟨(3/8),(13/32)⟩ (25/64) (leaf0695 s t r ex ey hm hex hey) (leaf0694 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/4),(9/32)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(1/4),(9/32)⟩ ⟨(3/8),(13/32)⟩ (17/64) node0000 node0001
  have node0003 : Holds P ⟨(1/4),(9/32)⟩ ⟨(13/32),(7/16)⟩ := split_x ⟨(1/4),(9/32)⟩ ⟨(13/32),(7/16)⟩ (17/64) (leaf0693 s t r ex ey hm hex hey) (leaf0692 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(1/4),(9/32)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0002 node0003
  have node0005 : Holds P ⟨(9/32),(19/64)⟩ ⟨(3/8),(13/32)⟩ := split_y ⟨(9/32),(19/64)⟩ ⟨(3/8),(13/32)⟩ (25/64) (leaf0691 s t r ex ey hm hex hey) (leaf0690 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(19/64),(5/16)⟩ ⟨(3/8),(13/32)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(3/8),(13/32)⟩ (25/64) (leaf0689 s t r ex ey hm hex hey) (leaf0688 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(9/32),(5/16)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(3/8),(13/32)⟩ (19/64) node0005 node0006
  have node0008 : Holds P ⟨(9/32),(5/16)⟩ ⟨(13/32),(7/16)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(13/32),(7/16)⟩ (19/64) (leaf0687 s t r ex ey hm hex hey) (leaf0686 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(9/32),(5/16)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0007 node0008
  have node0010 : Holds P ⟨(1/4),(5/16)⟩ ⟨(3/8),(7/16)⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨(3/8),(7/16)⟩ (9/32) node0004 node0009
  have node0011 : Holds P ⟨(1/4),(9/32)⟩ ⟨(7/16),(1/2)⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨(7/16),(1/2)⟩ (15/32) (leaf0685 s t r ex ey hm hex hey) (leaf0684 s t r ex ey hm hex hey)
  have node0012 : Holds P ⟨(9/32),(5/16)⟩ ⟨(7/16),(1/2)⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨(7/16),(1/2)⟩ (15/32) (leaf0683 s t r ex ey hm hex hey) (leaf0682 s t r ex ey hm hex hey)
  have node0013 : Holds P ⟨(1/4),(5/16)⟩ ⟨(7/16),(1/2)⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨(7/16),(1/2)⟩ (9/32) node0011 node0012
  have node0014 : Holds P ⟨(1/4),(5/16)⟩ ⟨(3/8),(1/2)⟩ := split_y ⟨(1/4),(5/16)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0010 node0013
  have node0015 : Holds P ⟨(5/16),(21/64)⟩ ⟨(3/8),(13/32)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(3/8),(13/32)⟩ (25/64) (leaf0681 s t r ex ey hm hex hey) (leaf0680 s t r ex ey hm hex hey)
  have node0016 : Holds P ⟨(21/64),(11/32)⟩ ⟨(3/8),(13/32)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(3/8),(13/32)⟩ (25/64) (leaf0679 s t r ex ey hm hex hey) (leaf0678 s t r ex ey hm hex hey)
  have node0017 : Holds P ⟨(5/16),(11/32)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(3/8),(13/32)⟩ (21/64) node0015 node0016
  have node0018 : Holds P ⟨(5/16),(11/32)⟩ ⟨(13/32),(7/16)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(13/32),(7/16)⟩ (21/64) (leaf0677 s t r ex ey hm hex hey) (leaf0676 s t r ex ey hm hex hey)
  have node0019 : Holds P ⟨(5/16),(11/32)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0017 node0018
  have node0020 : Holds P ⟨(11/32),(23/64)⟩ ⟨(3/8),(13/32)⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨(3/8),(13/32)⟩ (25/64) (leaf0675 s t r ex ey hm hex hey) (leaf0674 s t r ex ey hm hex hey)
  have node0021 : Holds P ⟨(23/64),(3/8)⟩ ⟨(3/8),(13/32)⟩ := split_y ⟨(23/64),(3/8)⟩ ⟨(3/8),(13/32)⟩ (25/64) (leaf0673 s t r ex ey hm hex hey) (leaf0672 s t r ex ey hm hex hey)
  have node0022 : Holds P ⟨(11/32),(3/8)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(3/8),(13/32)⟩ (23/64) node0020 node0021
  have node0023 : Holds P ⟨(23/64),(3/8)⟩ ⟨(13/32),(7/16)⟩ := split_y ⟨(23/64),(3/8)⟩ ⟨(13/32),(7/16)⟩ (27/64) (leaf0670 s t r ex ey hm hex hey) (leaf0669 s t r ex ey hm hex hey)
  have node0024 : Holds P ⟨(11/32),(3/8)⟩ ⟨(13/32),(7/16)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(13/32),(7/16)⟩ (23/64) (leaf0671 s t r ex ey hm hex hey) node0023
  have node0025 : Holds P ⟨(11/32),(3/8)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0022 node0024
  have node0026 : Holds P ⟨(5/16),(3/8)⟩ ⟨(3/8),(7/16)⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨(3/8),(7/16)⟩ (11/32) node0019 node0025
  have node0027 : Holds P ⟨(5/16),(11/32)⟩ ⟨(7/16),(1/2)⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨(7/16),(1/2)⟩ (15/32) (leaf0668 s t r ex ey hm hex hey) (leaf0667 s t r ex ey hm hex hey)
  have node0028 : Holds P ⟨(11/32),(3/8)⟩ ⟨(7/16),(15/32)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(7/16),(15/32)⟩ (23/64) (leaf0666 s t r ex ey hm hex hey) (leaf0665 s t r ex ey hm hex hey)
  have node0029 : Holds P ⟨(11/32),(3/8)⟩ ⟨(7/16),(1/2)⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨(7/16),(1/2)⟩ (15/32) node0028 (leaf0664 s t r ex ey hm hex hey)
  have node0030 : Holds P ⟨(5/16),(3/8)⟩ ⟨(7/16),(1/2)⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨(7/16),(1/2)⟩ (11/32) node0027 node0029
  have node0031 : Holds P ⟨(5/16),(3/8)⟩ ⟨(3/8),(1/2)⟩ := split_y ⟨(5/16),(3/8)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0026 node0030
  have node0032 : Holds P ⟨(1/4),(3/8)⟩ ⟨(3/8),(1/2)⟩ := split_x ⟨(1/4),(3/8)⟩ ⟨(3/8),(1/2)⟩ (5/16) node0014 node0031
  exact node0032
#print axioms tile19
end Root0Angular20261003
