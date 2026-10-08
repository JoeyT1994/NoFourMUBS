import ParametricAngularLeaf
import Root0Arcs08
import Root0Arcs09
import Root0Arcs13
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
theorem leaf0432 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(11/32)⟩ ⟨(27/32),(7/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0149 Root0Angular20261003.arc0322 Root0Angular20261003.arc0149_checked Root0Angular20261003.arc0322_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0432
theorem leaf0433 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(11/32)⟩ ⟨(13/16),(27/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0149 Root0Angular20261003.arc0319 Root0Angular20261003.arc0149_checked Root0Angular20261003.arc0319_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0433
theorem leaf0434 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(3/8)⟩ ⟨(25/32),(13/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0215 Root0Angular20261003.arc0318 Root0Angular20261003.arc0215_checked Root0Angular20261003.arc0318_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0434
theorem leaf0435 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(3/8)⟩ ⟨(3/4),(25/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0215 Root0Angular20261003.arc0315 Root0Angular20261003.arc0215_checked Root0Angular20261003.arc0315_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0435
theorem leaf0436 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(11/32)⟩ ⟨(25/32),(13/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0149 Root0Angular20261003.arc0318 Root0Angular20261003.arc0149_checked Root0Angular20261003.arc0318_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0436
theorem leaf0437 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(11/32)⟩ ⟨(3/4),(25/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0149 Root0Angular20261003.arc0315 Root0Angular20261003.arc0149_checked Root0Angular20261003.arc0315_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0437
theorem leaf0438 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(27/32),(7/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0322 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0322_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0438
theorem leaf0439 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(27/32),(7/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0322 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0322_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0439
theorem leaf0440 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(5/16)⟩ ⟨(13/16),(27/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0139 Root0Angular20261003.arc0319 Root0Angular20261003.arc0139_checked Root0Angular20261003.arc0319_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0440
theorem leaf0441 : LeafStatement cap moments EX EY hull0 hull1 ⟨(17/64),(9/32)⟩ ⟨(27/32),(7/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0136 Root0Angular20261003.arc0322 Root0Angular20261003.arc0136_checked Root0Angular20261003.arc0322_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0441
theorem leaf0442 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(17/64)⟩ ⟨(55/64),(7/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0132 Root0Angular20261003.arc0323 Root0Angular20261003.arc0132_checked Root0Angular20261003.arc0323_checked .re (by decide +kernel)
#print axioms leaf0442
theorem leaf0443 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(17/64)⟩ ⟨(27/32),(55/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0132 Root0Angular20261003.arc0321 Root0Angular20261003.arc0132_checked Root0Angular20261003.arc0321_checked .re (by decide +kernel)
#print axioms leaf0443
theorem leaf0444 : LeafStatement cap moments EX EY hull0 hull1 ⟨(17/64),(9/32)⟩ ⟨(13/16),(27/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0136 Root0Angular20261003.arc0319 Root0Angular20261003.arc0136_checked Root0Angular20261003.arc0319_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0444
theorem leaf0445 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(17/64)⟩ ⟨(13/16),(27/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0132 Root0Angular20261003.arc0319 Root0Angular20261003.arc0132_checked Root0Angular20261003.arc0319_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0445
theorem leaf0446 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(5/16)⟩ ⟨(25/32),(13/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0139 Root0Angular20261003.arc0318 Root0Angular20261003.arc0139_checked Root0Angular20261003.arc0318_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0446
theorem leaf0447 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(5/16)⟩ ⟨(3/4),(25/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0139 Root0Angular20261003.arc0315 Root0Angular20261003.arc0139_checked Root0Angular20261003.arc0315_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0447
theorem leaf0448 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(25/32),(13/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0318 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0318_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0448
theorem leaf0449 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(3/4),(25/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0315 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0315_checked .im (by decide +kernel)
#print axioms leaf0449
theorem leaf0450 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(23/32),(3/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0314 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0314_checked .im (by decide +kernel)
#print axioms leaf0450
theorem leaf0451 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(23/32),(3/4)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0314 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0314_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0451
theorem leaf0452 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(11/16),(23/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0310 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0310_checked .im (by decide +kernel)
#print axioms leaf0452
theorem leaf0453 : LeafStatement cap moments EX EY hull0 hull1 ⟨(45/128),(23/64)⟩ ⟨(45/64),(23/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0216 Root0Angular20261003.arc0313 Root0Angular20261003.arc0216_checked Root0Angular20261003.arc0313_checked .im (by decide +kernel)
#print axioms leaf0453
theorem leaf0454 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨(45/64),(23/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0213 Root0Angular20261003.arc0313 Root0Angular20261003.arc0213_checked Root0Angular20261003.arc0313_checked .im (by decide +kernel)
#print axioms leaf0454
theorem leaf0455 : LeafStatement cap moments EX EY hull0 hull1 ⟨(45/128),(23/64)⟩ ⟨(11/16),(45/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0216 Root0Angular20261003.arc0309 Root0Angular20261003.arc0216_checked Root0Angular20261003.arc0309_checked .im (by decide +kernel)
#print axioms leaf0455
end ShoulderRoot1Angular20261003
