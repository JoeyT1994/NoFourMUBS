import ParametricAngularLeaf
import Root1CertificateData
import Root1Leaves52
import Root1Leaves53
import Root1Leaves54
import Root1Leaves55
import Root1Leaves56
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace ShoulderRoot1Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
open Root0Angular20261003 (ArcCert TrigCert Holds turnPhase split_x split_y)
open ShoulderAngular20261003
open ShoulderRoot1Data20261003
theorem tile08 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(1/4)⟩ ⟨0,(1/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/8),(3/16)⟩ ⟨0,(1/8)⟩ := split_y ⟨(1/8),(3/16)⟩ ⟨0,(1/8)⟩ (1/16) (leaf1353 s t r ex ey hm hex hey) (leaf1352 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/16),(1/4)⟩ ⟨0,(1/16)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨0,(1/16)⟩ (7/32) (leaf1351 s t r ex ey hm hex hey) (leaf1350 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(3/16),(1/4)⟩ ⟨(1/16),(1/8)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(1/16),(1/8)⟩ (7/32) (leaf1349 s t r ex ey hm hex hey) (leaf1348 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(3/16),(1/4)⟩ ⟨0,(1/8)⟩ := split_y ⟨(3/16),(1/4)⟩ ⟨0,(1/8)⟩ (1/16) node0001 node0002
  have node0004 : Holds P ⟨(1/8),(1/4)⟩ ⟨0,(1/8)⟩ := split_x ⟨(1/8),(1/4)⟩ ⟨0,(1/8)⟩ (3/16) node0000 node0003
  exact node0004
#print axioms tile08
theorem tile09 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(1/4)⟩ ⟨(1/8),(1/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/8),(3/16)⟩ ⟨(1/8),(1/4)⟩ := split_y ⟨(1/8),(3/16)⟩ ⟨(1/8),(1/4)⟩ (3/16) (leaf1347 s t r ex ey hm hex hey) (leaf1346 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/16),(1/4)⟩ ⟨(1/8),(3/16)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(1/8),(3/16)⟩ (7/32) (leaf1345 s t r ex ey hm hex hey) (leaf1344 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(3/16),(1/4)⟩ ⟨(3/16),(1/4)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(3/16),(1/4)⟩ (7/32) (leaf1343 s t r ex ey hm hex hey) (leaf1342 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(3/16),(1/4)⟩ ⟨(1/8),(1/4)⟩ := split_y ⟨(3/16),(1/4)⟩ ⟨(1/8),(1/4)⟩ (3/16) node0001 node0002
  have node0004 : Holds P ⟨(1/8),(1/4)⟩ ⟨(1/8),(1/4)⟩ := split_x ⟨(1/8),(1/4)⟩ ⟨(1/8),(1/4)⟩ (3/16) node0000 node0003
  exact node0004
#print axioms tile09
theorem tile10 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(1/4)⟩ ⟨(1/4),(3/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/8),(3/16)⟩ ⟨(1/4),(5/16)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(1/4),(5/16)⟩ (5/32) (leaf1341 s t r ex ey hm hex hey) (leaf1340 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/32),(3/16)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(5/32),(3/16)⟩ ⟨(5/16),(3/8)⟩ (11/32) (leaf1338 s t r ex ey hm hex hey) (leaf1337 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/8),(3/16)⟩ ⟨(5/16),(3/8)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(5/16),(3/8)⟩ (5/32) (leaf1339 s t r ex ey hm hex hey) node0001
  have node0003 : Holds P ⟨(1/8),(3/16)⟩ ⟨(1/4),(3/8)⟩ := split_y ⟨(1/8),(3/16)⟩ ⟨(1/4),(3/8)⟩ (5/16) node0000 node0002
  have node0004 : Holds P ⟨(3/16),(1/4)⟩ ⟨(1/4),(5/16)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(1/4),(5/16)⟩ (7/32) (leaf1336 s t r ex ey hm hex hey) (leaf1335 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(3/16),(7/32)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(3/16),(7/32)⟩ ⟨(5/16),(3/8)⟩ (11/32) (leaf1334 s t r ex ey hm hex hey) (leaf1333 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(7/32),(1/4)⟩ ⟨(11/32),(3/8)⟩ := split_x ⟨(7/32),(1/4)⟩ ⟨(11/32),(3/8)⟩ (15/64) (leaf1331 s t r ex ey hm hex hey) (leaf1330 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(7/32),(1/4)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(5/16),(3/8)⟩ (11/32) (leaf1332 s t r ex ey hm hex hey) node0006
  have node0008 : Holds P ⟨(3/16),(1/4)⟩ ⟨(5/16),(3/8)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(5/16),(3/8)⟩ (7/32) node0005 node0007
  have node0009 : Holds P ⟨(3/16),(1/4)⟩ ⟨(1/4),(3/8)⟩ := split_y ⟨(3/16),(1/4)⟩ ⟨(1/4),(3/8)⟩ (5/16) node0004 node0008
  have node0010 : Holds P ⟨(1/8),(1/4)⟩ ⟨(1/4),(3/8)⟩ := split_x ⟨(1/8),(1/4)⟩ ⟨(1/4),(3/8)⟩ (3/16) node0003 node0009
  exact node0010
#print axioms tile10
theorem tile11 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(1/4)⟩ ⟨(3/8),(1/2)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/32),(3/16)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(5/32),(3/16)⟩ ⟨(3/8),(13/32)⟩ (11/64) (leaf1328 s t r ex ey hm hex hey) (leaf1327 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/32),(3/16)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(5/32),(3/16)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0000 (leaf1326 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/8),(3/16)⟩ ⟨(3/8),(7/16)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(3/8),(7/16)⟩ (5/32) (leaf1329 s t r ex ey hm hex hey) node0001
  have node0003 : Holds P ⟨(1/8),(3/16)⟩ ⟨(7/16),(1/2)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(7/16),(1/2)⟩ (5/32) (leaf1325 s t r ex ey hm hex hey) (leaf1324 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(1/8),(3/16)⟩ ⟨(3/8),(1/2)⟩ := split_y ⟨(1/8),(3/16)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0002 node0003
  have node0005 : Holds P ⟨(3/16),(7/32)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(3/16),(7/32)⟩ ⟨(3/8),(13/32)⟩ (13/64) (leaf1323 s t r ex ey hm hex hey) (leaf1322 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(3/16),(7/32)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(3/16),(7/32)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0005 (leaf1321 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(7/32),(15/64)⟩ ⟨(3/8),(13/32)⟩ := split_y ⟨(7/32),(15/64)⟩ ⟨(3/8),(13/32)⟩ (25/64) (leaf1320 s t r ex ey hm hex hey) (leaf1319 s t r ex ey hm hex hey)
  have node0008 : Holds P ⟨(15/64),(1/4)⟩ ⟨(3/8),(13/32)⟩ := split_y ⟨(15/64),(1/4)⟩ ⟨(3/8),(13/32)⟩ (25/64) (leaf1318 s t r ex ey hm hex hey) (leaf1317 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(7/32),(1/4)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(7/32),(1/4)⟩ ⟨(3/8),(13/32)⟩ (15/64) node0007 node0008
  have node0010 : Holds P ⟨(7/32),(1/4)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0009 (leaf1316 s t r ex ey hm hex hey)
  have node0011 : Holds P ⟨(3/16),(1/4)⟩ ⟨(3/8),(7/16)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(3/8),(7/16)⟩ (7/32) node0006 node0010
  have node0012 : Holds P ⟨(7/32),(1/4)⟩ ⟨(7/16),(1/2)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(7/16),(1/2)⟩ (15/32) (leaf1314 s t r ex ey hm hex hey) (leaf1313 s t r ex ey hm hex hey)
  have node0013 : Holds P ⟨(3/16),(1/4)⟩ ⟨(7/16),(1/2)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(7/16),(1/2)⟩ (7/32) (leaf1315 s t r ex ey hm hex hey) node0012
  have node0014 : Holds P ⟨(3/16),(1/4)⟩ ⟨(3/8),(1/2)⟩ := split_y ⟨(3/16),(1/4)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0011 node0013
  have node0015 : Holds P ⟨(1/8),(1/4)⟩ ⟨(3/8),(1/2)⟩ := split_x ⟨(1/8),(1/4)⟩ ⟨(3/8),(1/2)⟩ (3/16) node0004 node0014
  exact node0015
#print axioms tile11
theorem tile12 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(1/4)⟩ ⟨(1/2),(5/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/8),(3/16)⟩ ⟨(1/2),(9/16)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(1/2),(9/16)⟩ (5/32) (leaf1312 s t r ex ey hm hex hey) (leaf1311 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(5/32),(3/16)⟩ ⟨(9/16),(5/8)⟩ := split_y ⟨(5/32),(3/16)⟩ ⟨(9/16),(5/8)⟩ (19/32) (leaf1309 s t r ex ey hm hex hey) (leaf1308 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/8),(3/16)⟩ ⟨(9/16),(5/8)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(9/16),(5/8)⟩ (5/32) (leaf1310 s t r ex ey hm hex hey) node0001
  have node0003 : Holds P ⟨(1/8),(3/16)⟩ ⟨(1/2),(5/8)⟩ := split_y ⟨(1/8),(3/16)⟩ ⟨(1/2),(5/8)⟩ (9/16) node0000 node0002
  have node0004 : Holds P ⟨(3/16),(1/4)⟩ ⟨(1/2),(9/16)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(1/2),(9/16)⟩ (7/32) (leaf1307 s t r ex ey hm hex hey) (leaf1306 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(3/16),(7/32)⟩ ⟨(9/16),(5/8)⟩ := split_y ⟨(3/16),(7/32)⟩ ⟨(9/16),(5/8)⟩ (19/32) (leaf1305 s t r ex ey hm hex hey) (leaf1304 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(7/32),(1/4)⟩ ⟨(9/16),(5/8)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(9/16),(5/8)⟩ (19/32) (leaf1303 s t r ex ey hm hex hey) (leaf1302 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(3/16),(1/4)⟩ ⟨(9/16),(5/8)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(9/16),(5/8)⟩ (7/32) node0005 node0006
  have node0008 : Holds P ⟨(3/16),(1/4)⟩ ⟨(1/2),(5/8)⟩ := split_y ⟨(3/16),(1/4)⟩ ⟨(1/2),(5/8)⟩ (9/16) node0004 node0007
  have node0009 : Holds P ⟨(1/8),(1/4)⟩ ⟨(1/2),(5/8)⟩ := split_x ⟨(1/8),(1/4)⟩ ⟨(1/2),(5/8)⟩ (3/16) node0003 node0008
  exact node0009
#print axioms tile12
theorem tile13 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(1/4)⟩ ⟨(5/8),(3/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/32),(3/16)⟩ ⟨(5/8),(11/16)⟩ := split_y ⟨(5/32),(3/16)⟩ ⟨(5/8),(11/16)⟩ (21/32) (leaf1300 s t r ex ey hm hex hey) (leaf1299 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(1/8),(3/16)⟩ ⟨(5/8),(11/16)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(5/8),(11/16)⟩ (5/32) (leaf1301 s t r ex ey hm hex hey) node0000
  have node0002 : Holds P ⟨(5/32),(3/16)⟩ ⟨(11/16),(3/4)⟩ := split_y ⟨(5/32),(3/16)⟩ ⟨(11/16),(3/4)⟩ (23/32) (leaf1297 s t r ex ey hm hex hey) (leaf1296 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(1/8),(3/16)⟩ ⟨(11/16),(3/4)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(11/16),(3/4)⟩ (5/32) (leaf1298 s t r ex ey hm hex hey) node0002
  have node0004 : Holds P ⟨(1/8),(3/16)⟩ ⟨(5/8),(3/4)⟩ := split_y ⟨(1/8),(3/16)⟩ ⟨(5/8),(3/4)⟩ (11/16) node0001 node0003
  have node0005 : Holds P ⟨(3/16),(7/32)⟩ ⟨(5/8),(11/16)⟩ := split_y ⟨(3/16),(7/32)⟩ ⟨(5/8),(11/16)⟩ (21/32) (leaf1295 s t r ex ey hm hex hey) (leaf1294 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(7/32),(1/4)⟩ ⟨(5/8),(11/16)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(5/8),(11/16)⟩ (21/32) (leaf1293 s t r ex ey hm hex hey) (leaf1292 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(3/16),(1/4)⟩ ⟨(5/8),(11/16)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(5/8),(11/16)⟩ (7/32) node0005 node0006
  have node0008 : Holds P ⟨(3/16),(7/32)⟩ ⟨(11/16),(3/4)⟩ := split_y ⟨(3/16),(7/32)⟩ ⟨(11/16),(3/4)⟩ (23/32) (leaf1291 s t r ex ey hm hex hey) (leaf1290 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(7/32),(1/4)⟩ ⟨(11/16),(3/4)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(11/16),(3/4)⟩ (23/32) (leaf1289 s t r ex ey hm hex hey) (leaf1288 s t r ex ey hm hex hey)
  have node0010 : Holds P ⟨(3/16),(1/4)⟩ ⟨(11/16),(3/4)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(11/16),(3/4)⟩ (7/32) node0008 node0009
  have node0011 : Holds P ⟨(3/16),(1/4)⟩ ⟨(5/8),(3/4)⟩ := split_y ⟨(3/16),(1/4)⟩ ⟨(5/8),(3/4)⟩ (11/16) node0007 node0010
  have node0012 : Holds P ⟨(1/8),(1/4)⟩ ⟨(5/8),(3/4)⟩ := split_x ⟨(1/8),(1/4)⟩ ⟨(5/8),(3/4)⟩ (3/16) node0004 node0011
  exact node0012
#print axioms tile13
theorem tile14 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(1/4)⟩ ⟨(3/4),(7/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(5/32),(3/16)⟩ ⟨(3/4),(13/16)⟩ := split_y ⟨(5/32),(3/16)⟩ ⟨(3/4),(13/16)⟩ (25/32) (leaf1286 s t r ex ey hm hex hey) (leaf1285 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(1/8),(3/16)⟩ ⟨(3/4),(13/16)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(3/4),(13/16)⟩ (5/32) (leaf1287 s t r ex ey hm hex hey) node0000
  have node0002 : Holds P ⟨(1/8),(3/16)⟩ ⟨(13/16),(7/8)⟩ := split_x ⟨(1/8),(3/16)⟩ ⟨(13/16),(7/8)⟩ (5/32) (leaf1284 s t r ex ey hm hex hey) (leaf1283 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(1/8),(3/16)⟩ ⟨(3/4),(7/8)⟩ := split_y ⟨(1/8),(3/16)⟩ ⟨(3/4),(7/8)⟩ (13/16) node0001 node0002
  have node0004 : Holds P ⟨(3/16),(7/32)⟩ ⟨(25/32),(13/16)⟩ := split_x ⟨(3/16),(7/32)⟩ ⟨(25/32),(13/16)⟩ (13/64) (leaf1281 s t r ex ey hm hex hey) (leaf1280 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(3/16),(7/32)⟩ ⟨(3/4),(13/16)⟩ := split_y ⟨(3/16),(7/32)⟩ ⟨(3/4),(13/16)⟩ (25/32) (leaf1282 s t r ex ey hm hex hey) node0004
  have node0006 : Holds P ⟨(7/32),(1/4)⟩ ⟨(25/32),(13/16)⟩ := split_x ⟨(7/32),(1/4)⟩ ⟨(25/32),(13/16)⟩ (15/64) (leaf1278 s t r ex ey hm hex hey) (leaf1277 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(7/32),(1/4)⟩ ⟨(3/4),(13/16)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(3/4),(13/16)⟩ (25/32) (leaf1279 s t r ex ey hm hex hey) node0006
  have node0008 : Holds P ⟨(3/16),(1/4)⟩ ⟨(3/4),(13/16)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(3/4),(13/16)⟩ (7/32) node0005 node0007
  have node0009 : Holds P ⟨(3/16),(7/32)⟩ ⟨(13/16),(7/8)⟩ := split_y ⟨(3/16),(7/32)⟩ ⟨(13/16),(7/8)⟩ (27/32) (leaf1276 s t r ex ey hm hex hey) (leaf1275 s t r ex ey hm hex hey)
  have node0010 : Holds P ⟨(7/32),(1/4)⟩ ⟨(13/16),(27/32)⟩ := split_x ⟨(7/32),(1/4)⟩ ⟨(13/16),(27/32)⟩ (15/64) (leaf1274 s t r ex ey hm hex hey) (leaf1273 s t r ex ey hm hex hey)
  have node0011 : Holds P ⟨(7/32),(1/4)⟩ ⟨(13/16),(7/8)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(13/16),(7/8)⟩ (27/32) node0010 (leaf1272 s t r ex ey hm hex hey)
  have node0012 : Holds P ⟨(3/16),(1/4)⟩ ⟨(13/16),(7/8)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(13/16),(7/8)⟩ (7/32) node0009 node0011
  have node0013 : Holds P ⟨(3/16),(1/4)⟩ ⟨(3/4),(7/8)⟩ := split_y ⟨(3/16),(1/4)⟩ ⟨(3/4),(7/8)⟩ (13/16) node0008 node0012
  have node0014 : Holds P ⟨(1/8),(1/4)⟩ ⟨(3/4),(7/8)⟩ := split_x ⟨(1/8),(1/4)⟩ ⟨(3/4),(7/8)⟩ (3/16) node0003 node0013
  exact node0014
#print axioms tile14
theorem tile15 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(1/4)⟩ ⟨(7/8),1⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/8),(3/16)⟩ ⟨(7/8),1⟩ := split_y ⟨(1/8),(3/16)⟩ ⟨(7/8),1⟩ (15/16) (leaf1271 s t r ex ey hm hex hey) (leaf1270 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(7/32),(1/4)⟩ ⟨(7/8),(15/16)⟩ := split_y ⟨(7/32),(1/4)⟩ ⟨(7/8),(15/16)⟩ (29/32) (leaf1268 s t r ex ey hm hex hey) (leaf1267 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(3/16),(1/4)⟩ ⟨(7/8),(15/16)⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(7/8),(15/16)⟩ (7/32) (leaf1269 s t r ex ey hm hex hey) node0001
  have node0003 : Holds P ⟨(3/16),(1/4)⟩ ⟨(15/16),1⟩ := split_x ⟨(3/16),(1/4)⟩ ⟨(15/16),1⟩ (7/32) (leaf1266 s t r ex ey hm hex hey) (leaf1265 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(3/16),(1/4)⟩ ⟨(7/8),1⟩ := split_y ⟨(3/16),(1/4)⟩ ⟨(7/8),1⟩ (15/16) node0002 node0003
  have node0005 : Holds P ⟨(1/8),(1/4)⟩ ⟨(7/8),1⟩ := split_x ⟨(1/8),(1/4)⟩ ⟨(7/8),1⟩ (3/16) node0000 node0004
  exact node0005
#print axioms tile15
end ShoulderRoot1Angular20261003
