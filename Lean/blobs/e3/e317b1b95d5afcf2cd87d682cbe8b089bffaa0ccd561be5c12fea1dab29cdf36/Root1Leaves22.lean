import ParametricAngularLeaf
import Root0Arcs12
import Root0Arcs16
import Root0Arcs17
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
theorem leaf0528 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(171/512)⟩ ⟨(679/1024),(85/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0201 Root0Angular20261003.arc0285 Root0Angular20261003.arc0201_checked Root0Angular20261003.arc0285_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0528
theorem leaf0529 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(171/512)⟩ ⟨(339/512),(679/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0201 Root0Angular20261003.arc0283 Root0Angular20261003.arc0201_checked Root0Angular20261003.arc0283_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0529
theorem leaf0530 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(341/1024)⟩ ⟨(339/512),(85/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0196 Root0Angular20261003.arc0284 Root0Angular20261003.arc0196_checked Root0Angular20261003.arc0284_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0530
theorem leaf0531 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(171/512)⟩ ⟨(677/1024),(339/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0201 Root0Angular20261003.arc0282 Root0Angular20261003.arc0201_checked Root0Angular20261003.arc0282_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0531
theorem leaf0532 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(169/256),(677/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0279 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0279_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0532
theorem leaf0533 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(169/256),(677/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0279 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0279_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0533
theorem leaf0534 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(341/1024)⟩ ⟨(677/1024),(339/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0196 Root0Angular20261003.arc0282 Root0Angular20261003.arc0196_checked Root0Angular20261003.arc0282_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0534
theorem leaf0535 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(341/1024)⟩ ⟨(169/256),(677/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0196 Root0Angular20261003.arc0279 Root0Angular20261003.arc0196_checked Root0Angular20261003.arc0279_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0535
theorem leaf0536 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(675/1024),(169/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0277 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0277_checked .im (by decide +kernel)
#print axioms leaf0536
theorem leaf0537 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(337/512),(675/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0273 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0273_checked .im (by decide +kernel)
#print axioms leaf0537
theorem leaf0538 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(1351/2048),(169/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0278 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0278_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0538
theorem leaf0539 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(675/1024),(1351/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0276 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0276_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0539
theorem leaf0540 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(1351/2048),(169/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0278 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0278_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0540
theorem leaf0541 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(675/1024),(1351/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0276 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0276_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0541
theorem leaf0542 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(337/512),(675/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0273 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0273_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0542
theorem leaf0543 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(337/512),(675/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0273 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0273_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0543
theorem leaf0544 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(21/32),(337/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0264 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0264_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0544
theorem leaf0545 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(343/1024)⟩ ⟨(21/32),(337/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0204 Root0Angular20261003.arc0264 Root0Angular20261003.arc0204_checked Root0Angular20261003.arc0264_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0545
theorem leaf0546 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(1351/2048),(169/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0278 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0278_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0546
theorem leaf0547 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(675/1024),(1351/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0276 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0276_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0547
theorem leaf0548 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(1351/2048),(169/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0278 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0278_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0548
theorem leaf0549 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(675/1024),(1351/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0276 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0276_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0549
theorem leaf0550 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(1349/2048),(675/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0275 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0275_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0550
theorem leaf0551 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(337/512),(1349/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0272 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0272_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0551
end ShoulderRoot1Angular20261003
