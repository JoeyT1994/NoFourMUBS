import ParametricAngularLeaf
import Root0Arcs01
import Root0Arcs02
import Root0Arcs07
import Root0Arcs08
import Root0Arcs15
import Root0Arcs16
import Root0Arcs19
import Root0Arcs20
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
theorem leaf1272 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(27/32),(7/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0322 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0322_checked .re (by decide +kernel)
#print axioms leaf1272
theorem leaf1273 : LeafStatement cap moments EX EY hull0 hull1 ⟨(15/64),(1/4)⟩ ⟨(13/16),(27/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0131 Root0Angular20261003.arc0319 Root0Angular20261003.arc0131_checked Root0Angular20261003.arc0319_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf1273
theorem leaf1274 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(15/64)⟩ ⟨(13/16),(27/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0128 Root0Angular20261003.arc0319 Root0Angular20261003.arc0128_checked Root0Angular20261003.arc0319_checked .re (by decide +kernel)
#print axioms leaf1274
theorem leaf1275 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(27/32),(7/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0322 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0322_checked .re (by decide +kernel)
#print axioms leaf1275
theorem leaf1276 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(13/16),(27/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0319 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0319_checked .re (by decide +kernel)
#print axioms leaf1276
theorem leaf1277 : LeafStatement cap moments EX EY hull0 hull1 ⟨(15/64),(1/4)⟩ ⟨(25/32),(13/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0131 Root0Angular20261003.arc0318 Root0Angular20261003.arc0131_checked Root0Angular20261003.arc0318_checked .im (by decide +kernel)
#print axioms leaf1277
theorem leaf1278 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(15/64)⟩ ⟨(25/32),(13/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0128 Root0Angular20261003.arc0318 Root0Angular20261003.arc0128_checked Root0Angular20261003.arc0318_checked .im (by decide +kernel)
#print axioms leaf1278
theorem leaf1279 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(3/4),(25/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0315 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0315_checked .im (by decide +kernel)
#print axioms leaf1279
theorem leaf1280 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/64),(7/32)⟩ ⟨(25/32),(13/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0125 Root0Angular20261003.arc0318 Root0Angular20261003.arc0125_checked Root0Angular20261003.arc0318_checked .re (by decide +kernel)
#print axioms leaf1280
theorem leaf1281 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(13/64)⟩ ⟨(25/32),(13/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0116 Root0Angular20261003.arc0318 Root0Angular20261003.arc0116_checked Root0Angular20261003.arc0318_checked .re (by decide +kernel)
#print axioms leaf1281
theorem leaf1282 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(3/4),(25/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0315 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0315_checked .im (by decide +kernel)
#print axioms leaf1282
theorem leaf1283 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/32),(3/16)⟩ ⟨(13/16),(7/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0034 Root0Angular20261003.arc0320 Root0Angular20261003.arc0034_checked Root0Angular20261003.arc0320_checked .re (by decide +kernel)
#print axioms leaf1283
theorem leaf1284 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(5/32)⟩ ⟨(13/16),(7/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0019 Root0Angular20261003.arc0320 Root0Angular20261003.arc0019_checked Root0Angular20261003.arc0320_checked .re (by decide +kernel)
#print axioms leaf1284
theorem leaf1285 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/32),(3/16)⟩ ⟨(25/32),(13/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0034 Root0Angular20261003.arc0318 Root0Angular20261003.arc0034_checked Root0Angular20261003.arc0318_checked .re (by decide +kernel)
#print axioms leaf1285
theorem leaf1286 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/32),(3/16)⟩ ⟨(3/4),(25/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0034 Root0Angular20261003.arc0315 Root0Angular20261003.arc0034_checked Root0Angular20261003.arc0315_checked .re (by decide +kernel)
#print axioms leaf1286
theorem leaf1287 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(5/32)⟩ ⟨(3/4),(13/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0019 Root0Angular20261003.arc0316 Root0Angular20261003.arc0019_checked Root0Angular20261003.arc0316_checked .re (by decide +kernel)
#print axioms leaf1287
theorem leaf1288 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(23/32),(3/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0314 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0314_checked .im (by decide +kernel)
#print axioms leaf1288
theorem leaf1289 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(11/16),(23/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0310 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0310_checked .im (by decide +kernel)
#print axioms leaf1289
theorem leaf1290 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(23/32),(3/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0314 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0314_checked .im (by decide +kernel)
#print axioms leaf1290
theorem leaf1291 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(11/16),(23/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0310 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0310_checked .im (by decide +kernel)
#print axioms leaf1291
theorem leaf1292 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(21/32),(11/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0268 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0268_checked .im (by decide +kernel)
#print axioms leaf1292
theorem leaf1293 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(5/8),(21/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0250 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0250_checked .im (by decide +kernel)
#print axioms leaf1293
theorem leaf1294 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(21/32),(11/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0268 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0268_checked .im (by decide +kernel)
#print axioms leaf1294
theorem leaf1295 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(5/8),(21/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0250 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0250_checked .im (by decide +kernel)
#print axioms leaf1295
end ShoulderRoot1Angular20261003
