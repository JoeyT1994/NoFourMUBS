import ParametricAngularLeaf
import Root0Arcs11
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
theorem leaf0552 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(1349/2048),(675/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0275 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0275_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0552
theorem leaf0553 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(337/512),(1349/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0272 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0272_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0553
theorem leaf0554 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(675/1024),(1351/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0276 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0276_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0554
theorem leaf0555 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(1351/2048),(169/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0278 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0278_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0555
theorem leaf0556 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(675/1024),(169/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0277 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0277_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0556
theorem leaf0557 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(1349/2048),(675/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0275 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0275_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0557
theorem leaf0558 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(337/512),(1349/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0272 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0272_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0558
theorem leaf0559 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(1349/2048),(675/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0275 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0275_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0559
theorem leaf0560 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(337/512),(1349/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0272 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0272_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0560
theorem leaf0561 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(171/512)⟩ ⟨(673/1024),(337/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0201 Root0Angular20261003.arc0270 Root0Angular20261003.arc0201_checked Root0Angular20261003.arc0270_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0561
theorem leaf0562 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(171/512)⟩ ⟨(21/32),(673/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0201 Root0Angular20261003.arc0263 Root0Angular20261003.arc0201_checked Root0Angular20261003.arc0263_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0562
theorem leaf0563 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(673/1024),(337/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0270 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0270_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0563
theorem leaf0564 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(673/1024),(337/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0270 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0270_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0564
theorem leaf0565 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(341/1024)⟩ ⟨(21/32),(673/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0196 Root0Angular20261003.arc0263 Root0Angular20261003.arc0196_checked Root0Angular20261003.arc0263_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0565
theorem leaf0566 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(85/256)⟩ ⟨(339/512),(85/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0193 Root0Angular20261003.arc0284 Root0Angular20261003.arc0193_checked Root0Angular20261003.arc0284_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0566
theorem leaf0567 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(339/512),(85/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0284 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0284_checked .im (by decide +kernel)
#print axioms leaf0567
theorem leaf0568 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(85/256)⟩ ⟨(677/1024),(339/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0193 Root0Angular20261003.arc0282 Root0Angular20261003.arc0193_checked Root0Angular20261003.arc0282_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0568
theorem leaf0569 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(85/256)⟩ ⟨(169/256),(677/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0193 Root0Angular20261003.arc0279 Root0Angular20261003.arc0193_checked Root0Angular20261003.arc0279_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0569
theorem leaf0570 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(169/256),(339/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0280 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0280_checked .im (by decide +kernel)
#print axioms leaf0570
theorem leaf0571 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(339/512),(85/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0284 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0284_checked .im (by decide +kernel)
#print axioms leaf0571
theorem leaf0572 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(169/256),(339/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0280 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0280_checked .im (by decide +kernel)
#print axioms leaf0572
theorem leaf0573 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(675/1024),(169/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0277 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0277_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0573
theorem leaf0574 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(675/1024),(169/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0277 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0277_checked .im (by decide +kernel)
#print axioms leaf0574
theorem leaf0575 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(1349/2048),(675/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0275 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0275_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0575
end ShoulderRoot1Angular20261003
