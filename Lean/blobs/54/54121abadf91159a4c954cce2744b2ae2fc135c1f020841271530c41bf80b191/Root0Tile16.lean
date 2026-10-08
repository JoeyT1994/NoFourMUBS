import AngularLeaf
import Root0CoverData
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
