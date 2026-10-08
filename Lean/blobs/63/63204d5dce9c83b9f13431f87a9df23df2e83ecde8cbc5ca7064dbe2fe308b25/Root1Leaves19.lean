import ParametricAngularLeaf
import Root0Arcs09
import Root0Arcs11
import Root0Arcs13
import Root0Arcs15
import Root0Arcs16
import Root0Arcs18
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
theorem leaf0456 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨(11/16),(45/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0213 Root0Angular20261003.arc0309 Root0Angular20261003.arc0213_checked Root0Angular20261003.arc0309_checked .im (by decide +kernel)
#print axioms leaf0456
theorem leaf0457 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(11/32)⟩ ⟨(23/32),(3/4)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0149 Root0Angular20261003.arc0314 Root0Angular20261003.arc0149_checked Root0Angular20261003.arc0314_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0457
theorem leaf0458 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(45/64),(23/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0313 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0313_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0458
theorem leaf0459 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(11/32)⟩ ⟨(89/128),(45/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0210 Root0Angular20261003.arc0312 Root0Angular20261003.arc0210_checked Root0Angular20261003.arc0312_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0459
theorem leaf0460 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(11/32)⟩ ⟨(11/16),(89/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0210 Root0Angular20261003.arc0308 Root0Angular20261003.arc0210_checked Root0Angular20261003.arc0308_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0460
theorem leaf0461 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(43/128)⟩ ⟨(11/16),(45/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0184 Root0Angular20261003.arc0309 Root0Angular20261003.arc0184_checked Root0Angular20261003.arc0309_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0461
theorem leaf0462 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(45/64),(23/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0313 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0313_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0462
theorem leaf0463 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(21/64)⟩ ⟨(11/16),(45/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0156 Root0Angular20261003.arc0309 Root0Angular20261003.arc0156_checked Root0Angular20261003.arc0309_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0463
theorem leaf0464 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(41/128)⟩ ⟨(11/16),(45/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0147 Root0Angular20261003.arc0309 Root0Angular20261003.arc0147_checked Root0Angular20261003.arc0309_checked .im (by decide +kernel)
#print axioms leaf0464
theorem leaf0465 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(21/32),(11/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0268 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0268_checked .im (by decide +kernel)
#print axioms leaf0465
theorem leaf0466 : LeafStatement cap moments EX EY hull0 hull1 ⟨(45/128),(23/64)⟩ ⟨(43/64),(11/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0216 Root0Angular20261003.arc0305 Root0Angular20261003.arc0216_checked Root0Angular20261003.arc0305_checked .im (by decide +kernel)
#print axioms leaf0466
theorem leaf0467 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨(43/64),(11/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0213 Root0Angular20261003.arc0305 Root0Angular20261003.arc0213_checked Root0Angular20261003.arc0305_checked .im (by decide +kernel)
#print axioms leaf0467
theorem leaf0468 : LeafStatement cap moments EX EY hull0 hull1 ⟨(45/128),(23/64)⟩ ⟨(21/32),(43/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0216 Root0Angular20261003.arc0267 Root0Angular20261003.arc0216_checked Root0Angular20261003.arc0267_checked .im (by decide +kernel)
#print axioms leaf0468
theorem leaf0469 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨(21/32),(43/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0213 Root0Angular20261003.arc0267 Root0Angular20261003.arc0213_checked Root0Angular20261003.arc0267_checked .im (by decide +kernel)
#print axioms leaf0469
theorem leaf0470 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(5/8),(21/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0250 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0250_checked .im (by decide +kernel)
#print axioms leaf0470
theorem leaf0471 : LeafStatement cap moments EX EY hull0 hull1 ⟨(45/128),(23/64)⟩ ⟨(41/64),(21/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0216 Root0Angular20261003.arc0256 Root0Angular20261003.arc0216_checked Root0Angular20261003.arc0256_checked .im (by decide +kernel)
#print axioms leaf0471
theorem leaf0472 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨(83/128),(21/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0213 Root0Angular20261003.arc0259 Root0Angular20261003.arc0213_checked Root0Angular20261003.arc0259_checked .im (by decide +kernel)
#print axioms leaf0472
theorem leaf0473 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨(41/64),(83/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0213 Root0Angular20261003.arc0255 Root0Angular20261003.arc0213_checked Root0Angular20261003.arc0255_checked .im (by decide +kernel)
#print axioms leaf0473
theorem leaf0474 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(5/8),(41/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0249 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0249_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0474
theorem leaf0475 : LeafStatement cap moments EX EY hull0 hull1 ⟨(87/256),(11/32)⟩ ⟨(87/128),(11/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0212 Root0Angular20261003.arc0307 Root0Angular20261003.arc0212_checked Root0Angular20261003.arc0307_checked .im (by decide +kernel)
#print axioms leaf0475
theorem leaf0476 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(87/256)⟩ ⟨(87/128),(11/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0209 Root0Angular20261003.arc0307 Root0Angular20261003.arc0209_checked Root0Angular20261003.arc0307_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0476
theorem leaf0477 : LeafStatement cap moments EX EY hull0 hull1 ⟨(87/256),(11/32)⟩ ⟨(43/64),(87/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0212 Root0Angular20261003.arc0304 Root0Angular20261003.arc0212_checked Root0Angular20261003.arc0304_checked .im (by decide +kernel)
#print axioms leaf0477
theorem leaf0478 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(87/256)⟩ ⟨(173/256),(87/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0209 Root0Angular20261003.arc0306 Root0Angular20261003.arc0209_checked Root0Angular20261003.arc0306_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0478
theorem leaf0479 : LeafStatement cap moments EX EY hull0 hull1 ⟨(173/512),(87/256)⟩ ⟨(43/64),(173/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0211 Root0Angular20261003.arc0303 Root0Angular20261003.arc0211_checked Root0Angular20261003.arc0303_checked .im (by decide +kernel)
#print axioms leaf0479
end ShoulderRoot1Angular20261003
