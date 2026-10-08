import AngularLeaf
import Root0CoverData
import Root0Leaves18
import Root0Leaves19
import Root0Leaves20
import Root0Leaves21
import Root0Leaves22
import Root0Leaves23
import Root0Leaves24
import Root0Leaves25
import Root0Leaves26
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile21 : LeafStatement moments EX EY hull0 hull1 ⟨(1/4),(3/8)⟩ ⟨(5/8),(3/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/4),(9/32)⟩ ⟨(5/8),(11/16)⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨(5/8),(11/16)⟩ (21/32) (leaf0639 s t r ex ey hm hex hey) (leaf0638 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(19/64),(5/16)⟩ ⟨(5/8),(21/32)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(5/8),(21/32)⟩ (41/64) (leaf0636 s t r ex ey hm hex hey) (leaf0635 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(9/32),(5/16)⟩ ⟨(5/8),(21/32)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(5/8),(21/32)⟩ (19/64) (leaf0637 s t r ex ey hm hex hey) node0001
  have node0003 : Holds P ⟨(19/64),(5/16)⟩ ⟨(21/32),(11/16)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(21/32),(11/16)⟩ (43/64) (leaf0633 s t r ex ey hm hex hey) (leaf0632 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(9/32),(5/16)⟩ ⟨(21/32),(11/16)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(21/32),(11/16)⟩ (19/64) (leaf0634 s t r ex ey hm hex hey) node0003
  have node0005 : Holds P ⟨(9/32),(5/16)⟩ ⟨(5/8),(11/16)⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨(5/8),(11/16)⟩ (21/32) node0002 node0004
  have node0006 : Holds P ⟨(1/4),(5/16)⟩ ⟨(5/8),(11/16)⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨(5/8),(11/16)⟩ (9/32) node0000 node0005
  have node0007 : Holds P ⟨(1/4),(9/32)⟩ ⟨(11/16),(3/4)⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨(11/16),(3/4)⟩ (23/32) (leaf0631 s t r ex ey hm hex hey) (leaf0630 s t r ex ey hm hex hey)
  have node0008 : Holds P ⟨(19/64),(5/16)⟩ ⟨(11/16),(23/32)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(11/16),(23/32)⟩ (45/64) (leaf0628 s t r ex ey hm hex hey) (leaf0627 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(9/32),(5/16)⟩ ⟨(11/16),(23/32)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(11/16),(23/32)⟩ (19/64) (leaf0629 s t r ex ey hm hex hey) node0008
  have node0010 : Holds P ⟨(9/32),(5/16)⟩ ⟨(11/16),(3/4)⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨(11/16),(3/4)⟩ (23/32) node0009 (leaf0626 s t r ex ey hm hex hey)
  have node0011 : Holds P ⟨(1/4),(5/16)⟩ ⟨(11/16),(3/4)⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨(11/16),(3/4)⟩ (9/32) node0007 node0010
  have node0012 : Holds P ⟨(1/4),(5/16)⟩ ⟨(5/8),(3/4)⟩ := split_y ⟨(1/4),(5/16)⟩ ⟨(5/8),(3/4)⟩ (11/16) node0006 node0011
  have node0013 : Holds P ⟨(41/128),(21/64)⟩ ⟨(5/8),(41/64)⟩ := split_y ⟨(41/128),(21/64)⟩ ⟨(5/8),(41/64)⟩ (81/128) (leaf0624 s t r ex ey hm hex hey) (leaf0623 s t r ex ey hm hex hey)
  have node0014 : Holds P ⟨(5/16),(21/64)⟩ ⟨(5/8),(41/64)⟩ := split_x ⟨(5/16),(21/64)⟩ ⟨(5/8),(41/64)⟩ (41/128) (leaf0625 s t r ex ey hm hex hey) node0013
  have node0015 : Holds P ⟨(83/256),(21/64)⟩ ⟨(41/64),(83/128)⟩ := split_y ⟨(83/256),(21/64)⟩ ⟨(41/64),(83/128)⟩ (165/256) (leaf0620 s t r ex ey hm hex hey) (leaf0619 s t r ex ey hm hex hey)
  have node0016 : Holds P ⟨(41/128),(21/64)⟩ ⟨(41/64),(83/128)⟩ := split_x ⟨(41/128),(21/64)⟩ ⟨(41/64),(83/128)⟩ (83/256) (leaf0621 s t r ex ey hm hex hey) node0015
  have node0017 : Holds P ⟨(83/256),(21/64)⟩ ⟨(83/128),(21/32)⟩ := split_y ⟨(83/256),(21/64)⟩ ⟨(83/128),(21/32)⟩ (167/256) (leaf0617 s t r ex ey hm hex hey) (leaf0616 s t r ex ey hm hex hey)
  have node0018 : Holds P ⟨(41/128),(21/64)⟩ ⟨(83/128),(21/32)⟩ := split_x ⟨(41/128),(21/64)⟩ ⟨(83/128),(21/32)⟩ (83/256) (leaf0618 s t r ex ey hm hex hey) node0017
  have node0019 : Holds P ⟨(41/128),(21/64)⟩ ⟨(41/64),(21/32)⟩ := split_y ⟨(41/128),(21/64)⟩ ⟨(41/64),(21/32)⟩ (83/128) node0016 node0018
  have node0020 : Holds P ⟨(5/16),(21/64)⟩ ⟨(41/64),(21/32)⟩ := split_x ⟨(5/16),(21/64)⟩ ⟨(41/64),(21/32)⟩ (41/128) (leaf0622 s t r ex ey hm hex hey) node0019
  have node0021 : Holds P ⟨(5/16),(21/64)⟩ ⟨(5/8),(21/32)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(5/8),(21/32)⟩ (41/64) node0014 node0020
  have node0022 : Holds P ⟨(21/64),(43/128)⟩ ⟨(5/8),(41/64)⟩ := split_y ⟨(21/64),(43/128)⟩ ⟨(5/8),(41/64)⟩ (81/128) (leaf0615 s t r ex ey hm hex hey) (leaf0614 s t r ex ey hm hex hey)
  have node0023 : Holds P ⟨(21/64),(11/32)⟩ ⟨(5/8),(41/64)⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(5/8),(41/64)⟩ (43/128) node0022 (leaf0613 s t r ex ey hm hex hey)
  have node0024 : Holds P ⟨(21/64),(85/256)⟩ ⟨(41/64),(83/128)⟩ := split_y ⟨(21/64),(85/256)⟩ ⟨(41/64),(83/128)⟩ (165/256) (leaf0612 s t r ex ey hm hex hey) (leaf0611 s t r ex ey hm hex hey)
  have node0025 : Holds P ⟨(21/64),(43/128)⟩ ⟨(41/64),(83/128)⟩ := split_x ⟨(21/64),(43/128)⟩ ⟨(41/64),(83/128)⟩ (85/256) node0024 (leaf0610 s t r ex ey hm hex hey)
  have node0026 : Holds P ⟨(21/64),(85/256)⟩ ⟨(83/128),(167/256)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(83/128),(167/256)⟩ (169/512) (leaf0609 s t r ex ey hm hex hey) (leaf0608 s t r ex ey hm hex hey)
  have node0027 : Holds P ⟨(21/64),(169/512)⟩ ⟨(167/256),(21/32)⟩ := split_y ⟨(21/64),(169/512)⟩ ⟨(167/256),(21/32)⟩ (335/512) (leaf0607 s t r ex ey hm hex hey) (leaf0606 s t r ex ey hm hex hey)
  have node0028 : Holds P ⟨(169/512),(85/256)⟩ ⟨(335/512),(21/32)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(335/512),(21/32)⟩ (339/1024) (leaf0604 s t r ex ey hm hex hey) (leaf0603 s t r ex ey hm hex hey)
  have node0029 : Holds P ⟨(169/512),(85/256)⟩ ⟨(167/256),(21/32)⟩ := split_y ⟨(169/512),(85/256)⟩ ⟨(167/256),(21/32)⟩ (335/512) (leaf0605 s t r ex ey hm hex hey) node0028
  have node0030 : Holds P ⟨(21/64),(85/256)⟩ ⟨(167/256),(21/32)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(167/256),(21/32)⟩ (169/512) node0027 node0029
  have node0031 : Holds P ⟨(21/64),(85/256)⟩ ⟨(83/128),(21/32)⟩ := split_y ⟨(21/64),(85/256)⟩ ⟨(83/128),(21/32)⟩ (167/256) node0026 node0030
  have node0032 : Holds P ⟨(85/256),(171/512)⟩ ⟨(335/512),(21/32)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(335/512),(21/32)⟩ (341/1024) (leaf0600 s t r ex ey hm hex hey) (leaf0599 s t r ex ey hm hex hey)
  have node0033 : Holds P ⟨(85/256),(171/512)⟩ ⟨(167/256),(21/32)⟩ := split_y ⟨(85/256),(171/512)⟩ ⟨(167/256),(21/32)⟩ (335/512) (leaf0601 s t r ex ey hm hex hey) node0032
  have node0034 : Holds P ⟨(171/512),(43/128)⟩ ⟨(167/256),(21/32)⟩ := split_y ⟨(171/512),(43/128)⟩ ⟨(167/256),(21/32)⟩ (335/512) (leaf0598 s t r ex ey hm hex hey) (leaf0597 s t r ex ey hm hex hey)
  have node0035 : Holds P ⟨(85/256),(43/128)⟩ ⟨(167/256),(21/32)⟩ := split_x ⟨(85/256),(43/128)⟩ ⟨(167/256),(21/32)⟩ (171/512) node0033 node0034
  have node0036 : Holds P ⟨(85/256),(43/128)⟩ ⟨(83/128),(21/32)⟩ := split_y ⟨(85/256),(43/128)⟩ ⟨(83/128),(21/32)⟩ (167/256) (leaf0602 s t r ex ey hm hex hey) node0035
  have node0037 : Holds P ⟨(21/64),(43/128)⟩ ⟨(83/128),(21/32)⟩ := split_x ⟨(21/64),(43/128)⟩ ⟨(83/128),(21/32)⟩ (85/256) node0031 node0036
  have node0038 : Holds P ⟨(21/64),(43/128)⟩ ⟨(41/64),(21/32)⟩ := split_y ⟨(21/64),(43/128)⟩ ⟨(41/64),(21/32)⟩ (83/128) node0025 node0037
  have node0039 : Holds P ⟨(43/128),(87/256)⟩ ⟨(167/256),(21/32)⟩ := split_x ⟨(43/128),(87/256)⟩ ⟨(167/256),(21/32)⟩ (173/512) (leaf0594 s t r ex ey hm hex hey) (leaf0593 s t r ex ey hm hex hey)
  have node0040 : Holds P ⟨(43/128),(87/256)⟩ ⟨(83/128),(21/32)⟩ := split_y ⟨(43/128),(87/256)⟩ ⟨(83/128),(21/32)⟩ (167/256) (leaf0595 s t r ex ey hm hex hey) node0039
  have node0041 : Holds P ⟨(43/128),(11/32)⟩ ⟨(83/128),(21/32)⟩ := split_x ⟨(43/128),(11/32)⟩ ⟨(83/128),(21/32)⟩ (87/256) node0040 (leaf0592 s t r ex ey hm hex hey)
  have node0042 : Holds P ⟨(43/128),(11/32)⟩ ⟨(41/64),(21/32)⟩ := split_y ⟨(43/128),(11/32)⟩ ⟨(41/64),(21/32)⟩ (83/128) (leaf0596 s t r ex ey hm hex hey) node0041
  have node0043 : Holds P ⟨(21/64),(11/32)⟩ ⟨(41/64),(21/32)⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(41/64),(21/32)⟩ (43/128) node0038 node0042
  have node0044 : Holds P ⟨(21/64),(11/32)⟩ ⟨(5/8),(21/32)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(5/8),(21/32)⟩ (41/64) node0023 node0043
  have node0045 : Holds P ⟨(5/16),(11/32)⟩ ⟨(5/8),(21/32)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(5/8),(21/32)⟩ (21/64) node0021 node0044
  have node0046 : Holds P ⟨(83/256),(21/64)⟩ ⟨(21/32),(85/128)⟩ := split_y ⟨(83/256),(21/64)⟩ ⟨(21/32),(85/128)⟩ (169/256) (leaf0589 s t r ex ey hm hex hey) (leaf0588 s t r ex ey hm hex hey)
  have node0047 : Holds P ⟨(41/128),(21/64)⟩ ⟨(21/32),(85/128)⟩ := split_x ⟨(41/128),(21/64)⟩ ⟨(21/32),(85/128)⟩ (83/256) (leaf0590 s t r ex ey hm hex hey) node0046
  have node0048 : Holds P ⟨(83/256),(21/64)⟩ ⟨(85/128),(43/64)⟩ := split_y ⟨(83/256),(21/64)⟩ ⟨(85/128),(43/64)⟩ (171/256) (leaf0586 s t r ex ey hm hex hey) (leaf0585 s t r ex ey hm hex hey)
  have node0049 : Holds P ⟨(41/128),(21/64)⟩ ⟨(85/128),(43/64)⟩ := split_x ⟨(41/128),(21/64)⟩ ⟨(85/128),(43/64)⟩ (83/256) (leaf0587 s t r ex ey hm hex hey) node0048
  have node0050 : Holds P ⟨(41/128),(21/64)⟩ ⟨(21/32),(43/64)⟩ := split_y ⟨(41/128),(21/64)⟩ ⟨(21/32),(43/64)⟩ (85/128) node0047 node0049
  have node0051 : Holds P ⟨(5/16),(21/64)⟩ ⟨(21/32),(43/64)⟩ := split_x ⟨(5/16),(21/64)⟩ ⟨(21/32),(43/64)⟩ (41/128) (leaf0591 s t r ex ey hm hex hey) node0050
  have node0052 : Holds P ⟨(83/256),(21/64)⟩ ⟨(43/64),(87/128)⟩ := split_y ⟨(83/256),(21/64)⟩ ⟨(43/64),(87/128)⟩ (173/256) (leaf0582 s t r ex ey hm hex hey) (leaf0581 s t r ex ey hm hex hey)
  have node0053 : Holds P ⟨(41/128),(21/64)⟩ ⟨(43/64),(87/128)⟩ := split_x ⟨(41/128),(21/64)⟩ ⟨(43/64),(87/128)⟩ (83/256) (leaf0583 s t r ex ey hm hex hey) node0052
  have node0054 : Holds P ⟨(41/128),(21/64)⟩ ⟨(43/64),(11/16)⟩ := split_y ⟨(41/128),(21/64)⟩ ⟨(43/64),(11/16)⟩ (87/128) node0053 (leaf0580 s t r ex ey hm hex hey)
  have node0055 : Holds P ⟨(5/16),(21/64)⟩ ⟨(43/64),(11/16)⟩ := split_x ⟨(5/16),(21/64)⟩ ⟨(43/64),(11/16)⟩ (41/128) (leaf0584 s t r ex ey hm hex hey) node0054
  have node0056 : Holds P ⟨(5/16),(21/64)⟩ ⟨(21/32),(11/16)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(21/32),(11/16)⟩ (43/64) node0051 node0055
  have node0057 : Holds P ⟨(21/64),(169/512)⟩ ⟨(21/32),(169/256)⟩ := split_y ⟨(21/64),(169/512)⟩ ⟨(21/32),(169/256)⟩ (337/512) (leaf0579 s t r ex ey hm hex hey) (leaf0578 s t r ex ey hm hex hey)
  have node0058 : Holds P ⟨(679/2048),(85/256)⟩ ⟨(673/1024),(337/512)⟩ := split_y ⟨(679/2048),(85/256)⟩ ⟨(673/1024),(337/512)⟩ (1347/2048) (leaf0574 s t r ex ey hm hex hey) (leaf0573 s t r ex ey hm hex hey)
  have node0059 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(673/1024),(337/512)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(673/1024),(337/512)⟩ (679/2048) (leaf0575 s t r ex ey hm hex hey) node0058
  have node0060 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(21/32),(337/512)⟩ := split_y ⟨(339/1024),(85/256)⟩ ⟨(21/32),(337/512)⟩ (673/1024) (leaf0576 s t r ex ey hm hex hey) node0059
  have node0061 : Holds P ⟨(169/512),(85/256)⟩ ⟨(21/32),(337/512)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(21/32),(337/512)⟩ (339/1024) (leaf0577 s t r ex ey hm hex hey) node0060
  have node0062 : Holds P ⟨(679/2048),(85/256)⟩ ⟨(337/512),(675/1024)⟩ := split_y ⟨(679/2048),(85/256)⟩ ⟨(337/512),(675/1024)⟩ (1349/2048) (leaf0570 s t r ex ey hm hex hey) (leaf0569 s t r ex ey hm hex hey)
  have node0063 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(337/512),(675/1024)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(337/512),(675/1024)⟩ (679/2048) (leaf0571 s t r ex ey hm hex hey) node0062
  have node0064 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(675/1024),(169/256)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(675/1024),(169/256)⟩ (679/2048) (leaf0568 s t r ex ey hm hex hey) (leaf0567 s t r ex ey hm hex hey)
  have node0065 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(337/512),(169/256)⟩ := split_y ⟨(339/1024),(85/256)⟩ ⟨(337/512),(169/256)⟩ (675/1024) node0063 node0064
  have node0066 : Holds P ⟨(169/512),(85/256)⟩ ⟨(337/512),(169/256)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(337/512),(169/256)⟩ (339/1024) (leaf0572 s t r ex ey hm hex hey) node0065
  have node0067 : Holds P ⟨(169/512),(85/256)⟩ ⟨(21/32),(169/256)⟩ := split_y ⟨(169/512),(85/256)⟩ ⟨(21/32),(169/256)⟩ (337/512) node0061 node0066
  have node0068 : Holds P ⟨(21/64),(85/256)⟩ ⟨(21/32),(169/256)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(21/32),(169/256)⟩ (169/512) node0057 node0067
  have node0069 : Holds P ⟨(21/64),(169/512)⟩ ⟨(169/256),(85/128)⟩ := split_y ⟨(21/64),(169/512)⟩ ⟨(169/256),(85/128)⟩ (339/512) (leaf0566 s t r ex ey hm hex hey) (leaf0565 s t r ex ey hm hex hey)
  have node0070 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(169/256),(339/512)⟩ := split_y ⟨(339/1024),(85/256)⟩ ⟨(169/256),(339/512)⟩ (677/1024) (leaf0563 s t r ex ey hm hex hey) (leaf0562 s t r ex ey hm hex hey)
  have node0071 : Holds P ⟨(169/512),(85/256)⟩ ⟨(169/256),(339/512)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(169/256),(339/512)⟩ (339/1024) (leaf0564 s t r ex ey hm hex hey) node0070
  have node0072 : Holds P ⟨(169/512),(85/256)⟩ ⟨(339/512),(85/128)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(339/512),(85/128)⟩ (339/1024) (leaf0561 s t r ex ey hm hex hey) (leaf0560 s t r ex ey hm hex hey)
  have node0073 : Holds P ⟨(169/512),(85/256)⟩ ⟨(169/256),(85/128)⟩ := split_y ⟨(169/512),(85/256)⟩ ⟨(169/256),(85/128)⟩ (339/512) node0071 node0072
  have node0074 : Holds P ⟨(21/64),(85/256)⟩ ⟨(169/256),(85/128)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(169/256),(85/128)⟩ (169/512) node0069 node0073
  have node0075 : Holds P ⟨(21/64),(85/256)⟩ ⟨(21/32),(85/128)⟩ := split_y ⟨(21/64),(85/256)⟩ ⟨(21/32),(85/128)⟩ (169/256) node0068 node0074
  have node0076 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(673/1024),(337/512)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(673/1024),(337/512)⟩ (681/2048) (leaf0558 s t r ex ey hm hex hey) (leaf0557 s t r ex ey hm hex hey)
  have node0077 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(21/32),(337/512)⟩ := split_y ⟨(85/256),(341/1024)⟩ ⟨(21/32),(337/512)⟩ (673/1024) (leaf0559 s t r ex ey hm hex hey) node0076
  have node0078 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(21/32),(337/512)⟩ := split_y ⟨(341/1024),(171/512)⟩ ⟨(21/32),(337/512)⟩ (673/1024) (leaf0556 s t r ex ey hm hex hey) (leaf0555 s t r ex ey hm hex hey)
  have node0079 : Holds P ⟨(85/256),(171/512)⟩ ⟨(21/32),(337/512)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(21/32),(337/512)⟩ (341/1024) node0077 node0078
  have node0080 : Holds P ⟨(85/256),(681/2048)⟩ ⟨(337/512),(675/1024)⟩ := split_y ⟨(85/256),(681/2048)⟩ ⟨(337/512),(675/1024)⟩ (1349/2048) (leaf0554 s t r ex ey hm hex hey) (leaf0553 s t r ex ey hm hex hey)
  have node0081 : Holds P ⟨(681/2048),(341/1024)⟩ ⟨(337/512),(675/1024)⟩ := split_y ⟨(681/2048),(341/1024)⟩ ⟨(337/512),(675/1024)⟩ (1349/2048) (leaf0552 s t r ex ey hm hex hey) (leaf0551 s t r ex ey hm hex hey)
  have node0082 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(337/512),(675/1024)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(337/512),(675/1024)⟩ (681/2048) node0080 node0081
  have node0083 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(675/1024),(169/256)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(675/1024),(169/256)⟩ (681/2048) (leaf0550 s t r ex ey hm hex hey) (leaf0549 s t r ex ey hm hex hey)
  have node0084 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(337/512),(169/256)⟩ := split_y ⟨(85/256),(341/1024)⟩ ⟨(337/512),(169/256)⟩ (675/1024) node0082 node0083
  have node0085 : Holds P ⟨(341/1024),(683/2048)⟩ ⟨(337/512),(675/1024)⟩ := split_y ⟨(341/1024),(683/2048)⟩ ⟨(337/512),(675/1024)⟩ (1349/2048) (leaf0548 s t r ex ey hm hex hey) (leaf0547 s t r ex ey hm hex hey)
  have node0086 : Holds P ⟨(683/2048),(171/512)⟩ ⟨(337/512),(675/1024)⟩ := split_y ⟨(683/2048),(171/512)⟩ ⟨(337/512),(675/1024)⟩ (1349/2048) (leaf0546 s t r ex ey hm hex hey) (leaf0545 s t r ex ey hm hex hey)
  have node0087 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(337/512),(675/1024)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(337/512),(675/1024)⟩ (683/2048) node0085 node0086
  have node0088 : Holds P ⟨(683/2048),(171/512)⟩ ⟨(675/1024),(169/256)⟩ := split_y ⟨(683/2048),(171/512)⟩ ⟨(675/1024),(169/256)⟩ (1351/2048) (leaf0543 s t r ex ey hm hex hey) (leaf0542 s t r ex ey hm hex hey)
  have node0089 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(675/1024),(169/256)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(675/1024),(169/256)⟩ (683/2048) (leaf0544 s t r ex ey hm hex hey) node0088
  have node0090 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(337/512),(169/256)⟩ := split_y ⟨(341/1024),(171/512)⟩ ⟨(337/512),(169/256)⟩ (675/1024) node0087 node0089
  have node0091 : Holds P ⟨(85/256),(171/512)⟩ ⟨(337/512),(169/256)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(337/512),(169/256)⟩ (341/1024) node0084 node0090
  have node0092 : Holds P ⟨(85/256),(171/512)⟩ ⟨(21/32),(169/256)⟩ := split_y ⟨(85/256),(171/512)⟩ ⟨(21/32),(169/256)⟩ (337/512) node0079 node0091
  have node0093 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(21/32),(337/512)⟩ := split_y ⟨(171/512),(343/1024)⟩ ⟨(21/32),(337/512)⟩ (673/1024) (leaf0541 s t r ex ey hm hex hey) (leaf0540 s t r ex ey hm hex hey)
  have node0094 : Holds P ⟨(171/512),(43/128)⟩ ⟨(21/32),(337/512)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(21/32),(337/512)⟩ (343/1024) node0093 (leaf0539 s t r ex ey hm hex hey)
  have node0095 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(337/512),(675/1024)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(337/512),(675/1024)⟩ (685/2048) (leaf0538 s t r ex ey hm hex hey) (leaf0537 s t r ex ey hm hex hey)
  have node0096 : Holds P ⟨(171/512),(685/2048)⟩ ⟨(675/1024),(169/256)⟩ := split_y ⟨(171/512),(685/2048)⟩ ⟨(675/1024),(169/256)⟩ (1351/2048) (leaf0536 s t r ex ey hm hex hey) (leaf0535 s t r ex ey hm hex hey)
  have node0097 : Holds P ⟨(685/2048),(343/1024)⟩ ⟨(675/1024),(169/256)⟩ := split_y ⟨(685/2048),(343/1024)⟩ ⟨(675/1024),(169/256)⟩ (1351/2048) (leaf0534 s t r ex ey hm hex hey) (leaf0533 s t r ex ey hm hex hey)
  have node0098 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(675/1024),(169/256)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(675/1024),(169/256)⟩ (685/2048) node0096 node0097
  have node0099 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(337/512),(169/256)⟩ := split_y ⟨(171/512),(343/1024)⟩ ⟨(337/512),(169/256)⟩ (675/1024) node0095 node0098
  have node0100 : Holds P ⟨(343/1024),(43/128)⟩ ⟨(337/512),(169/256)⟩ := split_y ⟨(343/1024),(43/128)⟩ ⟨(337/512),(169/256)⟩ (675/1024) (leaf0532 s t r ex ey hm hex hey) (leaf0531 s t r ex ey hm hex hey)
  have node0101 : Holds P ⟨(171/512),(43/128)⟩ ⟨(337/512),(169/256)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(337/512),(169/256)⟩ (343/1024) node0099 node0100
  have node0102 : Holds P ⟨(171/512),(43/128)⟩ ⟨(21/32),(169/256)⟩ := split_y ⟨(171/512),(43/128)⟩ ⟨(21/32),(169/256)⟩ (337/512) node0094 node0101
  have node0103 : Holds P ⟨(85/256),(43/128)⟩ ⟨(21/32),(169/256)⟩ := split_x ⟨(85/256),(43/128)⟩ ⟨(21/32),(169/256)⟩ (171/512) node0092 node0102
  have node0104 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(169/256),(339/512)⟩ := split_y ⟨(85/256),(341/1024)⟩ ⟨(169/256),(339/512)⟩ (677/1024) (leaf0530 s t r ex ey hm hex hey) (leaf0529 s t r ex ey hm hex hey)
  have node0105 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(169/256),(677/1024)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(169/256),(677/1024)⟩ (683/2048) (leaf0528 s t r ex ey hm hex hey) (leaf0527 s t r ex ey hm hex hey)
  have node0106 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(169/256),(339/512)⟩ := split_y ⟨(341/1024),(171/512)⟩ ⟨(169/256),(339/512)⟩ (677/1024) node0105 (leaf0526 s t r ex ey hm hex hey)
  have node0107 : Holds P ⟨(85/256),(171/512)⟩ ⟨(169/256),(339/512)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(169/256),(339/512)⟩ (341/1024) node0104 node0106
  have node0108 : Holds P ⟨(85/256),(171/512)⟩ ⟨(339/512),(85/128)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(339/512),(85/128)⟩ (341/1024) (leaf0525 s t r ex ey hm hex hey) (leaf0524 s t r ex ey hm hex hey)
  have node0109 : Holds P ⟨(85/256),(171/512)⟩ ⟨(169/256),(85/128)⟩ := split_y ⟨(85/256),(171/512)⟩ ⟨(169/256),(85/128)⟩ (339/512) node0107 node0108
  have node0110 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(169/256),(677/1024)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(169/256),(677/1024)⟩ (685/2048) (leaf0523 s t r ex ey hm hex hey) (leaf0522 s t r ex ey hm hex hey)
  have node0111 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(169/256),(339/512)⟩ := split_y ⟨(171/512),(343/1024)⟩ ⟨(169/256),(339/512)⟩ (677/1024) node0110 (leaf0521 s t r ex ey hm hex hey)
  have node0112 : Holds P ⟨(343/1024),(43/128)⟩ ⟨(169/256),(339/512)⟩ := split_y ⟨(343/1024),(43/128)⟩ ⟨(169/256),(339/512)⟩ (677/1024) (leaf0520 s t r ex ey hm hex hey) (leaf0519 s t r ex ey hm hex hey)
  have node0113 : Holds P ⟨(171/512),(43/128)⟩ ⟨(169/256),(339/512)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(169/256),(339/512)⟩ (343/1024) node0111 node0112
  have node0114 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(339/512),(85/128)⟩ := split_y ⟨(171/512),(343/1024)⟩ ⟨(339/512),(85/128)⟩ (679/1024) (leaf0518 s t r ex ey hm hex hey) (leaf0517 s t r ex ey hm hex hey)
  have node0115 : Holds P ⟨(343/1024),(43/128)⟩ ⟨(339/512),(85/128)⟩ := split_y ⟨(343/1024),(43/128)⟩ ⟨(339/512),(85/128)⟩ (679/1024) (leaf0516 s t r ex ey hm hex hey) (leaf0515 s t r ex ey hm hex hey)
  have node0116 : Holds P ⟨(171/512),(43/128)⟩ ⟨(339/512),(85/128)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(339/512),(85/128)⟩ (343/1024) node0114 node0115
  have node0117 : Holds P ⟨(171/512),(43/128)⟩ ⟨(169/256),(85/128)⟩ := split_y ⟨(171/512),(43/128)⟩ ⟨(169/256),(85/128)⟩ (339/512) node0113 node0116
  have node0118 : Holds P ⟨(85/256),(43/128)⟩ ⟨(169/256),(85/128)⟩ := split_x ⟨(85/256),(43/128)⟩ ⟨(169/256),(85/128)⟩ (171/512) node0109 node0117
  have node0119 : Holds P ⟨(85/256),(43/128)⟩ ⟨(21/32),(85/128)⟩ := split_y ⟨(85/256),(43/128)⟩ ⟨(21/32),(85/128)⟩ (169/256) node0103 node0118
  have node0120 : Holds P ⟨(21/64),(43/128)⟩ ⟨(21/32),(85/128)⟩ := split_x ⟨(21/64),(43/128)⟩ ⟨(21/32),(85/128)⟩ (85/256) node0075 node0119
  have node0121 : Holds P ⟨(169/512),(85/256)⟩ ⟨(85/128),(171/256)⟩ := split_y ⟨(169/512),(85/256)⟩ ⟨(85/128),(171/256)⟩ (341/512) (leaf0513 s t r ex ey hm hex hey) (leaf0512 s t r ex ey hm hex hey)
  have node0122 : Holds P ⟨(21/64),(85/256)⟩ ⟨(85/128),(171/256)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(85/128),(171/256)⟩ (169/512) (leaf0514 s t r ex ey hm hex hey) node0121
  have node0123 : Holds P ⟨(21/64),(85/256)⟩ ⟨(171/256),(43/64)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(171/256),(43/64)⟩ (169/512) (leaf0511 s t r ex ey hm hex hey) (leaf0510 s t r ex ey hm hex hey)
  have node0124 : Holds P ⟨(21/64),(85/256)⟩ ⟨(85/128),(43/64)⟩ := split_y ⟨(21/64),(85/256)⟩ ⟨(85/128),(43/64)⟩ (171/256) node0122 node0123
  have node0125 : Holds P ⟨(85/256),(171/512)⟩ ⟨(85/128),(341/512)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(85/128),(341/512)⟩ (341/1024) (leaf0509 s t r ex ey hm hex hey) (leaf0508 s t r ex ey hm hex hey)
  have node0126 : Holds P ⟨(85/256),(171/512)⟩ ⟨(85/128),(171/256)⟩ := split_y ⟨(85/256),(171/512)⟩ ⟨(85/128),(171/256)⟩ (341/512) node0125 (leaf0507 s t r ex ey hm hex hey)
  have node0127 : Holds P ⟨(171/512),(43/128)⟩ ⟨(85/128),(341/512)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(85/128),(341/512)⟩ (343/1024) (leaf0506 s t r ex ey hm hex hey) (leaf0505 s t r ex ey hm hex hey)
  have node0128 : Holds P ⟨(171/512),(43/128)⟩ ⟨(85/128),(171/256)⟩ := split_y ⟨(171/512),(43/128)⟩ ⟨(85/128),(171/256)⟩ (341/512) node0127 (leaf0504 s t r ex ey hm hex hey)
  have node0129 : Holds P ⟨(85/256),(43/128)⟩ ⟨(85/128),(171/256)⟩ := split_x ⟨(85/256),(43/128)⟩ ⟨(85/128),(171/256)⟩ (171/512) node0126 node0128
  have node0130 : Holds P ⟨(171/512),(43/128)⟩ ⟨(171/256),(43/64)⟩ := split_y ⟨(171/512),(43/128)⟩ ⟨(171/256),(43/64)⟩ (343/512) (leaf0502 s t r ex ey hm hex hey) (leaf0501 s t r ex ey hm hex hey)
  have node0131 : Holds P ⟨(85/256),(43/128)⟩ ⟨(171/256),(43/64)⟩ := split_x ⟨(85/256),(43/128)⟩ ⟨(171/256),(43/64)⟩ (171/512) (leaf0503 s t r ex ey hm hex hey) node0130
  have node0132 : Holds P ⟨(85/256),(43/128)⟩ ⟨(85/128),(43/64)⟩ := split_y ⟨(85/256),(43/128)⟩ ⟨(85/128),(43/64)⟩ (171/256) node0129 node0131
  have node0133 : Holds P ⟨(21/64),(43/128)⟩ ⟨(85/128),(43/64)⟩ := split_x ⟨(21/64),(43/128)⟩ ⟨(85/128),(43/64)⟩ (85/256) node0124 node0132
  have node0134 : Holds P ⟨(21/64),(43/128)⟩ ⟨(21/32),(43/64)⟩ := split_y ⟨(21/64),(43/128)⟩ ⟨(21/32),(43/64)⟩ (85/128) node0120 node0133
  have node0135 : Holds P ⟨(43/128),(173/512)⟩ ⟨(21/32),(169/256)⟩ := split_y ⟨(43/128),(173/512)⟩ ⟨(21/32),(169/256)⟩ (337/512) (leaf0500 s t r ex ey hm hex hey) (leaf0499 s t r ex ey hm hex hey)
  have node0136 : Holds P ⟨(43/128),(87/256)⟩ ⟨(21/32),(169/256)⟩ := split_x ⟨(43/128),(87/256)⟩ ⟨(21/32),(169/256)⟩ (173/512) node0135 (leaf0498 s t r ex ey hm hex hey)
  have node0137 : Holds P ⟨(43/128),(173/512)⟩ ⟨(169/256),(85/128)⟩ := split_y ⟨(43/128),(173/512)⟩ ⟨(169/256),(85/128)⟩ (339/512) (leaf0497 s t r ex ey hm hex hey) (leaf0496 s t r ex ey hm hex hey)
  have node0138 : Holds P ⟨(43/128),(87/256)⟩ ⟨(169/256),(85/128)⟩ := split_x ⟨(43/128),(87/256)⟩ ⟨(169/256),(85/128)⟩ (173/512) node0137 (leaf0495 s t r ex ey hm hex hey)
  have node0139 : Holds P ⟨(43/128),(87/256)⟩ ⟨(21/32),(85/128)⟩ := split_y ⟨(43/128),(87/256)⟩ ⟨(21/32),(85/128)⟩ (169/256) node0136 node0138
  have node0140 : Holds P ⟨(43/128),(11/32)⟩ ⟨(21/32),(85/128)⟩ := split_x ⟨(43/128),(11/32)⟩ ⟨(21/32),(85/128)⟩ (87/256) node0139 (leaf0494 s t r ex ey hm hex hey)
  have node0141 : Holds P ⟨(43/128),(173/512)⟩ ⟨(85/128),(171/256)⟩ := split_y ⟨(43/128),(173/512)⟩ ⟨(85/128),(171/256)⟩ (341/512) (leaf0493 s t r ex ey hm hex hey) (leaf0492 s t r ex ey hm hex hey)
  have node0142 : Holds P ⟨(43/128),(87/256)⟩ ⟨(85/128),(171/256)⟩ := split_x ⟨(43/128),(87/256)⟩ ⟨(85/128),(171/256)⟩ (173/512) node0141 (leaf0491 s t r ex ey hm hex hey)
  have node0143 : Holds P ⟨(43/128),(173/512)⟩ ⟨(171/256),(43/64)⟩ := split_y ⟨(43/128),(173/512)⟩ ⟨(171/256),(43/64)⟩ (343/512) (leaf0490 s t r ex ey hm hex hey) (leaf0489 s t r ex ey hm hex hey)
  have node0144 : Holds P ⟨(43/128),(87/256)⟩ ⟨(171/256),(43/64)⟩ := split_x ⟨(43/128),(87/256)⟩ ⟨(171/256),(43/64)⟩ (173/512) node0143 (leaf0488 s t r ex ey hm hex hey)
  have node0145 : Holds P ⟨(43/128),(87/256)⟩ ⟨(85/128),(43/64)⟩ := split_y ⟨(43/128),(87/256)⟩ ⟨(85/128),(43/64)⟩ (171/256) node0142 node0144
  have node0146 : Holds P ⟨(43/128),(11/32)⟩ ⟨(85/128),(43/64)⟩ := split_x ⟨(43/128),(11/32)⟩ ⟨(85/128),(43/64)⟩ (87/256) node0145 (leaf0487 s t r ex ey hm hex hey)
  have node0147 : Holds P ⟨(43/128),(11/32)⟩ ⟨(21/32),(43/64)⟩ := split_y ⟨(43/128),(11/32)⟩ ⟨(21/32),(43/64)⟩ (85/128) node0140 node0146
  have node0148 : Holds P ⟨(21/64),(11/32)⟩ ⟨(21/32),(43/64)⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(21/32),(43/64)⟩ (43/128) node0134 node0147
  have node0149 : Holds P ⟨(21/64),(85/256)⟩ ⟨(43/64),(87/128)⟩ := split_y ⟨(21/64),(85/256)⟩ ⟨(43/64),(87/128)⟩ (173/256) (leaf0486 s t r ex ey hm hex hey) (leaf0485 s t r ex ey hm hex hey)
  have node0150 : Holds P ⟨(85/256),(43/128)⟩ ⟨(43/64),(173/256)⟩ := split_x ⟨(85/256),(43/128)⟩ ⟨(43/64),(173/256)⟩ (171/512) (leaf0484 s t r ex ey hm hex hey) (leaf0483 s t r ex ey hm hex hey)
  have node0151 : Holds P ⟨(85/256),(43/128)⟩ ⟨(43/64),(87/128)⟩ := split_y ⟨(85/256),(43/128)⟩ ⟨(43/64),(87/128)⟩ (173/256) node0150 (leaf0482 s t r ex ey hm hex hey)
  have node0152 : Holds P ⟨(21/64),(43/128)⟩ ⟨(43/64),(87/128)⟩ := split_x ⟨(21/64),(43/128)⟩ ⟨(43/64),(87/128)⟩ (85/256) node0149 node0151
  have node0153 : Holds P ⟨(21/64),(43/128)⟩ ⟨(87/128),(11/16)⟩ := split_x ⟨(21/64),(43/128)⟩ ⟨(87/128),(11/16)⟩ (85/256) (leaf0481 s t r ex ey hm hex hey) (leaf0480 s t r ex ey hm hex hey)
  have node0154 : Holds P ⟨(21/64),(43/128)⟩ ⟨(43/64),(11/16)⟩ := split_y ⟨(21/64),(43/128)⟩ ⟨(43/64),(11/16)⟩ (87/128) node0152 node0153
  have node0155 : Holds P ⟨(43/128),(87/256)⟩ ⟨(43/64),(173/256)⟩ := split_x ⟨(43/128),(87/256)⟩ ⟨(43/64),(173/256)⟩ (173/512) (leaf0479 s t r ex ey hm hex hey) (leaf0478 s t r ex ey hm hex hey)
  have node0156 : Holds P ⟨(43/128),(87/256)⟩ ⟨(43/64),(87/128)⟩ := split_y ⟨(43/128),(87/256)⟩ ⟨(43/64),(87/128)⟩ (173/256) node0155 (leaf0477 s t r ex ey hm hex hey)
  have node0157 : Holds P ⟨(43/128),(11/32)⟩ ⟨(43/64),(87/128)⟩ := split_x ⟨(43/128),(11/32)⟩ ⟨(43/64),(87/128)⟩ (87/256) node0156 (leaf0476 s t r ex ey hm hex hey)
  have node0158 : Holds P ⟨(43/128),(11/32)⟩ ⟨(87/128),(11/16)⟩ := split_x ⟨(43/128),(11/32)⟩ ⟨(87/128),(11/16)⟩ (87/256) (leaf0475 s t r ex ey hm hex hey) (leaf0474 s t r ex ey hm hex hey)
  have node0159 : Holds P ⟨(43/128),(11/32)⟩ ⟨(43/64),(11/16)⟩ := split_y ⟨(43/128),(11/32)⟩ ⟨(43/64),(11/16)⟩ (87/128) node0157 node0158
  have node0160 : Holds P ⟨(21/64),(11/32)⟩ ⟨(43/64),(11/16)⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(43/64),(11/16)⟩ (43/128) node0154 node0159
  have node0161 : Holds P ⟨(21/64),(11/32)⟩ ⟨(21/32),(11/16)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(21/32),(11/16)⟩ (43/64) node0148 node0160
  have node0162 : Holds P ⟨(5/16),(11/32)⟩ ⟨(21/32),(11/16)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(21/32),(11/16)⟩ (21/64) node0056 node0161
  have node0163 : Holds P ⟨(5/16),(11/32)⟩ ⟨(5/8),(11/16)⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨(5/8),(11/16)⟩ (21/32) node0045 node0162
  have node0164 : Holds P ⟨(11/32),(23/64)⟩ ⟨(5/8),(41/64)⟩ := split_x ⟨(11/32),(23/64)⟩ ⟨(5/8),(41/64)⟩ (45/128) (leaf0473 s t r ex ey hm hex hey) (leaf0472 s t r ex ey hm hex hey)
  have node0165 : Holds P ⟨(11/32),(45/128)⟩ ⟨(41/64),(21/32)⟩ := split_y ⟨(11/32),(45/128)⟩ ⟨(41/64),(21/32)⟩ (83/128) (leaf0471 s t r ex ey hm hex hey) (leaf0470 s t r ex ey hm hex hey)
  have node0166 : Holds P ⟨(11/32),(23/64)⟩ ⟨(41/64),(21/32)⟩ := split_x ⟨(11/32),(23/64)⟩ ⟨(41/64),(21/32)⟩ (45/128) node0165 (leaf0469 s t r ex ey hm hex hey)
  have node0167 : Holds P ⟨(11/32),(23/64)⟩ ⟨(5/8),(21/32)⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨(5/8),(21/32)⟩ (41/64) node0164 node0166
  have node0168 : Holds P ⟨(11/32),(3/8)⟩ ⟨(5/8),(21/32)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(5/8),(21/32)⟩ (23/64) node0167 (leaf0468 s t r ex ey hm hex hey)
  have node0169 : Holds P ⟨(11/32),(23/64)⟩ ⟨(21/32),(43/64)⟩ := split_x ⟨(11/32),(23/64)⟩ ⟨(21/32),(43/64)⟩ (45/128) (leaf0467 s t r ex ey hm hex hey) (leaf0466 s t r ex ey hm hex hey)
  have node0170 : Holds P ⟨(11/32),(23/64)⟩ ⟨(43/64),(11/16)⟩ := split_x ⟨(11/32),(23/64)⟩ ⟨(43/64),(11/16)⟩ (45/128) (leaf0465 s t r ex ey hm hex hey) (leaf0464 s t r ex ey hm hex hey)
  have node0171 : Holds P ⟨(11/32),(23/64)⟩ ⟨(21/32),(11/16)⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨(21/32),(11/16)⟩ (43/64) node0169 node0170
  have node0172 : Holds P ⟨(11/32),(3/8)⟩ ⟨(21/32),(11/16)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(21/32),(11/16)⟩ (23/64) node0171 (leaf0463 s t r ex ey hm hex hey)
  have node0173 : Holds P ⟨(11/32),(3/8)⟩ ⟨(5/8),(11/16)⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨(5/8),(11/16)⟩ (21/32) node0168 node0172
  have node0174 : Holds P ⟨(5/16),(3/8)⟩ ⟨(5/8),(11/16)⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨(5/8),(11/16)⟩ (11/32) node0163 node0173
  have node0175 : Holds P ⟨(5/16),(21/64)⟩ ⟨(11/16),(45/64)⟩ := split_x ⟨(5/16),(21/64)⟩ ⟨(11/16),(45/64)⟩ (41/128) (leaf0462 s t r ex ey hm hex hey) (leaf0461 s t r ex ey hm hex hey)
  have node0176 : Holds P ⟨(5/16),(21/64)⟩ ⟨(11/16),(23/32)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(11/16),(23/32)⟩ (45/64) node0175 (leaf0460 s t r ex ey hm hex hey)
  have node0177 : Holds P ⟨(43/128),(11/32)⟩ ⟨(11/16),(45/64)⟩ := split_y ⟨(43/128),(11/32)⟩ ⟨(11/16),(45/64)⟩ (89/128) (leaf0458 s t r ex ey hm hex hey) (leaf0457 s t r ex ey hm hex hey)
  have node0178 : Holds P ⟨(21/64),(11/32)⟩ ⟨(11/16),(45/64)⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(11/16),(45/64)⟩ (43/128) (leaf0459 s t r ex ey hm hex hey) node0177
  have node0179 : Holds P ⟨(21/64),(11/32)⟩ ⟨(11/16),(23/32)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(11/16),(23/32)⟩ (45/64) node0178 (leaf0456 s t r ex ey hm hex hey)
  have node0180 : Holds P ⟨(5/16),(11/32)⟩ ⟨(11/16),(23/32)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(11/16),(23/32)⟩ (21/64) node0176 node0179
  have node0181 : Holds P ⟨(5/16),(11/32)⟩ ⟨(11/16),(3/4)⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨(11/16),(3/4)⟩ (23/32) node0180 (leaf0455 s t r ex ey hm hex hey)
  have node0182 : Holds P ⟨(11/32),(23/64)⟩ ⟨(11/16),(45/64)⟩ := split_x ⟨(11/32),(23/64)⟩ ⟨(11/16),(45/64)⟩ (45/128) (leaf0454 s t r ex ey hm hex hey) (leaf0453 s t r ex ey hm hex hey)
  have node0183 : Holds P ⟨(11/32),(23/64)⟩ ⟨(45/64),(23/32)⟩ := split_x ⟨(11/32),(23/64)⟩ ⟨(45/64),(23/32)⟩ (45/128) (leaf0452 s t r ex ey hm hex hey) (leaf0451 s t r ex ey hm hex hey)
  have node0184 : Holds P ⟨(11/32),(23/64)⟩ ⟨(11/16),(23/32)⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨(11/16),(23/32)⟩ (45/64) node0182 node0183
  have node0185 : Holds P ⟨(11/32),(3/8)⟩ ⟨(11/16),(23/32)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(11/16),(23/32)⟩ (23/64) node0184 (leaf0450 s t r ex ey hm hex hey)
  have node0186 : Holds P ⟨(11/32),(3/8)⟩ ⟨(23/32),(3/4)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(23/32),(3/4)⟩ (23/64) (leaf0449 s t r ex ey hm hex hey) (leaf0448 s t r ex ey hm hex hey)
  have node0187 : Holds P ⟨(11/32),(3/8)⟩ ⟨(11/16),(3/4)⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨(11/16),(3/4)⟩ (23/32) node0185 node0186
  have node0188 : Holds P ⟨(5/16),(3/8)⟩ ⟨(11/16),(3/4)⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨(11/16),(3/4)⟩ (11/32) node0181 node0187
  have node0189 : Holds P ⟨(5/16),(3/8)⟩ ⟨(5/8),(3/4)⟩ := split_y ⟨(5/16),(3/8)⟩ ⟨(5/8),(3/4)⟩ (11/16) node0174 node0188
  have node0190 : Holds P ⟨(1/4),(3/8)⟩ ⟨(5/8),(3/4)⟩ := split_x ⟨(1/4),(3/8)⟩ ⟨(5/8),(3/4)⟩ (5/16) node0012 node0189
  exact node0190
#print axioms tile21
end Root0Angular20261003
