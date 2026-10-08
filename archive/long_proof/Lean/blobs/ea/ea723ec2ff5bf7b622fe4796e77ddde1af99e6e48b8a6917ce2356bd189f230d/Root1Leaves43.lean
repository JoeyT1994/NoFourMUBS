import ParametricAngularLeaf
import Root0Arcs03
import Root0Arcs04
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
theorem leaf1032 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(345/2048),(173/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0057 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0057_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1032
theorem leaf1033 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(43/256),(345/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0053 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0053_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1033
theorem leaf1034 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(351/2048),(11/64)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0067 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0067_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1034
theorem leaf1035 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(175/1024),(351/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0065 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0065_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1035
theorem leaf1036 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(351/2048),(11/64)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0067 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0067_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1036
theorem leaf1037 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(175/1024),(351/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0065 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0065_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1037
theorem leaf1038 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(349/2048),(175/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0064 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0064_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1038
theorem leaf1039 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(87/512),(349/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0061 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0061_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1039
theorem leaf1040 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(349/2048),(175/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0064 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0064_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1040
theorem leaf1041 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(87/512),(349/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0061 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0061_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1041
theorem leaf1042 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(351/2048),(11/64)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0067 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0067_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1042
theorem leaf1043 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(175/1024),(351/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0065 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0065_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1043
theorem leaf1044 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(351/2048),(11/64)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0067 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0067_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1044
theorem leaf1045 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(175/1024),(351/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0065 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0065_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1045
theorem leaf1046 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(349/2048),(175/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0064 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0064_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1046
theorem leaf1047 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(87/512),(349/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0061 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0061_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1047
theorem leaf1048 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(349/2048),(175/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0064 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0064_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1048
theorem leaf1049 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(87/512),(349/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0061 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0061_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1049
theorem leaf1050 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(347/2048),(87/512)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0060 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0060_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1050
theorem leaf1051 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(173/1024),(347/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0058 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0058_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1051
theorem leaf1052 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(347/2048),(87/512)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0060 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0060_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1052
theorem leaf1053 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(173/1024),(347/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0058 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0058_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1053
theorem leaf1054 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(345/2048),(173/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0057 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0057_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1054
theorem leaf1055 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(43/256),(345/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0053 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0053_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1055
end ShoulderRoot1Angular20261003
