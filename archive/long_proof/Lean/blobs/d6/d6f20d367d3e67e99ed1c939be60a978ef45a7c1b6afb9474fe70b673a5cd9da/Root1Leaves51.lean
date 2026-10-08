import ParametricAngularLeaf
import Root0Arcs00
import Root0Arcs01
import Root0Arcs09
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
theorem leaf1224 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(43/128)⟩ ⟨(3/32),(7/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0184 Root0Angular20261003.arc0012 Root0Angular20261003.arc0184_checked Root0Angular20261003.arc0012_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1224
theorem leaf1225 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(21/64)⟩ ⟨(15/128),(1/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0156 Root0Angular20261003.arc0016 Root0Angular20261003.arc0156_checked Root0Angular20261003.arc0016_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1225
theorem leaf1226 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(21/64)⟩ ⟨(7/64),(15/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0156 Root0Angular20261003.arc0014 Root0Angular20261003.arc0156_checked Root0Angular20261003.arc0014_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1226
theorem leaf1227 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(41/128)⟩ ⟨(7/64),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0147 Root0Angular20261003.arc0015 Root0Angular20261003.arc0147_checked Root0Angular20261003.arc0015_checked .re (by decide +kernel)
#print axioms leaf1227
theorem leaf1228 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(21/64)⟩ ⟨(3/32),(7/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0156 Root0Angular20261003.arc0012 Root0Angular20261003.arc0156_checked Root0Angular20261003.arc0012_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1228
theorem leaf1229 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(41/128)⟩ ⟨(3/32),(7/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0147 Root0Angular20261003.arc0012 Root0Angular20261003.arc0147_checked Root0Angular20261003.arc0012_checked .re (by decide +kernel)
#print axioms leaf1229
theorem leaf1230 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(5/64),(3/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0011 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0011_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1230
theorem leaf1231 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(1/16),(5/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0008 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0008_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1231
theorem leaf1232 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(5/64),(3/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0011 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0011_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1232
theorem leaf1233 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(1/16),(5/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0008 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0008_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1233
theorem leaf1234 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(1/32),(1/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0006 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0006_checked .re (by decide +kernel)
#print axioms leaf1234
theorem leaf1235 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(3/64),(1/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0007 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0007_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1235
theorem leaf1236 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(1/32),(3/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0005 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0005_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1236
theorem leaf1237 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨0,(1/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0001 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0001_checked .re (by decide +kernel)
#print axioms leaf1237
theorem leaf1238 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(1/64),(1/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0004 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0004_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1238
theorem leaf1239 : LeafStatement cap moments EX EY hull0 hull1 ⟨(45/128),(23/64)⟩ ⟨0,(1/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0216 Root0Angular20261003.arc0000 Root0Angular20261003.arc0216_checked Root0Angular20261003.arc0000_checked .re (by decide +kernel)
#print axioms leaf1239
theorem leaf1240 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨0,(1/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0213 Root0Angular20261003.arc0000 Root0Angular20261003.arc0213_checked Root0Angular20261003.arc0000_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1240
theorem leaf1241 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(3/64),(1/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0007 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0007_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1241
theorem leaf1242 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(1/32),(3/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0005 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0005_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1242
theorem leaf1243 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(3/64),(1/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0007 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0007_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1243
theorem leaf1244 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(1/32),(3/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0005 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0005_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1244
theorem leaf1245 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(1/64),(1/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0004 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0004_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1245
theorem leaf1246 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨0,(1/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0000 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0000_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1246
theorem leaf1247 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(1/64),(1/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0004 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0004_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1247
end ShoulderRoot1Angular20261003
