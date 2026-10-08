import ParametricAngularLeaf
import Root0Arcs00
import Root0Arcs01
import Root0Arcs02
import Root0Arcs04
import Root0Arcs07
import Root0Arcs08
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
theorem leaf1200 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(13/64),(7/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0125 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0125_checked .re (by decide +kernel)
#print axioms leaf1200
theorem leaf1201 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(3/16),(13/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0116 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0116_checked .re (by decide +kernel)
#print axioms leaf1201
theorem leaf1202 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(3/16),(7/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0117 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0117_checked .re (by decide +kernel)
#print axioms leaf1202
theorem leaf1203 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(7/32),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0129 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0129_checked .re (by decide +kernel)
#print axioms leaf1203
theorem leaf1204 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(3/16),(7/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0117 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0117_checked .re (by decide +kernel)
#print axioms leaf1204
theorem leaf1205 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(11/64),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0073 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0073_checked .re (by decide +kernel)
#print axioms leaf1205
theorem leaf1206 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(5/32),(11/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0033 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0033_checked .re (by decide +kernel)
#print axioms leaf1206
theorem leaf1207 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(5/32),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0034 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0034_checked .re (by decide +kernel)
#print axioms leaf1207
theorem leaf1208 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(9/64),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0025 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0025_checked .re (by decide +kernel)
#print axioms leaf1208
theorem leaf1209 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(1/8),(9/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0018 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0018_checked .re (by decide +kernel)
#print axioms leaf1209
theorem leaf1210 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(1/8),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0019 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0019_checked .re (by decide +kernel)
#print axioms leaf1210
theorem leaf1211 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(5/32),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0034 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0034_checked .re (by decide +kernel)
#print axioms leaf1211
theorem leaf1212 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(1/8),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0019 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0019_checked .re (by decide +kernel)
#print axioms leaf1212
theorem leaf1213 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(3/32),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0013 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0013_checked .re (by decide +kernel)
#print axioms leaf1213
theorem leaf1214 : LeafStatement cap moments EX EY hull0 hull1 ⟨(45/128),(23/64)⟩ ⟨(7/64),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0216 Root0Angular20261003.arc0015 Root0Angular20261003.arc0216_checked Root0Angular20261003.arc0015_checked .re (by decide +kernel)
#print axioms leaf1214
theorem leaf1215 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨(7/64),(1/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0213 Root0Angular20261003.arc0015 Root0Angular20261003.arc0213_checked Root0Angular20261003.arc0015_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1215
theorem leaf1216 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(3/32),(7/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0012 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0012_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1216
theorem leaf1217 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(1/16),(3/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0009 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0009_checked .re (by decide +kernel)
#print axioms leaf1217
theorem leaf1218 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(5/64),(3/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0011 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0011_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1218
theorem leaf1219 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(1/16),(5/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0008 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0008_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1219
theorem leaf1220 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(11/32)⟩ ⟨(7/64),(1/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0210 Root0Angular20261003.arc0015 Root0Angular20261003.arc0210_checked Root0Angular20261003.arc0015_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1220
theorem leaf1221 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(43/128)⟩ ⟨(15/128),(1/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0184 Root0Angular20261003.arc0016 Root0Angular20261003.arc0184_checked Root0Angular20261003.arc0016_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1221
theorem leaf1222 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(43/128)⟩ ⟨(7/64),(15/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0184 Root0Angular20261003.arc0014 Root0Angular20261003.arc0184_checked Root0Angular20261003.arc0014_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1222
theorem leaf1223 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(11/32)⟩ ⟨(3/32),(7/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0210 Root0Angular20261003.arc0012 Root0Angular20261003.arc0210_checked Root0Angular20261003.arc0012_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1223
end ShoulderRoot1Angular20261003
