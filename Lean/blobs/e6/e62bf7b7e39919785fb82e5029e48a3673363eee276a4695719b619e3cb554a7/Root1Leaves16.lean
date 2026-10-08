import ParametricAngularLeaf
import Root0Arcs09
import Root0Arcs11
import Root0Arcs13
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
theorem leaf0384 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(63/64),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0338 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0338_checked .re (by decide +kernel)
#print axioms leaf0384
theorem leaf0385 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(31/32),(63/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0336 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0336_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0385
theorem leaf0386 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(63/64),1⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0338 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0338_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0386
theorem leaf0387 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(31/32),(63/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0336 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0336_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0387
theorem leaf0388 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(61/64),(31/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0335 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0335_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0388
theorem leaf0389 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(15/16),(61/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0332 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0332_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0389
theorem leaf0390 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(61/64),(31/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0335 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0335_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0390
theorem leaf0391 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(15/16),(61/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0332 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0332_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0391
theorem leaf0392 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(11/32)⟩ ⟨(63/64),1⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0210 Root0Angular20261003.arc0338 Root0Angular20261003.arc0210_checked Root0Angular20261003.arc0338_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0392
theorem leaf0393 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(43/128)⟩ ⟨(63/64),1⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0184 Root0Angular20261003.arc0338 Root0Angular20261003.arc0184_checked Root0Angular20261003.arc0338_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0393
theorem leaf0394 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(31/32),(63/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0336 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0336_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0394
theorem leaf0395 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(63/64),1⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0338 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0338_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0395
theorem leaf0396 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(31/32),(63/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0336 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0336_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0396
theorem leaf0397 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(61/64),(31/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0335 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0335_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0397
theorem leaf0398 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(15/16),(61/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0332 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0332_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0398
theorem leaf0399 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(61/64),(31/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0335 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0335_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0399
theorem leaf0400 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(15/16),(61/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0332 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0332_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0400
theorem leaf0401 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(29/32),(15/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0330 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0330_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0401
theorem leaf0402 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(29/32),(15/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0330 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0330_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0402
theorem leaf0403 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(7/8),(29/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0325 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0325_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0403
theorem leaf0404 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(7/8),(29/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0325 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0325_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0404
theorem leaf0405 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(59/64),(15/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0331 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0331_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0405
theorem leaf0406 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(29/32),(59/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0329 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0329_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0406
theorem leaf0407 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(59/64),(15/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0331 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0331_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0407
end ShoulderRoot1Angular20261003
