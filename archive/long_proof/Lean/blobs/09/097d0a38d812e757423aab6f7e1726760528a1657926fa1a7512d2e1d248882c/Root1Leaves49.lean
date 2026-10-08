import ParametricAngularLeaf
import Root0Arcs01
import Root0Arcs08
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
theorem leaf1176 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(43/128)⟩ ⟨(37/256),(19/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0198 Root0Angular20261003.arc0026 Root0Angular20261003.arc0198_checked Root0Angular20261003.arc0026_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1176
theorem leaf1177 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(43/128)⟩ ⟨(9/64),(37/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0198 Root0Angular20261003.arc0023 Root0Angular20261003.arc0198_checked Root0Angular20261003.arc0023_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1177
theorem leaf1178 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(85/256)⟩ ⟨(37/256),(19/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0183 Root0Angular20261003.arc0026 Root0Angular20261003.arc0183_checked Root0Angular20261003.arc0026_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1178
theorem leaf1179 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(85/256)⟩ ⟨(9/64),(37/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0183 Root0Angular20261003.arc0023 Root0Angular20261003.arc0183_checked Root0Angular20261003.arc0023_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1179
theorem leaf1180 : LeafStatement cap moments EX EY hull0 hull1 ⟨(87/256),(11/32)⟩ ⟨(17/128),(9/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0212 Root0Angular20261003.arc0022 Root0Angular20261003.arc0212_checked Root0Angular20261003.arc0022_checked .re (by decide +kernel)
#print axioms leaf1180
theorem leaf1181 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(87/256)⟩ ⟨(17/128),(9/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0209 Root0Angular20261003.arc0022 Root0Angular20261003.arc0209_checked Root0Angular20261003.arc0022_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1181
theorem leaf1182 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(11/32)⟩ ⟨(1/8),(17/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0210 Root0Angular20261003.arc0017 Root0Angular20261003.arc0210_checked Root0Angular20261003.arc0017_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1182
theorem leaf1183 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(43/128)⟩ ⟨(17/128),(9/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0198 Root0Angular20261003.arc0022 Root0Angular20261003.arc0198_checked Root0Angular20261003.arc0022_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1183
theorem leaf1184 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(85/256)⟩ ⟨(17/128),(9/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0183 Root0Angular20261003.arc0022 Root0Angular20261003.arc0183_checked Root0Angular20261003.arc0022_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1184
theorem leaf1185 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(43/128)⟩ ⟨(1/8),(17/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0184 Root0Angular20261003.arc0017 Root0Angular20261003.arc0184_checked Root0Angular20261003.arc0017_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1185
theorem leaf1186 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(39/256),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0029 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0029_checked .re (by decide +kernel)
#print axioms leaf1186
theorem leaf1187 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(19/128),(39/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0027 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0027_checked .re (by decide +kernel)
#print axioms leaf1187
theorem leaf1188 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(83/256)⟩ ⟨(19/128),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0155 Root0Angular20261003.arc0028 Root0Angular20261003.arc0155_checked Root0Angular20261003.arc0028_checked .re (by decide +kernel)
#print axioms leaf1188
theorem leaf1189 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(37/256),(19/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0026 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0026_checked .re (by decide +kernel)
#print axioms leaf1189
theorem leaf1190 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(9/64),(37/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0023 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0023_checked .re (by decide +kernel)
#print axioms leaf1190
theorem leaf1191 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(83/256)⟩ ⟨(9/64),(19/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0155 Root0Angular20261003.arc0024 Root0Angular20261003.arc0155_checked Root0Angular20261003.arc0024_checked .re (by decide +kernel)
#print axioms leaf1191
theorem leaf1192 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(41/128)⟩ ⟨(9/64),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0147 Root0Angular20261003.arc0025 Root0Angular20261003.arc0147_checked Root0Angular20261003.arc0025_checked .re (by decide +kernel)
#print axioms leaf1192
theorem leaf1193 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(17/128),(9/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0022 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0022_checked .re (by decide +kernel)
#print axioms leaf1193
theorem leaf1194 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(83/256)⟩ ⟨(17/128),(9/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0155 Root0Angular20261003.arc0022 Root0Angular20261003.arc0155_checked Root0Angular20261003.arc0022_checked .re (by decide +kernel)
#print axioms leaf1194
theorem leaf1195 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(21/64)⟩ ⟨(1/8),(17/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0156 Root0Angular20261003.arc0017 Root0Angular20261003.arc0156_checked Root0Angular20261003.arc0017_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1195
theorem leaf1196 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(41/128)⟩ ⟨(1/8),(9/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0147 Root0Angular20261003.arc0018 Root0Angular20261003.arc0147_checked Root0Angular20261003.arc0018_checked .re (by decide +kernel)
#print axioms leaf1196
theorem leaf1197 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(15/64),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0131 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0131_checked .re (by decide +kernel)
#print axioms leaf1197
theorem leaf1198 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(7/32),(15/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0128 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0128_checked .re (by decide +kernel)
#print axioms leaf1198
theorem leaf1199 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(7/32),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0129 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0129_checked .re (by decide +kernel)
#print axioms leaf1199
end ShoulderRoot1Angular20261003
