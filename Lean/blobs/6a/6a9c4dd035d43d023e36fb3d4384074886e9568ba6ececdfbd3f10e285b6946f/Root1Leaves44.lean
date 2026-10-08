import ParametricAngularLeaf
import Root0Arcs02
import Root0Arcs03
import Root0Arcs12
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
theorem leaf1056 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(345/2048),(173/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0057 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0057_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1056
theorem leaf1057 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(43/256),(345/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0053 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0053_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1057
theorem leaf1058 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(347/2048),(87/512)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0060 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0060_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1058
theorem leaf1059 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(173/1024),(347/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0058 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0058_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1059
theorem leaf1060 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(347/2048),(87/512)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0060 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0060_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1060
theorem leaf1061 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(173/1024),(347/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0058 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0058_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1061
theorem leaf1062 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(345/2048),(173/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0057 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0057_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1062
theorem leaf1063 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(43/256),(345/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0053 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0053_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1063
theorem leaf1064 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(345/2048),(173/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0057 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0057_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1064
theorem leaf1065 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(43/256),(345/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0053 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0053_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1065
theorem leaf1066 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(85/512),(43/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0048 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0048_checked .re (by decide +kernel)
#print axioms leaf1066
theorem leaf1067 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(171/1024),(43/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0051 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0051_checked .re (by decide +kernel)
#print axioms leaf1067
theorem leaf1068 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(343/2048),(43/256)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0052 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0052_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1068
theorem leaf1069 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(171/1024),(343/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0050 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0050_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1069
theorem leaf1070 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(85/512),(171/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0047 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0047_checked .re (by decide +kernel)
#print axioms leaf1070
theorem leaf1071 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(85/512),(171/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0047 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0047_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1071
theorem leaf1072 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(21/128),(85/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0042 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0042_checked .re (by decide +kernel)
#print axioms leaf1072
theorem leaf1073 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(343/1024)⟩ ⟨(169/1024),(85/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0204 Root0Angular20261003.arc0045 Root0Angular20261003.arc0204_checked Root0Angular20261003.arc0045_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1073
theorem leaf1074 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(343/1024)⟩ ⟨(21/128),(169/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0204 Root0Angular20261003.arc0041 Root0Angular20261003.arc0204_checked Root0Angular20261003.arc0041_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1074
theorem leaf1075 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(343/2048),(43/256)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0052 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0052_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1075
theorem leaf1076 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(171/1024),(343/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0050 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0050_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1076
theorem leaf1077 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(343/2048),(43/256)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0052 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0052_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1077
theorem leaf1078 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(171/1024),(343/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0050 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0050_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1078
theorem leaf1079 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(85/512),(341/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0046 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0046_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1079
end ShoulderRoot1Angular20261003
