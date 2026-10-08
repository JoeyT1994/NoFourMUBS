import ParametricAngularLeaf
import Root1CertificateData
import Root1Leaves00
import Root1Leaves01
import Root1Leaves02
import Root1Leaves03
import Root1Leaves04
import Root1Leaves05
import Root1Leaves06
import Root1Leaves07
import Root1Leaves08
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace ShoulderRoot1Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
open Root0Angular20261003 (ArcCert TrigCert Holds turnPhase split_x split_y)
open ShoulderAngular20261003
open ShoulderRoot1Data20261003
theorem tile40 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(3/4)⟩ ⟨0,(1/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/8),(11/16)⟩ ⟨(1/16),(1/8)⟩ := split_x ⟨(5/8),(11/16)⟩ ⟨(1/16),(1/8)⟩ (21/32) (leaf0214 s t r ex ey hm hex hey) (leaf0213 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/8),(11/16)⟩ ⟨0,(1/8)⟩ := split_y ⟨(5/8),(11/16)⟩ ⟨0,(1/8)⟩ (1/16) (leaf0215 s t r ex ey hm hex hey) node0000
  have node0002 : Holds P ⟨(5/8),(3/4)⟩ ⟨0,(1/8)⟩ := split_x ⟨(5/8),(3/4)⟩ ⟨0,(1/8)⟩ (11/16) node0001 (leaf0212 s t r ex ey hm hex hey)
  exact node0002
