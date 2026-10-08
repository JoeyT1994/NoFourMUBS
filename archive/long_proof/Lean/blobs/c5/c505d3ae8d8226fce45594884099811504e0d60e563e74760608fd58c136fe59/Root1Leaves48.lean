import ParametricAngularLeaf
import Root0Arcs01
import Root0Arcs02
import Root0Arcs03
import Root0Arcs04
import Root0Arcs09
import Root0Arcs10
import Root0Arcs11
import Root0Arcs12
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
theorem leaf1152 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(11/64),(45/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0071 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0071_checked .re (by decide +kernel)
#print axioms leaf1152
theorem leaf1153 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(83/256)⟩ ⟨(11/64),(23/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0155 Root0Angular20261003.arc0072 Root0Angular20261003.arc0155_checked Root0Angular20261003.arc0072_checked .re (by decide +kernel)
#print axioms leaf1153
theorem leaf1154 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(41/128)⟩ ⟨(11/64),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0147 Root0Angular20261003.arc0073 Root0Angular20261003.arc0147_checked Root0Angular20261003.arc0073_checked .re (by decide +kernel)
#print axioms leaf1154
theorem leaf1155 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(43/256),(11/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0056 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0056_checked .re (by decide +kernel)
#print axioms leaf1155
theorem leaf1156 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(21/128),(43/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0043 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0043_checked .re (by decide +kernel)
#print axioms leaf1156
theorem leaf1157 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(83/256)⟩ ⟨(21/128),(11/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0155 Root0Angular20261003.arc0044 Root0Angular20261003.arc0155_checked Root0Angular20261003.arc0044_checked .re (by decide +kernel)
#print axioms leaf1157
theorem leaf1158 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(41/256),(21/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0037 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0037_checked .re (by decide +kernel)
#print axioms leaf1158
theorem leaf1159 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(5/32),(41/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0031 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0031_checked .re (by decide +kernel)
#print axioms leaf1159
theorem leaf1160 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(83/256)⟩ ⟨(5/32),(21/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0155 Root0Angular20261003.arc0032 Root0Angular20261003.arc0155_checked Root0Angular20261003.arc0032_checked .re (by decide +kernel)
#print axioms leaf1160
theorem leaf1161 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(41/128)⟩ ⟨(5/32),(11/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0147 Root0Angular20261003.arc0033 Root0Angular20261003.arc0147_checked Root0Angular20261003.arc0033_checked .re (by decide +kernel)
#print axioms leaf1161
theorem leaf1162 : LeafStatement cap moments EX EY hull0 hull1 ⟨(87/256),(11/32)⟩ ⟨(19/128),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0212 Root0Angular20261003.arc0028 Root0Angular20261003.arc0212_checked Root0Angular20261003.arc0028_checked .re (by decide +kernel)
#print axioms leaf1162
theorem leaf1163 : LeafStatement cap moments EX EY hull0 hull1 ⟨(173/512),(87/256)⟩ ⟨(39/256),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0211 Root0Angular20261003.arc0029 Root0Angular20261003.arc0211_checked Root0Angular20261003.arc0029_checked .re (by decide +kernel)
#print axioms leaf1163
theorem leaf1164 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(39/256),(5/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0029 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0029_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1164
theorem leaf1165 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(87/256)⟩ ⟨(19/128),(39/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0209 Root0Angular20261003.arc0027 Root0Angular20261003.arc0209_checked Root0Angular20261003.arc0027_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1165
theorem leaf1166 : LeafStatement cap moments EX EY hull0 hull1 ⟨(87/256),(11/32)⟩ ⟨(9/64),(19/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0212 Root0Angular20261003.arc0024 Root0Angular20261003.arc0212_checked Root0Angular20261003.arc0024_checked .re (by decide +kernel)
#print axioms leaf1166
theorem leaf1167 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(87/256)⟩ ⟨(37/256),(19/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0209 Root0Angular20261003.arc0026 Root0Angular20261003.arc0209_checked Root0Angular20261003.arc0026_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1167
theorem leaf1168 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(87/256)⟩ ⟨(9/64),(37/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0209 Root0Angular20261003.arc0023 Root0Angular20261003.arc0209_checked Root0Angular20261003.arc0023_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1168
theorem leaf1169 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(43/128)⟩ ⟨(39/256),(5/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0205 Root0Angular20261003.arc0029 Root0Angular20261003.arc0205_checked Root0Angular20261003.arc0029_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1169
theorem leaf1170 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(171/512)⟩ ⟨(39/256),(5/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0197 Root0Angular20261003.arc0029 Root0Angular20261003.arc0197_checked Root0Angular20261003.arc0029_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1170
theorem leaf1171 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(43/128)⟩ ⟨(19/128),(39/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0198 Root0Angular20261003.arc0027 Root0Angular20261003.arc0198_checked Root0Angular20261003.arc0027_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1171
theorem leaf1172 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(85/256)⟩ ⟨(39/256),(5/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0191 Root0Angular20261003.arc0029 Root0Angular20261003.arc0191_checked Root0Angular20261003.arc0029_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1172
theorem leaf1173 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(39/256),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0029 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0029_checked .re (by decide +kernel)
#print axioms leaf1173
theorem leaf1174 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(85/256)⟩ ⟨(19/128),(39/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0191 Root0Angular20261003.arc0027 Root0Angular20261003.arc0191_checked Root0Angular20261003.arc0027_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1174
theorem leaf1175 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(19/128),(39/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0027 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0027_checked .re (by decide +kernel)
#print axioms leaf1175
end ShoulderRoot1Angular20261003
