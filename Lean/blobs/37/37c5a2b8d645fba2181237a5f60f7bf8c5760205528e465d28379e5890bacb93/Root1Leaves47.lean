import ParametricAngularLeaf
import Root0Arcs01
import Root0Arcs02
import Root0Arcs05
import Root0Arcs06
import Root0Arcs09
import Root0Arcs10
import Root0Arcs11
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
theorem leaf1128 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(343/1024)⟩ ⟨(83/512),(21/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0204 Root0Angular20261003.arc0039 Root0Angular20261003.arc0204_checked Root0Angular20261003.arc0039_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1128
theorem leaf1129 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(43/128)⟩ ⟨(41/256),(83/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0205 Root0Angular20261003.arc0036 Root0Angular20261003.arc0205_checked Root0Angular20261003.arc0036_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1129
theorem leaf1130 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(171/512)⟩ ⟨(83/512),(21/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0201 Root0Angular20261003.arc0039 Root0Angular20261003.arc0201_checked Root0Angular20261003.arc0039_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1130
theorem leaf1131 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(341/1024)⟩ ⟨(167/1024),(21/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0196 Root0Angular20261003.arc0040 Root0Angular20261003.arc0196_checked Root0Angular20261003.arc0040_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1131
theorem leaf1132 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(341/1024)⟩ ⟨(83/512),(167/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0196 Root0Angular20261003.arc0038 Root0Angular20261003.arc0196_checked Root0Angular20261003.arc0038_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1132
theorem leaf1133 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(171/512)⟩ ⟨(41/256),(83/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0201 Root0Angular20261003.arc0036 Root0Angular20261003.arc0201_checked Root0Angular20261003.arc0036_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1133
theorem leaf1134 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(341/1024)⟩ ⟨(41/256),(83/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0196 Root0Angular20261003.arc0036 Root0Angular20261003.arc0196_checked Root0Angular20261003.arc0036_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1134
theorem leaf1135 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(43/128)⟩ ⟨(81/512),(41/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0205 Root0Angular20261003.arc0035 Root0Angular20261003.arc0205_checked Root0Angular20261003.arc0035_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1135
theorem leaf1136 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(43/128)⟩ ⟨(5/32),(81/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0205 Root0Angular20261003.arc0030 Root0Angular20261003.arc0205_checked Root0Angular20261003.arc0030_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1136
theorem leaf1137 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(171/512)⟩ ⟨(81/512),(41/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0197 Root0Angular20261003.arc0035 Root0Angular20261003.arc0197_checked Root0Angular20261003.arc0035_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1137
theorem leaf1138 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(171/512)⟩ ⟨(5/32),(81/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0197 Root0Angular20261003.arc0030 Root0Angular20261003.arc0197_checked Root0Angular20261003.arc0030_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1138
theorem leaf1139 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(85/256)⟩ ⟨(167/1024),(21/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0193 Root0Angular20261003.arc0040 Root0Angular20261003.arc0193_checked Root0Angular20261003.arc0040_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1139
theorem leaf1140 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(85/256)⟩ ⟨(83/512),(167/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0193 Root0Angular20261003.arc0038 Root0Angular20261003.arc0193_checked Root0Angular20261003.arc0038_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1140
theorem leaf1141 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(83/512),(21/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0039 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0039_checked .re (by decide +kernel)
#print axioms leaf1141
theorem leaf1142 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(85/256)⟩ ⟨(41/256),(83/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0193 Root0Angular20261003.arc0036 Root0Angular20261003.arc0193_checked Root0Angular20261003.arc0036_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1142
theorem leaf1143 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(41/256),(83/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0036 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0036_checked .re (by decide +kernel)
#print axioms leaf1143
theorem leaf1144 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(41/256),(21/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0037 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0037_checked .re (by decide +kernel)
#print axioms leaf1144
theorem leaf1145 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(85/256)⟩ ⟨(81/512),(41/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0191 Root0Angular20261003.arc0035 Root0Angular20261003.arc0191_checked Root0Angular20261003.arc0035_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1145
theorem leaf1146 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(85/256)⟩ ⟨(5/32),(81/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0191 Root0Angular20261003.arc0030 Root0Angular20261003.arc0191_checked Root0Angular20261003.arc0030_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1146
theorem leaf1147 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(5/32),(41/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0031 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0031_checked .re (by decide +kernel)
#print axioms leaf1147
theorem leaf1148 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(47/256),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0111 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0111_checked .re (by decide +kernel)
#print axioms leaf1148
theorem leaf1149 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(23/128),(47/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0103 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0103_checked .re (by decide +kernel)
#print axioms leaf1149
theorem leaf1150 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(83/256)⟩ ⟨(23/128),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0155 Root0Angular20261003.arc0104 Root0Angular20261003.arc0155_checked Root0Angular20261003.arc0104_checked .re (by decide +kernel)
#print axioms leaf1150
theorem leaf1151 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(45/256),(23/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0088 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0088_checked .re (by decide +kernel)
#print axioms leaf1151
end ShoulderRoot1Angular20261003
