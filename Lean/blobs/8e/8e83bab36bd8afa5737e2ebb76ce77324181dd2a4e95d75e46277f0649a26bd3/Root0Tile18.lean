import AngularLeaf
import Root0CoverData
import Root0Leaves29
import Root0Leaves30
import Root0Leaves31
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile18 : LeafStatement moments EX EY hull0 hull1 ⟨(1/4),(3/8)⟩ ⟨(1/4),(3/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/4),(9/32)⟩ ⟨(1/4),(5/16)⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨(1/4),(5/16)⟩ (9/32) (leaf0759 s t r ex ey hm hex hey) (leaf0758 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(19/64),(5/16)⟩ ⟨(1/4),(9/32)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(1/4),(9/32)⟩ (17/64) (leaf0756 s t r ex ey hm hex hey) (leaf0755 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(9/32),(5/16)⟩ ⟨(1/4),(9/32)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(1/4),(9/32)⟩ (19/64) (leaf0757 s t r ex ey hm hex hey) node0001
  have node0003 : Holds P ⟨(19/64),(5/16)⟩ ⟨(9/32),(5/16)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(9/32),(5/16)⟩ (19/64) (leaf0753 s t r ex ey hm hex hey) (leaf0752 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(9/32),(5/16)⟩ ⟨(9/32),(5/16)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(9/32),(5/16)⟩ (19/64) (leaf0754 s t r ex ey hm hex hey) node0003
  have node0005 : Holds P ⟨(9/32),(5/16)⟩ ⟨(1/4),(5/16)⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨(1/4),(5/16)⟩ (9/32) node0002 node0004
  have node0006 : Holds P ⟨(1/4),(5/16)⟩ ⟨(1/4),(5/16)⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨(1/4),(5/16)⟩ (9/32) node0000 node0005
  have node0007 : Holds P ⟨(1/4),(9/32)⟩ ⟨(5/16),(11/32)⟩ := split_x ⟨(1/4),(9/32)⟩ ⟨(5/16),(11/32)⟩ (17/64) (leaf0751 s t r ex ey hm hex hey) (leaf0750 s t r ex ey hm hex hey)
  have node0008 : Holds P ⟨(17/64),(9/32)⟩ ⟨(11/32),(3/8)⟩ := split_y ⟨(17/64),(9/32)⟩ ⟨(11/32),(3/8)⟩ (23/64) (leaf0748 s t r ex ey hm hex hey) (leaf0747 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(1/4),(9/32)⟩ ⟨(11/32),(3/8)⟩ := split_x ⟨(1/4),(9/32)⟩ ⟨(11/32),(3/8)⟩ (17/64) (leaf0749 s t r ex ey hm hex hey) node0008
  have node0010 : Holds P ⟨(1/4),(9/32)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨(5/16),(3/8)⟩ (11/32) node0007 node0009
  have node0011 : Holds P ⟨(9/32),(19/64)⟩ ⟨(5/16),(11/32)⟩ := split_y ⟨(9/32),(19/64)⟩ ⟨(5/16),(11/32)⟩ (21/64) (leaf0746 s t r ex ey hm hex hey) (leaf0745 s t r ex ey hm hex hey)
  have node0012 : Holds P ⟨(19/64),(5/16)⟩ ⟨(5/16),(21/64)⟩ := split_x ⟨(19/64),(5/16)⟩ ⟨(5/16),(21/64)⟩ (39/128) (leaf0744 s t r ex ey hm hex hey) (leaf0743 s t r ex ey hm hex hey)
  have node0013 : Holds P ⟨(19/64),(5/16)⟩ ⟨(5/16),(11/32)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(5/16),(11/32)⟩ (21/64) node0012 (leaf0742 s t r ex ey hm hex hey)
  have node0014 : Holds P ⟨(9/32),(5/16)⟩ ⟨(5/16),(11/32)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(5/16),(11/32)⟩ (19/64) node0011 node0013
  have node0015 : Holds P ⟨(9/32),(19/64)⟩ ⟨(11/32),(3/8)⟩ := split_y ⟨(9/32),(19/64)⟩ ⟨(11/32),(3/8)⟩ (23/64) (leaf0741 s t r ex ey hm hex hey) (leaf0740 s t r ex ey hm hex hey)
  have node0016 : Holds P ⟨(19/64),(5/16)⟩ ⟨(11/32),(3/8)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(11/32),(3/8)⟩ (23/64) (leaf0739 s t r ex ey hm hex hey) (leaf0738 s t r ex ey hm hex hey)
  have node0017 : Holds P ⟨(9/32),(5/16)⟩ ⟨(11/32),(3/8)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(11/32),(3/8)⟩ (19/64) node0015 node0016
  have node0018 : Holds P ⟨(9/32),(5/16)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨(5/16),(3/8)⟩ (11/32) node0014 node0017
  have node0019 : Holds P ⟨(1/4),(5/16)⟩ ⟨(5/16),(3/8)⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨(5/16),(3/8)⟩ (9/32) node0010 node0018
  have node0020 : Holds P ⟨(1/4),(5/16)⟩ ⟨(1/4),(3/8)⟩ := split_y ⟨(1/4),(5/16)⟩ ⟨(1/4),(3/8)⟩ (5/16) node0006 node0019
  have node0021 : Holds P ⟨(5/16),(21/64)⟩ ⟨(1/4),(9/32)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(1/4),(9/32)⟩ (17/64) (leaf0737 s t r ex ey hm hex hey) (leaf0736 s t r ex ey hm hex hey)
  have node0022 : Holds P ⟨(21/64),(11/32)⟩ ⟨(1/4),(9/32)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(1/4),(9/32)⟩ (17/64) (leaf0735 s t r ex ey hm hex hey) (leaf0734 s t r ex ey hm hex hey)
  have node0023 : Holds P ⟨(5/16),(11/32)⟩ ⟨(1/4),(9/32)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(1/4),(9/32)⟩ (21/64) node0021 node0022
  have node0024 : Holds P ⟨(5/16),(21/64)⟩ ⟨(9/32),(5/16)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(9/32),(5/16)⟩ (19/64) (leaf0733 s t r ex ey hm hex hey) (leaf0732 s t r ex ey hm hex hey)
  have node0025 : Holds P ⟨(21/64),(11/32)⟩ ⟨(9/32),(5/16)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(9/32),(5/16)⟩ (19/64) (leaf0731 s t r ex ey hm hex hey) (leaf0730 s t r ex ey hm hex hey)
  have node0026 : Holds P ⟨(5/16),(11/32)⟩ ⟨(9/32),(5/16)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(9/32),(5/16)⟩ (21/64) node0024 node0025
  have node0027 : Holds P ⟨(5/16),(11/32)⟩ ⟨(1/4),(5/16)⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨(1/4),(5/16)⟩ (9/32) node0023 node0026
  have node0028 : Holds P ⟨(11/32),(23/64)⟩ ⟨(1/4),(17/64)⟩ := split_x ⟨(11/32),(23/64)⟩ ⟨(1/4),(17/64)⟩ (45/128) (leaf0729 s t r ex ey hm hex hey) (leaf0728 s t r ex ey hm hex hey)
  have node0029 : Holds P ⟨(11/32),(23/64)⟩ ⟨(1/4),(9/32)⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨(1/4),(9/32)⟩ (17/64) node0028 (leaf0727 s t r ex ey hm hex hey)
  have node0030 : Holds P ⟨(11/32),(3/8)⟩ ⟨(1/4),(9/32)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(1/4),(9/32)⟩ (23/64) node0029 (leaf0726 s t r ex ey hm hex hey)
  have node0031 : Holds P ⟨(11/32),(23/64)⟩ ⟨(9/32),(5/16)⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨(9/32),(5/16)⟩ (19/64) (leaf0725 s t r ex ey hm hex hey) (leaf0724 s t r ex ey hm hex hey)
  have node0032 : Holds P ⟨(23/64),(3/8)⟩ ⟨(9/32),(5/16)⟩ := split_y ⟨(23/64),(3/8)⟩ ⟨(9/32),(5/16)⟩ (19/64) (leaf0723 s t r ex ey hm hex hey) (leaf0722 s t r ex ey hm hex hey)
  have node0033 : Holds P ⟨(11/32),(3/8)⟩ ⟨(9/32),(5/16)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(9/32),(5/16)⟩ (23/64) node0031 node0032
  have node0034 : Holds P ⟨(11/32),(3/8)⟩ ⟨(1/4),(5/16)⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨(1/4),(5/16)⟩ (9/32) node0030 node0033
  have node0035 : Holds P ⟨(5/16),(3/8)⟩ ⟨(1/4),(5/16)⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨(1/4),(5/16)⟩ (11/32) node0027 node0034
  have node0036 : Holds P ⟨(5/16),(21/64)⟩ ⟨(5/16),(21/64)⟩ := split_x ⟨(5/16),(21/64)⟩ ⟨(5/16),(21/64)⟩ (41/128) (leaf0721 s t r ex ey hm hex hey) (leaf0720 s t r ex ey hm hex hey)
  have node0037 : Holds P ⟨(5/16),(21/64)⟩ ⟨(5/16),(11/32)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(5/16),(11/32)⟩ (21/64) node0036 (leaf0719 s t r ex ey hm hex hey)
  have node0038 : Holds P ⟨(21/64),(11/32)⟩ ⟨(5/16),(21/64)⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(5/16),(21/64)⟩ (43/128) (leaf0718 s t r ex ey hm hex hey) (leaf0717 s t r ex ey hm hex hey)
  have node0039 : Holds P ⟨(21/64),(11/32)⟩ ⟨(21/64),(11/32)⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(21/64),(11/32)⟩ (43/128) (leaf0716 s t r ex ey hm hex hey) (leaf0715 s t r ex ey hm hex hey)
  have node0040 : Holds P ⟨(21/64),(11/32)⟩ ⟨(5/16),(11/32)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(5/16),(11/32)⟩ (21/64) node0038 node0039
  have node0041 : Holds P ⟨(5/16),(11/32)⟩ ⟨(5/16),(11/32)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(5/16),(11/32)⟩ (21/64) node0037 node0040
  have node0042 : Holds P ⟨(5/16),(21/64)⟩ ⟨(11/32),(3/8)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(11/32),(3/8)⟩ (23/64) (leaf0714 s t r ex ey hm hex hey) (leaf0713 s t r ex ey hm hex hey)
  have node0043 : Holds P ⟨(21/64),(11/32)⟩ ⟨(11/32),(3/8)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(11/32),(3/8)⟩ (23/64) (leaf0712 s t r ex ey hm hex hey) (leaf0711 s t r ex ey hm hex hey)
  have node0044 : Holds P ⟨(5/16),(11/32)⟩ ⟨(11/32),(3/8)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(11/32),(3/8)⟩ (21/64) node0042 node0043
  have node0045 : Holds P ⟨(5/16),(11/32)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨(5/16),(3/8)⟩ (11/32) node0041 node0044
  have node0046 : Holds P ⟨(11/32),(23/64)⟩ ⟨(5/16),(21/64)⟩ := split_x ⟨(11/32),(23/64)⟩ ⟨(5/16),(21/64)⟩ (45/128) (leaf0710 s t r ex ey hm hex hey) (leaf0709 s t r ex ey hm hex hey)
  have node0047 : Holds P ⟨(11/32),(23/64)⟩ ⟨(21/64),(11/32)⟩ := split_x ⟨(11/32),(23/64)⟩ ⟨(21/64),(11/32)⟩ (45/128) (leaf0708 s t r ex ey hm hex hey) (leaf0707 s t r ex ey hm hex hey)
  have node0048 : Holds P ⟨(11/32),(23/64)⟩ ⟨(5/16),(11/32)⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨(5/16),(11/32)⟩ (21/64) node0046 node0047
  have node0049 : Holds P ⟨(23/64),(3/8)⟩ ⟨(5/16),(11/32)⟩ := split_y ⟨(23/64),(3/8)⟩ ⟨(5/16),(11/32)⟩ (21/64) (leaf0706 s t r ex ey hm hex hey) (leaf0705 s t r ex ey hm hex hey)
  have node0050 : Holds P ⟨(11/32),(3/8)⟩ ⟨(5/16),(11/32)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(5/16),(11/32)⟩ (23/64) node0048 node0049
  have node0051 : Holds P ⟨(11/32),(23/64)⟩ ⟨(11/32),(23/64)⟩ := split_x ⟨(11/32),(23/64)⟩ ⟨(11/32),(23/64)⟩ (45/128) (leaf0704 s t r ex ey hm hex hey) (leaf0703 s t r ex ey hm hex hey)
  have node0052 : Holds P ⟨(11/32),(23/64)⟩ ⟨(11/32),(3/8)⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨(11/32),(3/8)⟩ (23/64) node0051 (leaf0702 s t r ex ey hm hex hey)
  have node0053 : Holds P ⟨(23/64),(3/8)⟩ ⟨(11/32),(23/64)⟩ := split_x ⟨(23/64),(3/8)⟩ ⟨(11/32),(23/64)⟩ (47/128) (leaf0701 s t r ex ey hm hex hey) (leaf0700 s t r ex ey hm hex hey)
  have node0054 : Holds P ⟨(23/64),(3/8)⟩ ⟨(23/64),(3/8)⟩ := split_x ⟨(23/64),(3/8)⟩ ⟨(23/64),(3/8)⟩ (47/128) (leaf0699 s t r ex ey hm hex hey) (leaf0698 s t r ex ey hm hex hey)
  have node0055 : Holds P ⟨(23/64),(3/8)⟩ ⟨(11/32),(3/8)⟩ := split_y ⟨(23/64),(3/8)⟩ ⟨(11/32),(3/8)⟩ (23/64) node0053 node0054
  have node0056 : Holds P ⟨(11/32),(3/8)⟩ ⟨(11/32),(3/8)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(11/32),(3/8)⟩ (23/64) node0052 node0055
  have node0057 : Holds P ⟨(11/32),(3/8)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨(5/16),(3/8)⟩ (11/32) node0050 node0056
  have node0058 : Holds P ⟨(5/16),(3/8)⟩ ⟨(5/16),(3/8)⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨(5/16),(3/8)⟩ (11/32) node0045 node0057
  have node0059 : Holds P ⟨(5/16),(3/8)⟩ ⟨(1/4),(3/8)⟩ := split_y ⟨(5/16),(3/8)⟩ ⟨(1/4),(3/8)⟩ (5/16) node0035 node0058
  have node0060 : Holds P ⟨(1/4),(3/8)⟩ ⟨(1/4),(3/8)⟩ := split_x ⟨(1/4),(3/8)⟩ ⟨(1/4),(3/8)⟩ (5/16) node0020 node0059
  exact node0060
#print axioms tile18
end Root0Angular20261003
