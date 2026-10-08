import ParametricAngularLeaf
import Root1CertificateData
import Root1Leaves09
import Root1Leaves10
import Root1Leaves11
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace ShoulderRoot1Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
open Root0Angular20261003 (ArcCert TrigCert Holds turnPhase split_x split_y)
open ShoulderAngular20261003
open ShoulderRoot1Data20261003
theorem tile32 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(5/8)⟩ ⟨0,(1/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/2),(17/32)⟩ ⟨(1/16),(1/8)⟩ := split_y ⟨(1/2),(17/32)⟩ ⟨(1/16),(1/8)⟩ (3/32) (leaf0277 s t r ex ey hm hex hey) (leaf0276 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(17/32),(9/16)⟩ ⟨(1/16),(1/8)⟩ := split_y ⟨(17/32),(9/16)⟩ ⟨(1/16),(1/8)⟩ (3/32) (leaf0275 s t r ex ey hm hex hey) (leaf0274 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/2),(9/16)⟩ ⟨(1/16),(1/8)⟩ := split_x ⟨(1/2),(9/16)⟩ ⟨(1/16),(1/8)⟩ (17/32) node0000 node0001
  have node0003 : Holds P ⟨(1/2),(9/16)⟩ ⟨0,(1/8)⟩ := split_y ⟨(1/2),(9/16)⟩ ⟨0,(1/8)⟩ (1/16) (leaf0278 s t r ex ey hm hex hey) node0002
  have node0004 : Holds P ⟨(9/16),(5/8)⟩ ⟨(1/16),(1/8)⟩ := split_x ⟨(9/16),(5/8)⟩ ⟨(1/16),(1/8)⟩ (19/32) (leaf0272 s t r ex ey hm hex hey) (leaf0271 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(9/16),(5/8)⟩ ⟨0,(1/8)⟩ := split_y ⟨(9/16),(5/8)⟩ ⟨0,(1/8)⟩ (1/16) (leaf0273 s t r ex ey hm hex hey) node0004
  have node0006 : Holds P ⟨(1/2),(5/8)⟩ ⟨0,(1/8)⟩ := split_x ⟨(1/2),(5/8)⟩ ⟨0,(1/8)⟩ (9/16) node0003 node0005
  exact node0006
#print axioms tile32
theorem tile33 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(5/8)⟩ ⟨(1/8),(1/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(17/32),(9/16)⟩ ⟨(1/8),(5/32)⟩ := split_x ⟨(17/32),(9/16)⟩ ⟨(1/8),(5/32)⟩ (35/64) (leaf0269 s t r ex ey hm hex hey) (leaf0268 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(17/32),(9/16)⟩ ⟨(1/8),(3/16)⟩ := split_y ⟨(17/32),(9/16)⟩ ⟨(1/8),(3/16)⟩ (5/32) node0000 (leaf0267 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/2),(9/16)⟩ ⟨(1/8),(3/16)⟩ := split_x ⟨(1/2),(9/16)⟩ ⟨(1/8),(3/16)⟩ (17/32) (leaf0270 s t r ex ey hm hex hey) node0001
  have node0003 : Holds P ⟨(1/2),(9/16)⟩ ⟨(1/8),(1/4)⟩ := split_y ⟨(1/2),(9/16)⟩ ⟨(1/8),(1/4)⟩ (3/16) node0002 (leaf0266 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(9/16),(19/32)⟩ ⟨(5/32),(3/16)⟩ := split_x ⟨(9/16),(19/32)⟩ ⟨(5/32),(3/16)⟩ (37/64) (leaf0264 s t r ex ey hm hex hey) (leaf0263 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(9/16),(19/32)⟩ ⟨(1/8),(3/16)⟩ := split_y ⟨(9/16),(19/32)⟩ ⟨(1/8),(3/16)⟩ (5/32) (leaf0265 s t r ex ey hm hex hey) node0004
  have node0006 : Holds P ⟨(19/32),(5/8)⟩ ⟨(1/8),(3/16)⟩ := split_y ⟨(19/32),(5/8)⟩ ⟨(1/8),(3/16)⟩ (5/32) (leaf0262 s t r ex ey hm hex hey) (leaf0261 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(9/16),(5/8)⟩ ⟨(1/8),(3/16)⟩ := split_x ⟨(9/16),(5/8)⟩ ⟨(1/8),(3/16)⟩ (19/32) node0005 node0006
  have node0008 : Holds P ⟨(9/16),(19/32)⟩ ⟨(3/16),(1/4)⟩ := split_y ⟨(9/16),(19/32)⟩ ⟨(3/16),(1/4)⟩ (7/32) (leaf0259 s t r ex ey hm hex hey) (leaf0260 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(19/32),(5/8)⟩ ⟨(3/16),(7/32)⟩ := split_x ⟨(19/32),(5/8)⟩ ⟨(3/16),(7/32)⟩ (39/64) (leaf0258 s t r ex ey hm hex hey) (leaf0257 s t r ex ey hm hex hey)
  have node0010 : Holds P ⟨(39/64),(5/8)⟩ ⟨(7/32),(1/4)⟩ := split_y ⟨(39/64),(5/8)⟩ ⟨(7/32),(1/4)⟩ (15/64) (leaf0255 s t r ex ey hm hex hey) (leaf0254 s t r ex ey hm hex hey)
  have node0011 : Holds P ⟨(19/32),(5/8)⟩ ⟨(7/32),(1/4)⟩ := split_x ⟨(19/32),(5/8)⟩ ⟨(7/32),(1/4)⟩ (39/64) (leaf0256 s t r ex ey hm hex hey) node0010
  have node0012 : Holds P ⟨(19/32),(5/8)⟩ ⟨(3/16),(1/4)⟩ := split_y ⟨(19/32),(5/8)⟩ ⟨(3/16),(1/4)⟩ (7/32) node0009 node0011
  have node0013 : Holds P ⟨(9/16),(5/8)⟩ ⟨(3/16),(1/4)⟩ := split_x ⟨(9/16),(5/8)⟩ ⟨(3/16),(1/4)⟩ (19/32) node0008 node0012
  have node0014 : Holds P ⟨(9/16),(5/8)⟩ ⟨(1/8),(1/4)⟩ := split_y ⟨(9/16),(5/8)⟩ ⟨(1/8),(1/4)⟩ (3/16) node0007 node0013
  have node0015 : Holds P ⟨(1/2),(5/8)⟩ ⟨(1/8),(1/4)⟩ := split_x ⟨(1/2),(5/8)⟩ ⟨(1/8),(1/4)⟩ (9/16) node0003 node0014
  exact node0015
#print axioms tile33
theorem tile34 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(5/8)⟩ ⟨(1/4),(3/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/2),(9/16)⟩ ⟨(5/16),(3/8)⟩ := split_x ⟨(1/2),(9/16)⟩ ⟨(5/16),(3/8)⟩ (17/32) (leaf0252 s t r ex ey hm hex hey) (leaf0251 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(1/2),(9/16)⟩ ⟨(1/4),(3/8)⟩ := split_y ⟨(1/2),(9/16)⟩ ⟨(1/4),(3/8)⟩ (5/16) (leaf0253 s t r ex ey hm hex hey) node0000
  have node0002 : Holds P ⟨(9/16),(5/8)⟩ ⟨(1/4),(5/16)⟩ := split_x ⟨(9/16),(5/8)⟩ ⟨(1/4),(5/16)⟩ (19/32) (leaf0250 s t r ex ey hm hex hey) (leaf0249 s t r ex ey hm hex hey)
  have node0003 : Holds P ⟨(9/16),(19/32)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(9/16),(19/32)⟩ ⟨(5/16),(3/8)⟩ (11/32) (leaf0248 s t r ex ey hm hex hey) (leaf0247 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(39/64),(5/8)⟩ ⟨(11/32),(3/8)⟩ := split_y ⟨(39/64),(5/8)⟩ ⟨(11/32),(3/8)⟩ (23/64) (leaf0244 s t r ex ey hm hex hey) (leaf0243 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(19/32),(5/8)⟩ ⟨(11/32),(3/8)⟩ := split_x ⟨(19/32),(5/8)⟩ ⟨(11/32),(3/8)⟩ (39/64) (leaf0245 s t r ex ey hm hex hey) node0004
  have node0006 : Holds P ⟨(19/32),(5/8)⟩ ⟨(5/16),(3/8)⟩ := split_y ⟨(19/32),(5/8)⟩ ⟨(5/16),(3/8)⟩ (11/32) (leaf0246 s t r ex ey hm hex hey) node0005
  have node0007 : Holds P ⟨(9/16),(5/8)⟩ ⟨(5/16),(3/8)⟩ := split_x ⟨(9/16),(5/8)⟩ ⟨(5/16),(3/8)⟩ (19/32) node0003 node0006
  have node0008 : Holds P ⟨(9/16),(5/8)⟩ ⟨(1/4),(3/8)⟩ := split_y ⟨(9/16),(5/8)⟩ ⟨(1/4),(3/8)⟩ (5/16) node0002 node0007
  have node0009 : Holds P ⟨(1/2),(5/8)⟩ ⟨(1/4),(3/8)⟩ := split_x ⟨(1/2),(5/8)⟩ ⟨(1/4),(3/8)⟩ (9/16) node0001 node0008
  exact node0009
#print axioms tile34
theorem tile35 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(5/8)⟩ ⟨(3/8),(1/2)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/2),(17/32)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(1/2),(17/32)⟩ ⟨(3/8),(7/16)⟩ (13/32) (leaf0242 s t r ex ey hm hex hey) (leaf0241 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(17/32),(9/16)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(17/32),(9/16)⟩ ⟨(3/8),(7/16)⟩ (13/32) (leaf0240 s t r ex ey hm hex hey) (leaf0239 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/2),(9/16)⟩ ⟨(3/8),(7/16)⟩ := split_x ⟨(1/2),(9/16)⟩ ⟨(3/8),(7/16)⟩ (17/32) node0000 node0001
  have node0003 : Holds P ⟨(1/2),(9/16)⟩ ⟨(3/8),(1/2)⟩ := split_y ⟨(1/2),(9/16)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0002 (leaf0238 s t r ex ey hm hex hey)
  have node0004 : Holds P ⟨(9/16),(19/32)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(9/16),(19/32)⟩ ⟨(3/8),(7/16)⟩ (13/32) (leaf0237 s t r ex ey hm hex hey) (leaf0236 s t r ex ey hm hex hey)
  have node0005 : Holds P ⟨(19/32),(5/8)⟩ ⟨(3/8),(13/32)⟩ := split_x ⟨(19/32),(5/8)⟩ ⟨(3/8),(13/32)⟩ (39/64) (leaf0235 s t r ex ey hm hex hey) (leaf0234 s t r ex ey hm hex hey)
  have node0006 : Holds P ⟨(19/32),(5/8)⟩ ⟨(3/8),(7/16)⟩ := split_y ⟨(19/32),(5/8)⟩ ⟨(3/8),(7/16)⟩ (13/32) node0005 (leaf0233 s t r ex ey hm hex hey)
  have node0007 : Holds P ⟨(9/16),(5/8)⟩ ⟨(3/8),(7/16)⟩ := split_x ⟨(9/16),(5/8)⟩ ⟨(3/8),(7/16)⟩ (19/32) node0004 node0006
  have node0008 : Holds P ⟨(9/16),(5/8)⟩ ⟨(7/16),(1/2)⟩ := split_x ⟨(9/16),(5/8)⟩ ⟨(7/16),(1/2)⟩ (19/32) (leaf0232 s t r ex ey hm hex hey) (leaf0231 s t r ex ey hm hex hey)
  have node0009 : Holds P ⟨(9/16),(5/8)⟩ ⟨(3/8),(1/2)⟩ := split_y ⟨(9/16),(5/8)⟩ ⟨(3/8),(1/2)⟩ (7/16) node0007 node0008
  have node0010 : Holds P ⟨(1/2),(5/8)⟩ ⟨(3/8),(1/2)⟩ := split_x ⟨(1/2),(5/8)⟩ ⟨(3/8),(1/2)⟩ (9/16) node0003 node0009
  exact node0010
#print axioms tile35
theorem tile36 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(5/8)⟩ ⟨(1/2),(5/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/2),(9/16)⟩ ⟨(1/2),(5/8)⟩ := split_y ⟨(1/2),(9/16)⟩ ⟨(1/2),(5/8)⟩ (9/16) (leaf0230 s t r ex ey hm hex hey) (leaf0229 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(9/16),(5/8)⟩ ⟨(1/2),(5/8)⟩ := split_y ⟨(9/16),(5/8)⟩ ⟨(1/2),(5/8)⟩ (9/16) (leaf0228 s t r ex ey hm hex hey) (leaf0227 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/2),(5/8)⟩ ⟨(1/2),(5/8)⟩ := split_x ⟨(1/2),(5/8)⟩ ⟨(1/2),(5/8)⟩ (9/16) node0000 node0001
  exact node0002
#print axioms tile36
theorem tile37 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(5/8)⟩ ⟨(5/8),(3/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(9/16),(5/8)⟩ ⟨(5/8),(3/4)⟩ := split_y ⟨(9/16),(5/8)⟩ ⟨(5/8),(3/4)⟩ (11/16) (leaf0225 s t r ex ey hm hex hey) (leaf0224 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(1/2),(5/8)⟩ ⟨(5/8),(3/4)⟩ := split_x ⟨(1/2),(5/8)⟩ ⟨(5/8),(3/4)⟩ (9/16) (leaf0226 s t r ex ey hm hex hey) node0000
  exact node0001
#print axioms tile37
theorem tile38 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(5/8)⟩ ⟨(3/4),(7/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/2),(9/16)⟩ ⟨(3/4),(7/8)⟩ := split_y ⟨(1/2),(9/16)⟩ ⟨(3/4),(7/8)⟩ (13/16) (leaf0223 s t r ex ey hm hex hey) (leaf0222 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(9/16),(5/8)⟩ ⟨(3/4),(7/8)⟩ := split_y ⟨(9/16),(5/8)⟩ ⟨(3/4),(7/8)⟩ (13/16) (leaf0221 s t r ex ey hm hex hey) (leaf0220 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/2),(5/8)⟩ ⟨(3/4),(7/8)⟩ := split_x ⟨(1/2),(5/8)⟩ ⟨(3/4),(7/8)⟩ (9/16) node0000 node0001
  exact node0002
#print axioms tile38
theorem tile39 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(5/8)⟩ ⟨(7/8),1⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have node0000 : Holds P ⟨(1/2),(9/16)⟩ ⟨(7/8),1⟩ := split_y ⟨(1/2),(9/16)⟩ ⟨(7/8),1⟩ (15/16) (leaf0219 s t r ex ey hm hex hey) (leaf0218 s t r ex ey hm hex hey)
  have node0001 : Holds P ⟨(9/16),(5/8)⟩ ⟨(7/8),1⟩ := split_y ⟨(9/16),(5/8)⟩ ⟨(7/8),1⟩ (15/16) (leaf0217 s t r ex ey hm hex hey) (leaf0216 s t r ex ey hm hex hey)
  have node0002 : Holds P ⟨(1/2),(5/8)⟩ ⟨(7/8),1⟩ := split_x ⟨(1/2),(5/8)⟩ ⟨(7/8),1⟩ (9/16) node0000 node0001
  exact node0002
#print axioms tile39
end ShoulderRoot1Angular20261003
