import ParametricAngularLeaf
import Root0Arcs08
import Root0Arcs09
import Root0Arcs11
import Root0Arcs13
import Root0Arcs14
import Root0Arcs15
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
theorem leaf0648 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(19/32),(39/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0245 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0245_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0648
theorem leaf0649 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(21/64)⟩ ⟨(39/64),(5/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0156 Root0Angular20261003.arc0247 Root0Angular20261003.arc0156_checked Root0Angular20261003.arc0247_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0649
theorem leaf0650 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(41/128)⟩ ⟨(39/64),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0147 Root0Angular20261003.arc0247 Root0Angular20261003.arc0147_checked Root0Angular20261003.arc0247_checked .im (by decide +kernel)
#print axioms leaf0650
theorem leaf0651 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(19/32),(39/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0245 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0245_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0651
theorem leaf0652 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(11/32)⟩ ⟨(9/16),(19/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0149 Root0Angular20261003.arc0242 Root0Angular20261003.arc0149_checked Root0Angular20261003.arc0242_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0652
theorem leaf0653 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(3/8)⟩ ⟨(17/32),(9/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0215 Root0Angular20261003.arc0239 Root0Angular20261003.arc0215_checked Root0Angular20261003.arc0239_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0653
theorem leaf0654 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(3/8)⟩ ⟨(1/2),(17/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0215 Root0Angular20261003.arc0235 Root0Angular20261003.arc0215_checked Root0Angular20261003.arc0235_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0654
theorem leaf0655 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(11/32)⟩ ⟨(17/32),(9/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0149 Root0Angular20261003.arc0239 Root0Angular20261003.arc0149_checked Root0Angular20261003.arc0239_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0655
theorem leaf0656 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(11/32)⟩ ⟨(1/2),(17/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0149 Root0Angular20261003.arc0235 Root0Angular20261003.arc0149_checked Root0Angular20261003.arc0235_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0656
theorem leaf0657 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(39/64),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0247 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0247_checked .im (by decide +kernel)
#print axioms leaf0657
theorem leaf0658 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(19/32),(39/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0245 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0245_checked .im (by decide +kernel)
#print axioms leaf0658
theorem leaf0659 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(19/32),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0246 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0246_checked .im (by decide +kernel)
#print axioms leaf0659
theorem leaf0660 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(9/16),(19/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0242 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0242_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0660
theorem leaf0661 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(9/16),(19/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0242 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0242_checked .im (by decide +kernel)
#print axioms leaf0661
theorem leaf0662 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(19/32),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0246 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0246_checked .im (by decide +kernel)
#print axioms leaf0662
theorem leaf0663 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(9/16),(19/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0242 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0242_checked .im (by decide +kernel)
#print axioms leaf0663
theorem leaf0664 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(5/16)⟩ ⟨(17/32),(9/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0139 Root0Angular20261003.arc0239 Root0Angular20261003.arc0139_checked Root0Angular20261003.arc0239_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0664
theorem leaf0665 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(5/16)⟩ ⟨(1/2),(17/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0139 Root0Angular20261003.arc0235 Root0Angular20261003.arc0139_checked Root0Angular20261003.arc0235_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0665
theorem leaf0666 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(17/32),(9/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0239 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0239_checked .im (by decide +kernel)
#print axioms leaf0666
theorem leaf0667 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(1/2),(17/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0235 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0235_checked .im (by decide +kernel)
#print axioms leaf0667
theorem leaf0668 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(3/8)⟩ ⟨(15/32),(1/2)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0215 Root0Angular20261003.arc0234 Root0Angular20261003.arc0215_checked Root0Angular20261003.arc0234_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0668
theorem leaf0669 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(7/16),(15/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0231 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0231_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0669
theorem leaf0670 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(7/16),(15/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0231 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0231_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0670
theorem leaf0671 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(11/32)⟩ ⟨(15/32),(1/2)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0149 Root0Angular20261003.arc0234 Root0Angular20261003.arc0149_checked Root0Angular20261003.arc0234_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0671
end ShoulderRoot1Angular20261003
