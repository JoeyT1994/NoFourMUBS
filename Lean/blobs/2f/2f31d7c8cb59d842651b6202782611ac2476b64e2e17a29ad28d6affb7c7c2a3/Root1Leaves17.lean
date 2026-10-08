import ParametricAngularLeaf
import Root0Arcs08
import Root0Arcs09
import Root0Arcs11
import Root0Arcs13
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
theorem leaf0408 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(29/32),(59/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0329 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0329_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0408
theorem leaf0409 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(7/8),(29/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0325 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0325_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0409
theorem leaf0410 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(7/8),(29/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0325 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0325_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0410
theorem leaf0411 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(63/64),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0338 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0338_checked .re (by decide +kernel)
#print axioms leaf0411
theorem leaf0412 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(31/32),(63/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0336 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0336_checked .re (by decide +kernel)
#print axioms leaf0412
theorem leaf0413 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(31/32),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0337 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0337_checked .re (by decide +kernel)
#print axioms leaf0413
theorem leaf0414 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(61/64),(31/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0335 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0335_checked .re (by decide +kernel)
#print axioms leaf0414
theorem leaf0415 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(15/16),(61/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0332 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0332_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0415
theorem leaf0416 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(15/16),(31/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0333 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0333_checked .re (by decide +kernel)
#print axioms leaf0416
theorem leaf0417 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(31/32),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0337 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0337_checked .re (by decide +kernel)
#print axioms leaf0417
theorem leaf0418 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(15/16),(31/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0333 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0333_checked .re (by decide +kernel)
#print axioms leaf0418
theorem leaf0419 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(59/64),(15/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0331 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0331_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0419
theorem leaf0420 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(29/32),(59/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0329 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0329_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0420
theorem leaf0421 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(59/64),(15/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0331 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0331_checked .re (by decide +kernel)
#print axioms leaf0421
theorem leaf0422 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(29/32),(59/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0329 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0329_checked .re (by decide +kernel)
#print axioms leaf0422
theorem leaf0423 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(7/8),(29/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0325 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0325_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0423
theorem leaf0424 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(57/64),(29/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0328 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0328_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0424
theorem leaf0425 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(7/8),(57/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0324 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0324_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0425
theorem leaf0426 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(29/32),(15/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0330 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0330_checked .re (by decide +kernel)
#print axioms leaf0426
theorem leaf0427 : LeafStatement cap moments EX EY hull0 hull1 ⟨(17/64),(9/32)⟩ ⟨(57/64),(29/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0136 Root0Angular20261003.arc0328 Root0Angular20261003.arc0136_checked Root0Angular20261003.arc0328_checked .re (by decide +kernel)
#print axioms leaf0427
theorem leaf0428 : LeafStatement cap moments EX EY hull0 hull1 ⟨(17/64),(9/32)⟩ ⟨(7/8),(57/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0136 Root0Angular20261003.arc0324 Root0Angular20261003.arc0136_checked Root0Angular20261003.arc0324_checked .re (by decide +kernel)
#print axioms leaf0428
theorem leaf0429 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(17/64)⟩ ⟨(7/8),(29/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0132 Root0Angular20261003.arc0325 Root0Angular20261003.arc0132_checked Root0Angular20261003.arc0325_checked .re (by decide +kernel)
#print axioms leaf0429
theorem leaf0430 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(3/8)⟩ ⟨(27/32),(7/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0215 Root0Angular20261003.arc0322 Root0Angular20261003.arc0215_checked Root0Angular20261003.arc0322_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0430
theorem leaf0431 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(3/8)⟩ ⟨(13/16),(27/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0215 Root0Angular20261003.arc0319 Root0Angular20261003.arc0215_checked Root0Angular20261003.arc0319_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0431
end ShoulderRoot1Angular20261003
