import ParametricAngularLeaf
import Root0Arcs01
import Root0Arcs02
import Root0Arcs07
import Root0Arcs08
import Root0Arcs13
import Root0Arcs14
import Root0Arcs15
import Root0Arcs16
import Root0Arcs19
import Root1CertificateData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace ShoulderRoot1Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
open Root0Angular20261003 (ArcCert TrigCert Holds turnPhase split_x split_y)
open ShoulderAngular20261003
open ShoulderRoot1Data20261003
theorem leaf1296 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/32),(3/16)⟩ ⟨(23/32),(3/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0034 Root0Angular20261003.arc0314 Root0Angular20261003.arc0034_checked Root0Angular20261003.arc0314_checked .re (by decide +kernel)
#print axioms leaf1296
theorem leaf1297 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/32),(3/16)⟩ ⟨(11/16),(23/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0034 Root0Angular20261003.arc0310 Root0Angular20261003.arc0034_checked Root0Angular20261003.arc0310_checked .im (by decide +kernel)
#print axioms leaf1297
theorem leaf1298 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(5/32)⟩ ⟨(11/16),(3/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0019 Root0Angular20261003.arc0311 Root0Angular20261003.arc0019_checked Root0Angular20261003.arc0311_checked .s (by decide +kernel)
#print axioms leaf1298
theorem leaf1299 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/32),(3/16)⟩ ⟨(21/32),(11/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0034 Root0Angular20261003.arc0268 Root0Angular20261003.arc0034_checked Root0Angular20261003.arc0268_checked .im (by decide +kernel)
#print axioms leaf1299
theorem leaf1300 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/32),(3/16)⟩ ⟨(5/8),(21/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0034 Root0Angular20261003.arc0250 Root0Angular20261003.arc0034_checked Root0Angular20261003.arc0250_checked .im (by decide +kernel)
#print axioms leaf1300
theorem leaf1301 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(5/32)⟩ ⟨(5/8),(11/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0019 Root0Angular20261003.arc0251 Root0Angular20261003.arc0019_checked Root0Angular20261003.arc0251_checked .im (by decide +kernel)
#print axioms leaf1301
theorem leaf1302 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(19/32),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0246 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0246_checked .im (by decide +kernel)
#print axioms leaf1302
theorem leaf1303 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(9/16),(19/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0242 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0242_checked .im (by decide +kernel)
#print axioms leaf1303
theorem leaf1304 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(19/32),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0246 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0246_checked .im (by decide +kernel)
#print axioms leaf1304
theorem leaf1305 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(9/16),(19/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0242 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0242_checked .im (by decide +kernel)
#print axioms leaf1305
theorem leaf1306 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(1/2),(9/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0236 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0236_checked .im (by decide +kernel)
#print axioms leaf1306
theorem leaf1307 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(1/2),(9/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0236 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0236_checked .im (by decide +kernel)
#print axioms leaf1307
theorem leaf1308 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/32),(3/16)⟩ ⟨(19/32),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0034 Root0Angular20261003.arc0246 Root0Angular20261003.arc0034_checked Root0Angular20261003.arc0246_checked .im (by decide +kernel)
#print axioms leaf1308
theorem leaf1309 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/32),(3/16)⟩ ⟨(9/16),(19/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0034 Root0Angular20261003.arc0242 Root0Angular20261003.arc0034_checked Root0Angular20261003.arc0242_checked .im (by decide +kernel)
#print axioms leaf1309
theorem leaf1310 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(5/32)⟩ ⟨(9/16),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0019 Root0Angular20261003.arc0243 Root0Angular20261003.arc0019_checked Root0Angular20261003.arc0243_checked .im (by decide +kernel)
#print axioms leaf1310
theorem leaf1311 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/32),(3/16)⟩ ⟨(1/2),(9/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0034 Root0Angular20261003.arc0236 Root0Angular20261003.arc0034_checked Root0Angular20261003.arc0236_checked .im (by decide +kernel)
#print axioms leaf1311
theorem leaf1312 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(5/32)⟩ ⟨(1/2),(9/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0019 Root0Angular20261003.arc0236 Root0Angular20261003.arc0019_checked Root0Angular20261003.arc0236_checked .im (by decide +kernel)
#print axioms leaf1312
theorem leaf1313 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(15/32),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0234 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0234_checked .im (by decide +kernel)
#print axioms leaf1313
theorem leaf1314 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(7/16),(15/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0231 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0231_checked .im (by decide +kernel)
#print axioms leaf1314
theorem leaf1315 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(7/16),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0232 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0232_checked .im (by decide +kernel)
#print axioms leaf1315
theorem leaf1316 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0228 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0228_checked .im (by decide +kernel)
#print axioms leaf1316
theorem leaf1317 : LeafStatement cap moments EX EY hull0 hull1 ⟨(15/64),(1/4)⟩ ⟨(25/64),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0131 Root0Angular20261003.arc0226 Root0Angular20261003.arc0131_checked Root0Angular20261003.arc0226_checked .re (by decide +kernel)
#print axioms leaf1317
theorem leaf1318 : LeafStatement cap moments EX EY hull0 hull1 ⟨(15/64),(1/4)⟩ ⟨(3/8),(25/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0131 Root0Angular20261003.arc0221 Root0Angular20261003.arc0131_checked Root0Angular20261003.arc0221_checked .re (by decide +kernel)
#print axioms leaf1318
theorem leaf1319 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(15/64)⟩ ⟨(25/64),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0128 Root0Angular20261003.arc0226 Root0Angular20261003.arc0128_checked Root0Angular20261003.arc0226_checked .re (by decide +kernel)
#print axioms leaf1319
end ShoulderRoot1Angular20261003
