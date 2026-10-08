import AngularLeaf
import Root0CoverData
import Root0Leaves15
import Root0Leaves16
import Root0Leaves17
import Root0Leaves18
import Root0Leaves19
import Root0Leaves20
import Root0Leaves21
import Root0Leaves22
import Root0Leaves23
import Root0Leaves24
import Root0Leaves25
import Root0Leaves26
import Root0Leaves27
import Root0Leaves28
import Root0Leaves29
import Root0Leaves30
import Root0Leaves31
import Root0Leaves32
import Root0Leaves33
import Root0Leaves34
import Root0Leaves35
import Root0Leaves36
import Root0Leaves37
import Root0Leaves38
import Root0Leaves39
import Root0Leaves40
import Root0Leaves41
import Root0Leaves42
import Root0Leaves43
import Root0Leaves44
import Root0Leaves45
import Root0Leaves46
import Root0Leaves47
import Root0Leaves48
import Root0Leaves49
import Root0Leaves50
import Root0Leaves51
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile16 : LeafStatement moments EX EY hull0 hull1 ⟨(1/4),(3/8)⟩ ⟨0,(1/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/4),(9/32)⟩ ⟨0,(1/16)⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨0,(1/16)⟩ (1/32) (leaf1247 s t r ex ey hm hex hey) (leaf1246 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(19/64),(5/16)⟩ ⟨0,(1/32)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨0,(1/32)⟩ (1/64) (leaf1244 s t r ex ey hm hex hey) (leaf1243 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(9/32),(5/16)⟩ ⟨0,(1/32)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨0,(1/32)⟩ (19/64) (leaf1245 s t r ex ey hm hex hey) node0001
  have node0003 : Holds P ⟨(19/64),(5/16)⟩ ⟨(1/32),(1/16)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(1/32),(1/16)⟩ (3/64) (leaf1241 s t r ex ey hm hex hey) (leaf1240 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(9/32),(5/16)⟩ ⟨(1/32),(1/16)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(1/32),(1/16)⟩ (19/64) (leaf1242 s t r ex ey hm hex hey) node0003
  have node0005 : Holds P ⟨(9/32),(5/16)⟩ ⟨0,(1/16)⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨0,(1/16)⟩ (1/32) node0002 node0004
  have node0006 : Holds P ⟨(1/4),(5/16)⟩ ⟨0,(1/16)⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨0,(1/16)⟩ (9/32) node0000 node0005
  have node0007 : Holds P ⟨(1/4),(9/32)⟩ ⟨(1/16),(1/8)⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨(1/16),(1/8)⟩ (3/32) (leaf1239 s t r ex ey hm hex hey) (leaf1238 s t r ex ey hm hex hey)
  have node0008 : Holds P ⟨(19/64),(5/16)⟩ ⟨(1/16),(3/32)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(1/16),(3/32)⟩ (5/64) (leaf1236 s t r ex ey hm hex hey) (leaf1235 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(9/32),(5/16)⟩ ⟨(1/16),(3/32)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(1/16),(3/32)⟩ (19/64) (leaf1237 s t r ex ey hm hex hey) node0008
  have node0010 : Holds P ⟨(19/64),(5/16)⟩ ⟨(3/32),(1/8)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(3/32),(1/8)⟩ (7/64) (leaf1233 s t r ex ey hm hex hey) (leaf1232 s t r ex ey hm hex hey)
  have node0011 : Holds P ⟨(9/32),(5/16)⟩ ⟨(3/32),(1/8)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(3/32),(1/8)⟩ (19/64) (leaf1234 s t r ex ey hm hex hey) node0010
  have node0012 : Holds P ⟨(9/32),(5/16)⟩ ⟨(1/16),(1/8)⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨(1/16),(1/8)⟩ (3/32) node0009 node0011
  have node0013 : Holds P ⟨(1/4),(5/16)⟩ ⟨(1/16),(1/8)⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨(1/16),(1/8)⟩ (9/32) node0007 node0012
  have node0014 : Holds P ⟨(1/4),(5/16)⟩ ⟨0,(1/8)⟩ := split_y ⟨(1/4),(5/16)⟩ ⟨0,(1/8)⟩ (1/16) node0006 node0013
  have node0015 : Holds P ⟨(5/16),(21/64)⟩ ⟨0,(1/32)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨0,(1/32)⟩ (1/64) (leaf1231 s t r ex ey hm hex hey) (leaf1230 s t r ex ey hm hex hey)
  have node0016 : Holds P ⟨(21/64),(11/32)⟩ ⟨0,(1/32)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨0,(1/32)⟩ (1/64) (leaf1229 s t r ex ey hm hex hey) (leaf1228 s t r ex ey hm hex hey)
  have node0017 : Holds P ⟨(5/16),(11/32)⟩ ⟨0,(1/32)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨0,(1/32)⟩ (21/64) node0015 node0016
  have node0018 : Holds P ⟨(5/16),(21/64)⟩ ⟨(1/32),(1/16)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(1/32),(1/16)⟩ (3/64) (leaf1227 s t r ex ey hm hex hey) (leaf1226 s t r ex ey hm hex hey)
  have node0019 : Holds P ⟨(21/64),(11/32)⟩ ⟨(1/32),(1/16)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(1/32),(1/16)⟩ (3/64) (leaf1225 s t r ex ey hm hex hey) (leaf1224 s t r ex ey hm hex hey)
  have node0020 : Holds P ⟨(5/16),(11/32)⟩ ⟨(1/32),(1/16)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(1/32),(1/16)⟩ (21/64) node0018 node0019
  have node0021 : Holds P ⟨(5/16),(11/32)⟩ ⟨0,(1/16)⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨0,(1/16)⟩ (1/32) node0017 node0020
  have node0022 : Holds P ⟨(11/32),(23/64)⟩ ⟨0,(1/64)⟩ := split_x ⟨(11/32),(23/64)⟩ ⟨0,(1/64)⟩ (45/128) (leaf1223 s t r ex ey hm hex hey) (leaf1222 s t r ex ey hm hex hey)
  have node0023 : Holds P ⟨(11/32),(23/64)⟩ ⟨0,(1/32)⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨0,(1/32)⟩ (1/64) node0022 (leaf1221 s t r ex ey hm hex hey)
  have node0024 : Holds P ⟨(11/32),(3/8)⟩ ⟨0,(1/32)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨0,(1/32)⟩ (23/64) node0023 (leaf1220 s t r ex ey hm hex hey)
  have node0025 : Holds P ⟨(11/32),(23/64)⟩ ⟨(1/32),(1/16)⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨(1/32),(1/16)⟩ (3/64) (leaf1219 s t r ex ey hm hex hey) (leaf1218 s t r ex ey hm hex hey)
  have node0026 : Holds P ⟨(11/32),(3/8)⟩ ⟨(1/32),(1/16)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(1/32),(1/16)⟩ (23/64) node0025 (leaf1217 s t r ex ey hm hex hey)
  have node0027 : Holds P ⟨(11/32),(3/8)⟩ ⟨0,(1/16)⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨0,(1/16)⟩ (1/32) node0024 node0026
  have node0028 : Holds P ⟨(5/16),(3/8)⟩ ⟨0,(1/16)⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨0,(1/16)⟩ (11/32) node0021 node0027
  have node0029 : Holds P ⟨(5/16),(21/64)⟩ ⟨(1/16),(3/32)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(1/16),(3/32)⟩ (5/64) (leaf1216 s t r ex ey hm hex hey) (leaf1215 s t r ex ey hm hex hey)
  have node0030 : Holds P ⟨(21/64),(11/32)⟩ ⟨(1/16),(3/32)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(1/16),(3/32)⟩ (5/64) (leaf1214 s t r ex ey hm hex hey) (leaf1213 s t r ex ey hm hex hey)
  have node0031 : Holds P ⟨(5/16),(11/32)⟩ ⟨(1/16),(3/32)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(1/16),(3/32)⟩ (21/64) node0029 node0030
  have node0032 : Holds P ⟨(5/16),(21/64)⟩ ⟨(3/32),(7/64)⟩ := split_x ⟨(5/16),(21/64)⟩ ⟨(3/32),(7/64)⟩ (41/128) (leaf1212 s t r ex ey hm hex hey) (leaf1211 s t r ex ey hm hex hey)
  have node0033 : Holds P ⟨(41/128),(21/64)⟩ ⟨(7/64),(1/8)⟩ := split_y ⟨(41/128),(21/64)⟩ ⟨(7/64),(1/8)⟩ (15/128) (leaf1209 s t r ex ey hm hex hey) (leaf1208 s t r ex ey hm hex hey)
  have node0034 : Holds P ⟨(5/16),(21/64)⟩ ⟨(7/64),(1/8)⟩ := split_x ⟨(5/16),(21/64)⟩ ⟨(7/64),(1/8)⟩ (41/128) (leaf1210 s t r ex ey hm hex hey) node0033
  have node0035 : Holds P ⟨(5/16),(21/64)⟩ ⟨(3/32),(1/8)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(3/32),(1/8)⟩ (7/64) node0032 node0034
  have node0036 : Holds P ⟨(21/64),(11/32)⟩ ⟨(3/32),(7/64)⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(3/32),(7/64)⟩ (43/128) (leaf1207 s t r ex ey hm hex hey) (leaf1206 s t r ex ey hm hex hey)
  have node0037 : Holds P ⟨(21/64),(43/128)⟩ ⟨(7/64),(1/8)⟩ := split_y ⟨(21/64),(43/128)⟩ ⟨(7/64),(1/8)⟩ (15/128) (leaf1205 s t r ex ey hm hex hey) (leaf1204 s t r ex ey hm hex hey)
  have node0038 : Holds P ⟨(21/64),(11/32)⟩ ⟨(7/64),(1/8)⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(7/64),(1/8)⟩ (43/128) node0037 (leaf1203 s t r ex ey hm hex hey)
  have node0039 : Holds P ⟨(21/64),(11/32)⟩ ⟨(3/32),(1/8)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(3/32),(1/8)⟩ (7/64) node0036 node0038
  have node0040 : Holds P ⟨(5/16),(11/32)⟩ ⟨(3/32),(1/8)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(3/32),(1/8)⟩ (21/64) node0035 node0039
  have node0041 : Holds P ⟨(5/16),(11/32)⟩ ⟨(1/16),(1/8)⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨(1/16),(1/8)⟩ (3/32) node0031 node0040
  have node0042 : Holds P ⟨(11/32),(23/64)⟩ ⟨(1/16),(3/32)⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨(1/16),(3/32)⟩ (5/64) (leaf1202 s t r ex ey hm hex hey) (leaf1201 s t r ex ey hm hex hey)
  have node0043 : Holds P ⟨(11/32),(3/8)⟩ ⟨(1/16),(3/32)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(1/16),(3/32)⟩ (23/64) node0042 (leaf1200 s t r ex ey hm hex hey)
  have node0044 : Holds P ⟨(11/32),(23/64)⟩ ⟨(7/64),(1/8)⟩ := split_x ⟨(11/32),(23/64)⟩ ⟨(7/64),(1/8)⟩ (45/128) (leaf1198 s t r ex ey hm hex hey) (leaf1197 s t r ex ey hm hex hey)
  have node0045 : Holds P ⟨(11/32),(23/64)⟩ ⟨(3/32),(1/8)⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨(3/32),(1/8)⟩ (7/64) (leaf1199 s t r ex ey hm hex hey) node0044
  have node0046 : Holds P ⟨(11/32),(3/8)⟩ ⟨(3/32),(1/8)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(3/32),(1/8)⟩ (23/64) node0045 (leaf1196 s t r ex ey hm hex hey)
  have node0047 : Holds P ⟨(11/32),(3/8)⟩ ⟨(1/16),(1/8)⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨(1/16),(1/8)⟩ (3/32) node0043 node0046
  have node0048 : Holds P ⟨(5/16),(3/8)⟩ ⟨(1/16),(1/8)⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨(1/16),(1/8)⟩ (11/32) node0041 node0047
  have node0049 : Holds P ⟨(5/16),(3/8)⟩ ⟨0,(1/8)⟩ := split_y ⟨(5/16),(3/8)⟩ ⟨0,(1/8)⟩ (1/16) node0028 node0048
  have node0050 : Holds P ⟨(1/4),(3/8)⟩ ⟨0,(1/8)⟩ := split_x ⟨(1/4),(3/8)⟩ ⟨0,(1/8)⟩ (5/16) node0014 node0049
  exact node0050
#print axioms tile16
end Root0Angular20261003

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile17 : LeafStatement moments EX EY hull0 hull1 ⟨(1/4),(3/8)⟩ ⟨(1/8),(1/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/4),(9/32)⟩ ⟨(1/8),(3/16)⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨(1/8),(3/16)⟩ (5/32) (leaf1195 s t r ex ey hm hex hey) (leaf1194 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(19/64),(5/16)⟩ ⟨(1/8),(5/32)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(1/8),(5/32)⟩ (9/64) (leaf1192 s t r ex ey hm hex hey) (leaf1191 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(9/32),(5/16)⟩ ⟨(1/8),(5/32)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(1/8),(5/32)⟩ (19/64) (leaf1193 s t r ex ey hm hex hey) node0001
  have node0003 : Holds P ⟨(19/64),(5/16)⟩ ⟨(5/32),(3/16)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(5/32),(3/16)⟩ (11/64) (leaf1189 s t r ex ey hm hex hey) (leaf1188 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(9/32),(5/16)⟩ ⟨(5/32),(3/16)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(5/32),(3/16)⟩ (19/64) (leaf1190 s t r ex ey hm hex hey) node0003
  have node0005 : Holds P ⟨(9/32),(5/16)⟩ ⟨(1/8),(3/16)⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨(1/8),(3/16)⟩ (5/32) node0002 node0004
  have node0006 : Holds P ⟨(1/4),(5/16)⟩ ⟨(1/8),(3/16)⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨(1/8),(3/16)⟩ (9/32) node0000 node0005
  have node0007 : Holds P ⟨(1/4),(9/32)⟩ ⟨(3/16),(1/4)⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨(3/16),(1/4)⟩ (7/32) (leaf1187 s t r ex ey hm hex hey) (leaf1186 s t r ex ey hm hex hey)
  have node0008 : Holds P ⟨(19/64),(5/16)⟩ ⟨(3/16),(7/32)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(3/16),(7/32)⟩ (13/64) (leaf1184 s t r ex ey hm hex hey) (leaf1183 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(9/32),(5/16)⟩ ⟨(3/16),(7/32)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(3/16),(7/32)⟩ (19/64) (leaf1185 s t r ex ey hm hex hey) node0008
  have node0010 : Holds P ⟨(19/64),(5/16)⟩ ⟨(7/32),(1/4)⟩ := split_y ⟨(19/64),(5/16)⟩ ⟨(7/32),(1/4)⟩ (15/64) (leaf1181 s t r ex ey hm hex hey) (leaf1180 s t r ex ey hm hex hey)
  have node0011 : Holds P ⟨(9/32),(5/16)⟩ ⟨(7/32),(1/4)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(7/32),(1/4)⟩ (19/64) (leaf1182 s t r ex ey hm hex hey) node0010
  have node0012 : Holds P ⟨(9/32),(5/16)⟩ ⟨(3/16),(1/4)⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨(3/16),(1/4)⟩ (7/32) node0009 node0011
  have node0013 : Holds P ⟨(1/4),(5/16)⟩ ⟨(3/16),(1/4)⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨(3/16),(1/4)⟩ (9/32) node0007 node0012
  have node0014 : Holds P ⟨(1/4),(5/16)⟩ ⟨(1/8),(1/4)⟩ := split_y ⟨(1/4),(5/16)⟩ ⟨(1/8),(1/4)⟩ (3/16) node0006 node0013
  have node0015 : Holds P ⟨(41/128),(21/64)⟩ ⟨(17/128),(9/64)⟩ := split_x ⟨(41/128),(21/64)⟩ ⟨(17/128),(9/64)⟩ (83/256) (leaf1177 s t r ex ey hm hex hey) (leaf1176 s t r ex ey hm hex hey)
  have node0016 : Holds P ⟨(41/128),(21/64)⟩ ⟨(1/8),(9/64)⟩ := split_y ⟨(41/128),(21/64)⟩ ⟨(1/8),(9/64)⟩ (17/128) (leaf1178 s t r ex ey hm hex hey) node0015
  have node0017 : Holds P ⟨(5/16),(21/64)⟩ ⟨(1/8),(9/64)⟩ := split_x ⟨(5/16),(21/64)⟩ ⟨(1/8),(9/64)⟩ (41/128) (leaf1179 s t r ex ey hm hex hey) node0016
  have node0018 : Holds P ⟨(83/256),(21/64)⟩ ⟨(9/64),(19/128)⟩ := split_y ⟨(83/256),(21/64)⟩ ⟨(9/64),(19/128)⟩ (37/256) (leaf1173 s t r ex ey hm hex hey) (leaf1172 s t r ex ey hm hex hey)
  have node0019 : Holds P ⟨(41/128),(21/64)⟩ ⟨(9/64),(19/128)⟩ := split_x ⟨(41/128),(21/64)⟩ ⟨(9/64),(19/128)⟩ (83/256) (leaf1174 s t r ex ey hm hex hey) node0018
  have node0020 : Holds P ⟨(83/256),(21/64)⟩ ⟨(19/128),(5/32)⟩ := split_y ⟨(83/256),(21/64)⟩ ⟨(19/128),(5/32)⟩ (39/256) (leaf1170 s t r ex ey hm hex hey) (leaf1169 s t r ex ey hm hex hey)
  have node0021 : Holds P ⟨(41/128),(21/64)⟩ ⟨(19/128),(5/32)⟩ := split_x ⟨(41/128),(21/64)⟩ ⟨(19/128),(5/32)⟩ (83/256) (leaf1171 s t r ex ey hm hex hey) node0020
  have node0022 : Holds P ⟨(41/128),(21/64)⟩ ⟨(9/64),(5/32)⟩ := split_y ⟨(41/128),(21/64)⟩ ⟨(9/64),(5/32)⟩ (19/128) node0019 node0021
  have node0023 : Holds P ⟨(5/16),(21/64)⟩ ⟨(9/64),(5/32)⟩ := split_x ⟨(5/16),(21/64)⟩ ⟨(9/64),(5/32)⟩ (41/128) (leaf1175 s t r ex ey hm hex hey) node0022
  have node0024 : Holds P ⟨(5/16),(21/64)⟩ ⟨(1/8),(5/32)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(1/8),(5/32)⟩ (9/64) node0017 node0023
  have node0025 : Holds P ⟨(21/64),(43/128)⟩ ⟨(17/128),(9/64)⟩ := split_x ⟨(21/64),(43/128)⟩ ⟨(17/128),(9/64)⟩ (85/256) (leaf1167 s t r ex ey hm hex hey) (leaf1166 s t r ex ey hm hex hey)
  have node0026 : Holds P ⟨(21/64),(43/128)⟩ ⟨(1/8),(9/64)⟩ := split_y ⟨(21/64),(43/128)⟩ ⟨(1/8),(9/64)⟩ (17/128) (leaf1168 s t r ex ey hm hex hey) node0025
  have node0027 : Holds P ⟨(43/128),(11/32)⟩ ⟨(17/128),(9/64)⟩ := split_x ⟨(43/128),(11/32)⟩ ⟨(17/128),(9/64)⟩ (87/256) (leaf1164 s t r ex ey hm hex hey) (leaf1163 s t r ex ey hm hex hey)
  have node0028 : Holds P ⟨(43/128),(11/32)⟩ ⟨(1/8),(9/64)⟩ := split_y ⟨(43/128),(11/32)⟩ ⟨(1/8),(9/64)⟩ (17/128) (leaf1165 s t r ex ey hm hex hey) node0027
  have node0029 : Holds P ⟨(21/64),(11/32)⟩ ⟨(1/8),(9/64)⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(1/8),(9/64)⟩ (43/128) node0026 node0028
  have node0030 : Holds P ⟨(21/64),(85/256)⟩ ⟨(9/64),(19/128)⟩ := split_y ⟨(21/64),(85/256)⟩ ⟨(9/64),(19/128)⟩ (37/256) (leaf1162 s t r ex ey hm hex hey) (leaf1161 s t r ex ey hm hex hey)
  have node0031 : Holds P ⟨(85/256),(43/128)⟩ ⟨(9/64),(19/128)⟩ := split_y ⟨(85/256),(43/128)⟩ ⟨(9/64),(19/128)⟩ (37/256) (leaf1160 s t r ex ey hm hex hey) (leaf1159 s t r ex ey hm hex hey)
  have node0032 : Holds P ⟨(21/64),(43/128)⟩ ⟨(9/64),(19/128)⟩ := split_x ⟨(21/64),(43/128)⟩ ⟨(9/64),(19/128)⟩ (85/256) node0030 node0031
  have node0033 : Holds P ⟨(21/64),(85/256)⟩ ⟨(19/128),(39/256)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(19/128),(39/256)⟩ (169/512) (leaf1158 s t r ex ey hm hex hey) (leaf1157 s t r ex ey hm hex hey)
  have node0034 : Holds P ⟨(21/64),(85/256)⟩ ⟨(39/256),(5/32)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(39/256),(5/32)⟩ (169/512) (leaf1156 s t r ex ey hm hex hey) (leaf1155 s t r ex ey hm hex hey)
  have node0035 : Holds P ⟨(21/64),(85/256)⟩ ⟨(19/128),(5/32)⟩ := split_y ⟨(21/64),(85/256)⟩ ⟨(19/128),(5/32)⟩ (39/256) node0033 node0034
  have node0036 : Holds P ⟨(85/256),(43/128)⟩ ⟨(39/256),(5/32)⟩ := split_x ⟨(85/256),(43/128)⟩ ⟨(39/256),(5/32)⟩ (171/512) (leaf1153 s t r ex ey hm hex hey) (leaf1152 s t r ex ey hm hex hey)
  have node0037 : Holds P ⟨(85/256),(43/128)⟩ ⟨(19/128),(5/32)⟩ := split_y ⟨(85/256),(43/128)⟩ ⟨(19/128),(5/32)⟩ (39/256) (leaf1154 s t r ex ey hm hex hey) node0036
  have node0038 : Holds P ⟨(21/64),(43/128)⟩ ⟨(19/128),(5/32)⟩ := split_x ⟨(21/64),(43/128)⟩ ⟨(19/128),(5/32)⟩ (85/256) node0035 node0037
  have node0039 : Holds P ⟨(21/64),(43/128)⟩ ⟨(9/64),(5/32)⟩ := split_y ⟨(21/64),(43/128)⟩ ⟨(9/64),(5/32)⟩ (19/128) node0032 node0038
  have node0040 : Holds P ⟨(43/128),(87/256)⟩ ⟨(9/64),(19/128)⟩ := split_y ⟨(43/128),(87/256)⟩ ⟨(9/64),(19/128)⟩ (37/256) (leaf1151 s t r ex ey hm hex hey) (leaf1150 s t r ex ey hm hex hey)
  have node0041 : Holds P ⟨(43/128),(11/32)⟩ ⟨(9/64),(19/128)⟩ := split_x ⟨(43/128),(11/32)⟩ ⟨(9/64),(19/128)⟩ (87/256) node0040 (leaf1149 s t r ex ey hm hex hey)
  have node0042 : Holds P ⟨(43/128),(87/256)⟩ ⟨(39/256),(5/32)⟩ := split_x ⟨(43/128),(87/256)⟩ ⟨(39/256),(5/32)⟩ (173/512) (leaf1147 s t r ex ey hm hex hey) (leaf1146 s t r ex ey hm hex hey)
  have node0043 : Holds P ⟨(43/128),(87/256)⟩ ⟨(19/128),(5/32)⟩ := split_y ⟨(43/128),(87/256)⟩ ⟨(19/128),(5/32)⟩ (39/256) (leaf1148 s t r ex ey hm hex hey) node0042
  have node0044 : Holds P ⟨(43/128),(11/32)⟩ ⟨(19/128),(5/32)⟩ := split_x ⟨(43/128),(11/32)⟩ ⟨(19/128),(5/32)⟩ (87/256) node0043 (leaf1145 s t r ex ey hm hex hey)
  have node0045 : Holds P ⟨(43/128),(11/32)⟩ ⟨(9/64),(5/32)⟩ := split_y ⟨(43/128),(11/32)⟩ ⟨(9/64),(5/32)⟩ (19/128) node0041 node0044
  have node0046 : Holds P ⟨(21/64),(11/32)⟩ ⟨(9/64),(5/32)⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(9/64),(5/32)⟩ (43/128) node0039 node0045
  have node0047 : Holds P ⟨(21/64),(11/32)⟩ ⟨(1/8),(5/32)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(1/8),(5/32)⟩ (9/64) node0029 node0046
  have node0048 : Holds P ⟨(5/16),(11/32)⟩ ⟨(1/8),(5/32)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(1/8),(5/32)⟩ (21/64) node0024 node0047
  have node0049 : Holds P ⟨(83/256),(21/64)⟩ ⟨(5/32),(21/128)⟩ := split_y ⟨(83/256),(21/64)⟩ ⟨(5/32),(21/128)⟩ (41/256) (leaf1142 s t r ex ey hm hex hey) (leaf1141 s t r ex ey hm hex hey)
  have node0050 : Holds P ⟨(41/128),(21/64)⟩ ⟨(5/32),(21/128)⟩ := split_x ⟨(41/128),(21/64)⟩ ⟨(5/32),(21/128)⟩ (83/256) (leaf1143 s t r ex ey hm hex hey) node0049
  have node0051 : Holds P ⟨(83/256),(21/64)⟩ ⟨(21/128),(11/64)⟩ := split_y ⟨(83/256),(21/64)⟩ ⟨(21/128),(11/64)⟩ (43/256) (leaf1139 s t r ex ey hm hex hey) (leaf1138 s t r ex ey hm hex hey)
  have node0052 : Holds P ⟨(41/128),(21/64)⟩ ⟨(21/128),(11/64)⟩ := split_x ⟨(41/128),(21/64)⟩ ⟨(21/128),(11/64)⟩ (83/256) (leaf1140 s t r ex ey hm hex hey) node0051
  have node0053 : Holds P ⟨(41/128),(21/64)⟩ ⟨(5/32),(11/64)⟩ := split_y ⟨(41/128),(21/64)⟩ ⟨(5/32),(11/64)⟩ (21/128) node0050 node0052
  have node0054 : Holds P ⟨(5/16),(21/64)⟩ ⟨(5/32),(11/64)⟩ := split_x ⟨(5/16),(21/64)⟩ ⟨(5/32),(11/64)⟩ (41/128) (leaf1144 s t r ex ey hm hex hey) node0053
  have node0055 : Holds P ⟨(83/256),(21/64)⟩ ⟨(11/64),(23/128)⟩ := split_y ⟨(83/256),(21/64)⟩ ⟨(11/64),(23/128)⟩ (45/256) (leaf1135 s t r ex ey hm hex hey) (leaf1134 s t r ex ey hm hex hey)
  have node0056 : Holds P ⟨(41/128),(21/64)⟩ ⟨(11/64),(23/128)⟩ := split_x ⟨(41/128),(21/64)⟩ ⟨(11/64),(23/128)⟩ (83/256) (leaf1136 s t r ex ey hm hex hey) node0055
  have node0057 : Holds P ⟨(83/256),(21/64)⟩ ⟨(23/128),(3/16)⟩ := split_y ⟨(83/256),(21/64)⟩ ⟨(23/128),(3/16)⟩ (47/256) (leaf1132 s t r ex ey hm hex hey) (leaf1131 s t r ex ey hm hex hey)
  have node0058 : Holds P ⟨(41/128),(21/64)⟩ ⟨(23/128),(3/16)⟩ := split_x ⟨(41/128),(21/64)⟩ ⟨(23/128),(3/16)⟩ (83/256) (leaf1133 s t r ex ey hm hex hey) node0057
  have node0059 : Holds P ⟨(41/128),(21/64)⟩ ⟨(11/64),(3/16)⟩ := split_y ⟨(41/128),(21/64)⟩ ⟨(11/64),(3/16)⟩ (23/128) node0056 node0058
  have node0060 : Holds P ⟨(5/16),(21/64)⟩ ⟨(11/64),(3/16)⟩ := split_x ⟨(5/16),(21/64)⟩ ⟨(11/64),(3/16)⟩ (41/128) (leaf1137 s t r ex ey hm hex hey) node0059
  have node0061 : Holds P ⟨(5/16),(21/64)⟩ ⟨(5/32),(3/16)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(5/32),(3/16)⟩ (11/64) node0054 node0060
  have node0062 : Holds P ⟨(169/512),(85/256)⟩ ⟨(5/32),(41/256)⟩ := split_y ⟨(169/512),(85/256)⟩ ⟨(5/32),(41/256)⟩ (81/512) (leaf1129 s t r ex ey hm hex hey) (leaf1128 s t r ex ey hm hex hey)
  have node0063 : Holds P ⟨(21/64),(85/256)⟩ ⟨(5/32),(41/256)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(5/32),(41/256)⟩ (169/512) (leaf1130 s t r ex ey hm hex hey) node0062
  have node0064 : Holds P ⟨(169/512),(85/256)⟩ ⟨(41/256),(83/512)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(41/256),(83/512)⟩ (339/1024) (leaf1126 s t r ex ey hm hex hey) (leaf1125 s t r ex ey hm hex hey)
  have node0065 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(83/512),(21/128)⟩ := split_y ⟨(339/1024),(85/256)⟩ ⟨(83/512),(21/128)⟩ (167/1024) (leaf1123 s t r ex ey hm hex hey) (leaf1122 s t r ex ey hm hex hey)
  have node0066 : Holds P ⟨(169/512),(85/256)⟩ ⟨(83/512),(21/128)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(83/512),(21/128)⟩ (339/1024) (leaf1124 s t r ex ey hm hex hey) node0065
  have node0067 : Holds P ⟨(169/512),(85/256)⟩ ⟨(41/256),(21/128)⟩ := split_y ⟨(169/512),(85/256)⟩ ⟨(41/256),(21/128)⟩ (83/512) node0064 node0066
  have node0068 : Holds P ⟨(21/64),(85/256)⟩ ⟨(41/256),(21/128)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(41/256),(21/128)⟩ (169/512) (leaf1127 s t r ex ey hm hex hey) node0067
  have node0069 : Holds P ⟨(21/64),(85/256)⟩ ⟨(5/32),(21/128)⟩ := split_y ⟨(21/64),(85/256)⟩ ⟨(5/32),(21/128)⟩ (41/256) node0063 node0068
  have node0070 : Holds P ⟨(85/256),(171/512)⟩ ⟨(5/32),(41/256)⟩ := split_y ⟨(85/256),(171/512)⟩ ⟨(5/32),(41/256)⟩ (81/512) (leaf1121 s t r ex ey hm hex hey) (leaf1120 s t r ex ey hm hex hey)
  have node0071 : Holds P ⟨(171/512),(43/128)⟩ ⟨(5/32),(41/256)⟩ := split_y ⟨(171/512),(43/128)⟩ ⟨(5/32),(41/256)⟩ (81/512) (leaf1119 s t r ex ey hm hex hey) (leaf1118 s t r ex ey hm hex hey)
  have node0072 : Holds P ⟨(85/256),(43/128)⟩ ⟨(5/32),(41/256)⟩ := split_x ⟨(85/256),(43/128)⟩ ⟨(5/32),(41/256)⟩ (171/512) node0070 node0071
  have node0073 : Holds P ⟨(85/256),(171/512)⟩ ⟨(41/256),(83/512)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(41/256),(83/512)⟩ (341/1024) (leaf1117 s t r ex ey hm hex hey) (leaf1116 s t r ex ey hm hex hey)
  have node0074 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(83/512),(21/128)⟩ := split_y ⟨(85/256),(341/1024)⟩ ⟨(83/512),(21/128)⟩ (167/1024) (leaf1115 s t r ex ey hm hex hey) (leaf1114 s t r ex ey hm hex hey)
  have node0075 : Holds P ⟨(85/256),(171/512)⟩ ⟨(83/512),(21/128)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(83/512),(21/128)⟩ (341/1024) node0074 (leaf1113 s t r ex ey hm hex hey)
  have node0076 : Holds P ⟨(85/256),(171/512)⟩ ⟨(41/256),(21/128)⟩ := split_y ⟨(85/256),(171/512)⟩ ⟨(41/256),(21/128)⟩ (83/512) node0073 node0075
  have node0077 : Holds P ⟨(171/512),(43/128)⟩ ⟨(83/512),(21/128)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(83/512),(21/128)⟩ (343/1024) (leaf1111 s t r ex ey hm hex hey) (leaf1110 s t r ex ey hm hex hey)
  have node0078 : Holds P ⟨(171/512),(43/128)⟩ ⟨(41/256),(21/128)⟩ := split_y ⟨(171/512),(43/128)⟩ ⟨(41/256),(21/128)⟩ (83/512) (leaf1112 s t r ex ey hm hex hey) node0077
  have node0079 : Holds P ⟨(85/256),(43/128)⟩ ⟨(41/256),(21/128)⟩ := split_x ⟨(85/256),(43/128)⟩ ⟨(41/256),(21/128)⟩ (171/512) node0076 node0078
  have node0080 : Holds P ⟨(85/256),(43/128)⟩ ⟨(5/32),(21/128)⟩ := split_y ⟨(85/256),(43/128)⟩ ⟨(5/32),(21/128)⟩ (41/256) node0072 node0079
  have node0081 : Holds P ⟨(21/64),(43/128)⟩ ⟨(5/32),(21/128)⟩ := split_x ⟨(21/64),(43/128)⟩ ⟨(5/32),(21/128)⟩ (85/256) node0069 node0080
  have node0082 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(169/1024),(85/512)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(169/1024),(85/512)⟩ (679/2048) (leaf1106 s t r ex ey hm hex hey) (leaf1105 s t r ex ey hm hex hey)
  have node0083 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(21/128),(85/512)⟩ := split_y ⟨(339/1024),(85/256)⟩ ⟨(21/128),(85/512)⟩ (169/1024) (leaf1107 s t r ex ey hm hex hey) node0082
  have node0084 : Holds P ⟨(169/512),(85/256)⟩ ⟨(21/128),(85/512)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(21/128),(85/512)⟩ (339/1024) (leaf1108 s t r ex ey hm hex hey) node0083
  have node0085 : Holds P ⟨(679/2048),(85/256)⟩ ⟨(85/512),(171/1024)⟩ := split_y ⟨(679/2048),(85/256)⟩ ⟨(85/512),(171/1024)⟩ (341/2048) (leaf1102 s t r ex ey hm hex hey) (leaf1101 s t r ex ey hm hex hey)
  have node0086 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(85/512),(171/1024)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(85/512),(171/1024)⟩ (679/2048) (leaf1103 s t r ex ey hm hex hey) node0085
  have node0087 : Holds P ⟨(679/2048),(85/256)⟩ ⟨(171/1024),(43/256)⟩ := split_y ⟨(679/2048),(85/256)⟩ ⟨(171/1024),(43/256)⟩ (343/2048) (leaf1099 s t r ex ey hm hex hey) (leaf1098 s t r ex ey hm hex hey)
  have node0088 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(171/1024),(43/256)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(171/1024),(43/256)⟩ (679/2048) (leaf1100 s t r ex ey hm hex hey) node0087
  have node0089 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(85/512),(43/256)⟩ := split_y ⟨(339/1024),(85/256)⟩ ⟨(85/512),(43/256)⟩ (171/1024) node0086 node0088
  have node0090 : Holds P ⟨(169/512),(85/256)⟩ ⟨(85/512),(43/256)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(85/512),(43/256)⟩ (339/1024) (leaf1104 s t r ex ey hm hex hey) node0089
  have node0091 : Holds P ⟨(169/512),(85/256)⟩ ⟨(21/128),(43/256)⟩ := split_y ⟨(169/512),(85/256)⟩ ⟨(21/128),(43/256)⟩ (85/512) node0084 node0090
  have node0092 : Holds P ⟨(21/64),(85/256)⟩ ⟨(21/128),(43/256)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(21/128),(43/256)⟩ (169/512) (leaf1109 s t r ex ey hm hex hey) node0091
  have node0093 : Holds P ⟨(679/2048),(85/256)⟩ ⟨(43/256),(173/1024)⟩ := split_y ⟨(679/2048),(85/256)⟩ ⟨(43/256),(173/1024)⟩ (345/2048) (leaf1094 s t r ex ey hm hex hey) (leaf1093 s t r ex ey hm hex hey)
  have node0094 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(43/256),(173/1024)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(43/256),(173/1024)⟩ (679/2048) (leaf1095 s t r ex ey hm hex hey) node0093
  have node0095 : Holds P ⟨(679/2048),(85/256)⟩ ⟨(173/1024),(87/512)⟩ := split_y ⟨(679/2048),(85/256)⟩ ⟨(173/1024),(87/512)⟩ (347/2048) (leaf1091 s t r ex ey hm hex hey) (leaf1090 s t r ex ey hm hex hey)
  have node0096 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(173/1024),(87/512)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(173/1024),(87/512)⟩ (679/2048) (leaf1092 s t r ex ey hm hex hey) node0095
  have node0097 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(43/256),(87/512)⟩ := split_y ⟨(339/1024),(85/256)⟩ ⟨(43/256),(87/512)⟩ (173/1024) node0094 node0096
  have node0098 : Holds P ⟨(169/512),(85/256)⟩ ⟨(43/256),(87/512)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(43/256),(87/512)⟩ (339/1024) (leaf1096 s t r ex ey hm hex hey) node0097
  have node0099 : Holds P ⟨(679/2048),(85/256)⟩ ⟨(87/512),(175/1024)⟩ := split_y ⟨(679/2048),(85/256)⟩ ⟨(87/512),(175/1024)⟩ (349/2048) (leaf1087 s t r ex ey hm hex hey) (leaf1086 s t r ex ey hm hex hey)
  have node0100 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(87/512),(175/1024)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(87/512),(175/1024)⟩ (679/2048) (leaf1088 s t r ex ey hm hex hey) node0099
  have node0101 : Holds P ⟨(679/2048),(85/256)⟩ ⟨(175/1024),(11/64)⟩ := split_y ⟨(679/2048),(85/256)⟩ ⟨(175/1024),(11/64)⟩ (351/2048) (leaf1084 s t r ex ey hm hex hey) (leaf1083 s t r ex ey hm hex hey)
  have node0102 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(175/1024),(11/64)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(175/1024),(11/64)⟩ (679/2048) (leaf1085 s t r ex ey hm hex hey) node0101
  have node0103 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(87/512),(11/64)⟩ := split_y ⟨(339/1024),(85/256)⟩ ⟨(87/512),(11/64)⟩ (175/1024) node0100 node0102
  have node0104 : Holds P ⟨(169/512),(85/256)⟩ ⟨(87/512),(11/64)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(87/512),(11/64)⟩ (339/1024) (leaf1089 s t r ex ey hm hex hey) node0103
  have node0105 : Holds P ⟨(169/512),(85/256)⟩ ⟨(43/256),(11/64)⟩ := split_y ⟨(169/512),(85/256)⟩ ⟨(43/256),(11/64)⟩ (87/512) node0098 node0104
  have node0106 : Holds P ⟨(21/64),(85/256)⟩ ⟨(43/256),(11/64)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(43/256),(11/64)⟩ (169/512) (leaf1097 s t r ex ey hm hex hey) node0105
  have node0107 : Holds P ⟨(21/64),(85/256)⟩ ⟨(21/128),(11/64)⟩ := split_y ⟨(21/64),(85/256)⟩ ⟨(21/128),(11/64)⟩ (43/256) node0092 node0106
  have node0108 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(169/1024),(85/512)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(169/1024),(85/512)⟩ (681/2048) (leaf1081 s t r ex ey hm hex hey) (leaf1080 s t r ex ey hm hex hey)
  have node0109 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(21/128),(85/512)⟩ := split_y ⟨(85/256),(341/1024)⟩ ⟨(21/128),(85/512)⟩ (169/1024) (leaf1082 s t r ex ey hm hex hey) node0108
  have node0110 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(21/128),(85/512)⟩ := split_y ⟨(341/1024),(171/512)⟩ ⟨(21/128),(85/512)⟩ (169/1024) (leaf1079 s t r ex ey hm hex hey) (leaf1078 s t r ex ey hm hex hey)
  have node0111 : Holds P ⟨(85/256),(171/512)⟩ ⟨(21/128),(85/512)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(21/128),(85/512)⟩ (341/1024) node0109 node0110
  have node0112 : Holds P ⟨(85/256),(681/2048)⟩ ⟨(85/512),(171/1024)⟩ := split_y ⟨(85/256),(681/2048)⟩ ⟨(85/512),(171/1024)⟩ (341/2048) (leaf1077 s t r ex ey hm hex hey) (leaf1076 s t r ex ey hm hex hey)
  have node0113 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(85/512),(171/1024)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(85/512),(171/1024)⟩ (681/2048) node0112 (leaf1075 s t r ex ey hm hex hey)
  have node0114 : Holds P ⟨(85/256),(681/2048)⟩ ⟨(171/1024),(43/256)⟩ := split_y ⟨(85/256),(681/2048)⟩ ⟨(171/1024),(43/256)⟩ (343/2048) (leaf1074 s t r ex ey hm hex hey) (leaf1073 s t r ex ey hm hex hey)
  have node0115 : Holds P ⟨(681/2048),(341/1024)⟩ ⟨(171/1024),(43/256)⟩ := split_y ⟨(681/2048),(341/1024)⟩ ⟨(171/1024),(43/256)⟩ (343/2048) (leaf1072 s t r ex ey hm hex hey) (leaf1071 s t r ex ey hm hex hey)
  have node0116 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(171/1024),(43/256)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(171/1024),(43/256)⟩ (681/2048) node0114 node0115
  have node0117 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(85/512),(43/256)⟩ := split_y ⟨(85/256),(341/1024)⟩ ⟨(85/512),(43/256)⟩ (171/1024) node0113 node0116
  have node0118 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(85/512),(171/1024)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(85/512),(171/1024)⟩ (683/2048) (leaf1070 s t r ex ey hm hex hey) (leaf1069 s t r ex ey hm hex hey)
  have node0119 : Holds P ⟨(341/1024),(683/2048)⟩ ⟨(171/1024),(43/256)⟩ := split_y ⟨(341/1024),(683/2048)⟩ ⟨(171/1024),(43/256)⟩ (343/2048) (leaf1068 s t r ex ey hm hex hey) (leaf1067 s t r ex ey hm hex hey)
  have node0120 : Holds P ⟨(683/2048),(171/512)⟩ ⟨(171/1024),(43/256)⟩ := split_y ⟨(683/2048),(171/512)⟩ ⟨(171/1024),(43/256)⟩ (343/2048) (leaf1066 s t r ex ey hm hex hey) (leaf1065 s t r ex ey hm hex hey)
  have node0121 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(171/1024),(43/256)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(171/1024),(43/256)⟩ (683/2048) node0119 node0120
  have node0122 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(85/512),(43/256)⟩ := split_y ⟨(341/1024),(171/512)⟩ ⟨(85/512),(43/256)⟩ (171/1024) node0118 node0121
  have node0123 : Holds P ⟨(85/256),(171/512)⟩ ⟨(85/512),(43/256)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(85/512),(43/256)⟩ (341/1024) node0117 node0122
  have node0124 : Holds P ⟨(85/256),(171/512)⟩ ⟨(21/128),(43/256)⟩ := split_y ⟨(85/256),(171/512)⟩ ⟨(21/128),(43/256)⟩ (85/512) node0111 node0123
  have node0125 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(21/128),(85/512)⟩ := split_y ⟨(171/512),(343/1024)⟩ ⟨(21/128),(85/512)⟩ (169/1024) (leaf1064 s t r ex ey hm hex hey) (leaf1063 s t r ex ey hm hex hey)
  have node0126 : Holds P ⟨(171/512),(43/128)⟩ ⟨(21/128),(85/512)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(21/128),(85/512)⟩ (343/1024) node0125 (leaf1062 s t r ex ey hm hex hey)
  have node0127 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(85/512),(171/1024)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(85/512),(171/1024)⟩ (685/2048) (leaf1061 s t r ex ey hm hex hey) (leaf1060 s t r ex ey hm hex hey)
  have node0128 : Holds P ⟨(171/512),(685/2048)⟩ ⟨(171/1024),(43/256)⟩ := split_y ⟨(171/512),(685/2048)⟩ ⟨(171/1024),(43/256)⟩ (343/2048) (leaf1059 s t r ex ey hm hex hey) (leaf1058 s t r ex ey hm hex hey)
  have node0129 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(171/1024),(43/256)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(171/1024),(43/256)⟩ (685/2048) node0128 (leaf1057 s t r ex ey hm hex hey)
  have node0130 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(85/512),(43/256)⟩ := split_y ⟨(171/512),(343/1024)⟩ ⟨(85/512),(43/256)⟩ (171/1024) node0127 node0129
  have node0131 : Holds P ⟨(171/512),(43/128)⟩ ⟨(85/512),(43/256)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(85/512),(43/256)⟩ (343/1024) node0130 (leaf1056 s t r ex ey hm hex hey)
  have node0132 : Holds P ⟨(171/512),(43/128)⟩ ⟨(21/128),(43/256)⟩ := split_y ⟨(171/512),(43/128)⟩ ⟨(21/128),(43/256)⟩ (85/512) node0126 node0131
  have node0133 : Holds P ⟨(85/256),(43/128)⟩ ⟨(21/128),(43/256)⟩ := split_x ⟨(85/256),(43/128)⟩ ⟨(21/128),(43/256)⟩ (171/512) node0124 node0132
  have node0134 : Holds P ⟨(85/256),(681/2048)⟩ ⟨(43/256),(173/1024)⟩ := split_y ⟨(85/256),(681/2048)⟩ ⟨(43/256),(173/1024)⟩ (345/2048) (leaf1055 s t r ex ey hm hex hey) (leaf1054 s t r ex ey hm hex hey)
  have node0135 : Holds P ⟨(681/2048),(341/1024)⟩ ⟨(43/256),(173/1024)⟩ := split_y ⟨(681/2048),(341/1024)⟩ ⟨(43/256),(173/1024)⟩ (345/2048) (leaf1053 s t r ex ey hm hex hey) (leaf1052 s t r ex ey hm hex hey)
  have node0136 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(43/256),(173/1024)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(43/256),(173/1024)⟩ (681/2048) node0134 node0135
  have node0137 : Holds P ⟨(85/256),(681/2048)⟩ ⟨(173/1024),(87/512)⟩ := split_y ⟨(85/256),(681/2048)⟩ ⟨(173/1024),(87/512)⟩ (347/2048) (leaf1051 s t r ex ey hm hex hey) (leaf1050 s t r ex ey hm hex hey)
  have node0138 : Holds P ⟨(681/2048),(341/1024)⟩ ⟨(173/1024),(87/512)⟩ := split_y ⟨(681/2048),(341/1024)⟩ ⟨(173/1024),(87/512)⟩ (347/2048) (leaf1049 s t r ex ey hm hex hey) (leaf1048 s t r ex ey hm hex hey)
  have node0139 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(173/1024),(87/512)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(173/1024),(87/512)⟩ (681/2048) node0137 node0138
  have node0140 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(43/256),(87/512)⟩ := split_y ⟨(85/256),(341/1024)⟩ ⟨(43/256),(87/512)⟩ (173/1024) node0136 node0139
  have node0141 : Holds P ⟨(341/1024),(683/2048)⟩ ⟨(43/256),(173/1024)⟩ := split_y ⟨(341/1024),(683/2048)⟩ ⟨(43/256),(173/1024)⟩ (345/2048) (leaf1047 s t r ex ey hm hex hey) (leaf1046 s t r ex ey hm hex hey)
  have node0142 : Holds P ⟨(683/2048),(171/512)⟩ ⟨(43/256),(173/1024)⟩ := split_y ⟨(683/2048),(171/512)⟩ ⟨(43/256),(173/1024)⟩ (345/2048) (leaf1045 s t r ex ey hm hex hey) (leaf1044 s t r ex ey hm hex hey)
  have node0143 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(43/256),(173/1024)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(43/256),(173/1024)⟩ (683/2048) node0141 node0142
  have node0144 : Holds P ⟨(341/1024),(683/2048)⟩ ⟨(173/1024),(87/512)⟩ := split_y ⟨(341/1024),(683/2048)⟩ ⟨(173/1024),(87/512)⟩ (347/2048) (leaf1043 s t r ex ey hm hex hey) (leaf1042 s t r ex ey hm hex hey)
  have node0145 : Holds P ⟨(683/2048),(171/512)⟩ ⟨(173/1024),(87/512)⟩ := split_y ⟨(683/2048),(171/512)⟩ ⟨(173/1024),(87/512)⟩ (347/2048) (leaf1041 s t r ex ey hm hex hey) (leaf1040 s t r ex ey hm hex hey)
  have node0146 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(173/1024),(87/512)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(173/1024),(87/512)⟩ (683/2048) node0144 node0145
  have node0147 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(43/256),(87/512)⟩ := split_y ⟨(341/1024),(171/512)⟩ ⟨(43/256),(87/512)⟩ (173/1024) node0143 node0146
  have node0148 : Holds P ⟨(85/256),(171/512)⟩ ⟨(43/256),(87/512)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(43/256),(87/512)⟩ (341/1024) node0140 node0147
  have node0149 : Holds P ⟨(85/256),(681/2048)⟩ ⟨(87/512),(175/1024)⟩ := split_y ⟨(85/256),(681/2048)⟩ ⟨(87/512),(175/1024)⟩ (349/2048) (leaf1039 s t r ex ey hm hex hey) (leaf1038 s t r ex ey hm hex hey)
  have node0150 : Holds P ⟨(681/2048),(341/1024)⟩ ⟨(87/512),(175/1024)⟩ := split_y ⟨(681/2048),(341/1024)⟩ ⟨(87/512),(175/1024)⟩ (349/2048) (leaf1037 s t r ex ey hm hex hey) (leaf1036 s t r ex ey hm hex hey)
  have node0151 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(87/512),(175/1024)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(87/512),(175/1024)⟩ (681/2048) node0149 node0150
  have node0152 : Holds P ⟨(85/256),(681/2048)⟩ ⟨(175/1024),(11/64)⟩ := split_y ⟨(85/256),(681/2048)⟩ ⟨(175/1024),(11/64)⟩ (351/2048) (leaf1035 s t r ex ey hm hex hey) (leaf1034 s t r ex ey hm hex hey)
  have node0153 : Holds P ⟨(681/2048),(341/1024)⟩ ⟨(175/1024),(11/64)⟩ := split_y ⟨(681/2048),(341/1024)⟩ ⟨(175/1024),(11/64)⟩ (351/2048) (leaf1033 s t r ex ey hm hex hey) (leaf1032 s t r ex ey hm hex hey)
  have node0154 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(175/1024),(11/64)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(175/1024),(11/64)⟩ (681/2048) node0152 node0153
  have node0155 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(87/512),(11/64)⟩ := split_y ⟨(85/256),(341/1024)⟩ ⟨(87/512),(11/64)⟩ (175/1024) node0151 node0154
  have node0156 : Holds P ⟨(341/1024),(683/2048)⟩ ⟨(87/512),(175/1024)⟩ := split_y ⟨(341/1024),(683/2048)⟩ ⟨(87/512),(175/1024)⟩ (349/2048) (leaf1031 s t r ex ey hm hex hey) (leaf1030 s t r ex ey hm hex hey)
  have node0157 : Holds P ⟨(683/2048),(171/512)⟩ ⟨(87/512),(175/1024)⟩ := split_y ⟨(683/2048),(171/512)⟩ ⟨(87/512),(175/1024)⟩ (349/2048) (leaf1029 s t r ex ey hm hex hey) (leaf1028 s t r ex ey hm hex hey)
  have node0158 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(87/512),(175/1024)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(87/512),(175/1024)⟩ (683/2048) node0156 node0157
  have node0159 : Holds P ⟨(341/1024),(683/2048)⟩ ⟨(175/1024),(11/64)⟩ := split_y ⟨(341/1024),(683/2048)⟩ ⟨(175/1024),(11/64)⟩ (351/2048) (leaf1027 s t r ex ey hm hex hey) (leaf1026 s t r ex ey hm hex hey)
  have node0160 : Holds P ⟨(683/2048),(171/512)⟩ ⟨(175/1024),(11/64)⟩ := split_y ⟨(683/2048),(171/512)⟩ ⟨(175/1024),(11/64)⟩ (351/2048) (leaf1025 s t r ex ey hm hex hey) (leaf1024 s t r ex ey hm hex hey)
  have node0161 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(175/1024),(11/64)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(175/1024),(11/64)⟩ (683/2048) node0159 node0160
  have node0162 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(87/512),(11/64)⟩ := split_y ⟨(341/1024),(171/512)⟩ ⟨(87/512),(11/64)⟩ (175/1024) node0158 node0161
  have node0163 : Holds P ⟨(85/256),(171/512)⟩ ⟨(87/512),(11/64)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(87/512),(11/64)⟩ (341/1024) node0155 node0162
  have node0164 : Holds P ⟨(85/256),(171/512)⟩ ⟨(43/256),(11/64)⟩ := split_y ⟨(85/256),(171/512)⟩ ⟨(43/256),(11/64)⟩ (87/512) node0148 node0163
  have node0165 : Holds P ⟨(171/512),(685/2048)⟩ ⟨(43/256),(173/1024)⟩ := split_y ⟨(171/512),(685/2048)⟩ ⟨(43/256),(173/1024)⟩ (345/2048) (leaf1023 s t r ex ey hm hex hey) (leaf1022 s t r ex ey hm hex hey)
  have node0166 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(43/256),(173/1024)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(43/256),(173/1024)⟩ (685/2048) node0165 (leaf1021 s t r ex ey hm hex hey)
  have node0167 : Holds P ⟨(171/512),(685/2048)⟩ ⟨(173/1024),(87/512)⟩ := split_y ⟨(171/512),(685/2048)⟩ ⟨(173/1024),(87/512)⟩ (347/2048) (leaf1020 s t r ex ey hm hex hey) (leaf1019 s t r ex ey hm hex hey)
  have node0168 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(173/1024),(87/512)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(173/1024),(87/512)⟩ (685/2048) node0167 (leaf1018 s t r ex ey hm hex hey)
  have node0169 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(43/256),(87/512)⟩ := split_y ⟨(171/512),(343/1024)⟩ ⟨(43/256),(87/512)⟩ (173/1024) node0166 node0168
  have node0170 : Holds P ⟨(171/512),(43/128)⟩ ⟨(43/256),(87/512)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(43/256),(87/512)⟩ (343/1024) node0169 (leaf1017 s t r ex ey hm hex hey)
  have node0171 : Holds P ⟨(171/512),(685/2048)⟩ ⟨(87/512),(175/1024)⟩ := split_y ⟨(171/512),(685/2048)⟩ ⟨(87/512),(175/1024)⟩ (349/2048) (leaf1016 s t r ex ey hm hex hey) (leaf1015 s t r ex ey hm hex hey)
  have node0172 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(87/512),(175/1024)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(87/512),(175/1024)⟩ (685/2048) node0171 (leaf1014 s t r ex ey hm hex hey)
  have node0173 : Holds P ⟨(171/512),(685/2048)⟩ ⟨(175/1024),(11/64)⟩ := split_y ⟨(171/512),(685/2048)⟩ ⟨(175/1024),(11/64)⟩ (351/2048) (leaf1013 s t r ex ey hm hex hey) (leaf1012 s t r ex ey hm hex hey)
  have node0174 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(175/1024),(11/64)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(175/1024),(11/64)⟩ (685/2048) node0173 (leaf1011 s t r ex ey hm hex hey)
  have node0175 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(87/512),(11/64)⟩ := split_y ⟨(171/512),(343/1024)⟩ ⟨(87/512),(11/64)⟩ (175/1024) node0172 node0174
  have node0176 : Holds P ⟨(171/512),(43/128)⟩ ⟨(87/512),(11/64)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(87/512),(11/64)⟩ (343/1024) node0175 (leaf1010 s t r ex ey hm hex hey)
  have node0177 : Holds P ⟨(171/512),(43/128)⟩ ⟨(43/256),(11/64)⟩ := split_y ⟨(171/512),(43/128)⟩ ⟨(43/256),(11/64)⟩ (87/512) node0170 node0176
  have node0178 : Holds P ⟨(85/256),(43/128)⟩ ⟨(43/256),(11/64)⟩ := split_x ⟨(85/256),(43/128)⟩ ⟨(43/256),(11/64)⟩ (171/512) node0164 node0177
  have node0179 : Holds P ⟨(85/256),(43/128)⟩ ⟨(21/128),(11/64)⟩ := split_y ⟨(85/256),(43/128)⟩ ⟨(21/128),(11/64)⟩ (43/256) node0133 node0178
  have node0180 : Holds P ⟨(21/64),(43/128)⟩ ⟨(21/128),(11/64)⟩ := split_x ⟨(21/64),(43/128)⟩ ⟨(21/128),(11/64)⟩ (85/256) node0107 node0179
  have node0181 : Holds P ⟨(21/64),(43/128)⟩ ⟨(5/32),(11/64)⟩ := split_y ⟨(21/64),(43/128)⟩ ⟨(5/32),(11/64)⟩ (21/128) node0081 node0180
  have node0182 : Holds P ⟨(43/128),(173/512)⟩ ⟨(5/32),(41/256)⟩ := split_y ⟨(43/128),(173/512)⟩ ⟨(5/32),(41/256)⟩ (81/512) (leaf1009 s t r ex ey hm hex hey) (leaf1008 s t r ex ey hm hex hey)
  have node0183 : Holds P ⟨(43/128),(87/256)⟩ ⟨(5/32),(41/256)⟩ := split_x ⟨(43/128),(87/256)⟩ ⟨(5/32),(41/256)⟩ (173/512) node0182 (leaf1007 s t r ex ey hm hex hey)
  have node0184 : Holds P ⟨(43/128),(173/512)⟩ ⟨(41/256),(21/128)⟩ := split_y ⟨(43/128),(173/512)⟩ ⟨(41/256),(21/128)⟩ (83/512) (leaf1006 s t r ex ey hm hex hey) (leaf1005 s t r ex ey hm hex hey)
  have node0185 : Holds P ⟨(43/128),(87/256)⟩ ⟨(41/256),(21/128)⟩ := split_x ⟨(43/128),(87/256)⟩ ⟨(41/256),(21/128)⟩ (173/512) node0184 (leaf1004 s t r ex ey hm hex hey)
  have node0186 : Holds P ⟨(43/128),(87/256)⟩ ⟨(5/32),(21/128)⟩ := split_y ⟨(43/128),(87/256)⟩ ⟨(5/32),(21/128)⟩ (41/256) node0183 node0185
  have node0187 : Holds P ⟨(43/128),(11/32)⟩ ⟨(5/32),(21/128)⟩ := split_x ⟨(43/128),(11/32)⟩ ⟨(5/32),(21/128)⟩ (87/256) node0186 (leaf1003 s t r ex ey hm hex hey)
  have node0188 : Holds P ⟨(43/128),(87/256)⟩ ⟨(21/128),(43/256)⟩ := split_x ⟨(43/128),(87/256)⟩ ⟨(21/128),(43/256)⟩ (173/512) (leaf1002 s t r ex ey hm hex hey) (leaf1001 s t r ex ey hm hex hey)
  have node0189 : Holds P ⟨(43/128),(87/256)⟩ ⟨(21/128),(11/64)⟩ := split_y ⟨(43/128),(87/256)⟩ ⟨(21/128),(11/64)⟩ (43/256) node0188 (leaf1000 s t r ex ey hm hex hey)
  have node0190 : Holds P ⟨(43/128),(11/32)⟩ ⟨(21/128),(11/64)⟩ := split_x ⟨(43/128),(11/32)⟩ ⟨(21/128),(11/64)⟩ (87/256) node0189 (leaf0999 s t r ex ey hm hex hey)
  have node0191 : Holds P ⟨(43/128),(11/32)⟩ ⟨(5/32),(11/64)⟩ := split_y ⟨(43/128),(11/32)⟩ ⟨(5/32),(11/64)⟩ (21/128) node0187 node0190
  have node0192 : Holds P ⟨(21/64),(11/32)⟩ ⟨(5/32),(11/64)⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(5/32),(11/64)⟩ (43/128) node0181 node0191
  have node0193 : Holds P ⟨(679/2048),(85/256)⟩ ⟨(11/64),(177/1024)⟩ := split_y ⟨(679/2048),(85/256)⟩ ⟨(11/64),(177/1024)⟩ (353/2048) (leaf0995 s t r ex ey hm hex hey) (leaf0994 s t r ex ey hm hex hey)
  have node0194 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(11/64),(177/1024)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(11/64),(177/1024)⟩ (679/2048) (leaf0996 s t r ex ey hm hex hey) node0193
  have node0195 : Holds P ⟨(679/2048),(85/256)⟩ ⟨(177/1024),(89/512)⟩ := split_y ⟨(679/2048),(85/256)⟩ ⟨(177/1024),(89/512)⟩ (355/2048) (leaf0992 s t r ex ey hm hex hey) (leaf0991 s t r ex ey hm hex hey)
  have node0196 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(177/1024),(89/512)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(177/1024),(89/512)⟩ (679/2048) (leaf0993 s t r ex ey hm hex hey) node0195
  have node0197 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(11/64),(89/512)⟩ := split_y ⟨(339/1024),(85/256)⟩ ⟨(11/64),(89/512)⟩ (177/1024) node0194 node0196
  have node0198 : Holds P ⟨(169/512),(85/256)⟩ ⟨(11/64),(89/512)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(11/64),(89/512)⟩ (339/1024) (leaf0997 s t r ex ey hm hex hey) node0197
  have node0199 : Holds P ⟨(679/2048),(85/256)⟩ ⟨(89/512),(179/1024)⟩ := split_y ⟨(679/2048),(85/256)⟩ ⟨(89/512),(179/1024)⟩ (357/2048) (leaf0988 s t r ex ey hm hex hey) (leaf0987 s t r ex ey hm hex hey)
  have node0200 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(89/512),(179/1024)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(89/512),(179/1024)⟩ (679/2048) (leaf0989 s t r ex ey hm hex hey) node0199
  have node0201 : Holds P ⟨(679/2048),(85/256)⟩ ⟨(179/1024),(45/256)⟩ := split_y ⟨(679/2048),(85/256)⟩ ⟨(179/1024),(45/256)⟩ (359/2048) (leaf0985 s t r ex ey hm hex hey) (leaf0984 s t r ex ey hm hex hey)
  have node0202 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(179/1024),(45/256)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(179/1024),(45/256)⟩ (679/2048) (leaf0986 s t r ex ey hm hex hey) node0201
  have node0203 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(89/512),(45/256)⟩ := split_y ⟨(339/1024),(85/256)⟩ ⟨(89/512),(45/256)⟩ (179/1024) node0200 node0202
  have node0204 : Holds P ⟨(169/512),(85/256)⟩ ⟨(89/512),(45/256)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(89/512),(45/256)⟩ (339/1024) (leaf0990 s t r ex ey hm hex hey) node0203
  have node0205 : Holds P ⟨(169/512),(85/256)⟩ ⟨(11/64),(45/256)⟩ := split_y ⟨(169/512),(85/256)⟩ ⟨(11/64),(45/256)⟩ (89/512) node0198 node0204
  have node0206 : Holds P ⟨(21/64),(85/256)⟩ ⟨(11/64),(45/256)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(11/64),(45/256)⟩ (169/512) (leaf0998 s t r ex ey hm hex hey) node0205
  have node0207 : Holds P ⟨(679/2048),(85/256)⟩ ⟨(45/256),(181/1024)⟩ := split_y ⟨(679/2048),(85/256)⟩ ⟨(45/256),(181/1024)⟩ (361/2048) (leaf0980 s t r ex ey hm hex hey) (leaf0979 s t r ex ey hm hex hey)
  have node0208 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(45/256),(181/1024)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(45/256),(181/1024)⟩ (679/2048) (leaf0981 s t r ex ey hm hex hey) node0207
  have node0209 : Holds P ⟨(679/2048),(85/256)⟩ ⟨(181/1024),(91/512)⟩ := split_y ⟨(679/2048),(85/256)⟩ ⟨(181/1024),(91/512)⟩ (363/2048) (leaf0977 s t r ex ey hm hex hey) (leaf0976 s t r ex ey hm hex hey)
  have node0210 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(181/1024),(91/512)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(181/1024),(91/512)⟩ (679/2048) (leaf0978 s t r ex ey hm hex hey) node0209
  have node0211 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(45/256),(91/512)⟩ := split_y ⟨(339/1024),(85/256)⟩ ⟨(45/256),(91/512)⟩ (181/1024) node0208 node0210
  have node0212 : Holds P ⟨(169/512),(85/256)⟩ ⟨(45/256),(91/512)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(45/256),(91/512)⟩ (339/1024) (leaf0982 s t r ex ey hm hex hey) node0211
  have node0213 : Holds P ⟨(679/2048),(85/256)⟩ ⟨(91/512),(183/1024)⟩ := split_y ⟨(679/2048),(85/256)⟩ ⟨(91/512),(183/1024)⟩ (365/2048) (leaf0973 s t r ex ey hm hex hey) (leaf0972 s t r ex ey hm hex hey)
  have node0214 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(91/512),(183/1024)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(91/512),(183/1024)⟩ (679/2048) (leaf0974 s t r ex ey hm hex hey) node0213
  have node0215 : Holds P ⟨(679/2048),(85/256)⟩ ⟨(183/1024),(23/128)⟩ := split_y ⟨(679/2048),(85/256)⟩ ⟨(183/1024),(23/128)⟩ (367/2048) (leaf0970 s t r ex ey hm hex hey) (leaf0969 s t r ex ey hm hex hey)
  have node0216 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(183/1024),(23/128)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(183/1024),(23/128)⟩ (679/2048) (leaf0971 s t r ex ey hm hex hey) node0215
  have node0217 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(91/512),(23/128)⟩ := split_y ⟨(339/1024),(85/256)⟩ ⟨(91/512),(23/128)⟩ (183/1024) node0214 node0216
  have node0218 : Holds P ⟨(169/512),(85/256)⟩ ⟨(91/512),(23/128)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(91/512),(23/128)⟩ (339/1024) (leaf0975 s t r ex ey hm hex hey) node0217
  have node0219 : Holds P ⟨(169/512),(85/256)⟩ ⟨(45/256),(23/128)⟩ := split_y ⟨(169/512),(85/256)⟩ ⟨(45/256),(23/128)⟩ (91/512) node0212 node0218
  have node0220 : Holds P ⟨(21/64),(85/256)⟩ ⟨(45/256),(23/128)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(45/256),(23/128)⟩ (169/512) (leaf0983 s t r ex ey hm hex hey) node0219
  have node0221 : Holds P ⟨(21/64),(85/256)⟩ ⟨(11/64),(23/128)⟩ := split_y ⟨(21/64),(85/256)⟩ ⟨(11/64),(23/128)⟩ (45/256) node0206 node0220
  have node0222 : Holds P ⟨(85/256),(681/2048)⟩ ⟨(11/64),(177/1024)⟩ := split_y ⟨(85/256),(681/2048)⟩ ⟨(11/64),(177/1024)⟩ (353/2048) (leaf0968 s t r ex ey hm hex hey) (leaf0967 s t r ex ey hm hex hey)
  have node0223 : Holds P ⟨(681/2048),(341/1024)⟩ ⟨(11/64),(177/1024)⟩ := split_y ⟨(681/2048),(341/1024)⟩ ⟨(11/64),(177/1024)⟩ (353/2048) (leaf0966 s t r ex ey hm hex hey) (leaf0965 s t r ex ey hm hex hey)
  have node0224 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(11/64),(177/1024)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(11/64),(177/1024)⟩ (681/2048) node0222 node0223
  have node0225 : Holds P ⟨(85/256),(681/2048)⟩ ⟨(177/1024),(89/512)⟩ := split_y ⟨(85/256),(681/2048)⟩ ⟨(177/1024),(89/512)⟩ (355/2048) (leaf0964 s t r ex ey hm hex hey) (leaf0963 s t r ex ey hm hex hey)
  have node0226 : Holds P ⟨(681/2048),(341/1024)⟩ ⟨(177/1024),(89/512)⟩ := split_y ⟨(681/2048),(341/1024)⟩ ⟨(177/1024),(89/512)⟩ (355/2048) (leaf0962 s t r ex ey hm hex hey) (leaf0961 s t r ex ey hm hex hey)
  have node0227 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(177/1024),(89/512)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(177/1024),(89/512)⟩ (681/2048) node0225 node0226
  have node0228 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(11/64),(89/512)⟩ := split_y ⟨(85/256),(341/1024)⟩ ⟨(11/64),(89/512)⟩ (177/1024) node0224 node0227
  have node0229 : Holds P ⟨(341/1024),(683/2048)⟩ ⟨(11/64),(177/1024)⟩ := split_y ⟨(341/1024),(683/2048)⟩ ⟨(11/64),(177/1024)⟩ (353/2048) (leaf0960 s t r ex ey hm hex hey) (leaf0959 s t r ex ey hm hex hey)
  have node0230 : Holds P ⟨(683/2048),(171/512)⟩ ⟨(11/64),(177/1024)⟩ := split_y ⟨(683/2048),(171/512)⟩ ⟨(11/64),(177/1024)⟩ (353/2048) (leaf0958 s t r ex ey hm hex hey) (leaf0957 s t r ex ey hm hex hey)
  have node0231 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(11/64),(177/1024)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(11/64),(177/1024)⟩ (683/2048) node0229 node0230
  have node0232 : Holds P ⟨(341/1024),(683/2048)⟩ ⟨(177/1024),(89/512)⟩ := split_y ⟨(341/1024),(683/2048)⟩ ⟨(177/1024),(89/512)⟩ (355/2048) (leaf0956 s t r ex ey hm hex hey) (leaf0955 s t r ex ey hm hex hey)
  have node0233 : Holds P ⟨(683/2048),(171/512)⟩ ⟨(177/1024),(89/512)⟩ := split_y ⟨(683/2048),(171/512)⟩ ⟨(177/1024),(89/512)⟩ (355/2048) (leaf0954 s t r ex ey hm hex hey) (leaf0953 s t r ex ey hm hex hey)
  have node0234 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(177/1024),(89/512)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(177/1024),(89/512)⟩ (683/2048) node0232 node0233
  have node0235 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(11/64),(89/512)⟩ := split_y ⟨(341/1024),(171/512)⟩ ⟨(11/64),(89/512)⟩ (177/1024) node0231 node0234
  have node0236 : Holds P ⟨(85/256),(171/512)⟩ ⟨(11/64),(89/512)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(11/64),(89/512)⟩ (341/1024) node0228 node0235
  have node0237 : Holds P ⟨(85/256),(681/2048)⟩ ⟨(89/512),(179/1024)⟩ := split_y ⟨(85/256),(681/2048)⟩ ⟨(89/512),(179/1024)⟩ (357/2048) (leaf0952 s t r ex ey hm hex hey) (leaf0951 s t r ex ey hm hex hey)
  have node0238 : Holds P ⟨(681/2048),(341/1024)⟩ ⟨(89/512),(179/1024)⟩ := split_y ⟨(681/2048),(341/1024)⟩ ⟨(89/512),(179/1024)⟩ (357/2048) (leaf0950 s t r ex ey hm hex hey) (leaf0949 s t r ex ey hm hex hey)
  have node0239 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(89/512),(179/1024)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(89/512),(179/1024)⟩ (681/2048) node0237 node0238
  have node0240 : Holds P ⟨(85/256),(681/2048)⟩ ⟨(179/1024),(45/256)⟩ := split_y ⟨(85/256),(681/2048)⟩ ⟨(179/1024),(45/256)⟩ (359/2048) (leaf0948 s t r ex ey hm hex hey) (leaf0947 s t r ex ey hm hex hey)
  have node0241 : Holds P ⟨(681/2048),(341/1024)⟩ ⟨(179/1024),(45/256)⟩ := split_y ⟨(681/2048),(341/1024)⟩ ⟨(179/1024),(45/256)⟩ (359/2048) (leaf0946 s t r ex ey hm hex hey) (leaf0945 s t r ex ey hm hex hey)
  have node0242 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(179/1024),(45/256)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(179/1024),(45/256)⟩ (681/2048) node0240 node0241
  have node0243 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(89/512),(45/256)⟩ := split_y ⟨(85/256),(341/1024)⟩ ⟨(89/512),(45/256)⟩ (179/1024) node0239 node0242
  have node0244 : Holds P ⟨(341/1024),(683/2048)⟩ ⟨(89/512),(179/1024)⟩ := split_y ⟨(341/1024),(683/2048)⟩ ⟨(89/512),(179/1024)⟩ (357/2048) (leaf0944 s t r ex ey hm hex hey) (leaf0943 s t r ex ey hm hex hey)
  have node0245 : Holds P ⟨(683/2048),(171/512)⟩ ⟨(89/512),(179/1024)⟩ := split_y ⟨(683/2048),(171/512)⟩ ⟨(89/512),(179/1024)⟩ (357/2048) (leaf0942 s t r ex ey hm hex hey) (leaf0941 s t r ex ey hm hex hey)
  have node0246 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(89/512),(179/1024)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(89/512),(179/1024)⟩ (683/2048) node0244 node0245
  have node0247 : Holds P ⟨(341/1024),(683/2048)⟩ ⟨(179/1024),(45/256)⟩ := split_y ⟨(341/1024),(683/2048)⟩ ⟨(179/1024),(45/256)⟩ (359/2048) (leaf0940 s t r ex ey hm hex hey) (leaf0939 s t r ex ey hm hex hey)
  have node0248 : Holds P ⟨(683/2048),(171/512)⟩ ⟨(179/1024),(45/256)⟩ := split_y ⟨(683/2048),(171/512)⟩ ⟨(179/1024),(45/256)⟩ (359/2048) (leaf0938 s t r ex ey hm hex hey) (leaf0937 s t r ex ey hm hex hey)
  have node0249 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(179/1024),(45/256)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(179/1024),(45/256)⟩ (683/2048) node0247 node0248
  have node0250 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(89/512),(45/256)⟩ := split_y ⟨(341/1024),(171/512)⟩ ⟨(89/512),(45/256)⟩ (179/1024) node0246 node0249
  have node0251 : Holds P ⟨(85/256),(171/512)⟩ ⟨(89/512),(45/256)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(89/512),(45/256)⟩ (341/1024) node0243 node0250
  have node0252 : Holds P ⟨(85/256),(171/512)⟩ ⟨(11/64),(45/256)⟩ := split_y ⟨(85/256),(171/512)⟩ ⟨(11/64),(45/256)⟩ (89/512) node0236 node0251
  have node0253 : Holds P ⟨(171/512),(685/2048)⟩ ⟨(11/64),(177/1024)⟩ := split_y ⟨(171/512),(685/2048)⟩ ⟨(11/64),(177/1024)⟩ (353/2048) (leaf0936 s t r ex ey hm hex hey) (leaf0935 s t r ex ey hm hex hey)
  have node0254 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(11/64),(177/1024)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(11/64),(177/1024)⟩ (685/2048) node0253 (leaf0934 s t r ex ey hm hex hey)
  have node0255 : Holds P ⟨(171/512),(685/2048)⟩ ⟨(177/1024),(89/512)⟩ := split_y ⟨(171/512),(685/2048)⟩ ⟨(177/1024),(89/512)⟩ (355/2048) (leaf0933 s t r ex ey hm hex hey) (leaf0932 s t r ex ey hm hex hey)
  have node0256 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(177/1024),(89/512)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(177/1024),(89/512)⟩ (685/2048) node0255 (leaf0931 s t r ex ey hm hex hey)
  have node0257 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(11/64),(89/512)⟩ := split_y ⟨(171/512),(343/1024)⟩ ⟨(11/64),(89/512)⟩ (177/1024) node0254 node0256
  have node0258 : Holds P ⟨(171/512),(43/128)⟩ ⟨(11/64),(89/512)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(11/64),(89/512)⟩ (343/1024) node0257 (leaf0930 s t r ex ey hm hex hey)
  have node0259 : Holds P ⟨(171/512),(685/2048)⟩ ⟨(89/512),(179/1024)⟩ := split_y ⟨(171/512),(685/2048)⟩ ⟨(89/512),(179/1024)⟩ (357/2048) (leaf0929 s t r ex ey hm hex hey) (leaf0928 s t r ex ey hm hex hey)
  have node0260 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(89/512),(179/1024)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(89/512),(179/1024)⟩ (685/2048) node0259 (leaf0927 s t r ex ey hm hex hey)
  have node0261 : Holds P ⟨(171/512),(685/2048)⟩ ⟨(179/1024),(45/256)⟩ := split_y ⟨(171/512),(685/2048)⟩ ⟨(179/1024),(45/256)⟩ (359/2048) (leaf0926 s t r ex ey hm hex hey) (leaf0925 s t r ex ey hm hex hey)
  have node0262 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(179/1024),(45/256)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(179/1024),(45/256)⟩ (685/2048) node0261 (leaf0924 s t r ex ey hm hex hey)
  have node0263 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(89/512),(45/256)⟩ := split_y ⟨(171/512),(343/1024)⟩ ⟨(89/512),(45/256)⟩ (179/1024) node0260 node0262
  have node0264 : Holds P ⟨(171/512),(43/128)⟩ ⟨(89/512),(45/256)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(89/512),(45/256)⟩ (343/1024) node0263 (leaf0923 s t r ex ey hm hex hey)
  have node0265 : Holds P ⟨(171/512),(43/128)⟩ ⟨(11/64),(45/256)⟩ := split_y ⟨(171/512),(43/128)⟩ ⟨(11/64),(45/256)⟩ (89/512) node0258 node0264
  have node0266 : Holds P ⟨(85/256),(43/128)⟩ ⟨(11/64),(45/256)⟩ := split_x ⟨(85/256),(43/128)⟩ ⟨(11/64),(45/256)⟩ (171/512) node0252 node0265
  have node0267 : Holds P ⟨(85/256),(681/2048)⟩ ⟨(45/256),(181/1024)⟩ := split_y ⟨(85/256),(681/2048)⟩ ⟨(45/256),(181/1024)⟩ (361/2048) (leaf0922 s t r ex ey hm hex hey) (leaf0921 s t r ex ey hm hex hey)
  have node0268 : Holds P ⟨(681/2048),(341/1024)⟩ ⟨(45/256),(181/1024)⟩ := split_y ⟨(681/2048),(341/1024)⟩ ⟨(45/256),(181/1024)⟩ (361/2048) (leaf0920 s t r ex ey hm hex hey) (leaf0919 s t r ex ey hm hex hey)
  have node0269 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(45/256),(181/1024)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(45/256),(181/1024)⟩ (681/2048) node0267 node0268
  have node0270 : Holds P ⟨(85/256),(681/2048)⟩ ⟨(181/1024),(91/512)⟩ := split_y ⟨(85/256),(681/2048)⟩ ⟨(181/1024),(91/512)⟩ (363/2048) (leaf0918 s t r ex ey hm hex hey) (leaf0917 s t r ex ey hm hex hey)
  have node0271 : Holds P ⟨(681/2048),(341/1024)⟩ ⟨(181/1024),(91/512)⟩ := split_y ⟨(681/2048),(341/1024)⟩ ⟨(181/1024),(91/512)⟩ (363/2048) (leaf0916 s t r ex ey hm hex hey) (leaf0915 s t r ex ey hm hex hey)
  have node0272 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(181/1024),(91/512)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(181/1024),(91/512)⟩ (681/2048) node0270 node0271
  have node0273 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(45/256),(91/512)⟩ := split_y ⟨(85/256),(341/1024)⟩ ⟨(45/256),(91/512)⟩ (181/1024) node0269 node0272
  have node0274 : Holds P ⟨(341/1024),(683/2048)⟩ ⟨(45/256),(181/1024)⟩ := split_y ⟨(341/1024),(683/2048)⟩ ⟨(45/256),(181/1024)⟩ (361/2048) (leaf0914 s t r ex ey hm hex hey) (leaf0913 s t r ex ey hm hex hey)
  have node0275 : Holds P ⟨(683/2048),(171/512)⟩ ⟨(45/256),(181/1024)⟩ := split_y ⟨(683/2048),(171/512)⟩ ⟨(45/256),(181/1024)⟩ (361/2048) (leaf0912 s t r ex ey hm hex hey) (leaf0911 s t r ex ey hm hex hey)
  have node0276 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(45/256),(181/1024)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(45/256),(181/1024)⟩ (683/2048) node0274 node0275
  have node0277 : Holds P ⟨(341/1024),(683/2048)⟩ ⟨(181/1024),(91/512)⟩ := split_y ⟨(341/1024),(683/2048)⟩ ⟨(181/1024),(91/512)⟩ (363/2048) (leaf0910 s t r ex ey hm hex hey) (leaf0909 s t r ex ey hm hex hey)
  have node0278 : Holds P ⟨(683/2048),(171/512)⟩ ⟨(181/1024),(91/512)⟩ := split_y ⟨(683/2048),(171/512)⟩ ⟨(181/1024),(91/512)⟩ (363/2048) (leaf0908 s t r ex ey hm hex hey) (leaf0907 s t r ex ey hm hex hey)
  have node0279 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(181/1024),(91/512)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(181/1024),(91/512)⟩ (683/2048) node0277 node0278
  have node0280 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(45/256),(91/512)⟩ := split_y ⟨(341/1024),(171/512)⟩ ⟨(45/256),(91/512)⟩ (181/1024) node0276 node0279
  have node0281 : Holds P ⟨(85/256),(171/512)⟩ ⟨(45/256),(91/512)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(45/256),(91/512)⟩ (341/1024) node0273 node0280
  have node0282 : Holds P ⟨(85/256),(681/2048)⟩ ⟨(91/512),(183/1024)⟩ := split_y ⟨(85/256),(681/2048)⟩ ⟨(91/512),(183/1024)⟩ (365/2048) (leaf0906 s t r ex ey hm hex hey) (leaf0905 s t r ex ey hm hex hey)
  have node0283 : Holds P ⟨(681/2048),(341/1024)⟩ ⟨(91/512),(183/1024)⟩ := split_y ⟨(681/2048),(341/1024)⟩ ⟨(91/512),(183/1024)⟩ (365/2048) (leaf0904 s t r ex ey hm hex hey) (leaf0903 s t r ex ey hm hex hey)
  have node0284 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(91/512),(183/1024)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(91/512),(183/1024)⟩ (681/2048) node0282 node0283
  have node0285 : Holds P ⟨(85/256),(681/2048)⟩ ⟨(183/1024),(23/128)⟩ := split_y ⟨(85/256),(681/2048)⟩ ⟨(183/1024),(23/128)⟩ (367/2048) (leaf0902 s t r ex ey hm hex hey) (leaf0901 s t r ex ey hm hex hey)
  have node0286 : Holds P ⟨(681/2048),(341/1024)⟩ ⟨(183/1024),(23/128)⟩ := split_y ⟨(681/2048),(341/1024)⟩ ⟨(183/1024),(23/128)⟩ (367/2048) (leaf0900 s t r ex ey hm hex hey) (leaf0899 s t r ex ey hm hex hey)
  have node0287 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(183/1024),(23/128)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(183/1024),(23/128)⟩ (681/2048) node0285 node0286
  have node0288 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(91/512),(23/128)⟩ := split_y ⟨(85/256),(341/1024)⟩ ⟨(91/512),(23/128)⟩ (183/1024) node0284 node0287
  have node0289 : Holds P ⟨(341/1024),(683/2048)⟩ ⟨(91/512),(183/1024)⟩ := split_y ⟨(341/1024),(683/2048)⟩ ⟨(91/512),(183/1024)⟩ (365/2048) (leaf0898 s t r ex ey hm hex hey) (leaf0897 s t r ex ey hm hex hey)
  have node0290 : Holds P ⟨(683/2048),(171/512)⟩ ⟨(91/512),(183/1024)⟩ := split_y ⟨(683/2048),(171/512)⟩ ⟨(91/512),(183/1024)⟩ (365/2048) (leaf0896 s t r ex ey hm hex hey) (leaf0895 s t r ex ey hm hex hey)
  have node0291 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(91/512),(183/1024)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(91/512),(183/1024)⟩ (683/2048) node0289 node0290
  have node0292 : Holds P ⟨(341/1024),(683/2048)⟩ ⟨(183/1024),(23/128)⟩ := split_y ⟨(341/1024),(683/2048)⟩ ⟨(183/1024),(23/128)⟩ (367/2048) (leaf0894 s t r ex ey hm hex hey) (leaf0893 s t r ex ey hm hex hey)
  have node0293 : Holds P ⟨(683/2048),(171/512)⟩ ⟨(183/1024),(23/128)⟩ := split_y ⟨(683/2048),(171/512)⟩ ⟨(183/1024),(23/128)⟩ (367/2048) (leaf0892 s t r ex ey hm hex hey) (leaf0891 s t r ex ey hm hex hey)
  have node0294 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(183/1024),(23/128)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(183/1024),(23/128)⟩ (683/2048) node0292 node0293
  have node0295 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(91/512),(23/128)⟩ := split_y ⟨(341/1024),(171/512)⟩ ⟨(91/512),(23/128)⟩ (183/1024) node0291 node0294
  have node0296 : Holds P ⟨(85/256),(171/512)⟩ ⟨(91/512),(23/128)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(91/512),(23/128)⟩ (341/1024) node0288 node0295
  have node0297 : Holds P ⟨(85/256),(171/512)⟩ ⟨(45/256),(23/128)⟩ := split_y ⟨(85/256),(171/512)⟩ ⟨(45/256),(23/128)⟩ (91/512) node0281 node0296
  have node0298 : Holds P ⟨(171/512),(685/2048)⟩ ⟨(45/256),(181/1024)⟩ := split_y ⟨(171/512),(685/2048)⟩ ⟨(45/256),(181/1024)⟩ (361/2048) (leaf0890 s t r ex ey hm hex hey) (leaf0889 s t r ex ey hm hex hey)
  have node0299 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(45/256),(181/1024)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(45/256),(181/1024)⟩ (685/2048) node0298 (leaf0888 s t r ex ey hm hex hey)
  have node0300 : Holds P ⟨(171/512),(685/2048)⟩ ⟨(181/1024),(91/512)⟩ := split_y ⟨(171/512),(685/2048)⟩ ⟨(181/1024),(91/512)⟩ (363/2048) (leaf0887 s t r ex ey hm hex hey) (leaf0886 s t r ex ey hm hex hey)
  have node0301 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(181/1024),(91/512)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(181/1024),(91/512)⟩ (685/2048) node0300 (leaf0885 s t r ex ey hm hex hey)
  have node0302 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(45/256),(91/512)⟩ := split_y ⟨(171/512),(343/1024)⟩ ⟨(45/256),(91/512)⟩ (181/1024) node0299 node0301
  have node0303 : Holds P ⟨(171/512),(43/128)⟩ ⟨(45/256),(91/512)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(45/256),(91/512)⟩ (343/1024) node0302 (leaf0884 s t r ex ey hm hex hey)
  have node0304 : Holds P ⟨(171/512),(685/2048)⟩ ⟨(91/512),(183/1024)⟩ := split_y ⟨(171/512),(685/2048)⟩ ⟨(91/512),(183/1024)⟩ (365/2048) (leaf0883 s t r ex ey hm hex hey) (leaf0882 s t r ex ey hm hex hey)
  have node0305 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(91/512),(183/1024)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(91/512),(183/1024)⟩ (685/2048) node0304 (leaf0881 s t r ex ey hm hex hey)
  have node0306 : Holds P ⟨(171/512),(685/2048)⟩ ⟨(183/1024),(23/128)⟩ := split_y ⟨(171/512),(685/2048)⟩ ⟨(183/1024),(23/128)⟩ (367/2048) (leaf0880 s t r ex ey hm hex hey) (leaf0879 s t r ex ey hm hex hey)
  have node0307 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(183/1024),(23/128)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(183/1024),(23/128)⟩ (685/2048) node0306 (leaf0878 s t r ex ey hm hex hey)
  have node0308 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(91/512),(23/128)⟩ := split_y ⟨(171/512),(343/1024)⟩ ⟨(91/512),(23/128)⟩ (183/1024) node0305 node0307
  have node0309 : Holds P ⟨(171/512),(43/128)⟩ ⟨(91/512),(23/128)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(91/512),(23/128)⟩ (343/1024) node0308 (leaf0877 s t r ex ey hm hex hey)
  have node0310 : Holds P ⟨(171/512),(43/128)⟩ ⟨(45/256),(23/128)⟩ := split_y ⟨(171/512),(43/128)⟩ ⟨(45/256),(23/128)⟩ (91/512) node0303 node0309
  have node0311 : Holds P ⟨(85/256),(43/128)⟩ ⟨(45/256),(23/128)⟩ := split_x ⟨(85/256),(43/128)⟩ ⟨(45/256),(23/128)⟩ (171/512) node0297 node0310
  have node0312 : Holds P ⟨(85/256),(43/128)⟩ ⟨(11/64),(23/128)⟩ := split_y ⟨(85/256),(43/128)⟩ ⟨(11/64),(23/128)⟩ (45/256) node0266 node0311
  have node0313 : Holds P ⟨(21/64),(43/128)⟩ ⟨(11/64),(23/128)⟩ := split_x ⟨(21/64),(43/128)⟩ ⟨(11/64),(23/128)⟩ (85/256) node0221 node0312
  have node0314 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(23/128),(185/1024)⟩ := split_x ⟨(339/1024),(85/256)⟩ ⟨(23/128),(185/1024)⟩ (679/2048) (leaf0874 s t r ex ey hm hex hey) (leaf0873 s t r ex ey hm hex hey)
  have node0315 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(23/128),(93/512)⟩ := split_y ⟨(339/1024),(85/256)⟩ ⟨(23/128),(93/512)⟩ (185/1024) node0314 (leaf0872 s t r ex ey hm hex hey)
  have node0316 : Holds P ⟨(169/512),(85/256)⟩ ⟨(23/128),(93/512)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(23/128),(93/512)⟩ (339/1024) (leaf0875 s t r ex ey hm hex hey) node0315
  have node0317 : Holds P ⟨(339/1024),(85/256)⟩ ⟨(93/512),(47/256)⟩ := split_y ⟨(339/1024),(85/256)⟩ ⟨(93/512),(47/256)⟩ (187/1024) (leaf0870 s t r ex ey hm hex hey) (leaf0869 s t r ex ey hm hex hey)
  have node0318 : Holds P ⟨(169/512),(85/256)⟩ ⟨(93/512),(47/256)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(93/512),(47/256)⟩ (339/1024) (leaf0871 s t r ex ey hm hex hey) node0317
  have node0319 : Holds P ⟨(169/512),(85/256)⟩ ⟨(23/128),(47/256)⟩ := split_y ⟨(169/512),(85/256)⟩ ⟨(23/128),(47/256)⟩ (93/512) node0316 node0318
  have node0320 : Holds P ⟨(21/64),(85/256)⟩ ⟨(23/128),(47/256)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(23/128),(47/256)⟩ (169/512) (leaf0876 s t r ex ey hm hex hey) node0319
  have node0321 : Holds P ⟨(169/512),(85/256)⟩ ⟨(47/256),(95/512)⟩ := split_x ⟨(169/512),(85/256)⟩ ⟨(47/256),(95/512)⟩ (339/1024) (leaf0867 s t r ex ey hm hex hey) (leaf0866 s t r ex ey hm hex hey)
  have node0322 : Holds P ⟨(169/512),(85/256)⟩ ⟨(47/256),(3/16)⟩ := split_y ⟨(169/512),(85/256)⟩ ⟨(47/256),(3/16)⟩ (95/512) node0321 (leaf0865 s t r ex ey hm hex hey)
  have node0323 : Holds P ⟨(21/64),(85/256)⟩ ⟨(47/256),(3/16)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(47/256),(3/16)⟩ (169/512) (leaf0868 s t r ex ey hm hex hey) node0322
  have node0324 : Holds P ⟨(21/64),(85/256)⟩ ⟨(23/128),(3/16)⟩ := split_y ⟨(21/64),(85/256)⟩ ⟨(23/128),(3/16)⟩ (47/256) node0320 node0323
  have node0325 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(23/128),(185/1024)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(23/128),(185/1024)⟩ (681/2048) (leaf0864 s t r ex ey hm hex hey) (leaf0863 s t r ex ey hm hex hey)
  have node0326 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(185/1024),(93/512)⟩ := split_x ⟨(85/256),(341/1024)⟩ ⟨(185/1024),(93/512)⟩ (681/2048) (leaf0862 s t r ex ey hm hex hey) (leaf0861 s t r ex ey hm hex hey)
  have node0327 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(23/128),(93/512)⟩ := split_y ⟨(85/256),(341/1024)⟩ ⟨(23/128),(93/512)⟩ (185/1024) node0325 node0326
  have node0328 : Holds P ⟨(341/1024),(683/2048)⟩ ⟨(23/128),(185/1024)⟩ := split_y ⟨(341/1024),(683/2048)⟩ ⟨(23/128),(185/1024)⟩ (369/2048) (leaf0860 s t r ex ey hm hex hey) (leaf0859 s t r ex ey hm hex hey)
  have node0329 : Holds P ⟨(683/2048),(171/512)⟩ ⟨(23/128),(185/1024)⟩ := split_y ⟨(683/2048),(171/512)⟩ ⟨(23/128),(185/1024)⟩ (369/2048) (leaf0858 s t r ex ey hm hex hey) (leaf0857 s t r ex ey hm hex hey)
  have node0330 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(23/128),(185/1024)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(23/128),(185/1024)⟩ (683/2048) node0328 node0329
  have node0331 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(185/1024),(93/512)⟩ := split_x ⟨(341/1024),(171/512)⟩ ⟨(185/1024),(93/512)⟩ (683/2048) (leaf0856 s t r ex ey hm hex hey) (leaf0855 s t r ex ey hm hex hey)
  have node0332 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(23/128),(93/512)⟩ := split_y ⟨(341/1024),(171/512)⟩ ⟨(23/128),(93/512)⟩ (185/1024) node0330 node0331
  have node0333 : Holds P ⟨(85/256),(171/512)⟩ ⟨(23/128),(93/512)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(23/128),(93/512)⟩ (341/1024) node0327 node0332
  have node0334 : Holds P ⟨(85/256),(341/1024)⟩ ⟨(93/512),(47/256)⟩ := split_y ⟨(85/256),(341/1024)⟩ ⟨(93/512),(47/256)⟩ (187/1024) (leaf0854 s t r ex ey hm hex hey) (leaf0853 s t r ex ey hm hex hey)
  have node0335 : Holds P ⟨(341/1024),(171/512)⟩ ⟨(93/512),(47/256)⟩ := split_y ⟨(341/1024),(171/512)⟩ ⟨(93/512),(47/256)⟩ (187/1024) (leaf0852 s t r ex ey hm hex hey) (leaf0851 s t r ex ey hm hex hey)
  have node0336 : Holds P ⟨(85/256),(171/512)⟩ ⟨(93/512),(47/256)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(93/512),(47/256)⟩ (341/1024) node0334 node0335
  have node0337 : Holds P ⟨(85/256),(171/512)⟩ ⟨(23/128),(47/256)⟩ := split_y ⟨(85/256),(171/512)⟩ ⟨(23/128),(47/256)⟩ (93/512) node0333 node0336
  have node0338 : Holds P ⟨(171/512),(685/2048)⟩ ⟨(23/128),(185/1024)⟩ := split_y ⟨(171/512),(685/2048)⟩ ⟨(23/128),(185/1024)⟩ (369/2048) (leaf0850 s t r ex ey hm hex hey) (leaf0849 s t r ex ey hm hex hey)
  have node0339 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(23/128),(185/1024)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(23/128),(185/1024)⟩ (685/2048) node0338 (leaf0848 s t r ex ey hm hex hey)
  have node0340 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(185/1024),(93/512)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(185/1024),(93/512)⟩ (685/2048) (leaf0847 s t r ex ey hm hex hey) (leaf0846 s t r ex ey hm hex hey)
  have node0341 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(23/128),(93/512)⟩ := split_y ⟨(171/512),(343/1024)⟩ ⟨(23/128),(93/512)⟩ (185/1024) node0339 node0340
  have node0342 : Holds P ⟨(171/512),(43/128)⟩ ⟨(23/128),(93/512)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(23/128),(93/512)⟩ (343/1024) node0341 (leaf0845 s t r ex ey hm hex hey)
  have node0343 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(93/512),(187/1024)⟩ := split_x ⟨(171/512),(343/1024)⟩ ⟨(93/512),(187/1024)⟩ (685/2048) (leaf0844 s t r ex ey hm hex hey) (leaf0843 s t r ex ey hm hex hey)
  have node0344 : Holds P ⟨(171/512),(343/1024)⟩ ⟨(93/512),(47/256)⟩ := split_y ⟨(171/512),(343/1024)⟩ ⟨(93/512),(47/256)⟩ (187/1024) node0343 (leaf0842 s t r ex ey hm hex hey)
  have node0345 : Holds P ⟨(171/512),(43/128)⟩ ⟨(93/512),(47/256)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(93/512),(47/256)⟩ (343/1024) node0344 (leaf0841 s t r ex ey hm hex hey)
  have node0346 : Holds P ⟨(171/512),(43/128)⟩ ⟨(23/128),(47/256)⟩ := split_y ⟨(171/512),(43/128)⟩ ⟨(23/128),(47/256)⟩ (93/512) node0342 node0345
  have node0347 : Holds P ⟨(85/256),(43/128)⟩ ⟨(23/128),(47/256)⟩ := split_x ⟨(85/256),(43/128)⟩ ⟨(23/128),(47/256)⟩ (171/512) node0337 node0346
  have node0348 : Holds P ⟨(85/256),(171/512)⟩ ⟨(47/256),(95/512)⟩ := split_x ⟨(85/256),(171/512)⟩ ⟨(47/256),(95/512)⟩ (341/1024) (leaf0840 s t r ex ey hm hex hey) (leaf0839 s t r ex ey hm hex hey)
  have node0349 : Holds P ⟨(85/256),(171/512)⟩ ⟨(47/256),(3/16)⟩ := split_y ⟨(85/256),(171/512)⟩ ⟨(47/256),(3/16)⟩ (95/512) node0348 (leaf0838 s t r ex ey hm hex hey)
  have node0350 : Holds P ⟨(171/512),(43/128)⟩ ⟨(47/256),(95/512)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(47/256),(95/512)⟩ (343/1024) (leaf0837 s t r ex ey hm hex hey) (leaf0836 s t r ex ey hm hex hey)
  have node0351 : Holds P ⟨(171/512),(43/128)⟩ ⟨(95/512),(3/16)⟩ := split_x ⟨(171/512),(43/128)⟩ ⟨(95/512),(3/16)⟩ (343/1024) (leaf0835 s t r ex ey hm hex hey) (leaf0834 s t r ex ey hm hex hey)
  have node0352 : Holds P ⟨(171/512),(43/128)⟩ ⟨(47/256),(3/16)⟩ := split_y ⟨(171/512),(43/128)⟩ ⟨(47/256),(3/16)⟩ (95/512) node0350 node0351
  have node0353 : Holds P ⟨(85/256),(43/128)⟩ ⟨(47/256),(3/16)⟩ := split_x ⟨(85/256),(43/128)⟩ ⟨(47/256),(3/16)⟩ (171/512) node0349 node0352
  have node0354 : Holds P ⟨(85/256),(43/128)⟩ ⟨(23/128),(3/16)⟩ := split_y ⟨(85/256),(43/128)⟩ ⟨(23/128),(3/16)⟩ (47/256) node0347 node0353
  have node0355 : Holds P ⟨(21/64),(43/128)⟩ ⟨(23/128),(3/16)⟩ := split_x ⟨(21/64),(43/128)⟩ ⟨(23/128),(3/16)⟩ (85/256) node0324 node0354
  have node0356 : Holds P ⟨(21/64),(43/128)⟩ ⟨(11/64),(3/16)⟩ := split_y ⟨(21/64),(43/128)⟩ ⟨(11/64),(3/16)⟩ (23/128) node0313 node0355
  have node0357 : Holds P ⟨(43/128),(87/256)⟩ ⟨(11/64),(23/128)⟩ := split_y ⟨(43/128),(87/256)⟩ ⟨(11/64),(23/128)⟩ (45/256) (leaf0833 s t r ex ey hm hex hey) (leaf0832 s t r ex ey hm hex hey)
  have node0358 : Holds P ⟨(43/128),(11/32)⟩ ⟨(11/64),(23/128)⟩ := split_x ⟨(43/128),(11/32)⟩ ⟨(11/64),(23/128)⟩ (87/256) node0357 (leaf0831 s t r ex ey hm hex hey)
  have node0359 : Holds P ⟨(43/128),(87/256)⟩ ⟨(23/128),(3/16)⟩ := split_y ⟨(43/128),(87/256)⟩ ⟨(23/128),(3/16)⟩ (47/256) (leaf0830 s t r ex ey hm hex hey) (leaf0829 s t r ex ey hm hex hey)
  have node0360 : Holds P ⟨(43/128),(11/32)⟩ ⟨(23/128),(3/16)⟩ := split_x ⟨(43/128),(11/32)⟩ ⟨(23/128),(3/16)⟩ (87/256) node0359 (leaf0828 s t r ex ey hm hex hey)
  have node0361 : Holds P ⟨(43/128),(11/32)⟩ ⟨(11/64),(3/16)⟩ := split_y ⟨(43/128),(11/32)⟩ ⟨(11/64),(3/16)⟩ (23/128) node0358 node0360
  have node0362 : Holds P ⟨(21/64),(11/32)⟩ ⟨(11/64),(3/16)⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(11/64),(3/16)⟩ (43/128) node0356 node0361
  have node0363 : Holds P ⟨(21/64),(11/32)⟩ ⟨(5/32),(3/16)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(5/32),(3/16)⟩ (11/64) node0192 node0362
  have node0364 : Holds P ⟨(5/16),(11/32)⟩ ⟨(5/32),(3/16)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(5/32),(3/16)⟩ (21/64) node0061 node0363
  have node0365 : Holds P ⟨(5/16),(11/32)⟩ ⟨(1/8),(3/16)⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨(1/8),(3/16)⟩ (5/32) node0048 node0364
  have node0366 : Holds P ⟨(11/32),(45/128)⟩ ⟨(1/8),(9/64)⟩ := split_y ⟨(11/32),(45/128)⟩ ⟨(1/8),(9/64)⟩ (17/128) (leaf0827 s t r ex ey hm hex hey) (leaf0826 s t r ex ey hm hex hey)
  have node0367 : Holds P ⟨(11/32),(23/64)⟩ ⟨(1/8),(9/64)⟩ := split_x ⟨(11/32),(23/64)⟩ ⟨(1/8),(9/64)⟩ (45/128) node0366 (leaf0825 s t r ex ey hm hex hey)
  have node0368 : Holds P ⟨(11/32),(23/64)⟩ ⟨(9/64),(5/32)⟩ := split_x ⟨(11/32),(23/64)⟩ ⟨(9/64),(5/32)⟩ (45/128) (leaf0824 s t r ex ey hm hex hey) (leaf0823 s t r ex ey hm hex hey)
  have node0369 : Holds P ⟨(11/32),(23/64)⟩ ⟨(1/8),(5/32)⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨(1/8),(5/32)⟩ (9/64) node0367 node0368
  have node0370 : Holds P ⟨(11/32),(3/8)⟩ ⟨(1/8),(5/32)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(1/8),(5/32)⟩ (23/64) node0369 (leaf0822 s t r ex ey hm hex hey)
  have node0371 : Holds P ⟨(11/32),(23/64)⟩ ⟨(5/32),(11/64)⟩ := split_x ⟨(11/32),(23/64)⟩ ⟨(5/32),(11/64)⟩ (45/128) (leaf0821 s t r ex ey hm hex hey) (leaf0820 s t r ex ey hm hex hey)
  have node0372 : Holds P ⟨(11/32),(23/64)⟩ ⟨(5/32),(3/16)⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨(5/32),(3/16)⟩ (11/64) node0371 (leaf0819 s t r ex ey hm hex hey)
  have node0373 : Holds P ⟨(11/32),(3/8)⟩ ⟨(5/32),(3/16)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(5/32),(3/16)⟩ (23/64) node0372 (leaf0818 s t r ex ey hm hex hey)
  have node0374 : Holds P ⟨(11/32),(3/8)⟩ ⟨(1/8),(3/16)⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨(1/8),(3/16)⟩ (5/32) node0370 node0373
  have node0375 : Holds P ⟨(5/16),(3/8)⟩ ⟨(1/8),(3/16)⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨(1/8),(3/16)⟩ (11/32) node0365 node0374
  have node0376 : Holds P ⟨(83/256),(21/64)⟩ ⟨(3/16),(25/128)⟩ := split_y ⟨(83/256),(21/64)⟩ ⟨(3/16),(25/128)⟩ (49/256) (leaf0815 s t r ex ey hm hex hey) (leaf0814 s t r ex ey hm hex hey)
  have node0377 : Holds P ⟨(41/128),(21/64)⟩ ⟨(3/16),(25/128)⟩ := split_x ⟨(41/128),(21/64)⟩ ⟨(3/16),(25/128)⟩ (83/256) (leaf0816 s t r ex ey hm hex hey) node0376
  have node0378 : Holds P ⟨(83/256),(21/64)⟩ ⟨(25/128),(13/64)⟩ := split_y ⟨(83/256),(21/64)⟩ ⟨(25/128),(13/64)⟩ (51/256) (leaf0812 s t r ex ey hm hex hey) (leaf0811 s t r ex ey hm hex hey)
  have node0379 : Holds P ⟨(41/128),(21/64)⟩ ⟨(25/128),(13/64)⟩ := split_x ⟨(41/128),(21/64)⟩ ⟨(25/128),(13/64)⟩ (83/256) (leaf0813 s t r ex ey hm hex hey) node0378
  have node0380 : Holds P ⟨(41/128),(21/64)⟩ ⟨(3/16),(13/64)⟩ := split_y ⟨(41/128),(21/64)⟩ ⟨(3/16),(13/64)⟩ (25/128) node0377 node0379
  have node0381 : Holds P ⟨(5/16),(21/64)⟩ ⟨(3/16),(13/64)⟩ := split_x ⟨(5/16),(21/64)⟩ ⟨(3/16),(13/64)⟩ (41/128) (leaf0817 s t r ex ey hm hex hey) node0380
  have node0382 : Holds P ⟨(41/128),(21/64)⟩ ⟨(13/64),(27/128)⟩ := split_x ⟨(41/128),(21/64)⟩ ⟨(13/64),(27/128)⟩ (83/256) (leaf0809 s t r ex ey hm hex hey) (leaf0808 s t r ex ey hm hex hey)
  have node0383 : Holds P ⟨(41/128),(21/64)⟩ ⟨(13/64),(7/32)⟩ := split_y ⟨(41/128),(21/64)⟩ ⟨(13/64),(7/32)⟩ (27/128) node0382 (leaf0807 s t r ex ey hm hex hey)
  have node0384 : Holds P ⟨(5/16),(21/64)⟩ ⟨(13/64),(7/32)⟩ := split_x ⟨(5/16),(21/64)⟩ ⟨(13/64),(7/32)⟩ (41/128) (leaf0810 s t r ex ey hm hex hey) node0383
  have node0385 : Holds P ⟨(5/16),(21/64)⟩ ⟨(3/16),(7/32)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(3/16),(7/32)⟩ (13/64) node0381 node0384
  have node0386 : Holds P ⟨(169/512),(85/256)⟩ ⟨(3/16),(49/256)⟩ := split_y ⟨(169/512),(85/256)⟩ ⟨(3/16),(49/256)⟩ (97/512) (leaf0805 s t r ex ey hm hex hey) (leaf0804 s t r ex ey hm hex hey)
  have node0387 : Holds P ⟨(21/64),(85/256)⟩ ⟨(3/16),(49/256)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(3/16),(49/256)⟩ (169/512) (leaf0806 s t r ex ey hm hex hey) node0386
  have node0388 : Holds P ⟨(21/64),(85/256)⟩ ⟨(49/256),(25/128)⟩ := split_x ⟨(21/64),(85/256)⟩ ⟨(49/256),(25/128)⟩ (169/512) (leaf0803 s t r ex ey hm hex hey) (leaf0802 s t r ex ey hm hex hey)
  have node0389 : Holds P ⟨(21/64),(85/256)⟩ ⟨(3/16),(25/128)⟩ := split_y ⟨(21/64),(85/256)⟩ ⟨(3/16),(25/128)⟩ (49/256) node0387 node0388
  have node0390 : Holds P ⟨(85/256),(171/512)⟩ ⟨(3/16),(49/256)⟩ := split_y ⟨(85/256),(171/512)⟩ ⟨(3/16),(49/256)⟩ (97/512) (leaf0801 s t r ex ey hm hex hey) (leaf0800 s t r ex ey hm hex hey)
  have node0391 : Holds P ⟨(171/512),(43/128)⟩ ⟨(3/16),(49/256)⟩ := split_y ⟨(171/512),(43/128)⟩ ⟨(3/16),(49/256)⟩ (97/512) (leaf0799 s t r ex ey hm hex hey) (leaf0798 s t r ex ey hm hex hey)
  have node0392 : Holds P ⟨(85/256),(43/128)⟩ ⟨(3/16),(49/256)⟩ := split_x ⟨(85/256),(43/128)⟩ ⟨(3/16),(49/256)⟩ (171/512) node0390 node0391
  have node0393 : Holds P ⟨(85/256),(43/128)⟩ ⟨(49/256),(25/128)⟩ := split_x ⟨(85/256),(43/128)⟩ ⟨(49/256),(25/128)⟩ (171/512) (leaf0797 s t r ex ey hm hex hey) (leaf0796 s t r ex ey hm hex hey)
  have node0394 : Holds P ⟨(85/256),(43/128)⟩ ⟨(3/16),(25/128)⟩ := split_y ⟨(85/256),(43/128)⟩ ⟨(3/16),(25/128)⟩ (49/256) node0392 node0393
  have node0395 : Holds P ⟨(21/64),(43/128)⟩ ⟨(3/16),(25/128)⟩ := split_x ⟨(21/64),(43/128)⟩ ⟨(3/16),(25/128)⟩ (85/256) node0389 node0394
  have node0396 : Holds P ⟨(21/64),(85/256)⟩ ⟨(25/128),(13/64)⟩ := split_y ⟨(21/64),(85/256)⟩ ⟨(25/128),(13/64)⟩ (51/256) (leaf0795 s t r ex ey hm hex hey) (leaf0794 s t r ex ey hm hex hey)
  have node0397 : Holds P ⟨(85/256),(43/128)⟩ ⟨(25/128),(13/64)⟩ := split_y ⟨(85/256),(43/128)⟩ ⟨(25/128),(13/64)⟩ (51/256) (leaf0793 s t r ex ey hm hex hey) (leaf0792 s t r ex ey hm hex hey)
  have node0398 : Holds P ⟨(21/64),(43/128)⟩ ⟨(25/128),(13/64)⟩ := split_x ⟨(21/64),(43/128)⟩ ⟨(25/128),(13/64)⟩ (85/256) node0396 node0397
  have node0399 : Holds P ⟨(21/64),(43/128)⟩ ⟨(3/16),(13/64)⟩ := split_y ⟨(21/64),(43/128)⟩ ⟨(3/16),(13/64)⟩ (25/128) node0395 node0398
  have node0400 : Holds P ⟨(43/128),(87/256)⟩ ⟨(3/16),(49/256)⟩ := split_x ⟨(43/128),(87/256)⟩ ⟨(3/16),(49/256)⟩ (173/512) (leaf0791 s t r ex ey hm hex hey) (leaf0790 s t r ex ey hm hex hey)
  have node0401 : Holds P ⟨(43/128),(87/256)⟩ ⟨(49/256),(25/128)⟩ := split_x ⟨(43/128),(87/256)⟩ ⟨(49/256),(25/128)⟩ (173/512) (leaf0789 s t r ex ey hm hex hey) (leaf0788 s t r ex ey hm hex hey)
  have node0402 : Holds P ⟨(43/128),(87/256)⟩ ⟨(3/16),(25/128)⟩ := split_y ⟨(43/128),(87/256)⟩ ⟨(3/16),(25/128)⟩ (49/256) node0400 node0401
  have node0403 : Holds P ⟨(43/128),(11/32)⟩ ⟨(3/16),(25/128)⟩ := split_x ⟨(43/128),(11/32)⟩ ⟨(3/16),(25/128)⟩ (87/256) node0402 (leaf0787 s t r ex ey hm hex hey)
  have node0404 : Holds P ⟨(43/128),(87/256)⟩ ⟨(25/128),(51/256)⟩ := split_x ⟨(43/128),(87/256)⟩ ⟨(25/128),(51/256)⟩ (173/512) (leaf0786 s t r ex ey hm hex hey) (leaf0785 s t r ex ey hm hex hey)
  have node0405 : Holds P ⟨(43/128),(87/256)⟩ ⟨(25/128),(13/64)⟩ := split_y ⟨(43/128),(87/256)⟩ ⟨(25/128),(13/64)⟩ (51/256) node0404 (leaf0784 s t r ex ey hm hex hey)
  have node0406 : Holds P ⟨(43/128),(11/32)⟩ ⟨(25/128),(13/64)⟩ := split_x ⟨(43/128),(11/32)⟩ ⟨(25/128),(13/64)⟩ (87/256) node0405 (leaf0783 s t r ex ey hm hex hey)
  have node0407 : Holds P ⟨(43/128),(11/32)⟩ ⟨(3/16),(13/64)⟩ := split_y ⟨(43/128),(11/32)⟩ ⟨(3/16),(13/64)⟩ (25/128) node0403 node0406
  have node0408 : Holds P ⟨(21/64),(11/32)⟩ ⟨(3/16),(13/64)⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(3/16),(13/64)⟩ (43/128) node0399 node0407
  have node0409 : Holds P ⟨(21/64),(43/128)⟩ ⟨(13/64),(27/128)⟩ := split_x ⟨(21/64),(43/128)⟩ ⟨(13/64),(27/128)⟩ (85/256) (leaf0782 s t r ex ey hm hex hey) (leaf0781 s t r ex ey hm hex hey)
  have node0410 : Holds P ⟨(21/64),(43/128)⟩ ⟨(13/64),(7/32)⟩ := split_y ⟨(21/64),(43/128)⟩ ⟨(13/64),(7/32)⟩ (27/128) node0409 (leaf0780 s t r ex ey hm hex hey)
  have node0411 : Holds P ⟨(43/128),(11/32)⟩ ⟨(13/64),(27/128)⟩ := split_x ⟨(43/128),(11/32)⟩ ⟨(13/64),(27/128)⟩ (87/256) (leaf0779 s t r ex ey hm hex hey) (leaf0778 s t r ex ey hm hex hey)
  have node0412 : Holds P ⟨(43/128),(11/32)⟩ ⟨(27/128),(7/32)⟩ := split_x ⟨(43/128),(11/32)⟩ ⟨(27/128),(7/32)⟩ (87/256) (leaf0777 s t r ex ey hm hex hey) (leaf0776 s t r ex ey hm hex hey)
  have node0413 : Holds P ⟨(43/128),(11/32)⟩ ⟨(13/64),(7/32)⟩ := split_y ⟨(43/128),(11/32)⟩ ⟨(13/64),(7/32)⟩ (27/128) node0411 node0412
  have node0414 : Holds P ⟨(21/64),(11/32)⟩ ⟨(13/64),(7/32)⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(13/64),(7/32)⟩ (43/128) node0410 node0413
  have node0415 : Holds P ⟨(21/64),(11/32)⟩ ⟨(3/16),(7/32)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(3/16),(7/32)⟩ (13/64) node0408 node0414
  have node0416 : Holds P ⟨(5/16),(11/32)⟩ ⟨(3/16),(7/32)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(3/16),(7/32)⟩ (21/64) node0385 node0415
  have node0417 : Holds P ⟨(5/16),(21/64)⟩ ⟨(7/32),(15/64)⟩ := split_x ⟨(5/16),(21/64)⟩ ⟨(7/32),(15/64)⟩ (41/128) (leaf0775 s t r ex ey hm hex hey) (leaf0774 s t r ex ey hm hex hey)
  have node0418 : Holds P ⟨(5/16),(21/64)⟩ ⟨(15/64),(1/4)⟩ := split_x ⟨(5/16),(21/64)⟩ ⟨(15/64),(1/4)⟩ (41/128) (leaf0773 s t r ex ey hm hex hey) (leaf0772 s t r ex ey hm hex hey)
  have node0419 : Holds P ⟨(5/16),(21/64)⟩ ⟨(7/32),(1/4)⟩ := split_y ⟨(5/16),(21/64)⟩ ⟨(7/32),(1/4)⟩ (15/64) node0417 node0418
  have node0420 : Holds P ⟨(21/64),(43/128)⟩ ⟨(7/32),(15/64)⟩ := split_y ⟨(21/64),(43/128)⟩ ⟨(7/32),(15/64)⟩ (29/128) (leaf0771 s t r ex ey hm hex hey) (leaf0770 s t r ex ey hm hex hey)
  have node0421 : Holds P ⟨(43/128),(11/32)⟩ ⟨(7/32),(15/64)⟩ := split_y ⟨(43/128),(11/32)⟩ ⟨(7/32),(15/64)⟩ (29/128) (leaf0769 s t r ex ey hm hex hey) (leaf0768 s t r ex ey hm hex hey)
  have node0422 : Holds P ⟨(21/64),(11/32)⟩ ⟨(7/32),(15/64)⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(7/32),(15/64)⟩ (43/128) node0420 node0421
  have node0423 : Holds P ⟨(21/64),(11/32)⟩ ⟨(15/64),(1/4)⟩ := split_x ⟨(21/64),(11/32)⟩ ⟨(15/64),(1/4)⟩ (43/128) (leaf0767 s t r ex ey hm hex hey) (leaf0766 s t r ex ey hm hex hey)
  have node0424 : Holds P ⟨(21/64),(11/32)⟩ ⟨(7/32),(1/4)⟩ := split_y ⟨(21/64),(11/32)⟩ ⟨(7/32),(1/4)⟩ (15/64) node0422 node0423
  have node0425 : Holds P ⟨(5/16),(11/32)⟩ ⟨(7/32),(1/4)⟩ := split_x ⟨(5/16),(11/32)⟩ ⟨(7/32),(1/4)⟩ (21/64) node0419 node0424
  have node0426 : Holds P ⟨(5/16),(11/32)⟩ ⟨(3/16),(1/4)⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨(3/16),(1/4)⟩ (7/32) node0416 node0425
  have node0427 : Holds P ⟨(11/32),(23/64)⟩ ⟨(3/16),(7/32)⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨(3/16),(7/32)⟩ (13/64) (leaf0765 s t r ex ey hm hex hey) (leaf0764 s t r ex ey hm hex hey)
  have node0428 : Holds P ⟨(11/32),(3/8)⟩ ⟨(3/16),(7/32)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(3/16),(7/32)⟩ (23/64) node0427 (leaf0763 s t r ex ey hm hex hey)
  have node0429 : Holds P ⟨(11/32),(23/64)⟩ ⟨(7/32),(1/4)⟩ := split_y ⟨(11/32),(23/64)⟩ ⟨(7/32),(1/4)⟩ (15/64) (leaf0762 s t r ex ey hm hex hey) (leaf0761 s t r ex ey hm hex hey)
  have node0430 : Holds P ⟨(11/32),(3/8)⟩ ⟨(7/32),(1/4)⟩ := split_x ⟨(11/32),(3/8)⟩ ⟨(7/32),(1/4)⟩ (23/64) node0429 (leaf0760 s t r ex ey hm hex hey)
  have node0431 : Holds P ⟨(11/32),(3/8)⟩ ⟨(3/16),(1/4)⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨(3/16),(1/4)⟩ (7/32) node0428 node0430
  have node0432 : Holds P ⟨(5/16),(3/8)⟩ ⟨(3/16),(1/4)⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨(3/16),(1/4)⟩ (11/32) node0426 node0431
  have node0433 : Holds P ⟨(5/16),(3/8)⟩ ⟨(1/8),(1/4)⟩ := split_y ⟨(5/16),(3/8)⟩ ⟨(1/8),(1/4)⟩ (3/16) node0375 node0432
  have node0434 : Holds P ⟨(1/4),(3/8)⟩ ⟨(1/8),(1/4)⟩ := split_x ⟨(1/4),(3/8)⟩ ⟨(1/8),(1/4)⟩ (5/16) node0014 node0433
  exact node0434
#print axioms tile17
end Root0Angular20261003

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

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem tile22 : LeafStatement moments EX EY hull0 hull1 ⟨(1/4),(3/8)⟩ ⟨(3/4),(7/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/4),(9/32)⟩ ⟨(3/4),(13/16)⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨(3/4),(13/16)⟩ (25/32) (leaf0447 s t r ex ey hm hex hey) (leaf0446 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(9/32),(5/16)⟩ ⟨(3/4),(13/16)⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨(3/4),(13/16)⟩ (25/32) (leaf0445 s t r ex ey hm hex hey) (leaf0444 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/4),(5/16)⟩ ⟨(3/4),(13/16)⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨(3/4),(13/16)⟩ (9/32) node0000 node0001
  have node0003 : Holds P ⟨(1/4),(9/32)⟩ ⟨(13/16),(27/32)⟩ := split_x ⟨(1/4),(9/32)⟩ ⟨(13/16),(27/32)⟩ (17/64) (leaf0443 s t r ex ey hm hex hey) (leaf0442 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(1/4),(17/64)⟩ ⟨(27/32),(7/8)⟩ := split_y ⟨(1/4),(17/64)⟩ ⟨(27/32),(7/8)⟩ (55/64) (leaf0441 s t r ex ey hm hex hey) (leaf0440 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(1/4),(9/32)⟩ ⟨(27/32),(7/8)⟩ := split_x ⟨(1/4),(9/32)⟩ ⟨(27/32),(7/8)⟩ (17/64) node0004 (leaf0439 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(1/4),(9/32)⟩ ⟨(13/16),(7/8)⟩ := split_y ⟨(1/4),(9/32)⟩ ⟨(13/16),(7/8)⟩ (27/32) node0003 node0005
  have node0007 : Holds P ⟨(9/32),(5/16)⟩ ⟨(27/32),(7/8)⟩ := split_x ⟨(9/32),(5/16)⟩ ⟨(27/32),(7/8)⟩ (19/64) (leaf0437 s t r ex ey hm hex hey) (leaf0436 s t r ex ey hm hex hey)
  have node0008 : Holds P ⟨(9/32),(5/16)⟩ ⟨(13/16),(7/8)⟩ := split_y ⟨(9/32),(5/16)⟩ ⟨(13/16),(7/8)⟩ (27/32) (leaf0438 s t r ex ey hm hex hey) node0007
  have node0009 : Holds P ⟨(1/4),(5/16)⟩ ⟨(13/16),(7/8)⟩ := split_x ⟨(1/4),(5/16)⟩ ⟨(13/16),(7/8)⟩ (9/32) node0006 node0008
  have node0010 : Holds P ⟨(1/4),(5/16)⟩ ⟨(3/4),(7/8)⟩ := split_y ⟨(1/4),(5/16)⟩ ⟨(3/4),(7/8)⟩ (13/16) node0002 node0009
  have node0011 : Holds P ⟨(5/16),(11/32)⟩ ⟨(3/4),(13/16)⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨(3/4),(13/16)⟩ (25/32) (leaf0435 s t r ex ey hm hex hey) (leaf0434 s t r ex ey hm hex hey)
  have node0012 : Holds P ⟨(11/32),(3/8)⟩ ⟨(3/4),(13/16)⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨(3/4),(13/16)⟩ (25/32) (leaf0433 s t r ex ey hm hex hey) (leaf0432 s t r ex ey hm hex hey)
  have node0013 : Holds P ⟨(5/16),(3/8)⟩ ⟨(3/4),(13/16)⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨(3/4),(13/16)⟩ (11/32) node0011 node0012
  have node0014 : Holds P ⟨(5/16),(11/32)⟩ ⟨(13/16),(7/8)⟩ := split_y ⟨(5/16),(11/32)⟩ ⟨(13/16),(7/8)⟩ (27/32) (leaf0431 s t r ex ey hm hex hey) (leaf0430 s t r ex ey hm hex hey)
  have node0015 : Holds P ⟨(11/32),(3/8)⟩ ⟨(13/16),(7/8)⟩ := split_y ⟨(11/32),(3/8)⟩ ⟨(13/16),(7/8)⟩ (27/32) (leaf0429 s t r ex ey hm hex hey) (leaf0428 s t r ex ey hm hex hey)
  have node0016 : Holds P ⟨(5/16),(3/8)⟩ ⟨(13/16),(7/8)⟩ := split_x ⟨(5/16),(3/8)⟩ ⟨(13/16),(7/8)⟩ (11/32) node0014 node0015
  have node0017 : Holds P ⟨(5/16),(3/8)⟩ ⟨(3/4),(7/8)⟩ := split_y ⟨(5/16),(3/8)⟩ ⟨(3/4),(7/8)⟩ (13/16) node0013 node0016
  have node0018 : Holds P ⟨(1/4),(3/8)⟩ ⟨(3/4),(7/8)⟩ := split_x ⟨(1/4),(3/8)⟩ ⟨(3/4),(7/8)⟩ (5/16) node0010 node0017
  exact node0018
#print axioms tile22
end Root0Angular20261003

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
