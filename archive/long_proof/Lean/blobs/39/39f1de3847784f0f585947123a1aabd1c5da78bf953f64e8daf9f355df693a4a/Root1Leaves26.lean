import ParametricAngularLeaf
import Root0Arcs08
import Root0Arcs09
import Root0Arcs10
import Root0Arcs11
import Root0Arcs13
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
theorem leaf0624 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(41/64),(165/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0254 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0254_checked .im (by decide +kernel)
#print axioms leaf0624
theorem leaf0625 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(83/256)⟩ ⟨(41/64),(83/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0155 Root0Angular20261003.arc0255 Root0Angular20261003.arc0155_checked Root0Angular20261003.arc0255_checked .im (by decide +kernel)
#print axioms leaf0625
theorem leaf0626 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(41/128)⟩ ⟨(41/64),(21/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0147 Root0Angular20261003.arc0256 Root0Angular20261003.arc0147_checked Root0Angular20261003.arc0256_checked .im (by decide +kernel)
#print axioms leaf0626
theorem leaf0627 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(21/64)⟩ ⟨(81/128),(41/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0156 Root0Angular20261003.arc0253 Root0Angular20261003.arc0156_checked Root0Angular20261003.arc0253_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0627
theorem leaf0628 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(21/64)⟩ ⟨(5/8),(81/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0156 Root0Angular20261003.arc0248 Root0Angular20261003.arc0156_checked Root0Angular20261003.arc0248_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0628
theorem leaf0629 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(41/128)⟩ ⟨(5/8),(41/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0147 Root0Angular20261003.arc0249 Root0Angular20261003.arc0147_checked Root0Angular20261003.arc0249_checked .im (by decide +kernel)
#print axioms leaf0629
theorem leaf0630 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(5/16)⟩ ⟨(23/32),(3/4)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0139 Root0Angular20261003.arc0314 Root0Angular20261003.arc0139_checked Root0Angular20261003.arc0314_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0630
theorem leaf0631 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(45/64),(23/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0313 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0313_checked .im (by decide +kernel)
#print axioms leaf0631
theorem leaf0632 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(11/16),(45/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0309 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0309_checked .im (by decide +kernel)
#print axioms leaf0632
theorem leaf0633 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(11/16),(23/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0310 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0310_checked .im (by decide +kernel)
#print axioms leaf0633
theorem leaf0634 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(23/32),(3/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0314 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0314_checked .im (by decide +kernel)
#print axioms leaf0634
theorem leaf0635 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(11/16),(23/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0310 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0310_checked .im (by decide +kernel)
#print axioms leaf0635
theorem leaf0636 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(43/64),(11/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0305 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0305_checked .im (by decide +kernel)
#print axioms leaf0636
theorem leaf0637 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(21/32),(43/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0267 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0267_checked .im (by decide +kernel)
#print axioms leaf0637
theorem leaf0638 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(21/32),(11/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0268 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0268_checked .im (by decide +kernel)
#print axioms leaf0638
theorem leaf0639 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(41/64),(21/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0256 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0256_checked .im (by decide +kernel)
#print axioms leaf0639
theorem leaf0640 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(5/8),(41/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0249 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0249_checked .im (by decide +kernel)
#print axioms leaf0640
theorem leaf0641 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(5/8),(21/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0250 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0250_checked .im (by decide +kernel)
#print axioms leaf0641
theorem leaf0642 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(21/32),(11/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0268 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0268_checked .im (by decide +kernel)
#print axioms leaf0642
theorem leaf0643 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(5/8),(21/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0250 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0250_checked .im (by decide +kernel)
#print axioms leaf0643
theorem leaf0644 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(19/32),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0246 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0246_checked .im (by decide +kernel)
#print axioms leaf0644
theorem leaf0645 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(19/32),(5/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0246 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0246_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0645
theorem leaf0646 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(3/8)⟩ ⟨(9/16),(19/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0215 Root0Angular20261003.arc0242 Root0Angular20261003.arc0215_checked Root0Angular20261003.arc0242_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0646
theorem leaf0647 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(39/64),(5/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0247 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0247_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0647
end ShoulderRoot1Angular20261003