#print axioms tile40
theorem tile41 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(3/4)⟩ ⟨(1/8),(1/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/8),(21/32)⟩ ⟨(1/8),(3/16)⟩ := split_y ⟨(5/8),(21/32)⟩ ⟨(1/8),(3/16)⟩ (5/32) (leaf0211 s t r ex ey hm hex hey) (leaf0210 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/8),(11/16)⟩ ⟨(1/8),(3/16)⟩ := split_x ⟨(5/8),(11/16)⟩ ⟨(1/8),(3/16)⟩ (21/32) node0000 (leaf0209 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(5/8),(21/32)⟩ ⟨(7/32),(1/4)⟩ := split_x ⟨(5/8),(21/32)⟩ ⟨(7/32),(1/4)⟩ (41/64) (leaf0207 s t r ex ey hm hex hey) (leaf0206 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(5/8),(21/32)⟩ ⟨(3/16),(1/4)⟩ := split_y ⟨(5/8),(21/32)⟩ ⟨(3/16),(1/4)⟩ (7/32) (leaf0208 s t r ex ey hm hex hey) node0002
  have node0004 : Holds P ⟨(21/32),(11/16)⟩ ⟨(3/16),(1/4)⟩ := split_y ⟨(21/32),(11/16)⟩ ⟨(3/16),(1/4)⟩ (7/32) (leaf0205 s t r ex ey hm hex hey) (leaf0204 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(5/8),(11/16)⟩ ⟨(3/16),(1/4)⟩ := split_x ⟨(5/8),(11/16)⟩ ⟨(3/16),(1/4)⟩ (21/32) node0003 node0004
  have node0006 : Holds P ⟨(5/8),(11/16)⟩ ⟨(1/8),(1/4)⟩ := split_y ⟨(5/8),(11/16)⟩ ⟨(1/8),(1/4)⟩ (3/16) node0001 node0005
  have node0007 : Holds P ⟨(5/8),(3/4)⟩ ⟨(1/8),(1/4)⟩ := split_x ⟨(5/8),(3/4)⟩ ⟨(1/8),(1/4)⟩ (11/16) node0006 (leaf0203 s t r ex ey hm hex hey)
  exact node0007
#print axioms tile41
theorem tile42 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(3/4)⟩ ⟨(1/4),(3/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/8),(41/64)⟩ ⟨(1/4),(9/32)⟩ := split_y ⟨(5/8),(41/64)⟩ ⟨(1/4),(9/32)⟩ (17/64) (leaf0202 s t r ex ey hm hex hey) (leaf0201 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(41/64),(21/32)⟩ ⟨(17/64),(9/32)⟩ := split_x ⟨(41/64),(21/32)⟩ ⟨(17/64),(9/32)⟩ (83/128) (leaf0199 s t r ex ey hm hex hey) (leaf0198 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(41/64),(21/32)⟩ ⟨(1/4),(9/32)⟩ := split_y ⟨(41/64),(21/32)⟩ ⟨(1/4),(9/32)⟩ (17/64) (leaf0200 s t r ex ey hm hex hey) node0001
  have node0003 : Holds P ⟨(5/8),(21/32)⟩ ⟨(1/4),(9/32)⟩ := split_x ⟨(5/8),(21/32)⟩ ⟨(1/4),(9/32)⟩ (41/64) node0000 node0002
  have node0004 : Holds P ⟨(83/128),(21/32)⟩ ⟨(9/32),(19/64)⟩ := split_y ⟨(83/128),(21/32)⟩ ⟨(9/32),(19/64)⟩ (37/128) (leaf0195 s t r ex ey hm hex hey) (leaf0194 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(41/64),(21/32)⟩ ⟨(9/32),(19/64)⟩ := split_x ⟨(41/64),(21/32)⟩ ⟨(9/32),(19/64)⟩ (83/128) (leaf0196 s t r ex ey hm hex hey) node0004
  have node0006 : Holds P ⟨(41/64),(21/32)⟩ ⟨(9/32),(5/16)⟩ := split_y ⟨(41/64),(21/32)⟩ ⟨(9/32),(5/16)⟩ (19/64) node0005 (leaf0193 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(5/8),(21/32)⟩ ⟨(9/32),(5/16)⟩ := split_x ⟨(5/8),(21/32)⟩ ⟨(9/32),(5/16)⟩ (41/64) (leaf0197 s t r ex ey hm hex hey) node0006
  have node0008 : Holds P ⟨(5/8),(21/32)⟩ ⟨(1/4),(5/16)⟩ := split_y ⟨(5/8),(21/32)⟩ ⟨(1/4),(5/16)⟩ (9/32) node0003 node0007
  have node0009 : Holds P ⟨(21/32),(43/64)⟩ ⟨(1/4),(9/32)⟩ := split_y ⟨(21/32),(43/64)⟩ ⟨(1/4),(9/32)⟩ (17/64) (leaf0192 s t r ex ey hm hex hey) (leaf0191 s t r ex ey hm hex hey)
  have node0010 : Holds P ⟨(21/32),(11/16)⟩ ⟨(1/4),(9/32)⟩ := split_x ⟨(21/32),(11/16)⟩ ⟨(1/4),(9/32)⟩ (43/64) node0009 (leaf0190 s t r ex ey hm hex hey)
  have node0011 : Holds P ⟨(21/32),(43/64)⟩ ⟨(9/32),(19/64)⟩ := split_x ⟨(21/32),(43/64)⟩ ⟨(9/32),(19/64)⟩ (85/128) (leaf0189 s t r ex ey hm hex hey) (leaf0188 s t r ex ey hm hex hey)
  have node0012 : Holds P ⟨(21/32),(85/128)⟩ ⟨(19/64),(39/128)⟩ := split_x ⟨(21/32),(85/128)⟩ ⟨(19/64),(39/128)⟩ (169/256) (leaf0187 s t r ex ey hm hex hey) (leaf0186 s t r ex ey hm hex hey)
  have node0013 : Holds P ⟨(169/256),(85/128)⟩ ⟨(39/128),(5/16)⟩ := split_y ⟨(169/256),(85/128)⟩ ⟨(39/128),(5/16)⟩ (79/256) (leaf0184 s t r ex ey hm hex hey) (leaf0183 s t r ex ey hm hex hey)
  have node0014 : Holds P ⟨(21/32),(85/128)⟩ ⟨(39/128),(5/16)⟩ := split_x ⟨(21/32),(85/128)⟩ ⟨(39/128),(5/16)⟩ (169/256) (leaf0185 s t r ex ey hm hex hey) node0013
  have node0015 : Holds P ⟨(21/32),(85/128)⟩ ⟨(19/64),(5/16)⟩ := split_y ⟨(21/32),(85/128)⟩ ⟨(19/64),(5/16)⟩ (39/128) node0012 node0014
  have node0016 : Holds P ⟨(85/128),(43/64)⟩ ⟨(39/128),(5/16)⟩ := split_x ⟨(85/128),(43/64)⟩ ⟨(39/128),(5/16)⟩ (171/256) (leaf0181 s t r ex ey hm hex hey) (leaf0180 s t r ex ey hm hex hey)
  have node0017 : Holds P ⟨(85/128),(43/64)⟩ ⟨(19/64),(5/16)⟩ := split_y ⟨(85/128),(43/64)⟩ ⟨(19/64),(5/16)⟩ (39/128) (leaf0182 s t r ex ey hm hex hey) node0016
  have node0018 : Holds P ⟨(21/32),(43/64)⟩ ⟨(19/64),(5/16)⟩ := split_x ⟨(21/32),(43/64)⟩ ⟨(19/64),(5/16)⟩ (85/128) node0015 node0017
  have node0019 : Holds P ⟨(21/32),(43/64)⟩ ⟨(9/32),(5/16)⟩ := split_y ⟨(21/32),(43/64)⟩ ⟨(9/32),(5/16)⟩ (19/64) node0011 node0018
  have node0020 : Holds P ⟨(21/32),(11/16)⟩ ⟨(9/32),(5/16)⟩ := split_x ⟨(21/32),(11/16)⟩ ⟨(9/32),(5/16)⟩ (43/64) node0019 (leaf0179 s t r ex ey hm hex hey)
  have node0021 : Holds P ⟨(21/32),(11/16)⟩ ⟨(1/4),(5/16)⟩ := split_y ⟨(21/32),(11/16)⟩ ⟨(1/4),(5/16)⟩ (9/32) node0010 node0020
  have node0022 : Holds P ⟨(5/8),(11/16)⟩ ⟨(1/4),(5/16)⟩ := split_x ⟨(5/8),(11/16)⟩ ⟨(1/4),(5/16)⟩ (21/32) node0008 node0021
  have node0023 : Holds P ⟨(5/8),(21/32)⟩ ⟨(5/16),(11/32)⟩ := split_x ⟨(5/8),(21/32)⟩ ⟨(5/16),(11/32)⟩ (41/64) (leaf0178 s t r ex ey hm hex hey) (leaf0177 s t r ex ey hm hex hey)
  have node0024 : Holds P ⟨(5/8),(41/64)⟩ ⟨(11/32),(3/8)⟩ := split_y ⟨(5/8),(41/64)⟩ ⟨(11/32),(3/8)⟩ (23/64) (leaf0176 s t r ex ey hm hex hey) (leaf0175 s t r ex ey hm hex hey)
  have node0025 : Holds P ⟨(83/128),(21/32)⟩ ⟨(11/32),(23/64)⟩ := split_y ⟨(83/128),(21/32)⟩ ⟨(11/32),(23/64)⟩ (45/128) (leaf0173 s t r ex ey hm hex hey) (leaf0172 s t r ex ey hm hex hey)
  have node0026 : Holds P ⟨(41/64),(21/32)⟩ ⟨(11/32),(23/64)⟩ := split_x ⟨(41/64),(21/32)⟩ ⟨(11/32),(23/64)⟩ (83/128) (leaf0174 s t r ex ey hm hex hey) node0025
  have node0027 : Holds P ⟨(41/64),(21/32)⟩ ⟨(11/32),(3/8)⟩ := split_y ⟨(41/64),(21/32)⟩ ⟨(11/32),(3/8)⟩ (23/64) node0026 (leaf0171 s t r ex ey hm hex hey)
  have node0028 : Holds P ⟨(5/8),(21/32)⟩ ⟨(11/32),(3/8)⟩ := split_x ⟨(5/8),(21/32)⟩ ⟨(11/32),(3/8)⟩ (41/64) node0024 node0027
  have node0029 : Holds P ⟨(5/8),(21/32)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(5/8),(21/32)⟩ ⟨(5/16),(3/8)⟩ (11/32) node0023 node0028
  have node0030 : Holds P ⟨(21/32),(85/128)⟩ ⟨(5/16),(21/64)⟩ := split_y ⟨(21/32),(85/128)⟩ ⟨(5/16),(21/64)⟩ (41/128) (leaf0170 s t r ex ey hm hex hey) (leaf0169 s t r ex ey hm hex hey)
  have node0031 : Holds P ⟨(85/128),(171/256)⟩ ⟨(5/16),(81/256)⟩ := split_x ⟨(85/128),(171/256)⟩ ⟨(5/16),(81/256)⟩ (341/512) (leaf0168 s t r ex ey hm hex hey) (leaf0167 s t r ex ey hm hex hey)
  have node0032 : Holds P ⟨(85/128),(341/512)⟩ ⟨(163/512),(41/128)⟩ := split_x ⟨(85/128),(341/512)⟩ ⟨(163/512),(41/128)⟩ (681/1024) (leaf0165 s t r ex ey hm hex hey) (leaf0164 s t r ex ey hm hex hey)
  have node0033 : Holds P ⟨(85/128),(341/512)⟩ ⟨(81/256),(41/128)⟩ := split_y ⟨(85/128),(341/512)⟩ ⟨(81/256),(41/128)⟩ (163/512) (leaf0166 s t r ex ey hm hex hey) node0032
  have node0034 : Holds P ⟨(341/512),(171/256)⟩ ⟨(81/256),(41/128)⟩ := split_y ⟨(341/512),(171/256)⟩ ⟨(81/256),(41/128)⟩ (163/512) (leaf0163 s t r ex ey hm hex hey) (leaf0162 s t r ex ey hm hex hey)
  have node0035 : Holds P ⟨(85/128),(171/256)⟩ ⟨(81/256),(41/128)⟩ := split_x ⟨(85/128),(171/256)⟩ ⟨(81/256),(41/128)⟩ (341/512) node0033 node0034
  have node0036 : Holds P ⟨(85/128),(171/256)⟩ ⟨(5/16),(41/128)⟩ := split_y ⟨(85/128),(171/256)⟩ ⟨(5/16),(41/128)⟩ (81/256) node0031 node0035
  have node0037 : Holds P ⟨(85/128),(43/64)⟩ ⟨(5/16),(41/128)⟩ := split_x ⟨(85/128),(43/64)⟩ ⟨(5/16),(41/128)⟩ (171/256) node0036 (leaf0161 s t r ex ey hm hex hey)
  have node0038 : Holds P ⟨(681/1024),(341/512)⟩ ⟨(329/1024),(165/512)⟩ := split_x ⟨(681/1024),(341/512)⟩ ⟨(329/1024),(165/512)⟩ (1363/2048) (leaf0158 s t r ex ey hm hex hey) (leaf0157 s t r ex ey hm hex hey)
  have node0039 : Holds P ⟨(681/1024),(341/512)⟩ ⟨(41/128),(165/512)⟩ := split_y ⟨(681/1024),(341/512)⟩ ⟨(41/128),(165/512)⟩ (329/1024) (leaf0159 s t r ex ey hm hex hey) node0038
  have node0040 : Holds P ⟨(85/128),(341/512)⟩ ⟨(41/128),(165/512)⟩ := split_x ⟨(85/128),(341/512)⟩ ⟨(41/128),(165/512)⟩ (681/1024) (leaf0160 s t r ex ey hm hex hey) node0039
  have node0041 : Holds P ⟨(1363/2048),(341/512)⟩ ⟨(165/512),(331/1024)⟩ := split_y ⟨(1363/2048),(341/512)⟩ ⟨(165/512),(331/1024)⟩ (661/2048) (leaf0154 s t r ex ey hm hex hey) (leaf0153 s t r ex ey hm hex hey)
  have node0042 : Holds P ⟨(681/1024),(341/512)⟩ ⟨(165/512),(331/1024)⟩ := split_x ⟨(681/1024),(341/512)⟩ ⟨(165/512),(331/1024)⟩ (1363/2048) (leaf0155 s t r ex ey hm hex hey) node0041
  have node0043 : Holds P ⟨(1363/2048),(341/512)⟩ ⟨(331/1024),(83/256)⟩ := split_y ⟨(1363/2048),(341/512)⟩ ⟨(331/1024),(83/256)⟩ (663/2048) (leaf0151 s t r ex ey hm hex hey) (leaf0150 s t r ex ey hm hex hey)
  have node0044 : Holds P ⟨(681/1024),(341/512)⟩ ⟨(331/1024),(83/256)⟩ := split_x ⟨(681/1024),(341/512)⟩ ⟨(331/1024),(83/256)⟩ (1363/2048) (leaf0152 s t r ex ey hm hex hey) node0043
  have node0045 : Holds P ⟨(681/1024),(341/512)⟩ ⟨(165/512),(83/256)⟩ := split_y ⟨(681/1024),(341/512)⟩ ⟨(165/512),(83/256)⟩ (331/1024) node0042 node0044
  have node0046 : Holds P ⟨(85/128),(341/512)⟩ ⟨(165/512),(83/256)⟩ := split_x ⟨(85/128),(341/512)⟩ ⟨(165/512),(83/256)⟩ (681/1024) (leaf0156 s t r ex ey hm hex hey) node0045
  have node0047 : Holds P ⟨(85/128),(341/512)⟩ ⟨(41/128),(83/256)⟩ := split_y ⟨(85/128),(341/512)⟩ ⟨(41/128),(83/256)⟩ (165/512) node0040 node0046
  have node0048 : Holds P ⟨(341/512),(683/1024)⟩ ⟨(41/128),(165/512)⟩ := split_y ⟨(341/512),(683/1024)⟩ ⟨(41/128),(165/512)⟩ (329/1024) (leaf0149 s t r ex ey hm hex hey) (leaf0148 s t r ex ey hm hex hey)
  have node0049 : Holds P ⟨(341/512),(171/256)⟩ ⟨(41/128),(165/512)⟩ := split_x ⟨(341/512),(171/256)⟩ ⟨(41/128),(165/512)⟩ (683/1024) node0048 (leaf0147 s t r ex ey hm hex hey)
  have node0050 : Holds P ⟨(341/512),(1365/2048)⟩ ⟨(165/512),(331/1024)⟩ := split_y ⟨(341/512),(1365/2048)⟩ ⟨(165/512),(331/1024)⟩ (661/2048) (leaf0146 s t r ex ey hm hex hey) (leaf0145 s t r ex ey hm hex hey)
  have node0051 : Holds P ⟨(1365/2048),(683/1024)⟩ ⟨(165/512),(331/1024)⟩ := split_y ⟨(1365/2048),(683/1024)⟩ ⟨(165/512),(331/1024)⟩ (661/2048) (leaf0144 s t r ex ey hm hex hey) (leaf0143 s t r ex ey hm hex hey)
  have node0052 : Holds P ⟨(341/512),(683/1024)⟩ ⟨(165/512),(331/1024)⟩ := split_x ⟨(341/512),(683/1024)⟩ ⟨(165/512),(331/1024)⟩ (1365/2048) node0050 node0051
  have node0053 : Holds P ⟨(341/512),(1365/2048)⟩ ⟨(331/1024),(83/256)⟩ := split_y ⟨(341/512),(1365/2048)⟩ ⟨(331/1024),(83/256)⟩ (663/2048) (leaf0142 s t r ex ey hm hex hey) (leaf0141 s t r ex ey hm hex hey)
  have node0054 : Holds P ⟨(1365/2048),(683/1024)⟩ ⟨(331/1024),(83/256)⟩ := split_y ⟨(1365/2048),(683/1024)⟩ ⟨(331/1024),(83/256)⟩ (663/2048) (leaf0140 s t r ex ey hm hex hey) (leaf0139 s t r ex ey hm hex hey)
  have node0055 : Holds P ⟨(341/512),(683/1024)⟩ ⟨(331/1024),(83/256)⟩ := split_x ⟨(341/512),(683/1024)⟩ ⟨(331/1024),(83/256)⟩ (1365/2048) node0053 node0054
  have node0056 : Holds P ⟨(341/512),(683/1024)⟩ ⟨(165/512),(83/256)⟩ := split_y ⟨(341/512),(683/1024)⟩ ⟨(165/512),(83/256)⟩ (331/1024) node0052 node0055
  have node0057 : Holds P ⟨(683/1024),(171/256)⟩ ⟨(165/512),(331/1024)⟩ := split_x ⟨(683/1024),(171/256)⟩ ⟨(165/512),(331/1024)⟩ (1367/2048) (leaf0138 s t r ex ey hm hex hey) (leaf0137 s t r ex ey hm hex hey)
  have node0058 : Holds P ⟨(683/1024),(1367/2048)⟩ ⟨(331/1024),(83/256)⟩ := split_y ⟨(683/1024),(1367/2048)⟩ ⟨(331/1024),(83/256)⟩ (663/2048) (leaf0136 s t r ex ey hm hex hey) (leaf0135 s t r ex ey hm hex hey)
  have node0059 : Holds P ⟨(683/1024),(171/256)⟩ ⟨(331/1024),(83/256)⟩ := split_x ⟨(683/1024),(171/256)⟩ ⟨(331/1024),(83/256)⟩ (1367/2048) node0058 (leaf0134 s t r ex ey hm hex hey)
  have node0060 : Holds P ⟨(683/1024),(171/256)⟩ ⟨(165/512),(83/256)⟩ := split_y ⟨(683/1024),(171/256)⟩ ⟨(165/512),(83/256)⟩ (331/1024) node0057 node0059
  have node0061 : Holds P ⟨(341/512),(171/256)⟩ ⟨(165/512),(83/256)⟩ := split_x ⟨(341/512),(171/256)⟩ ⟨(165/512),(83/256)⟩ (683/1024) node0056 node0060
  have node0062 : Holds P ⟨(341/512),(171/256)⟩ ⟨(41/128),(83/256)⟩ := split_y ⟨(341/512),(171/256)⟩ ⟨(41/128),(83/256)⟩ (165/512) node0049 node0061
  have node0063 : Holds P ⟨(85/128),(171/256)⟩ ⟨(41/128),(83/256)⟩ := split_x ⟨(85/128),(171/256)⟩ ⟨(41/128),(83/256)⟩ (341/512) node0047 node0062
  have node0064 : Holds P ⟨(1363/2048),(341/512)⟩ ⟨(83/256),(333/1024)⟩ := split_y ⟨(1363/2048),(341/512)⟩ ⟨(83/256),(333/1024)⟩ (665/2048) (leaf0131 s t r ex ey hm hex hey) (leaf0130 s t r ex ey hm hex hey)
  have node0065 : Holds P ⟨(681/1024),(341/512)⟩ ⟨(83/256),(333/1024)⟩ := split_x ⟨(681/1024),(341/512)⟩ ⟨(83/256),(333/1024)⟩ (1363/2048) (leaf0132 s t r ex ey hm hex hey) node0064
  have node0066 : Holds P ⟨(1363/2048),(341/512)⟩ ⟨(333/1024),(167/512)⟩ := split_y ⟨(1363/2048),(341/512)⟩ ⟨(333/1024),(167/512)⟩ (667/2048) (leaf0128 s t r ex ey hm hex hey) (leaf0127 s t r ex ey hm hex hey)
  have node0067 : Holds P ⟨(681/1024),(341/512)⟩ ⟨(333/1024),(167/512)⟩ := split_x ⟨(681/1024),(341/512)⟩ ⟨(333/1024),(167/512)⟩ (1363/2048) (leaf0129 s t r ex ey hm hex hey) node0066
  have node0068 : Holds P ⟨(681/1024),(341/512)⟩ ⟨(83/256),(167/512)⟩ := split_y ⟨(681/1024),(341/512)⟩ ⟨(83/256),(167/512)⟩ (333/1024) node0065 node0067
  have node0069 : Holds P ⟨(85/128),(341/512)⟩ ⟨(83/256),(167/512)⟩ := split_x ⟨(85/128),(341/512)⟩ ⟨(83/256),(167/512)⟩ (681/1024) (leaf0133 s t r ex ey hm hex hey) node0068
  have node0070 : Holds P ⟨(1363/2048),(341/512)⟩ ⟨(167/512),(335/1024)⟩ := split_y ⟨(1363/2048),(341/512)⟩ ⟨(167/512),(335/1024)⟩ (669/2048) (leaf0124 s t r ex ey hm hex hey) (leaf0123 s t r ex ey hm hex hey)
  have node0071 : Holds P ⟨(681/1024),(341/512)⟩ ⟨(167/512),(335/1024)⟩ := split_x ⟨(681/1024),(341/512)⟩ ⟨(167/512),(335/1024)⟩ (1363/2048) (leaf0125 s t r ex ey hm hex hey) node0070
  have node0072 : Holds P ⟨(1363/2048),(341/512)⟩ ⟨(335/1024),(21/64)⟩ := split_y ⟨(1363/2048),(341/512)⟩ ⟨(335/1024),(21/64)⟩ (671/2048) (leaf0121 s t r ex ey hm hex hey) (leaf0120 s t r ex ey hm hex hey)
  have node0073 : Holds P ⟨(681/1024),(341/512)⟩ ⟨(335/1024),(21/64)⟩ := split_x ⟨(681/1024),(341/512)⟩ ⟨(335/1024),(21/64)⟩ (1363/2048) (leaf0122 s t r ex ey hm hex hey) node0072
  have node0074 : Holds P ⟨(681/1024),(341/512)⟩ ⟨(167/512),(21/64)⟩ := split_y ⟨(681/1024),(341/512)⟩ ⟨(167/512),(21/64)⟩ (335/1024) node0071 node0073
  have node0075 : Holds P ⟨(85/128),(341/512)⟩ ⟨(167/512),(21/64)⟩ := split_x ⟨(85/128),(341/512)⟩ ⟨(167/512),(21/64)⟩ (681/1024) (leaf0126 s t r ex ey hm hex hey) node0074
  have node0076 : Holds P ⟨(85/128),(341/512)⟩ ⟨(83/256),(21/64)⟩ := split_y ⟨(85/128),(341/512)⟩ ⟨(83/256),(21/64)⟩ (167/512) node0069 node0075
  have node0077 : Holds P ⟨(341/512),(1365/2048)⟩ ⟨(83/256),(333/1024)⟩ := split_y ⟨(341/512),(1365/2048)⟩ ⟨(83/256),(333/1024)⟩ (665/2048) (leaf0119 s t r ex ey hm hex hey) (leaf0118 s t r ex ey hm hex hey)
  have node0078 : Holds P ⟨(1365/2048),(683/1024)⟩ ⟨(83/256),(333/1024)⟩ := split_y ⟨(1365/2048),(683/1024)⟩ ⟨(83/256),(333/1024)⟩ (665/2048) (leaf0117 s t r ex ey hm hex hey) (leaf0116 s t r ex ey hm hex hey)
  have node0079 : Holds P ⟨(341/512),(683/1024)⟩ ⟨(83/256),(333/1024)⟩ := split_x ⟨(341/512),(683/1024)⟩ ⟨(83/256),(333/1024)⟩ (1365/2048) node0077 node0078
  have node0080 : Holds P ⟨(341/512),(1365/2048)⟩ ⟨(333/1024),(167/512)⟩ := split_y ⟨(341/512),(1365/2048)⟩ ⟨(333/1024),(167/512)⟩ (667/2048) (leaf0115 s t r ex ey hm hex hey) (leaf0114 s t r ex ey hm hex hey)
  have node0081 : Holds P ⟨(1365/2048),(683/1024)⟩ ⟨(333/1024),(167/512)⟩ := split_y ⟨(1365/2048),(683/1024)⟩ ⟨(333/1024),(167/512)⟩ (667/2048) (leaf0113 s t r ex ey hm hex hey) (leaf0112 s t r ex ey hm hex hey)
  have node0082 : Holds P ⟨(341/512),(683/1024)⟩ ⟨(333/1024),(167/512)⟩ := split_x ⟨(341/512),(683/1024)⟩ ⟨(333/1024),(167/512)⟩ (1365/2048) node0080 node0081
  have node0083 : Holds P ⟨(341/512),(683/1024)⟩ ⟨(83/256),(167/512)⟩ := split_y ⟨(341/512),(683/1024)⟩ ⟨(83/256),(167/512)⟩ (333/1024) node0079 node0082
  have node0084 : Holds P ⟨(683/1024),(1367/2048)⟩ ⟨(83/256),(333/1024)⟩ := split_y ⟨(683/1024),(1367/2048)⟩ ⟨(83/256),(333/1024)⟩ (665/2048) (leaf0111 s t r ex ey hm hex hey) (leaf0110 s t r ex ey hm hex hey)
  have node0085 : Holds P ⟨(683/1024),(171/256)⟩ ⟨(83/256),(333/1024)⟩ := split_x ⟨(683/1024),(171/256)⟩ ⟨(83/256),(333/1024)⟩ (1367/2048) node0084 (leaf0109 s t r ex ey hm hex hey)
  have node0086 : Holds P ⟨(683/1024),(1367/2048)⟩ ⟨(333/1024),(167/512)⟩ := split_y ⟨(683/1024),(1367/2048)⟩ ⟨(333/1024),(167/512)⟩ (667/2048) (leaf0108 s t r ex ey hm hex hey) (leaf0107 s t r ex ey hm hex hey)
  have node0087 : Holds P ⟨(683/1024),(171/256)⟩ ⟨(333/1024),(167/512)⟩ := split_x ⟨(683/1024),(171/256)⟩ ⟨(333/1024),(167/512)⟩ (1367/2048) node0086 (leaf0106 s t r ex ey hm hex hey)
  have node0088 : Holds P ⟨(683/1024),(171/256)⟩ ⟨(83/256),(167/512)⟩ := split_y ⟨(683/1024),(171/256)⟩ ⟨(83/256),(167/512)⟩ (333/1024) node0085 node0087
  have node0089 : Holds P ⟨(341/512),(171/256)⟩ ⟨(83/256),(167/512)⟩ := split_x ⟨(341/512),(171/256)⟩ ⟨(83/256),(167/512)⟩ (683/1024) node0083 node0088
  have node0090 : Holds P ⟨(341/512),(1365/2048)⟩ ⟨(167/512),(335/1024)⟩ := split_y ⟨(341/512),(1365/2048)⟩ ⟨(167/512),(335/1024)⟩ (669/2048) (leaf0105 s t r ex ey hm hex hey) (leaf0104 s t r ex ey hm hex hey)
  have node0091 : Holds P ⟨(1365/2048),(683/1024)⟩ ⟨(167/512),(335/1024)⟩ := split_y ⟨(1365/2048),(683/1024)⟩ ⟨(167/512),(335/1024)⟩ (669/2048) (leaf0103 s t r ex ey hm hex hey) (leaf0102 s t r ex ey hm hex hey)
  have node0092 : Holds P ⟨(341/512),(683/1024)⟩ ⟨(167/512),(335/1024)⟩ := split_x ⟨(341/512),(683/1024)⟩ ⟨(167/512),(335/1024)⟩ (1365/2048) node0090 node0091
  have node0093 : Holds P ⟨(341/512),(1365/2048)⟩ ⟨(335/1024),(21/64)⟩ := split_y ⟨(341/512),(1365/2048)⟩ ⟨(335/1024),(21/64)⟩ (671/2048) (leaf0101 s t r ex ey hm hex hey) (leaf0100 s t r ex ey hm hex hey)
  have node0094 : Holds P ⟨(1365/2048),(683/1024)⟩ ⟨(335/1024),(21/64)⟩ := split_y ⟨(1365/2048),(683/1024)⟩ ⟨(335/1024),(21/64)⟩ (671/2048) (leaf0099 s t r ex ey hm hex hey) (leaf0098 s t r ex ey hm hex hey)
  have node0095 : Holds P ⟨(341/512),(683/1024)⟩ ⟨(335/1024),(21/64)⟩ := split_x ⟨(341/512),(683/1024)⟩ ⟨(335/1024),(21/64)⟩ (1365/2048) node0093 node0094
  have node0096 : Holds P ⟨(341/512),(683/1024)⟩ ⟨(167/512),(21/64)⟩ := split_y ⟨(341/512),(683/1024)⟩ ⟨(167/512),(21/64)⟩ (335/1024) node0092 node0095
  have node0097 : Holds P ⟨(683/1024),(1367/2048)⟩ ⟨(167/512),(335/1024)⟩ := split_y ⟨(683/1024),(1367/2048)⟩ ⟨(167/512),(335/1024)⟩ (669/2048) (leaf0097 s t r ex ey hm hex hey) (leaf0096 s t r ex ey hm hex hey)
  have node0098 : Holds P ⟨(683/1024),(171/256)⟩ ⟨(167/512),(335/1024)⟩ := split_x ⟨(683/1024),(171/256)⟩ ⟨(167/512),(335/1024)⟩ (1367/2048) node0097 (leaf0095 s t r ex ey hm hex hey)
  have node0099 : Holds P ⟨(683/1024),(1367/2048)⟩ ⟨(335/1024),(21/64)⟩ := split_y ⟨(683/1024),(1367/2048)⟩ ⟨(335/1024),(21/64)⟩ (671/2048) (leaf0094 s t r ex ey hm hex hey) (leaf0093 s t r ex ey hm hex hey)
  have node0100 : Holds P ⟨(683/1024),(171/256)⟩ ⟨(335/1024),(21/64)⟩ := split_x ⟨(683/1024),(171/256)⟩ ⟨(335/1024),(21/64)⟩ (1367/2048) node0099 (leaf0092 s t r ex ey hm hex hey)
  have node0101 : Holds P ⟨(683/1024),(171/256)⟩ ⟨(167/512),(21/64)⟩ := split_y ⟨(683/1024),(171/256)⟩ ⟨(167/512),(21/64)⟩ (335/1024) node0098 node0100
  have node0102 : Holds P ⟨(341/512),(171/256)⟩ ⟨(167/512),(21/64)⟩ := split_x ⟨(341/512),(171/256)⟩ ⟨(167/512),(21/64)⟩ (683/1024) node0096 node0101
  have node0103 : Holds P ⟨(341/512),(171/256)⟩ ⟨(83/256),(21/64)⟩ := split_y ⟨(341/512),(171/256)⟩ ⟨(83/256),(21/64)⟩ (167/512) node0089 node0102
  have node0104 : Holds P ⟨(85/128),(171/256)⟩ ⟨(83/256),(21/64)⟩ := split_x ⟨(85/128),(171/256)⟩ ⟨(83/256),(21/64)⟩ (341/512) node0076 node0103
  have node0105 : Holds P ⟨(85/128),(171/256)⟩ ⟨(41/128),(21/64)⟩ := split_y ⟨(85/128),(171/256)⟩ ⟨(41/128),(21/64)⟩ (83/256) node0063 node0104
  have node0106 : Holds P ⟨(85/128),(43/64)⟩ ⟨(41/128),(21/64)⟩ := split_x ⟨(85/128),(43/64)⟩ ⟨(41/128),(21/64)⟩ (171/256) node0105 (leaf0091 s t r ex ey hm hex hey)
  have node0107 : Holds P ⟨(85/128),(43/64)⟩ ⟨(5/16),(21/64)⟩ := split_y ⟨(85/128),(43/64)⟩ ⟨(5/16),(21/64)⟩ (41/128) node0037 node0106
  have node0108 : Holds P ⟨(21/32),(43/64)⟩ ⟨(5/16),(21/64)⟩ := split_x ⟨(21/32),(43/64)⟩ ⟨(5/16),(21/64)⟩ (85/128) node0030 node0107
  have node0109 : Holds P ⟨(21/32),(85/128)⟩ ⟨(21/64),(43/128)⟩ := split_x ⟨(21/32),(85/128)⟩ ⟨(21/64),(43/128)⟩ (169/256) (leaf0090 s t r ex ey hm hex hey) (leaf0089 s t r ex ey hm hex hey)
  have node0110 : Holds P ⟨(169/256),(85/128)⟩ ⟨(43/128),(11/32)⟩ := split_y ⟨(169/256),(85/128)⟩ ⟨(43/128),(11/32)⟩ (87/256) (leaf0087 s t r ex ey hm hex hey) (leaf0086 s t r ex ey hm hex hey)
  have node0111 : Holds P ⟨(21/32),(85/128)⟩ ⟨(43/128),(11/32)⟩ := split_x ⟨(21/32),(85/128)⟩ ⟨(43/128),(11/32)⟩ (169/256) (leaf0088 s t r ex ey hm hex hey) node0110
  have node0112 : Holds P ⟨(21/32),(85/128)⟩ ⟨(21/64),(11/32)⟩ := split_y ⟨(21/32),(85/128)⟩ ⟨(21/64),(11/32)⟩ (43/128) node0109 node0111
  have node0113 : Holds P ⟨(1363/2048),(341/512)⟩ ⟨(21/64),(337/1024)⟩ := split_y ⟨(1363/2048),(341/512)⟩ ⟨(21/64),(337/1024)⟩ (673/2048) (leaf0083 s t r ex ey hm hex hey) (leaf0082 s t r ex ey hm hex hey)
  have node0114 : Holds P ⟨(681/1024),(341/512)⟩ ⟨(21/64),(337/1024)⟩ := split_x ⟨(681/1024),(341/512)⟩ ⟨(21/64),(337/1024)⟩ (1363/2048) (leaf0084 s t r ex ey hm hex hey) node0113
  have node0115 : Holds P ⟨(681/1024),(341/512)⟩ ⟨(337/1024),(169/512)⟩ := split_x ⟨(681/1024),(341/512)⟩ ⟨(337/1024),(169/512)⟩ (1363/2048) (leaf0081 s t r ex ey hm hex hey) (leaf0080 s t r ex ey hm hex hey)
  have node0116 : Holds P ⟨(681/1024),(341/512)⟩ ⟨(21/64),(169/512)⟩ := split_y ⟨(681/1024),(341/512)⟩ ⟨(21/64),(169/512)⟩ (337/1024) node0114 node0115
  have node0117 : Holds P ⟨(85/128),(341/512)⟩ ⟨(21/64),(169/512)⟩ := split_x ⟨(85/128),(341/512)⟩ ⟨(21/64),(169/512)⟩ (681/1024) (leaf0085 s t r ex ey hm hex hey) node0116
  have node0118 : Holds P ⟨(681/1024),(341/512)⟩ ⟨(169/512),(85/256)⟩ := split_y ⟨(681/1024),(341/512)⟩ ⟨(169/512),(85/256)⟩ (339/1024) (leaf0078 s t r ex ey hm hex hey) (leaf0077 s t r ex ey hm hex hey)
  have node0119 : Holds P ⟨(85/128),(341/512)⟩ ⟨(169/512),(85/256)⟩ := split_x ⟨(85/128),(341/512)⟩ ⟨(169/512),(85/256)⟩ (681/1024) (leaf0079 s t r ex ey hm hex hey) node0118
  have node0120 : Holds P ⟨(85/128),(341/512)⟩ ⟨(21/64),(85/256)⟩ := split_y ⟨(85/128),(341/512)⟩ ⟨(21/64),(85/256)⟩ (169/512) node0117 node0119
  have node0121 : Holds P ⟨(341/512),(1365/2048)⟩ ⟨(21/64),(337/1024)⟩ := split_y ⟨(341/512),(1365/2048)⟩ ⟨(21/64),(337/1024)⟩ (673/2048) (leaf0076 s t r ex ey hm hex hey) (leaf0075 s t r ex ey hm hex hey)
  have node0122 : Holds P ⟨(1365/2048),(683/1024)⟩ ⟨(21/64),(337/1024)⟩ := split_y ⟨(1365/2048),(683/1024)⟩ ⟨(21/64),(337/1024)⟩ (673/2048) (leaf0074 s t r ex ey hm hex hey) (leaf0073 s t r ex ey hm hex hey)
  have node0123 : Holds P ⟨(341/512),(683/1024)⟩ ⟨(21/64),(337/1024)⟩ := split_x ⟨(341/512),(683/1024)⟩ ⟨(21/64),(337/1024)⟩ (1365/2048) node0121 node0122
  have node0124 : Holds P ⟨(341/512),(1365/2048)⟩ ⟨(337/1024),(169/512)⟩ := split_y ⟨(341/512),(1365/2048)⟩ ⟨(337/1024),(169/512)⟩ (675/2048) (leaf0072 s t r ex ey hm hex hey) (leaf0071 s t r ex ey hm hex hey)
  have node0125 : Holds P ⟨(1365/2048),(683/1024)⟩ ⟨(337/1024),(169/512)⟩ := split_y ⟨(1365/2048),(683/1024)⟩ ⟨(337/1024),(169/512)⟩ (675/2048) (leaf0070 s t r ex ey hm hex hey) (leaf0069 s t r ex ey hm hex hey)
  have node0126 : Holds P ⟨(341/512),(683/1024)⟩ ⟨(337/1024),(169/512)⟩ := split_x ⟨(341/512),(683/1024)⟩ ⟨(337/1024),(169/512)⟩ (1365/2048) node0124 node0125
  have node0127 : Holds P ⟨(341/512),(683/1024)⟩ ⟨(21/64),(169/512)⟩ := split_y ⟨(341/512),(683/1024)⟩ ⟨(21/64),(169/512)⟩ (337/1024) node0123 node0126
  have node0128 : Holds P ⟨(683/1024),(1367/2048)⟩ ⟨(21/64),(337/1024)⟩ := split_y ⟨(683/1024),(1367/2048)⟩ ⟨(21/64),(337/1024)⟩ (673/2048) (leaf0068 s t r ex ey hm hex hey) (leaf0067 s t r ex ey hm hex hey)
  have node0129 : Holds P ⟨(683/1024),(171/256)⟩ ⟨(21/64),(337/1024)⟩ := split_x ⟨(683/1024),(171/256)⟩ ⟨(21/64),(337/1024)⟩ (1367/2048) node0128 (leaf0066 s t r ex ey hm hex hey)
  have node0130 : Holds P ⟨(683/1024),(1367/2048)⟩ ⟨(337/1024),(169/512)⟩ := split_y ⟨(683/1024),(1367/2048)⟩ ⟨(337/1024),(169/512)⟩ (675/2048) (leaf0065 s t r ex ey hm hex hey) (leaf0064 s t r ex ey hm hex hey)
  have node0131 : Holds P ⟨(683/1024),(171/256)⟩ ⟨(337/1024),(169/512)⟩ := split_x ⟨(683/1024),(171/256)⟩ ⟨(337/1024),(169/512)⟩ (1367/2048) node0130 (leaf0063 s t r ex ey hm hex hey)
  have node0132 : Holds P ⟨(683/1024),(171/256)⟩ ⟨(21/64),(169/512)⟩ := split_y ⟨(683/1024),(171/256)⟩ ⟨(21/64),(169/512)⟩ (337/1024) node0129 node0131
  have node0133 : Holds P ⟨(341/512),(171/256)⟩ ⟨(21/64),(169/512)⟩ := split_x ⟨(341/512),(171/256)⟩ ⟨(21/64),(169/512)⟩ (683/1024) node0127 node0132
  have node0134 : Holds P ⟨(341/512),(683/1024)⟩ ⟨(169/512),(85/256)⟩ := split_y ⟨(341/512),(683/1024)⟩ ⟨(169/512),(85/256)⟩ (339/1024) (leaf0062 s t r ex ey hm hex hey) (leaf0061 s t r ex ey hm hex hey)
  have node0135 : Holds P ⟨(683/1024),(171/256)⟩ ⟨(169/512),(339/1024)⟩ := split_x ⟨(683/1024),(171/256)⟩ ⟨(169/512),(339/1024)⟩ (1367/2048) (leaf0060 s t r ex ey hm hex hey) (leaf0059 s t r ex ey hm hex hey)
  have node0136 : Holds P ⟨(683/1024),(171/256)⟩ ⟨(169/512),(85/256)⟩ := split_y ⟨(683/1024),(171/256)⟩ ⟨(169/512),(85/256)⟩ (339/1024) node0135 (leaf0058 s t r ex ey hm hex hey)
  have node0137 : Holds P ⟨(341/512),(171/256)⟩ ⟨(169/512),(85/256)⟩ := split_x ⟨(341/512),(171/256)⟩ ⟨(169/512),(85/256)⟩ (683/1024) node0134 node0136
  have node0138 : Holds P ⟨(341/512),(171/256)⟩ ⟨(21/64),(85/256)⟩ := split_y ⟨(341/512),(171/256)⟩ ⟨(21/64),(85/256)⟩ (169/512) node0133 node0137
  have node0139 : Holds P ⟨(85/128),(171/256)⟩ ⟨(21/64),(85/256)⟩ := split_x ⟨(85/128),(171/256)⟩ ⟨(21/64),(85/256)⟩ (341/512) node0120 node0138
  have node0140 : Holds P ⟨(85/128),(341/512)⟩ ⟨(85/256),(43/128)⟩ := split_y ⟨(85/128),(341/512)⟩ ⟨(85/256),(43/128)⟩ (171/512) (leaf0057 s t r ex ey hm hex hey) (leaf0056 s t r ex ey hm hex hey)
  have node0141 : Holds P ⟨(341/512),(171/256)⟩ ⟨(85/256),(171/512)⟩ := split_x ⟨(341/512),(171/256)⟩ ⟨(85/256),(171/512)⟩ (683/1024) (leaf0055 s t r ex ey hm hex hey) (leaf0054 s t r ex ey hm hex hey)
  have node0142 : Holds P ⟨(341/512),(171/256)⟩ ⟨(85/256),(43/128)⟩ := split_y ⟨(341/512),(171/256)⟩ ⟨(85/256),(43/128)⟩ (171/512) node0141 (leaf0053 s t r ex ey hm hex hey)
  have node0143 : Holds P ⟨(85/128),(171/256)⟩ ⟨(85/256),(43/128)⟩ := split_x ⟨(85/128),(171/256)⟩ ⟨(85/256),(43/128)⟩ (341/512) node0140 node0142
  have node0144 : Holds P ⟨(85/128),(171/256)⟩ ⟨(21/64),(43/128)⟩ := split_y ⟨(85/128),(171/256)⟩ ⟨(21/64),(43/128)⟩ (85/256) node0139 node0143
  have node0145 : Holds P ⟨(85/128),(43/64)⟩ ⟨(21/64),(43/128)⟩ := split_x ⟨(85/128),(43/64)⟩ ⟨(21/64),(43/128)⟩ (171/256) node0144 (leaf0052 s t r ex ey hm hex hey)
  have node0146 : Holds P ⟨(85/128),(171/256)⟩ ⟨(43/128),(11/32)⟩ := split_y ⟨(85/128),(171/256)⟩ ⟨(43/128),(11/32)⟩ (87/256) (leaf0051 s t r ex ey hm hex hey) (leaf0050 s t r ex ey hm hex hey)
  have node0147 : Holds P ⟨(85/128),(43/64)⟩ ⟨(43/128),(11/32)⟩ := split_x ⟨(85/128),(43/64)⟩ ⟨(43/128),(11/32)⟩ (171/256) node0146 (leaf0049 s t r ex ey hm hex hey)
  have node0148 : Holds P ⟨(85/128),(43/64)⟩ ⟨(21/64),(11/32)⟩ := split_y ⟨(85/128),(43/64)⟩ ⟨(21/64),(11/32)⟩ (43/128) node0145 node0147
  have node0149 : Holds P ⟨(21/32),(43/64)⟩ ⟨(21/64),(11/32)⟩ := split_x ⟨(21/32),(43/64)⟩ ⟨(21/64),(11/32)⟩ (85/128) node0112 node0148
  have node0150 : Holds P ⟨(21/32),(43/64)⟩ ⟨(5/16),(11/32)⟩ := split_y ⟨(21/32),(43/64)⟩ ⟨(5/16),(11/32)⟩ (21/64) node0108 node0149
  have node0151 : Holds P ⟨(21/32),(11/16)⟩ ⟨(5/16),(11/32)⟩ := split_x ⟨(21/32),(11/16)⟩ ⟨(5/16),(11/32)⟩ (43/64) node0150 (leaf0048 s t r ex ey hm hex hey)
  have node0152 : Holds P ⟨(21/32),(85/128)⟩ ⟨(11/32),(23/64)⟩ := split_y ⟨(21/32),(85/128)⟩ ⟨(11/32),(23/64)⟩ (45/128) (leaf0047 s t r ex ey hm hex hey) (leaf0046 s t r ex ey hm hex hey)
  have node0153 : Holds P ⟨(85/128),(43/64)⟩ ⟨(11/32),(45/128)⟩ := split_x ⟨(85/128),(43/64)⟩ ⟨(11/32),(45/128)⟩ (171/256) (leaf0045 s t r ex ey hm hex hey) (leaf0044 s t r ex ey hm hex hey)
  have node0154 : Holds P ⟨(85/128),(43/64)⟩ ⟨(11/32),(23/64)⟩ := split_y ⟨(85/128),(43/64)⟩ ⟨(11/32),(23/64)⟩ (45/128) node0153 (leaf0043 s t r ex ey hm hex hey)
  have node0155 : Holds P ⟨(21/32),(43/64)⟩ ⟨(11/32),(23/64)⟩ := split_x ⟨(21/32),(43/64)⟩ ⟨(11/32),(23/64)⟩ (85/128) node0152 node0154
  have node0156 : Holds P ⟨(21/32),(43/64)⟩ ⟨(23/64),(3/8)⟩ := split_x ⟨(21/32),(43/64)⟩ ⟨(23/64),(3/8)⟩ (85/128) (leaf0042 s t r ex ey hm hex hey) (leaf0041 s t r ex ey hm hex hey)
  have node0157 : Holds P ⟨(21/32),(43/64)⟩ ⟨(11/32),(3/8)⟩ := split_y ⟨(21/32),(43/64)⟩ ⟨(11/32),(3/8)⟩ (23/64) node0155 node0156
  have node0158 : Holds P ⟨(21/32),(11/16)⟩ ⟨(11/32),(3/8)⟩ := split_x ⟨(21/32),(11/16)⟩ ⟨(11/32),(3/8)⟩ (43/64) node0157 (leaf0040 s t r ex ey hm hex hey)
  have node0159 : Holds P ⟨(21/32),(11/16)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(21/32),(11/16)⟩ ⟨(5/16),(3/8)⟩ (11/32) node0151 node0158
  have node0160 : Holds P ⟨(5/8),(11/16)⟩ ⟨(5/16),(3/8)⟩ := split_x ⟨(5/8),(11/16)⟩ ⟨(5/16),(3/8)⟩ (21/32) node0029 node0159
  have node0161 : Holds P ⟨(5/8),(11/16)⟩ ⟨(1/4),(3/8)⟩ := split_y ⟨(5/8),(11/16)⟩ ⟨(1/4),(3/8)⟩ (5/16) node0022 node0160
  have node0162 : Holds P ⟨(5/8),(3/4)⟩ ⟨(1/4),(3/8)⟩ := split_x ⟨(5/8),(3/4)⟩ ⟨(1/4),(3/8)⟩ (11/16) node0161 (leaf0039 s t r ex ey hm hex hey)
  exact node0162
#print axioms tile42
theorem tile43 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(3/4)⟩ ⟨(3/8),(1/2)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/8),(21/32)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(5/8),(21/32)⟩ ⟨(3/8),(13/32)⟩ (41/64) (leaf0038 s t r ex ey hm hex hey) (leaf0037 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/8),(21/32)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(5/8),(21/32)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0000 (leaf0036 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(21/32),(11/16)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(21/32),(11/16)⟩ ⟨(3/8),(13/32)⟩ (43/64) (leaf0035 s t r ex ey hm hex hey) (leaf0034 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(21/32),(11/16)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(21/32),(11/16)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0002 (leaf0033 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(5/8),(11/16)⟩ ⟨(3/8),(7/16)⟩ := split_x ⟨(5/8),(11/16)⟩ ⟨(3/8),(7/16)⟩ (21/32) node0001 node0003
  have node0005 : Holds P ⟨(21/32),(11/16)⟩ ⟨(7/16),(1/2)⟩ := split_y ⟨(21/32),(11/16)⟩ ⟨(7/16),(1/2)⟩ (15/32) (leaf0031 s t r ex ey hm hex hey) (leaf0030 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(5/8),(11/16)⟩ ⟨(7/16),(1/2)⟩ := split_x ⟨(5/8),(11/16)⟩ ⟨(7/16),(1/2)⟩ (21/32) (leaf0032 s t r ex ey hm hex hey) node0005
  have node0007 : Holds P ⟨(5/8),(11/16)⟩ ⟨(3/8),(1/2)⟩ := split_y ⟨(5/8),(11/16)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0004 node0006
  have node0008 : Holds P ⟨(5/8),(3/4)⟩ ⟨(3/8),(1/2)⟩ := split_x ⟨(5/8),(3/4)⟩ ⟨(3/8),(1/2)⟩ (11/16) node0007 (leaf0029 s t r ex ey hm hex hey)
  exact node0008
#print axioms tile43
theorem tile44 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(3/4)⟩ ⟨(1/2),(5/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/8),(11/16)⟩ ⟨(1/2),(9/16)⟩ := split_x ⟨(5/8),(11/16)⟩ ⟨(1/2),(9/16)⟩ (21/32) (leaf0028 s t r ex ey hm hex hey) (leaf0027 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/8),(11/16)⟩ ⟨(1/2),(5/8)⟩ := split_y ⟨(5/8),(11/16)⟩ ⟨(1/2),(5/8)⟩ (9/16) node0000 (leaf0026 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(5/8),(3/4)⟩ ⟨(1/2),(5/8)⟩ := split_x ⟨(5/8),(3/4)⟩ ⟨(1/2),(5/8)⟩ (11/16) node0001 (leaf0025 s t r ex ey hm hex hey)
  exact node0002
#print axioms tile44
theorem tile45 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(3/4)⟩ ⟨(5/8),(3/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/8),(11/16)⟩ ⟨(5/8),(3/4)⟩ := split_y ⟨(5/8),(11/16)⟩ ⟨(5/8),(3/4)⟩ (11/16) (leaf0024 s t r ex ey hm hex hey) (leaf0023 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/8),(3/4)⟩ ⟨(5/8),(3/4)⟩ := split_x ⟨(5/8),(3/4)⟩ ⟨(5/8),(3/4)⟩ (11/16) node0000 (leaf0022 s t r ex ey hm hex hey)
  exact node0001
#print axioms tile45
theorem tile46 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(3/4)⟩ ⟨(3/4),(7/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/8),(11/16)⟩ ⟨(3/4),(7/8)⟩ := split_y ⟨(5/8),(11/16)⟩ ⟨(3/4),(7/8)⟩ (13/16) (leaf0021 s t r ex ey hm hex hey) (leaf0020 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/8),(3/4)⟩ ⟨(3/4),(7/8)⟩ := split_x ⟨(5/8),(3/4)⟩ ⟨(3/4),(7/8)⟩ (11/16) node0000 (leaf0019 s t r ex ey hm hex hey)
  exact node0001
#print axioms tile46
theorem tile47 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(3/4)⟩ ⟨(7/8),1⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/8),(11/16)⟩ ⟨(7/8),1⟩ := split_y ⟨(5/8),(11/16)⟩ ⟨(7/8),1⟩ (15/16) (leaf0018 s t r ex ey hm hex hey) (leaf0017 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/8),(3/4)⟩ ⟨(7/8),1⟩ := split_x ⟨(5/8),(3/4)⟩ ⟨(7/8),1⟩ (11/16) node0000 (leaf0016 s t r ex ey hm hex hey)
  exact node0001
#print axioms tile47
end ShoulderRoot1Angular20261003
