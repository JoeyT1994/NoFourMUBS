import ParametricAngularLeaf
import Root0Arcs13
import Root0Arcs14
import Root0Arcs15
import Root0Arcs19
import Root0Arcs20
import Root0Arcs21
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
theorem leaf0288 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(25/64)⟩ ⟨(63/64),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0221 Root0Angular20261003.arc0338 Root0Angular20261003.arc0221_checked Root0Angular20261003.arc0338_checked .re (by decide +kernel)
#print axioms leaf0288
theorem leaf0289 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(25/64)⟩ ⟨(31/32),(63/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0221 Root0Angular20261003.arc0336 Root0Angular20261003.arc0221_checked Root0Angular20261003.arc0336_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0289
theorem leaf0290 : LeafStatement cap moments EX EY hull0 hull1 ⟨(25/64),(13/32)⟩ ⟨(61/64),(31/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0226 Root0Angular20261003.arc0335 Root0Angular20261003.arc0226_checked Root0Angular20261003.arc0335_checked .im (by decide +kernel)
#print axioms leaf0290
theorem leaf0291 : LeafStatement cap moments EX EY hull0 hull1 ⟨(25/64),(13/32)⟩ ⟨(15/16),(61/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0226 Root0Angular20261003.arc0332 Root0Angular20261003.arc0226_checked Root0Angular20261003.arc0332_checked .im (by decide +kernel)
#print axioms leaf0291
theorem leaf0292 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(25/64)⟩ ⟨(61/64),(31/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0221 Root0Angular20261003.arc0335 Root0Angular20261003.arc0221_checked Root0Angular20261003.arc0335_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0292
theorem leaf0293 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(25/64)⟩ ⟨(15/16),(61/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0221 Root0Angular20261003.arc0332 Root0Angular20261003.arc0221_checked Root0Angular20261003.arc0332_checked .im (by decide +kernel)
#print axioms leaf0293
theorem leaf0294 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(29/32),(15/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0330 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0330_checked .im (by decide +kernel)
#print axioms leaf0294
theorem leaf0295 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(7/8),(29/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0325 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0325_checked .im (by decide +kernel)
#print axioms leaf0295
theorem leaf0296 : LeafStatement cap moments EX EY hull0 hull1 ⟨(25/64),(13/32)⟩ ⟨(29/32),(15/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0226 Root0Angular20261003.arc0330 Root0Angular20261003.arc0226_checked Root0Angular20261003.arc0330_checked .im (by decide +kernel)
#print axioms leaf0296
theorem leaf0297 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(25/64)⟩ ⟨(29/32),(15/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0221 Root0Angular20261003.arc0330 Root0Angular20261003.arc0221_checked Root0Angular20261003.arc0330_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0297
theorem leaf0298 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(7/8),(29/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0325 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0325_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0298
theorem leaf0299 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(1/2)⟩ ⟨(13/16),(7/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0232 Root0Angular20261003.arc0320 Root0Angular20261003.arc0232_checked Root0Angular20261003.arc0320_checked .im (by decide +kernel)
#print axioms leaf0299
theorem leaf0300 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(1/2)⟩ ⟨(3/4),(13/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0232 Root0Angular20261003.arc0316 Root0Angular20261003.arc0232_checked Root0Angular20261003.arc0316_checked .re (by decide +kernel)
#print axioms leaf0300
theorem leaf0301 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(27/32),(7/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0322 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0322_checked .im (by decide +kernel)
#print axioms leaf0301
theorem leaf0302 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(13/16),(27/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0319 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0319_checked .im (by decide +kernel)
#print axioms leaf0302
theorem leaf0303 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(27/32),(7/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0322 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0322_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0303
theorem leaf0304 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(13/16),(27/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0319 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0319_checked .im (by decide +kernel)
#print axioms leaf0304
theorem leaf0305 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(3/4),(13/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0316 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0316_checked .im (by decide +kernel)
#print axioms leaf0305
theorem leaf0306 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(25/32),(13/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0318 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0318_checked .im (by decide +kernel)
#print axioms leaf0306
theorem leaf0307 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(3/4),(25/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0315 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0315_checked .im (by decide +kernel)
#print axioms leaf0307
theorem leaf0308 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(1/2)⟩ ⟨(11/16),(3/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0232 Root0Angular20261003.arc0311 Root0Angular20261003.arc0232_checked Root0Angular20261003.arc0311_checked .re (by decide +kernel)
#print axioms leaf0308
theorem leaf0309 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(1/2)⟩ ⟨(5/8),(11/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0232 Root0Angular20261003.arc0251 Root0Angular20261003.arc0232_checked Root0Angular20261003.arc0251_checked .im (by decide +kernel)
#print axioms leaf0309
theorem leaf0310 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(11/16),(3/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0311 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0311_checked .im (by decide +kernel)
#print axioms leaf0310
theorem leaf0311 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(23/32),(3/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0314 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0314_checked .im (by decide +kernel)
#print axioms leaf0311
end ShoulderRoot1Angular20261003
