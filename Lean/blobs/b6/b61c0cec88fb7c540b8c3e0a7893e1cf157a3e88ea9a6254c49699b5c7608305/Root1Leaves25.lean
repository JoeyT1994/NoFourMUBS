import ParametricAngularLeaf
import Root0Arcs09
import Root0Arcs10
import Root0Arcs11
import Root0Arcs12
import Root0Arcs13
import Root0Arcs15
import Root0Arcs16
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
theorem leaf0600 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(167/256),(21/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0261 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0261_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0600
theorem leaf0601 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(87/256)⟩ ⟨(83/128),(167/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0209 Root0Angular20261003.arc0258 Root0Angular20261003.arc0209_checked Root0Angular20261003.arc0258_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0601
theorem leaf0602 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(11/32)⟩ ⟨(41/64),(83/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0210 Root0Angular20261003.arc0255 Root0Angular20261003.arc0210_checked Root0Angular20261003.arc0255_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0602
theorem leaf0603 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(43/128)⟩ ⟨(335/512),(21/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0205 Root0Angular20261003.arc0262 Root0Angular20261003.arc0205_checked Root0Angular20261003.arc0262_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0603
theorem leaf0604 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(43/128)⟩ ⟨(167/256),(335/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0205 Root0Angular20261003.arc0260 Root0Angular20261003.arc0205_checked Root0Angular20261003.arc0260_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0604
theorem leaf0605 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(171/512)⟩ ⟨(335/512),(21/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0197 Root0Angular20261003.arc0262 Root0Angular20261003.arc0197_checked Root0Angular20261003.arc0262_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0605
theorem leaf0606 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(171/512)⟩ ⟨(167/256),(335/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0197 Root0Angular20261003.arc0260 Root0Angular20261003.arc0197_checked Root0Angular20261003.arc0260_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0606
theorem leaf0607 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(43/128)⟩ ⟨(83/128),(167/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0198 Root0Angular20261003.arc0258 Root0Angular20261003.arc0198_checked Root0Angular20261003.arc0258_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0607
theorem leaf0608 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(85/256)⟩ ⟨(335/512),(21/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0193 Root0Angular20261003.arc0262 Root0Angular20261003.arc0193_checked Root0Angular20261003.arc0262_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0608
theorem leaf0609 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(335/512),(21/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0262 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0262_checked .im (by decide +kernel)
#print axioms leaf0609
theorem leaf0610 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(85/256)⟩ ⟨(167/256),(335/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0191 Root0Angular20261003.arc0260 Root0Angular20261003.arc0191_checked Root0Angular20261003.arc0260_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0610
theorem leaf0611 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(335/512),(21/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0262 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0262_checked .im (by decide +kernel)
#print axioms leaf0611
theorem leaf0612 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(167/256),(335/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0260 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0260_checked .im (by decide +kernel)
#print axioms leaf0612
theorem leaf0613 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(85/256)⟩ ⟨(83/128),(167/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0191 Root0Angular20261003.arc0258 Root0Angular20261003.arc0191_checked Root0Angular20261003.arc0258_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0613
theorem leaf0614 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(83/128),(167/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0258 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0258_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0614
theorem leaf0615 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(43/128)⟩ ⟨(41/64),(83/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0198 Root0Angular20261003.arc0255 Root0Angular20261003.arc0198_checked Root0Angular20261003.arc0255_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0615
theorem leaf0616 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(85/256)⟩ ⟨(41/64),(83/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0183 Root0Angular20261003.arc0255 Root0Angular20261003.arc0183_checked Root0Angular20261003.arc0255_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0616
theorem leaf0617 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(11/32)⟩ ⟨(5/8),(41/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0210 Root0Angular20261003.arc0249 Root0Angular20261003.arc0210_checked Root0Angular20261003.arc0249_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0617
theorem leaf0618 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(43/128)⟩ ⟨(81/128),(41/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0184 Root0Angular20261003.arc0253 Root0Angular20261003.arc0184_checked Root0Angular20261003.arc0253_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0618
theorem leaf0619 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(43/128)⟩ ⟨(5/8),(81/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0184 Root0Angular20261003.arc0248 Root0Angular20261003.arc0184_checked Root0Angular20261003.arc0248_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0619
theorem leaf0620 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(167/256),(21/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0261 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0261_checked .im (by decide +kernel)
#print axioms leaf0620
theorem leaf0621 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(83/128),(167/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0258 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0258_checked .im (by decide +kernel)
#print axioms leaf0621
theorem leaf0622 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(83/256)⟩ ⟨(83/128),(21/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0155 Root0Angular20261003.arc0259 Root0Angular20261003.arc0155_checked Root0Angular20261003.arc0259_checked .im (by decide +kernel)
#print axioms leaf0622
theorem leaf0623 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(165/256),(83/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0257 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0257_checked .im (by decide +kernel)
#print axioms leaf0623
end ShoulderRoot1Angular20261003
