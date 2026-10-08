import ParametricAngularLeaf
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
theorem leaf0312 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(11/16),(23/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0310 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0310_checked .im (by decide +kernel)
#print axioms leaf0312
theorem leaf0313 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(5/8),(11/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0251 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0251_checked .im (by decide +kernel)
#print axioms leaf0313
theorem leaf0314 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(21/32),(11/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0268 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0268_checked .im (by decide +kernel)
#print axioms leaf0314
theorem leaf0315 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(5/8),(21/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0250 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0250_checked .im (by decide +kernel)
#print axioms leaf0315
theorem leaf0316 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(1/2)⟩ ⟨(9/16),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0232 Root0Angular20261003.arc0243 Root0Angular20261003.arc0232_checked Root0Angular20261003.arc0243_checked .im (by decide +kernel)
#print axioms leaf0316
theorem leaf0317 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(1/2)⟩ ⟨(1/2),(9/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0232 Root0Angular20261003.arc0236 Root0Angular20261003.arc0232_checked Root0Angular20261003.arc0236_checked .im (by decide +kernel)
#print axioms leaf0317
theorem leaf0318 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(9/16),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0243 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0243_checked .im (by decide +kernel)
#print axioms leaf0318
theorem leaf0319 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(19/32),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0246 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0246_checked .im (by decide +kernel)
#print axioms leaf0319
theorem leaf0320 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(9/16),(19/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0242 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0242_checked .im (by decide +kernel)
#print axioms leaf0320
theorem leaf0321 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(1/2),(9/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0236 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0236_checked .im (by decide +kernel)
#print axioms leaf0321
theorem leaf0322 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(17/32),(9/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0239 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0239_checked .im (by decide +kernel)
#print axioms leaf0322
theorem leaf0323 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(1/2),(17/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0235 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0235_checked .im (by decide +kernel)
#print axioms leaf0323
theorem leaf0324 : LeafStatement cap moments EX EY hull0 hull1 ⟨(15/32),(1/2)⟩ ⟨(7/16),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0234 Root0Angular20261003.arc0232 Root0Angular20261003.arc0234_checked Root0Angular20261003.arc0232_checked .im (by decide +kernel)
#print axioms leaf0324
theorem leaf0325 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(15/32)⟩ ⟨(7/16),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0231 Root0Angular20261003.arc0232 Root0Angular20261003.arc0231_checked Root0Angular20261003.arc0232_checked .im (by decide +kernel)
#print axioms leaf0325
theorem leaf0326 : LeafStatement cap moments EX EY hull0 hull1 ⟨(15/32),(1/2)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0234 Root0Angular20261003.arc0228 Root0Angular20261003.arc0234_checked Root0Angular20261003.arc0228_checked .im (by decide +kernel)
#print axioms leaf0326
theorem leaf0327 : LeafStatement cap moments EX EY hull0 hull1 ⟨(15/32),(1/2)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0234 Root0Angular20261003.arc0222 Root0Angular20261003.arc0234_checked Root0Angular20261003.arc0222_checked .im (by decide +kernel)
#print axioms leaf0327
theorem leaf0328 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(15/32)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0231 Root0Angular20261003.arc0228 Root0Angular20261003.arc0231_checked Root0Angular20261003.arc0228_checked .im (by decide +kernel)
#print axioms leaf0328
theorem leaf0329 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(15/32)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0231 Root0Angular20261003.arc0222 Root0Angular20261003.arc0231_checked Root0Angular20261003.arc0222_checked .im (by decide +kernel)
#print axioms leaf0329
theorem leaf0330 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(15/32),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0234 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0234_checked .im (by decide +kernel)
#print axioms leaf0330
theorem leaf0331 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(7/16),(15/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0231 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0231_checked .im (by decide +kernel)
#print axioms leaf0331
theorem leaf0332 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(15/32),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0234 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0234_checked .im (by decide +kernel)
#print axioms leaf0332
theorem leaf0333 : LeafStatement cap moments EX EY hull0 hull1 ⟨(25/64),(13/32)⟩ ⟨(7/16),(15/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0226 Root0Angular20261003.arc0231 Root0Angular20261003.arc0226_checked Root0Angular20261003.arc0231_checked .im (by decide +kernel)
#print axioms leaf0333
theorem leaf0334 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(25/64)⟩ ⟨(7/16),(15/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0221 Root0Angular20261003.arc0231 Root0Angular20261003.arc0221_checked Root0Angular20261003.arc0231_checked .im (by decide +kernel)
#print axioms leaf0334
theorem leaf0335 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0228 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0228_checked .im (by decide +kernel)
#print axioms leaf0335
end ShoulderRoot1Angular20261003
