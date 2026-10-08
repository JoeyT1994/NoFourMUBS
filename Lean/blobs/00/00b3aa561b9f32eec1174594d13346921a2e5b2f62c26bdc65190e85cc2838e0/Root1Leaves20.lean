import ParametricAngularLeaf
import Root0Arcs11
import Root0Arcs12
import Root0Arcs13
import Root0Arcs16
import Root0Arcs17
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
theorem leaf0480 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(43/64),(173/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0303 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0303_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0480
theorem leaf0481 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(43/128)⟩ ⟨(87/128),(11/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0198 Root0Angular20261003.arc0307 Root0Angular20261003.arc0198_checked Root0Angular20261003.arc0307_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0481
theorem leaf0482 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(85/256)⟩ ⟨(87/128),(11/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0183 Root0Angular20261003.arc0307 Root0Angular20261003.arc0183_checked Root0Angular20261003.arc0307_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0482
theorem leaf0483 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(43/128)⟩ ⟨(173/256),(87/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0198 Root0Angular20261003.arc0306 Root0Angular20261003.arc0198_checked Root0Angular20261003.arc0306_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0483
theorem leaf0484 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(43/128)⟩ ⟨(43/64),(173/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0205 Root0Angular20261003.arc0303 Root0Angular20261003.arc0205_checked Root0Angular20261003.arc0303_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0484
theorem leaf0485 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(171/512)⟩ ⟨(43/64),(173/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0197 Root0Angular20261003.arc0303 Root0Angular20261003.arc0197_checked Root0Angular20261003.arc0303_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0485
theorem leaf0486 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(85/256)⟩ ⟨(173/256),(87/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0183 Root0Angular20261003.arc0306 Root0Angular20261003.arc0183_checked Root0Angular20261003.arc0306_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0486
theorem leaf0487 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(85/256)⟩ ⟨(43/64),(173/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0183 Root0Angular20261003.arc0303 Root0Angular20261003.arc0183_checked Root0Angular20261003.arc0303_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0487
theorem leaf0488 : LeafStatement cap moments EX EY hull0 hull1 ⟨(87/256),(11/32)⟩ ⟨(85/128),(43/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0212 Root0Angular20261003.arc0289 Root0Angular20261003.arc0212_checked Root0Angular20261003.arc0289_checked .im (by decide +kernel)
#print axioms leaf0488
theorem leaf0489 : LeafStatement cap moments EX EY hull0 hull1 ⟨(173/512),(87/256)⟩ ⟨(171/256),(43/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0211 Root0Angular20261003.arc0301 Root0Angular20261003.arc0211_checked Root0Angular20261003.arc0301_checked .im (by decide +kernel)
#print axioms leaf0489
theorem leaf0490 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(343/512),(43/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0302 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0302_checked .im (by decide +kernel)
#print axioms leaf0490
theorem leaf0491 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(171/256),(343/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0300 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0300_checked .im (by decide +kernel)
#print axioms leaf0491
theorem leaf0492 : LeafStatement cap moments EX EY hull0 hull1 ⟨(173/512),(87/256)⟩ ⟨(85/128),(171/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0211 Root0Angular20261003.arc0288 Root0Angular20261003.arc0211_checked Root0Angular20261003.arc0288_checked .im (by decide +kernel)
#print axioms leaf0492
theorem leaf0493 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(341/512),(171/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0295 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0295_checked .im (by decide +kernel)
#print axioms leaf0493
theorem leaf0494 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(85/128),(341/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0287 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0287_checked .im (by decide +kernel)
#print axioms leaf0494
theorem leaf0495 : LeafStatement cap moments EX EY hull0 hull1 ⟨(87/256),(11/32)⟩ ⟨(21/32),(85/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0212 Root0Angular20261003.arc0266 Root0Angular20261003.arc0212_checked Root0Angular20261003.arc0266_checked .im (by decide +kernel)
#print axioms leaf0495
theorem leaf0496 : LeafStatement cap moments EX EY hull0 hull1 ⟨(173/512),(87/256)⟩ ⟨(169/256),(85/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0211 Root0Angular20261003.arc0281 Root0Angular20261003.arc0211_checked Root0Angular20261003.arc0281_checked .im (by decide +kernel)
#print axioms leaf0496
theorem leaf0497 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(339/512),(85/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0284 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0284_checked .im (by decide +kernel)
#print axioms leaf0497
theorem leaf0498 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(169/256),(339/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0280 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0280_checked .im (by decide +kernel)
#print axioms leaf0498
theorem leaf0499 : LeafStatement cap moments EX EY hull0 hull1 ⟨(173/512),(87/256)⟩ ⟨(21/32),(169/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0211 Root0Angular20261003.arc0265 Root0Angular20261003.arc0211_checked Root0Angular20261003.arc0265_checked .im (by decide +kernel)
#print axioms leaf0499
theorem leaf0500 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(337/512),(169/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0274 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0274_checked .im (by decide +kernel)
#print axioms leaf0500
theorem leaf0501 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(21/32),(337/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0264 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0264_checked .im (by decide +kernel)
#print axioms leaf0501
theorem leaf0502 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(43/128)⟩ ⟨(343/512),(43/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0205 Root0Angular20261003.arc0302 Root0Angular20261003.arc0205_checked Root0Angular20261003.arc0302_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0502
theorem leaf0503 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(43/128)⟩ ⟨(171/256),(343/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0205 Root0Angular20261003.arc0300 Root0Angular20261003.arc0205_checked Root0Angular20261003.arc0300_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0503
end ShoulderRoot1Angular20261003
