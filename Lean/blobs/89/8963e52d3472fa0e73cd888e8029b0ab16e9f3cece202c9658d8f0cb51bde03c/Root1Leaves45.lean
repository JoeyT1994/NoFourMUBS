import ParametricAngularLeaf
import Root0Arcs02
import Root0Arcs03
import Root0Arcs04
import Root0Arcs12
import Root1CertificateData
import Root1NewArcs00
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace ShoulderRoot1Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
open Root0Angular20261003 (ArcCert TrigCert Holds turnPhase split_x split_y)
open ShoulderAngular20261003
open ShoulderRoot1Data20261003
theorem leaf1080 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(341/2048),(171/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0049 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0049_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1080
theorem leaf1081 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(341/2048),(171/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0049 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0049_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1081
theorem leaf1082 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(85/512),(341/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0046 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0046_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1082
theorem leaf1083 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(343/2048),(43/256)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0052 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0052_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1083
theorem leaf1084 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(171/1024),(343/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0050 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0050_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1084
theorem leaf1085 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(343/2048),(43/256)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0052 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0052_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1085
theorem leaf1086 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(171/1024),(343/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0050 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0050_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1086
theorem leaf1087 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(341/2048),(171/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0049 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0049_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1087
theorem leaf1088 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(85/512),(341/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0046 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0046_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1088
theorem leaf1089 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(1361/4096)⟩ ⟨(341/2048),(171/1024)⟩ := by
  exact corner_leaf cap arcNew0006 Root0Angular20261003.arc0049 arcNew0006_checked Root0Angular20261003.arc0049_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1089
theorem leaf1090 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1361/4096),(681/2048)⟩ ⟨(341/2048),(171/1024)⟩ := by
  exact corner_leaf cap arcNew0007 Root0Angular20261003.arc0049 arcNew0007_checked Root0Angular20261003.arc0049_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1090
theorem leaf1091 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(85/512),(341/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0046 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0046_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1091
theorem leaf1092 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(169/1024),(85/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0045 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0045_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1092
theorem leaf1093 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(169/1024),(85/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0045 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0045_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1093
theorem leaf1094 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(171/512)⟩ ⟨(21/128),(169/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0201 Root0Angular20261003.arc0041 Root0Angular20261003.arc0201_checked Root0Angular20261003.arc0041_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1094
theorem leaf1095 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(169/1024),(85/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0045 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0045_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1095
theorem leaf1096 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(169/1024),(85/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0045 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0045_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1096
theorem leaf1097 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(341/1024)⟩ ⟨(21/128),(169/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0196 Root0Angular20261003.arc0041 Root0Angular20261003.arc0196_checked Root0Angular20261003.arc0041_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1097
theorem leaf1098 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(351/2048),(11/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0067 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0067_checked .re (by decide +kernel)
#print axioms leaf1098
theorem leaf1099 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(175/1024),(351/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0065 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0065_checked .re (by decide +kernel)
#print axioms leaf1099
theorem leaf1100 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(175/1024),(11/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0066 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0066_checked .re (by decide +kernel)
#print axioms leaf1100
theorem leaf1101 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(349/2048),(175/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0064 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0064_checked .re (by decide +kernel)
#print axioms leaf1101
theorem leaf1102 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(87/512),(349/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0061 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0061_checked .re (by decide +kernel)
#print axioms leaf1102
theorem leaf1103 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(87/512),(175/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0062 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0062_checked .re (by decide +kernel)
#print axioms leaf1103
end ShoulderRoot1Angular20261003
