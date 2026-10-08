import ParametricAngularLeaf
import Root1CertificateData
import Root1Leaves11
import Root1Leaves12
import Root1Leaves13
import Root1Leaves14
import Root1Leaves15
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace ShoulderRoot1Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
open Root0Angular20261003 (ArcCert TrigCert Holds turnPhase split_x split_y)
open ShoulderAngular20261003
open ShoulderRoot1Data20261003
theorem tile24 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(1/2)⟩ ⟨0,(1/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(3/8),(13/32)⟩ ⟨0,(1/32)⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨0,(1/32)⟩ (25/64) (leaf0383 s t r ex ey hm hex hey) (leaf0382 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/8),(13/32)⟩ ⟨0,(1/16)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨0,(1/16)⟩ (1/32) node0000 (leaf0381 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(13/32),(7/16)⟩ ⟨0,(1/32)⟩ := split_x ⟨(13/32),(7/16)⟩ ⟨0,(1/32)⟩ (27/64) (leaf0380 s t r ex ey hm hex hey) (leaf0379 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(13/32),(7/16)⟩ ⟨0,(1/16)⟩ := split_y ⟨(13/32),(7/16)⟩ ⟨0,(1/16)⟩ (1/32) node0002 (leaf0378 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(3/8),(7/16)⟩ ⟨0,(1/16)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨0,(1/16)⟩ (13/32) node0001 node0003
  have node0005 : Holds P ⟨(3/8),(13/32)⟩ ⟨(1/16),(1/8)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(1/16),(1/8)⟩ (3/32) (leaf0377 s t r ex ey hm hex hey) (leaf0376 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(3/8),(7/16)⟩ ⟨(1/16),(1/8)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(1/16),(1/8)⟩ (13/32) node0005 (leaf0375 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(3/8),(7/16)⟩ ⟨0,(1/8)⟩ := split_y ⟨(3/8),(7/16)⟩ ⟨0,(1/8)⟩ (1/16) node0004 node0006
  have node0008 : Holds P ⟨(7/16),(15/32)⟩ ⟨(1/32),(1/16)⟩ := split_x ⟨(7/16),(15/32)⟩ ⟨(1/32),(1/16)⟩ (29/64) (leaf0373 s t r ex ey hm hex hey) (leaf0372 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(7/16),(15/32)⟩ ⟨0,(1/16)⟩ := split_y ⟨(7/16),(15/32)⟩ ⟨0,(1/16)⟩ (1/32) (leaf0374 s t r ex ey hm hex hey) node0008
  have node0010 : Holds P ⟨(7/16),(1/2)⟩ ⟨0,(1/16)⟩ := split_x ⟨(7/16),(1/2)⟩ ⟨0,(1/16)⟩ (15/32) node0009 (leaf0371 s t r ex ey hm hex hey)
  have node0011 : Holds P ⟨(15/32),(1/2)⟩ ⟨(1/16),(1/8)⟩ := split_y ⟨(15/32),(1/2)⟩ ⟨(1/16),(1/8)⟩ (3/32) (leaf0369 s t r ex ey hm hex hey) (leaf0368 s t r ex ey hm hex hey)
  have node0012 : Holds P ⟨(7/16),(1/2)⟩ ⟨(1/16),(1/8)⟩ := split_x ⟨(7/16),(1/2)⟩ ⟨(1/16),(1/8)⟩ (15/32) (leaf0370 s t r ex ey hm hex hey) node0011
  have node0013 : Holds P ⟨(7/16),(1/2)⟩ ⟨0,(1/8)⟩ := split_y ⟨(7/16),(1/2)⟩ ⟨0,(1/8)⟩ (1/16) node0010 node0012
  have node0014 : Holds P ⟨(3/8),(1/2)⟩ ⟨0,(1/8)⟩ := split_x ⟨(3/8),(1/2)⟩ ⟨0,(1/8)⟩ (7/16) node0007 node0013
  exact node0014
#print axioms tile24
theorem tile25 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(1/2)⟩ ⟨(1/8),(1/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(3/8),(13/32)⟩ ⟨(1/8),(3/16)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(1/8),(3/16)⟩ (5/32) (leaf0367 s t r ex ey hm hex hey) (leaf0366 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/8),(7/16)⟩ ⟨(1/8),(3/16)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(1/8),(3/16)⟩ (13/32) node0000 (leaf0365 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(3/8),(13/32)⟩ ⟨(3/16),(1/4)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(3/16),(1/4)⟩ (7/32) (leaf0364 s t r ex ey hm hex hey) (leaf0363 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(3/8),(7/16)⟩ ⟨(3/16),(1/4)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(3/16),(1/4)⟩ (13/32) node0002 (leaf0362 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(3/8),(7/16)⟩ ⟨(1/8),(1/4)⟩ := split_y ⟨(3/8),(7/16)⟩ ⟨(1/8),(1/4)⟩ (3/16) node0001 node0003
  have node0005 : Holds P ⟨(7/16),(1/2)⟩ ⟨(1/8),(1/4)⟩ := split_y ⟨(7/16),(1/2)⟩ ⟨(1/8),(1/4)⟩ (3/16) (leaf0361 s t r ex ey hm hex hey) (leaf0360 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(3/8),(1/2)⟩ ⟨(1/8),(1/4)⟩ := split_x ⟨(3/8),(1/2)⟩ ⟨(1/8),(1/4)⟩ (7/16) node0004 node0005
  exact node0006
#print axioms tile25
theorem tile26 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(1/2)⟩ ⟨(1/4),(3/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(3/8),(13/32)⟩ ⟨(1/4),(5/16)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(1/4),(5/16)⟩ (9/32) (leaf0359 s t r ex ey hm hex hey) (leaf0358 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/8),(7/16)⟩ ⟨(1/4),(5/16)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(1/4),(5/16)⟩ (13/32) node0000 (leaf0357 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(3/8),(13/32)⟩ ⟨(5/16),(11/32)⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨(5/16),(11/32)⟩ (25/64) (leaf0356 s t r ex ey hm hex hey) (leaf0355 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(3/8),(25/64)⟩ ⟨(11/32),(3/8)⟩ := split_y ⟨(3/8),(25/64)⟩ ⟨(11/32),(3/8)⟩ (23/64) (leaf0354 s t r ex ey hm hex hey) (leaf0353 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(25/64),(13/32)⟩ ⟨(11/32),(3/8)⟩ := split_y ⟨(25/64),(13/32)⟩ ⟨(11/32),(3/8)⟩ (23/64) (leaf0352 s t r ex ey hm hex hey) (leaf0351 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(3/8),(13/32)⟩ ⟨(11/32),(3/8)⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨(11/32),(3/8)⟩ (25/64) node0003 node0004
  have node0006 : Holds P ⟨(3/8),(13/32)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(5/16),(3/8)⟩ (11/32) node0002 node0005
  have node0007 : Holds P ⟨(13/32),(7/16)⟩ ⟨(11/32),(3/8)⟩ := split_x ⟨(13/32),(7/16)⟩ ⟨(11/32),(3/8)⟩ (27/64) (leaf0349 s t r ex ey hm hex hey) (leaf0348 s t r ex ey hm hex hey)
  have node0008 : Holds P ⟨(13/32),(7/16)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(13/32),(7/16)⟩ ⟨(5/16),(3/8)⟩ (11/32) (leaf0350 s t r ex ey hm hex hey) node0007
  have node0009 : Holds P ⟨(3/8),(7/16)⟩ ⟨(5/16),(3/8)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(5/16),(3/8)⟩ (13/32) node0006 node0008
  have node0010 : Holds P ⟨(3/8),(7/16)⟩ ⟨(1/4),(3/8)⟩ := split_y ⟨(3/8),(7/16)⟩ ⟨(1/4),(3/8)⟩ (5/16) node0001 node0009
  have node0011 : Holds P ⟨(7/16),(15/32)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(7/16),(15/32)⟩ ⟨(5/16),(3/8)⟩ (11/32) (leaf0345 s t r ex ey hm hex hey) (leaf0346 s t r ex ey hm hex hey)
  have node0012 : Holds P ⟨(7/16),(1/2)⟩ ⟨(5/16),(3/8)⟩ := split_x ⟨(7/16),(1/2)⟩ ⟨(5/16),(3/8)⟩ (15/32) node0011 (leaf0344 s t r ex ey hm hex hey)
  have node0013 : Holds P ⟨(7/16),(1/2)⟩ ⟨(1/4),(3/8)⟩ := split_y ⟨(7/16),(1/2)⟩ ⟨(1/4),(3/8)⟩ (5/16) (leaf0347 s t r ex ey hm hex hey) node0012
  have node0014 : Holds P ⟨(3/8),(1/2)⟩ ⟨(1/4),(3/8)⟩ := split_x ⟨(3/8),(1/2)⟩ ⟨(1/4),(3/8)⟩ (7/16) node0010 node0013
  exact node0014
#print axioms tile26
theorem tile27 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(1/2)⟩ ⟨(3/8),(1/2)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(3/8),(25/64)⟩ ⟨(3/8),(13/32)⟩ := split_y ⟨(3/8),(25/64)⟩ ⟨(3/8),(13/32)⟩ (25/64) (leaf0343 s t r ex ey hm hex hey) (leaf0342 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/8),(13/32)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨(3/8),(13/32)⟩ (25/64) node0000 (leaf0341 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(3/8),(25/64)⟩ ⟨(13/32),(7/16)⟩ := split_y ⟨(3/8),(25/64)⟩ ⟨(13/32),(7/16)⟩ (27/64) (leaf0340 s t r ex ey hm hex hey) (leaf0339 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(3/8),(13/32)⟩ ⟨(13/32),(7/16)⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨(13/32),(7/16)⟩ (25/64) node0002 (leaf0338 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(3/8),(13/32)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0001 node0003
  have node0005 : Holds P ⟨(13/32),(7/16)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(13/32),(7/16)⟩ ⟨(3/8),(13/32)⟩ (27/64) (leaf0337 s t r ex ey hm hex hey) (leaf0336 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(13/32),(7/16)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(13/32),(7/16)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0005 (leaf0335 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(3/8),(7/16)⟩ ⟨(3/8),(7/16)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0004 node0006
  have node0008 : Holds P ⟨(3/8),(13/32)⟩ ⟨(7/16),(15/32)⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨(7/16),(15/32)⟩ (25/64) (leaf0334 s t r ex ey hm hex hey) (leaf0333 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(3/8),(13/32)⟩ ⟨(7/16),(1/2)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(7/16),(1/2)⟩ (15/32) node0008 (leaf0332 s t r ex ey hm hex hey)
  have node0010 : Holds P ⟨(13/32),(7/16)⟩ ⟨(7/16),(1/2)⟩ := split_y ⟨(13/32),(7/16)⟩ ⟨(7/16),(1/2)⟩ (15/32) (leaf0331 s t r ex ey hm hex hey) (leaf0330 s t r ex ey hm hex hey)
  have node0011 : Holds P ⟨(3/8),(7/16)⟩ ⟨(7/16),(1/2)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(7/16),(1/2)⟩ (13/32) node0009 node0010
  have node0012 : Holds P ⟨(3/8),(7/16)⟩ ⟨(3/8),(1/2)⟩ := split_y ⟨(3/8),(7/16)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0007 node0011
  have node0013 : Holds P ⟨(7/16),(15/32)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(7/16),(15/32)⟩ ⟨(3/8),(7/16)⟩ (13/32) (leaf0329 s t r ex ey hm hex hey) (leaf0328 s t r ex ey hm hex hey)
  have node0014 : Holds P ⟨(15/32),(1/2)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(15/32),(1/2)⟩ ⟨(3/8),(7/16)⟩ (13/32) (leaf0327 s t r ex ey hm hex hey) (leaf0326 s t r ex ey hm hex hey)
  have node0015 : Holds P ⟨(7/16),(1/2)⟩ ⟨(3/8),(7/16)⟩ := split_x ⟨(7/16),(1/2)⟩ ⟨(3/8),(7/16)⟩ (15/32) node0013 node0014
  have node0016 : Holds P ⟨(7/16),(1/2)⟩ ⟨(7/16),(1/2)⟩ := split_x ⟨(7/16),(1/2)⟩ ⟨(7/16),(1/2)⟩ (15/32) (leaf0325 s t r ex ey hm hex hey) (leaf0324 s t r ex ey hm hex hey)
  have node0017 : Holds P ⟨(7/16),(1/2)⟩ ⟨(3/8),(1/2)⟩ := split_y ⟨(7/16),(1/2)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0015 node0016
  have node0018 : Holds P ⟨(3/8),(1/2)⟩ ⟨(3/8),(1/2)⟩ := split_x ⟨(3/8),(1/2)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0012 node0017
  exact node0018
#print axioms tile27
theorem tile28 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(1/2)⟩ ⟨(1/2),(5/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(3/8),(13/32)⟩ ⟨(1/2),(9/16)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(1/2),(9/16)⟩ (17/32) (leaf0323 s t r ex ey hm hex hey) (leaf0322 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/8),(7/16)⟩ ⟨(1/2),(9/16)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(1/2),(9/16)⟩ (13/32) node0000 (leaf0321 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(3/8),(13/32)⟩ ⟨(9/16),(5/8)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(9/16),(5/8)⟩ (19/32) (leaf0320 s t r ex ey hm hex hey) (leaf0319 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(3/8),(7/16)⟩ ⟨(9/16),(5/8)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(9/16),(5/8)⟩ (13/32) node0002 (leaf0318 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(3/8),(7/16)⟩ ⟨(1/2),(5/8)⟩ := split_y ⟨(3/8),(7/16)⟩ ⟨(1/2),(5/8)⟩ (9/16) node0001 node0003
  have node0005 : Holds P ⟨(7/16),(1/2)⟩ ⟨(1/2),(5/8)⟩ := split_y ⟨(7/16),(1/2)⟩ ⟨(1/2),(5/8)⟩ (9/16) (leaf0317 s t r ex ey hm hex hey) (leaf0316 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(3/8),(1/2)⟩ ⟨(1/2),(5/8)⟩ := split_x ⟨(3/8),(1/2)⟩ ⟨(1/2),(5/8)⟩ (7/16) node0004 node0005
  exact node0006
#print axioms tile28
theorem tile29 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(1/2)⟩ ⟨(5/8),(3/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(3/8),(13/32)⟩ ⟨(5/8),(11/16)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(5/8),(11/16)⟩ (21/32) (leaf0315 s t r ex ey hm hex hey) (leaf0314 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/8),(7/16)⟩ ⟨(5/8),(11/16)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(5/8),(11/16)⟩ (13/32) node0000 (leaf0313 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(3/8),(13/32)⟩ ⟨(11/16),(3/4)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(11/16),(3/4)⟩ (23/32) (leaf0312 s t r ex ey hm hex hey) (leaf0311 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(3/8),(7/16)⟩ ⟨(11/16),(3/4)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(11/16),(3/4)⟩ (13/32) node0002 (leaf0310 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(3/8),(7/16)⟩ ⟨(5/8),(3/4)⟩ := split_y ⟨(3/8),(7/16)⟩ ⟨(5/8),(3/4)⟩ (11/16) node0001 node0003
  have node0005 : Holds P ⟨(7/16),(1/2)⟩ ⟨(5/8),(3/4)⟩ := split_y ⟨(7/16),(1/2)⟩ ⟨(5/8),(3/4)⟩ (11/16) (leaf0309 s t r ex ey hm hex hey) (leaf0308 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(3/8),(1/2)⟩ ⟨(5/8),(3/4)⟩ := split_x ⟨(3/8),(1/2)⟩ ⟨(5/8),(3/4)⟩ (7/16) node0004 node0005
  exact node0006
#print axioms tile29
theorem tile30 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(1/2)⟩ ⟨(3/4),(7/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(3/8),(13/32)⟩ ⟨(3/4),(13/16)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(3/4),(13/16)⟩ (25/32) (leaf0307 s t r ex ey hm hex hey) (leaf0306 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/8),(7/16)⟩ ⟨(3/4),(13/16)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(3/4),(13/16)⟩ (13/32) node0000 (leaf0305 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(3/8),(13/32)⟩ ⟨(13/16),(7/8)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(13/16),(7/8)⟩ (27/32) (leaf0304 s t r ex ey hm hex hey) (leaf0303 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(13/32),(7/16)⟩ ⟨(13/16),(7/8)⟩ := split_y ⟨(13/32),(7/16)⟩ ⟨(13/16),(7/8)⟩ (27/32) (leaf0302 s t r ex ey hm hex hey) (leaf0301 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(3/8),(7/16)⟩ ⟨(13/16),(7/8)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(13/16),(7/8)⟩ (13/32) node0002 node0003
  have node0005 : Holds P ⟨(3/8),(7/16)⟩ ⟨(3/4),(7/8)⟩ := split_y ⟨(3/8),(7/16)⟩ ⟨(3/4),(7/8)⟩ (13/16) node0001 node0004
  have node0006 : Holds P ⟨(7/16),(1/2)⟩ ⟨(3/4),(7/8)⟩ := split_y ⟨(7/16),(1/2)⟩ ⟨(3/4),(7/8)⟩ (13/16) (leaf0300 s t r ex ey hm hex hey) (leaf0299 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(3/8),(1/2)⟩ ⟨(3/4),(7/8)⟩ := split_x ⟨(3/8),(1/2)⟩ ⟨(3/4),(7/8)⟩ (7/16) node0005 node0006
  exact node0007
#print axioms tile30
theorem tile31 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(1/2)⟩ ⟨(7/8),1⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(3/8),(13/32)⟩ ⟨(29/32),(15/16)⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨(29/32),(15/16)⟩ (25/64) (leaf0297 s t r ex ey hm hex hey) (leaf0296 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(3/8),(13/32)⟩ ⟨(7/8),(15/16)⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(7/8),(15/16)⟩ (29/32) (leaf0298 s t r ex ey hm hex hey) node0000
  have node0002 : Holds P ⟨(13/32),(7/16)⟩ ⟨(7/8),(15/16)⟩ := split_y ⟨(13/32),(7/16)⟩ ⟨(7/8),(15/16)⟩ (29/32) (leaf0295 s t r ex ey hm hex hey) (leaf0294 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(3/8),(7/16)⟩ ⟨(7/8),(15/16)⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(7/8),(15/16)⟩ (13/32) node0001 node0002
  have node0004 : Holds P ⟨(3/8),(25/64)⟩ ⟨(15/16),(31/32)⟩ := split_y ⟨(3/8),(25/64)⟩ ⟨(15/16),(31/32)⟩ (61/64) (leaf0293 s t r ex ey hm hex hey) (leaf0292 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(25/64),(13/32)⟩ ⟨(15/16),(31/32)⟩ := split_y ⟨(25/64),(13/32)⟩ ⟨(15/16),(31/32)⟩ (61/64) (leaf0291 s t r ex ey hm hex hey) (leaf0290 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(3/8),(13/32)⟩ ⟨(15/16),(31/32)⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨(15/16),(31/32)⟩ (25/64) node0004 node0005
  have node0007 : Holds P ⟨(3/8),(25/64)⟩ ⟨(31/32),1⟩ := split_y ⟨(3/8),(25/64)⟩ ⟨(31/32),1⟩ (63/64) (leaf0289 s t r ex ey hm hex hey) (leaf0288 s t r ex ey hm hex hey)
  have node0008 : Holds P ⟨(25/64),(13/32)⟩ ⟨(31/32),1⟩ := split_y ⟨(25/64),(13/32)⟩ ⟨(31/32),1⟩ (63/64) (leaf0287 s t r ex ey hm hex hey) (leaf0286 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(3/8),(13/32)⟩ ⟨(31/32),1⟩ := split_x ⟨(3/8),(13/32)⟩ ⟨(31/32),1⟩ (25/64) node0007 node0008
  have node0010 : Holds P ⟨(3/8),(13/32)⟩ ⟨(15/16),1⟩ := split_y ⟨(3/8),(13/32)⟩ ⟨(15/16),1⟩ (31/32) node0006 node0009
  have node0011 : Holds P ⟨(13/32),(7/16)⟩ ⟨(31/32),1⟩ := split_x ⟨(13/32),(7/16)⟩ ⟨(31/32),1⟩ (27/64) (leaf0284 s t r ex ey hm hex hey) (leaf0283 s t r ex ey hm hex hey)
  have node0012 : Holds P ⟨(13/32),(7/16)⟩ ⟨(15/16),1⟩ := split_y ⟨(13/32),(7/16)⟩ ⟨(15/16),1⟩ (31/32) (leaf0285 s t r ex ey hm hex hey) node0011
  have node0013 : Holds P ⟨(3/8),(7/16)⟩ ⟨(15/16),1⟩ := split_x ⟨(3/8),(7/16)⟩ ⟨(15/16),1⟩ (13/32) node0010 node0012
  have node0014 : Holds P ⟨(3/8),(7/16)⟩ ⟨(7/8),1⟩ := split_y ⟨(3/8),(7/16)⟩ ⟨(7/8),1⟩ (15/16) node0003 node0013
  have node0015 : Holds P ⟨(7/16),(1/2)⟩ ⟨(7/8),(15/16)⟩ := split_x ⟨(7/16),(1/2)⟩ ⟨(7/8),(15/16)⟩ (15/32) (leaf0282 s t r ex ey hm hex hey) (leaf0281 s t r ex ey hm hex hey)
  have node0016 : Holds P ⟨(7/16),(1/2)⟩ ⟨(15/16),1⟩ := split_x ⟨(7/16),(1/2)⟩ ⟨(15/16),1⟩ (15/32) (leaf0280 s t r ex ey hm hex hey) (leaf0279 s t r ex ey hm hex hey)
  have node0017 : Holds P ⟨(7/16),(1/2)⟩ ⟨(7/8),1⟩ := split_y ⟨(7/16),(1/2)⟩ ⟨(7/8),1⟩ (15/16) node0015 node0016
  have node0018 : Holds P ⟨(3/8),(1/2)⟩ ⟨(7/8),1⟩ := split_x ⟨(3/8),(1/2)⟩ ⟨(7/8),1⟩ (7/16) node0014 node0017
  exact node0018
#print axioms tile31
end ShoulderRoot1Angular20261003
