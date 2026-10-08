import ParametricAngularLeaf
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
theorem leaf0336 : LeafStatement cap moments EX EY hull0 hull1 ⟨(27/64),(7/16)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0229 Root0Angular20261003.arc0222 Root0Angular20261003.arc0229_checked Root0Angular20261003.arc0222_checked .im (by decide +kernel)
#print axioms leaf0336
theorem leaf0337 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(27/64)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0227 Root0Angular20261003.arc0222 Root0Angular20261003.arc0227_checked Root0Angular20261003.arc0222_checked .im (by decide +kernel)
#print axioms leaf0337
theorem leaf0338 : LeafStatement cap moments EX EY hull0 hull1 ⟨(25/64),(13/32)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0226 Root0Angular20261003.arc0228 Root0Angular20261003.arc0226_checked Root0Angular20261003.arc0228_checked .im (by decide +kernel)
#print axioms leaf0338
theorem leaf0339 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(25/64)⟩ ⟨(27/64),(7/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0221 Root0Angular20261003.arc0229 Root0Angular20261003.arc0221_checked Root0Angular20261003.arc0229_checked .im (by decide +kernel)
#print axioms leaf0339
theorem leaf0340 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(25/64)⟩ ⟨(13/32),(27/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0221 Root0Angular20261003.arc0227 Root0Angular20261003.arc0221_checked Root0Angular20261003.arc0227_checked .im (by decide +kernel)
#print axioms leaf0340
theorem leaf0341 : LeafStatement cap moments EX EY hull0 hull1 ⟨(25/64),(13/32)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0226 Root0Angular20261003.arc0222 Root0Angular20261003.arc0226_checked Root0Angular20261003.arc0222_checked .im (by decide +kernel)
#print axioms leaf0341
theorem leaf0342 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(25/64)⟩ ⟨(25/64),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0221 Root0Angular20261003.arc0226 Root0Angular20261003.arc0221_checked Root0Angular20261003.arc0226_checked .im (by decide +kernel)
#print axioms leaf0342
theorem leaf0343 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(25/64)⟩ ⟨(3/8),(25/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0221 Root0Angular20261003.arc0221 Root0Angular20261003.arc0221_checked Root0Angular20261003.arc0221_checked .im (by decide +kernel)
#print axioms leaf0343
theorem leaf0344 : LeafStatement cap moments EX EY hull0 hull1 ⟨(15/32),(1/2)⟩ ⟨(5/16),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0234 Root0Angular20261003.arc0150 Root0Angular20261003.arc0234_checked Root0Angular20261003.arc0150_checked .re (by decide +kernel)
#print axioms leaf0344
theorem leaf0345 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(15/32)⟩ ⟨(5/16),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0231 Root0Angular20261003.arc0149 Root0Angular20261003.arc0231_checked Root0Angular20261003.arc0149_checked .re (by decide +kernel)
#print axioms leaf0345
theorem leaf0346 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(15/32)⟩ ⟨(11/32),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0231 Root0Angular20261003.arc0215 Root0Angular20261003.arc0231_checked Root0Angular20261003.arc0215_checked .re (by decide +kernel)
#print axioms leaf0346
theorem leaf0347 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(1/2)⟩ ⟨(1/4),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0232 Root0Angular20261003.arc0134 Root0Angular20261003.arc0232_checked Root0Angular20261003.arc0134_checked .re (by decide +kernel)
#print axioms leaf0347
theorem leaf0348 : LeafStatement cap moments EX EY hull0 hull1 ⟨(27/64),(7/16)⟩ ⟨(11/32),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0229 Root0Angular20261003.arc0215 Root0Angular20261003.arc0229_checked Root0Angular20261003.arc0215_checked .re (by decide +kernel)
#print axioms leaf0348
theorem leaf0349 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(27/64)⟩ ⟨(11/32),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0227 Root0Angular20261003.arc0215 Root0Angular20261003.arc0227_checked Root0Angular20261003.arc0215_checked .re (by decide +kernel)
#print axioms leaf0349
theorem leaf0350 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(5/16),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0149 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0149_checked .re (by decide +kernel)
#print axioms leaf0350
theorem leaf0351 : LeafStatement cap moments EX EY hull0 hull1 ⟨(25/64),(13/32)⟩ ⟨(23/64),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0226 Root0Angular20261003.arc0218 Root0Angular20261003.arc0226_checked Root0Angular20261003.arc0218_checked .re (by decide +kernel)
#print axioms leaf0351
theorem leaf0352 : LeafStatement cap moments EX EY hull0 hull1 ⟨(25/64),(13/32)⟩ ⟨(11/32),(23/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0226 Root0Angular20261003.arc0214 Root0Angular20261003.arc0226_checked Root0Angular20261003.arc0214_checked .re (by decide +kernel)
#print axioms leaf0352
theorem leaf0353 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(25/64)⟩ ⟨(23/64),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0221 Root0Angular20261003.arc0218 Root0Angular20261003.arc0221_checked Root0Angular20261003.arc0218_checked .re (by decide +kernel)
#print axioms leaf0353
theorem leaf0354 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(25/64)⟩ ⟨(11/32),(23/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0221 Root0Angular20261003.arc0214 Root0Angular20261003.arc0221_checked Root0Angular20261003.arc0214_checked .re (by decide +kernel)
#print axioms leaf0354
theorem leaf0355 : LeafStatement cap moments EX EY hull0 hull1 ⟨(25/64),(13/32)⟩ ⟨(5/16),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0226 Root0Angular20261003.arc0149 Root0Angular20261003.arc0226_checked Root0Angular20261003.arc0149_checked .re (by decide +kernel)
#print axioms leaf0355
theorem leaf0356 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(25/64)⟩ ⟨(5/16),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0221 Root0Angular20261003.arc0149 Root0Angular20261003.arc0221_checked Root0Angular20261003.arc0149_checked .re (by decide +kernel)
#print axioms leaf0356
theorem leaf0357 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(1/4),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0134 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0134_checked .re (by decide +kernel)
#print axioms leaf0357
theorem leaf0358 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(9/32),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0139 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0139_checked .re (by decide +kernel)
#print axioms leaf0358
theorem leaf0359 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(1/4),(9/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0133 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0133_checked .re (by decide +kernel)
#print axioms leaf0359
end ShoulderRoot1Angular20261003
