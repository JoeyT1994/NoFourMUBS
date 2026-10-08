import ParametricAngularLeaf
import Root0Arcs00
import Root0Arcs01
import Root0Arcs07
import Root0Arcs08
import Root0Arcs09
import Root0Arcs20
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
theorem leaf1248 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨0,(1/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0000 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0000_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf1248
theorem leaf1249 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(7/64),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0015 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0015_checked .re (by decide +kernel)
#print axioms leaf1249
theorem leaf1250 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(3/32),(7/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0012 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0012_checked .re (by decide +kernel)
#print axioms leaf1250
theorem leaf1251 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(3/32),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0013 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0013_checked .re (by decide +kernel)
#print axioms leaf1251
theorem leaf1252 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(5/64),(3/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0011 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0011_checked .re (by decide +kernel)
#print axioms leaf1252
theorem leaf1253 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(1/16),(5/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0008 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0008_checked .re (by decide +kernel)
#print axioms leaf1253
theorem leaf1254 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(1/16),(3/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0009 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0009_checked .re (by decide +kernel)
#print axioms leaf1254
theorem leaf1255 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(3/32),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0013 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0013_checked .re (by decide +kernel)
#print axioms leaf1255
theorem leaf1256 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(1/16),(3/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0009 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0009_checked .re (by decide +kernel)
#print axioms leaf1256
theorem leaf1257 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(3/64),(1/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0007 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0007_checked .re (by decide +kernel)
#print axioms leaf1257
theorem leaf1258 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(1/32),(3/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0005 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0005_checked .re (by decide +kernel)
#print axioms leaf1258
theorem leaf1259 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨(1/32),(1/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0006 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0006_checked .re (by decide +kernel)
#print axioms leaf1259
theorem leaf1260 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨(1/64),(1/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0004 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0004_checked .re (by decide +kernel)
#print axioms leaf1260
theorem leaf1261 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/64),(5/16)⟩ ⟨0,(1/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0142 Root0Angular20261003.arc0000 Root0Angular20261003.arc0142_checked Root0Angular20261003.arc0000_checked .re (by decide +kernel)
#print axioms leaf1261
theorem leaf1262 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/32),(19/64)⟩ ⟨0,(1/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0138 Root0Angular20261003.arc0001 Root0Angular20261003.arc0138_checked Root0Angular20261003.arc0001_checked .re (by decide +kernel)
#print axioms leaf1262
theorem leaf1263 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨(1/32),(1/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0006 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0006_checked .re (by decide +kernel)
#print axioms leaf1263
theorem leaf1264 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(9/32)⟩ ⟨0,(1/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0133 Root0Angular20261003.arc0001 Root0Angular20261003.arc0133_checked Root0Angular20261003.arc0001_checked .re (by decide +kernel)
#print axioms leaf1264
theorem leaf1265 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(15/16),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0334 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0334_checked .re (by decide +kernel)
#print axioms leaf1265
theorem leaf1266 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(15/16),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0334 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0334_checked .re (by decide +kernel)
#print axioms leaf1266
theorem leaf1267 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(29/32),(15/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0330 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0330_checked .re (by decide +kernel)
#print axioms leaf1267
theorem leaf1268 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(7/8),(29/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0325 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0325_checked .re (by decide +kernel)
#print axioms leaf1268
theorem leaf1269 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(7/8),(15/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0326 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0326_checked .re (by decide +kernel)
#print axioms leaf1269
theorem leaf1270 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(3/16)⟩ ⟨(15/16),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0020 Root0Angular20261003.arc0334 Root0Angular20261003.arc0020_checked Root0Angular20261003.arc0334_checked .re (by decide +kernel)
#print axioms leaf1270
theorem leaf1271 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(3/16)⟩ ⟨(7/8),(15/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0020 Root0Angular20261003.arc0326 Root0Angular20261003.arc0020_checked Root0Angular20261003.arc0326_checked .re (by decide +kernel)
#print axioms leaf1271
end ShoulderRoot1Angular20261003
