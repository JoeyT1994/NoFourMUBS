import ParametricAngularLeaf
import Root0Arcs02
import Root0Arcs03
import Root0Arcs11
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
theorem leaf1104 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(87/512),(11/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0063 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0063_checked .re (by decide +kernel)
#print axioms leaf1104
theorem leaf1105 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(347/2048),(87/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0060 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0060_checked .re (by decide +kernel)
#print axioms leaf1105
theorem leaf1106 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(173/1024),(347/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0058 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0058_checked .re (by decide +kernel)
#print axioms leaf1106
theorem leaf1107 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(173/1024),(87/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0059 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0059_checked .re (by decide +kernel)
#print axioms leaf1107
theorem leaf1108 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(345/2048),(173/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0057 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0057_checked .re (by decide +kernel)
#print axioms leaf1108
theorem leaf1109 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(43/256),(345/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0053 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0053_checked .re (by decide +kernel)
#print axioms leaf1109
theorem leaf1110 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(43/256),(173/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0054 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0054_checked .re (by decide +kernel)
#print axioms leaf1110
theorem leaf1111 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(43/256),(87/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0055 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0055_checked .re (by decide +kernel)
#print axioms leaf1111
theorem leaf1112 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(43/256),(11/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0056 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0056_checked .re (by decide +kernel)
#print axioms leaf1112
theorem leaf1113 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(343/2048),(43/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0052 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0052_checked .re (by decide +kernel)
#print axioms leaf1113
theorem leaf1114 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(171/1024),(343/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0050 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0050_checked .re (by decide +kernel)
#print axioms leaf1114
theorem leaf1115 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(171/1024),(43/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0051 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0051_checked .re (by decide +kernel)
#print axioms leaf1115
theorem leaf1116 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(341/2048),(171/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0049 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0049_checked .re (by decide +kernel)
#print axioms leaf1116
theorem leaf1117 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(85/512),(341/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0046 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0046_checked .re (by decide +kernel)
#print axioms leaf1117
theorem leaf1118 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(85/512),(171/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0047 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0047_checked .re (by decide +kernel)
#print axioms leaf1118
theorem leaf1119 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(85/512),(43/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0048 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0048_checked .re (by decide +kernel)
#print axioms leaf1119
theorem leaf1120 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(169/1024),(339/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 arcNew0000 Root0Angular20261003.arc0194_checked arcNew0000_checked .re (by decide +kernel)
#print axioms leaf1120
theorem leaf1121 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(339/2048),(85/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 arcNew0001 Root0Angular20261003.arc0194_checked arcNew0001_checked .re (by decide +kernel)
#print axioms leaf1121
theorem leaf1122 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(169/1024),(85/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0045 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0045_checked .re (by decide +kernel)
#print axioms leaf1122
theorem leaf1123 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(21/128),(169/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0041 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0041_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1123
theorem leaf1124 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(21/128),(169/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0041 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0041_checked .re (by decide +kernel)
#print axioms leaf1124
theorem leaf1125 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(21/128),(85/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0042 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0042_checked .re (by decide +kernel)
#print axioms leaf1125
theorem leaf1126 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(21/128),(43/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0043 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0043_checked .re (by decide +kernel)
#print axioms leaf1126
theorem leaf1127 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(83/512),(21/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0039 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0039_checked .re (by decide +kernel)
#print axioms leaf1127
end ShoulderRoot1Angular20261003
