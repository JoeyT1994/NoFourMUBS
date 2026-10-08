import ParametricAngularLeaf
import Root0Arcs07
import Root0Arcs08
import Root0Arcs09
import Root0Arcs11
import Root0Arcs13
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
theorem leaf0744 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(23/64),(3/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0218 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0218_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0744
theorem leaf0745 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(11/32),(23/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0214 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0214_checked .re (by decide +kernel)
#print axioms leaf0745
theorem leaf0746 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(21/64),(11/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0185 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0185_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0746
theorem leaf0747 : LeafStatement cap moments EX EY hull0 hull1 ⟨(39/128),(5/16)⟩ ⟨(5/16),(21/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0144 Root0Angular20261003.arc0148 Root0Angular20261003.arc0144_checked Root0Angular20261003.arc0148_checked .re (by decide +kernel)
#print axioms leaf0747
theorem leaf0748 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(39/128)⟩ ⟨(5/16),(21/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0141 Root0Angular20261003.arc0148 Root0Angular20261003.arc0141_checked Root0Angular20261003.arc0148_checked .re (by decide +kernel)
#print axioms leaf0748
theorem leaf0749 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(21/64),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0185 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0185_checked .re (by decide +kernel)
#print axioms leaf0749
theorem leaf0750 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(5/16),(21/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0148 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0148_checked .re (by decide +kernel)
#print axioms leaf0750
theorem leaf0751 : LeafStatement cap moments EX EY hull0 hull1 ⟨(17/64),(9/32)⟩ ⟨(23/64),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0136 Root0Angular20261003.arc0218 Root0Angular20261003.arc0136_checked Root0Angular20261003.arc0218_checked .re (by decide +kernel)
#print axioms leaf0751
theorem leaf0752 : LeafStatement cap moments EX EY hull0 hull1 ⟨(17/64),(9/32)⟩ ⟨(11/32),(23/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0136 Root0Angular20261003.arc0214 Root0Angular20261003.arc0136_checked Root0Angular20261003.arc0214_checked .re (by decide +kernel)
#print axioms leaf0752
theorem leaf0753 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(17/64)⟩ ⟨(11/32),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0132 Root0Angular20261003.arc0215 Root0Angular20261003.arc0132_checked Root0Angular20261003.arc0215_checked .re (by decide +kernel)
#print axioms leaf0753
theorem leaf0754 : LeafStatement cap moments EX EY hull0 hull1 ⟨(17/64),(9/32)⟩ ⟨(5/16),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0136 Root0Angular20261003.arc0149 Root0Angular20261003.arc0136_checked Root0Angular20261003.arc0149_checked .re (by decide +kernel)
#print axioms leaf0754
theorem leaf0755 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(17/64)⟩ ⟨(5/16),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0132 Root0Angular20261003.arc0149 Root0Angular20261003.arc0132_checked Root0Angular20261003.arc0149_checked .re (by decide +kernel)
#print axioms leaf0755
theorem leaf0756 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(19/64),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0142 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0142_checked .re (by decide +kernel)
#print axioms leaf0756
theorem leaf0757 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(9/32),(19/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0138 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0138_checked .re (by decide +kernel)
#print axioms leaf0757
theorem leaf0758 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(9/32),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0139 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0139_checked .re (by decide +kernel)
#print axioms leaf0758
theorem leaf0759 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(17/64),(9/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0136 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0136_checked .re (by decide +kernel)
#print axioms leaf0759
theorem leaf0760 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(1/4),(17/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0132 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0132_checked .re (by decide +kernel)
#print axioms leaf0760
theorem leaf0761 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(1/4),(9/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0133 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0133_checked .re (by decide +kernel)
#print axioms leaf0761
theorem leaf0762 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(9/32),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0139 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0139_checked .re (by decide +kernel)
#print axioms leaf0762
theorem leaf0763 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(1/4),(9/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0133 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0133_checked .re (by decide +kernel)
#print axioms leaf0763
theorem leaf0764 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(7/32),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0129 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0129_checked .re (by decide +kernel)
#print axioms leaf0764
theorem leaf0765 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(15/64),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0131 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0131_checked .re (by decide +kernel)
#print axioms leaf0765
theorem leaf0766 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(7/32),(15/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0128 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0128_checked .re (by decide +kernel)
#print axioms leaf0766
theorem leaf0767 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(3/16),(7/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0117 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0117_checked .re (by decide +kernel)
#print axioms leaf0767
end ShoulderRoot1Angular20261003
