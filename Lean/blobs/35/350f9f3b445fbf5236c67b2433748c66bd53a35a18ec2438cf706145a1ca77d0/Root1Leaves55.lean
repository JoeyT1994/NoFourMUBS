import ParametricAngularLeaf
import Root0Arcs01
import Root0Arcs02
import Root0Arcs04
import Root0Arcs07
import Root0Arcs08
import Root0Arcs09
import Root0Arcs13
import Root0Arcs14
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
theorem leaf1320 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(15/64)⟩ ⟨(3/8),(25/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0128 Root0Angular20261003.arc0221 Root0Angular20261003.arc0128_checked Root0Angular20261003.arc0221_checked .re (by decide +kernel)
#print axioms leaf1320
theorem leaf1321 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0228 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0228_checked .im (by decide +kernel)
#print axioms leaf1321
theorem leaf1322 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/64),(7/32)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0125 Root0Angular20261003.arc0222 Root0Angular20261003.arc0125_checked Root0Angular20261003.arc0222_checked .re (by decide +kernel)
#print axioms leaf1322
theorem leaf1323 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(13/64)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0116 Root0Angular20261003.arc0222 Root0Angular20261003.arc0116_checked Root0Angular20261003.arc0222_checked .re (by decide +kernel)
#print axioms leaf1323
theorem leaf1324 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/32),(3/16)⟩ ⟨(7/16),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0034 Root0Angular20261003.arc0232 Root0Angular20261003.arc0034_checked Root0Angular20261003.arc0232_checked .im (by decide +kernel)
#print axioms leaf1324
theorem leaf1325 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(5/32)⟩ ⟨(7/16),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0019 Root0Angular20261003.arc0232 Root0Angular20261003.arc0019_checked Root0Angular20261003.arc0232_checked .im (by decide +kernel)
#print axioms leaf1325
theorem leaf1326 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/32),(3/16)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0034 Root0Angular20261003.arc0228 Root0Angular20261003.arc0034_checked Root0Angular20261003.arc0228_checked .im (by decide +kernel)
#print axioms leaf1326
theorem leaf1327 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/64),(3/16)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0073 Root0Angular20261003.arc0222 Root0Angular20261003.arc0073_checked Root0Angular20261003.arc0222_checked .re (by decide +kernel)
#print axioms leaf1327
theorem leaf1328 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/32),(11/64)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0033 Root0Angular20261003.arc0222 Root0Angular20261003.arc0033_checked Root0Angular20261003.arc0222_checked .re (by decide +kernel)
#print axioms leaf1328
theorem leaf1329 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(5/32)⟩ ⟨(3/8),(7/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0019 Root0Angular20261003.arc0223 Root0Angular20261003.arc0019_checked Root0Angular20261003.arc0223_checked .s (by decide +kernel)
#print axioms leaf1329
theorem leaf1330 : LeafStatement cap moments EX EY hull0 hull1 ⟨(15/64),(1/4)⟩ ⟨(11/32),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0131 Root0Angular20261003.arc0215 Root0Angular20261003.arc0131_checked Root0Angular20261003.arc0215_checked .re (by decide +kernel)
#print axioms leaf1330
theorem leaf1331 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(15/64)⟩ ⟨(11/32),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0128 Root0Angular20261003.arc0215 Root0Angular20261003.arc0128_checked Root0Angular20261003.arc0215_checked .re (by decide +kernel)
#print axioms leaf1331
theorem leaf1332 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(5/16),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0149 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0149_checked .re (by decide +kernel)
#print axioms leaf1332
theorem leaf1333 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(11/32),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0215 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0215_checked .re (by decide +kernel)
#print axioms leaf1333
theorem leaf1334 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(5/16),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0149 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0149_checked .re (by decide +kernel)
#print axioms leaf1334
theorem leaf1335 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(1/4),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0134 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0134_checked .re (by decide +kernel)
#print axioms leaf1335
theorem leaf1336 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(1/4),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0134 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0134_checked .re (by decide +kernel)
#print axioms leaf1336
theorem leaf1337 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/32),(3/16)⟩ ⟨(11/32),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0034 Root0Angular20261003.arc0215 Root0Angular20261003.arc0034_checked Root0Angular20261003.arc0215_checked .re (by decide +kernel)
#print axioms leaf1337
theorem leaf1338 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/32),(3/16)⟩ ⟨(5/16),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0034 Root0Angular20261003.arc0149 Root0Angular20261003.arc0034_checked Root0Angular20261003.arc0149_checked .re (by decide +kernel)
#print axioms leaf1338
theorem leaf1339 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(5/32)⟩ ⟨(5/16),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0019 Root0Angular20261003.arc0150 Root0Angular20261003.arc0019_checked Root0Angular20261003.arc0150_checked .re (by decide +kernel)
#print axioms leaf1339
theorem leaf1340 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/32),(3/16)⟩ ⟨(1/4),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0034 Root0Angular20261003.arc0134 Root0Angular20261003.arc0034_checked Root0Angular20261003.arc0134_checked .re (by decide +kernel)
#print axioms leaf1340
theorem leaf1341 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(5/32)⟩ ⟨(1/4),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0019 Root0Angular20261003.arc0134 Root0Angular20261003.arc0019_checked Root0Angular20261003.arc0134_checked .re (by decide +kernel)
#print axioms leaf1341
theorem leaf1342 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(3/16),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0118 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0118_checked .re (by decide +kernel)
#print axioms leaf1342
theorem leaf1343 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(3/16),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0118 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0118_checked .re (by decide +kernel)
#print axioms leaf1343
end ShoulderRoot1Angular20261003
