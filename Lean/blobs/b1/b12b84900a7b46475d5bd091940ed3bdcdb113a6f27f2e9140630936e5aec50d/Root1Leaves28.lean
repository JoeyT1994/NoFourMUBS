import ParametricAngularLeaf
import Root0Arcs08
import Root0Arcs09
import Root0Arcs11
import Root0Arcs13
import Root0Arcs14
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
theorem leaf0672 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(11/32)⟩ ⟨(7/16),(15/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0149 Root0Angular20261003.arc0231 Root0Angular20261003.arc0149_checked Root0Angular20261003.arc0231_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0672
theorem leaf0673 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(27/64),(7/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0229 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0229_checked .im (by decide +kernel)
#print axioms leaf0673
theorem leaf0674 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(13/32),(27/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0227 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0227_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0674
theorem leaf0675 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(13/32),(7/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0228 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0228_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0675
theorem leaf0676 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(25/64),(13/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0226 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0226_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0676
theorem leaf0677 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(3/8),(25/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0221 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0221_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0677
theorem leaf0678 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(25/64),(13/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0226 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0226_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0678
theorem leaf0679 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(3/8),(25/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0221 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0221_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0679
theorem leaf0680 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(13/32),(7/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0228 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0228_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0680
theorem leaf0681 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(13/32),(7/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0228 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0228_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0681
theorem leaf0682 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(25/64),(13/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0226 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0226_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0682
theorem leaf0683 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(3/8),(25/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0221 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0221_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0683
theorem leaf0684 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(25/64),(13/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0226 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0226_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0684
theorem leaf0685 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(3/8),(25/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0221 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0221_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0685
theorem leaf0686 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(5/16)⟩ ⟨(15/32),(1/2)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0139 Root0Angular20261003.arc0234 Root0Angular20261003.arc0139_checked Root0Angular20261003.arc0234_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0686
theorem leaf0687 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(5/16)⟩ ⟨(7/16),(15/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0139 Root0Angular20261003.arc0231 Root0Angular20261003.arc0139_checked Root0Angular20261003.arc0231_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0687
theorem leaf0688 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(15/32),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0234 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0234_checked .im (by decide +kernel)
#print axioms leaf0688
theorem leaf0689 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(7/16),(15/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0231 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0231_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0689
theorem leaf0690 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(13/32),(7/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0228 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0228_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0690
theorem leaf0691 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(13/32),(7/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0228 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0228_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0691
theorem leaf0692 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(25/64),(13/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0226 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0226_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0692
theorem leaf0693 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(3/8),(25/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0221 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0221_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0693
theorem leaf0694 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(25/64),(13/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0226 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0226_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0694
theorem leaf0695 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(3/8),(25/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0221 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0221_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0695
end ShoulderRoot1Angular20261003
