import AngularLeaf
import Root0CoverData
import Root0Arcs02
import Root0Arcs03
import Root0Arcs12
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem leaf1056 : LeafStatement moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(85/512),(43/256)⟩ := by
  exact moment_leaf arc0207 arc0048 arc0207_checked arc0048_checked .re (by decide +kernel)
#print axioms leaf1056
theorem leaf1057 : LeafStatement moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(171/1024),(43/256)⟩ := by
  exact moment_leaf arc0206 arc0051 arc0206_checked arc0051_checked .re (by decide +kernel)
#print axioms leaf1057
theorem leaf1058 : LeafStatement moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(343/2048),(43/256)⟩ := by
  exact corner_leaf arc0203 arc0052 arc0203_checked arc0052_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1058
theorem leaf1059 : LeafStatement moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(171/1024),(343/2048)⟩ := by
  exact corner_leaf arc0203 arc0050 arc0203_checked arc0050_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1059
theorem leaf1060 : LeafStatement moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(85/512),(171/1024)⟩ := by
  exact moment_leaf arc0206 arc0047 arc0206_checked arc0047_checked .re (by decide +kernel)
#print axioms leaf1060
theorem leaf1061 : LeafStatement moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(85/512),(171/1024)⟩ := by
  exact corner_leaf arc0203 arc0047 arc0203_checked arc0047_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1061
theorem leaf1062 : LeafStatement moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(21/128),(85/512)⟩ := by
  exact moment_leaf arc0207 arc0042 arc0207_checked arc0042_checked .re (by decide +kernel)
#print axioms leaf1062
theorem leaf1063 : LeafStatement moments EX EY hull0 hull1 ⟨(171/512),(343/1024)⟩ ⟨(169/1024),(85/512)⟩ := by
  exact corner_leaf arc0204 arc0045 arc0204_checked arc0045_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1063
theorem leaf1064 : LeafStatement moments EX EY hull0 hull1 ⟨(171/512),(343/1024)⟩ ⟨(21/128),(169/1024)⟩ := by
  exact corner_leaf arc0204 arc0041 arc0204_checked arc0041_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1064
theorem leaf1065 : LeafStatement moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(343/2048),(43/256)⟩ := by
  exact corner_leaf arc0202 arc0052 arc0202_checked arc0052_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1065
theorem leaf1066 : LeafStatement moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(171/1024),(343/2048)⟩ := by
  exact corner_leaf arc0202 arc0050 arc0202_checked arc0050_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1066
theorem leaf1067 : LeafStatement moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(343/2048),(43/256)⟩ := by
  exact corner_leaf arc0200 arc0052 arc0200_checked arc0052_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1067
theorem leaf1068 : LeafStatement moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(171/1024),(343/2048)⟩ := by
  exact corner_leaf arc0200 arc0050 arc0200_checked arc0050_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1068
theorem leaf1069 : LeafStatement moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(85/512),(171/1024)⟩ := by
  exact corner_leaf arc0202 arc0047 arc0202_checked arc0047_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1069
theorem leaf1070 : LeafStatement moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(85/512),(171/1024)⟩ := by
  exact corner_leaf arc0200 arc0047 arc0200_checked arc0047_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1070
theorem leaf1071 : LeafStatement moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(343/2048),(43/256)⟩ := by
  exact corner_leaf arc0199 arc0052 arc0199_checked arc0052_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1071
theorem leaf1072 : LeafStatement moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(171/1024),(343/2048)⟩ := by
  exact corner_leaf arc0199 arc0050 arc0199_checked arc0050_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1072
theorem leaf1073 : LeafStatement moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(343/2048),(43/256)⟩ := by
  exact keep_right_leaf arc0195 arc0052 arc0195_checked arc0052_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1073
theorem leaf1074 : LeafStatement moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(171/1024),(343/2048)⟩ := by
  exact corner_leaf arc0195 arc0050 arc0195_checked arc0050_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1074
theorem leaf1075 : LeafStatement moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(85/512),(171/1024)⟩ := by
  exact corner_leaf arc0199 arc0047 arc0199_checked arc0047_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1075
theorem leaf1076 : LeafStatement moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(341/2048),(171/1024)⟩ := by
  exact corner_leaf arc0195 arc0049 arc0195_checked arc0049_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1076
theorem leaf1077 : LeafStatement moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(85/512),(341/2048)⟩ := by
  exact corner_leaf arc0195 arc0046 arc0195_checked arc0046_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1077
theorem leaf1078 : LeafStatement moments EX EY hull0 hull1 ⟨(341/1024),(171/512)⟩ ⟨(169/1024),(85/512)⟩ := by
  exact corner_leaf arc0201 arc0045 arc0201_checked arc0045_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1078
theorem leaf1079 : LeafStatement moments EX EY hull0 hull1 ⟨(341/1024),(171/512)⟩ ⟨(21/128),(169/1024)⟩ := by
  exact corner_leaf arc0201 arc0041 arc0201_checked arc0041_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1079
end Root0Angular20261003
