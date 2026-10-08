import ParametricAngularLeaf
import Root0Arcs09
import Root0Arcs10
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
theorem leaf0576 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(337/512),(1349/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0272 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0272_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0576
theorem leaf0577 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(337/512),(675/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0273 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0273_checked .im (by decide +kernel)
#print axioms leaf0577
theorem leaf0578 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(337/512),(169/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0274 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0274_checked .im (by decide +kernel)
#print axioms leaf0578
theorem leaf0579 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(1347/2048),(337/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0271 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0271_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0579
theorem leaf0580 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(673/1024),(1347/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0269 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0269_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0580
theorem leaf0581 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(673/1024),(337/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0270 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0270_checked .im (by decide +kernel)
#print axioms leaf0581
theorem leaf0582 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(85/256)⟩ ⟨(21/32),(673/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0193 Root0Angular20261003.arc0263 Root0Angular20261003.arc0193_checked Root0Angular20261003.arc0263_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0582
theorem leaf0583 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(21/32),(337/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0264 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0264_checked .im (by decide +kernel)
#print axioms leaf0583
theorem leaf0584 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(337/512),(169/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0274 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0274_checked .im (by decide +kernel)
#print axioms leaf0584
theorem leaf0585 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(21/32),(337/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0264 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0264_checked .im (by decide +kernel)
#print axioms leaf0585
theorem leaf0586 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(21/64)⟩ ⟨(87/128),(11/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0156 Root0Angular20261003.arc0307 Root0Angular20261003.arc0156_checked Root0Angular20261003.arc0307_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0586
theorem leaf0587 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(173/256),(87/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0306 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0306_checked .im (by decide +kernel)
#print axioms leaf0587
theorem leaf0588 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(43/64),(173/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0303 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0303_checked .im (by decide +kernel)
#print axioms leaf0588
theorem leaf0589 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(83/256)⟩ ⟨(43/64),(87/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0155 Root0Angular20261003.arc0304 Root0Angular20261003.arc0155_checked Root0Angular20261003.arc0304_checked .im (by decide +kernel)
#print axioms leaf0589
theorem leaf0590 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(41/128)⟩ ⟨(43/64),(11/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0147 Root0Angular20261003.arc0305 Root0Angular20261003.arc0147_checked Root0Angular20261003.arc0305_checked .im (by decide +kernel)
#print axioms leaf0590
theorem leaf0591 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(171/256),(43/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0301 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0301_checked .im (by decide +kernel)
#print axioms leaf0591
theorem leaf0592 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(85/128),(171/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0288 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0288_checked .im (by decide +kernel)
#print axioms leaf0592
theorem leaf0593 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(83/256)⟩ ⟨(85/128),(43/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0155 Root0Angular20261003.arc0289 Root0Angular20261003.arc0155_checked Root0Angular20261003.arc0289_checked .im (by decide +kernel)
#print axioms leaf0593
theorem leaf0594 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(169/256),(85/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0281 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0281_checked .im (by decide +kernel)
#print axioms leaf0594
theorem leaf0595 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(21/32),(169/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0265 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0265_checked .im (by decide +kernel)
#print axioms leaf0595
theorem leaf0596 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(83/256)⟩ ⟨(21/32),(85/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0155 Root0Angular20261003.arc0266 Root0Angular20261003.arc0155_checked Root0Angular20261003.arc0266_checked .im (by decide +kernel)
#print axioms leaf0596
theorem leaf0597 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(41/128)⟩ ⟨(21/32),(43/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0147 Root0Angular20261003.arc0267 Root0Angular20261003.arc0147_checked Root0Angular20261003.arc0267_checked .im (by decide +kernel)
#print axioms leaf0597
theorem leaf0598 : LeafStatement cap moments EX EY hull0 hull1 ⟨(87/256),(11/32)⟩ ⟨(83/128),(21/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0212 Root0Angular20261003.arc0259 Root0Angular20261003.arc0212_checked Root0Angular20261003.arc0259_checked .im (by decide +kernel)
#print axioms leaf0598
theorem leaf0599 : LeafStatement cap moments EX EY hull0 hull1 ⟨(173/512),(87/256)⟩ ⟨(167/256),(21/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0211 Root0Angular20261003.arc0261 Root0Angular20261003.arc0211_checked Root0Angular20261003.arc0261_checked .im (by decide +kernel)
#print axioms leaf0599
end ShoulderRoot1Angular20261003
