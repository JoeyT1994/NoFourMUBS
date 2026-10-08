import ParametricAngularLeaf
import Root0Arcs00
import Root0Arcs01
import Root0Arcs07
import Root0Arcs08
import Root0Arcs14
import Root0Arcs15
import Root0Arcs19
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
theorem leaf1344 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(1/8),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0020 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0020_checked .re (by decide +kernel)
#print axioms leaf1344
theorem leaf1345 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(1/8),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0020 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0020_checked .re (by decide +kernel)
#print axioms leaf1345
theorem leaf1346 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(3/16)⟩ ⟨(3/16),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0020 Root0Angular20261003.arc0118 Root0Angular20261003.arc0020_checked Root0Angular20261003.arc0118_checked .re (by decide +kernel)
#print axioms leaf1346
theorem leaf1347 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(3/16)⟩ ⟨(1/8),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0020 Root0Angular20261003.arc0020 Root0Angular20261003.arc0020_checked Root0Angular20261003.arc0020_checked .re (by decide +kernel)
#print axioms leaf1347
theorem leaf1348 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨(1/16),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0010 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0010_checked .re (by decide +kernel)
#print axioms leaf1348
theorem leaf1349 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨(1/16),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0010 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0010_checked .re (by decide +kernel)
#print axioms leaf1349
theorem leaf1350 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/32),(1/4)⟩ ⟨0,(1/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0129 Root0Angular20261003.arc0002 Root0Angular20261003.arc0129_checked Root0Angular20261003.arc0002_checked .re (by decide +kernel)
#print axioms leaf1350
theorem leaf1351 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/16),(7/32)⟩ ⟨0,(1/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0117 Root0Angular20261003.arc0002 Root0Angular20261003.arc0117_checked Root0Angular20261003.arc0002_checked .re (by decide +kernel)
#print axioms leaf1351
theorem leaf1352 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(3/16)⟩ ⟨(1/16),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0020 Root0Angular20261003.arc0010 Root0Angular20261003.arc0020_checked Root0Angular20261003.arc0010_checked .re (by decide +kernel)
#print axioms leaf1352
theorem leaf1353 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/8),(3/16)⟩ ⟨0,(1/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0020 Root0Angular20261003.arc0002 Root0Angular20261003.arc0020_checked Root0Angular20261003.arc0002_checked .re (by decide +kernel)
#print axioms leaf1353
theorem leaf1354 : LeafStatement cap moments EX EY hull0 hull1 ⟨0,(1/8)⟩ ⟨(7/8),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0003 Root0Angular20261003.arc0327 Root0Angular20261003.arc0003_checked Root0Angular20261003.arc0327_checked .s (by decide +kernel)
#print axioms leaf1354
theorem leaf1355 : LeafStatement cap moments EX EY hull0 hull1 ⟨0,(1/8)⟩ ⟨(3/4),(7/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0003 Root0Angular20261003.arc0317 Root0Angular20261003.arc0003_checked Root0Angular20261003.arc0317_checked .s (by decide +kernel)
#print axioms leaf1355
theorem leaf1356 : LeafStatement cap moments EX EY hull0 hull1 ⟨0,(1/8)⟩ ⟨(5/8),(3/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0003 Root0Angular20261003.arc0252 Root0Angular20261003.arc0003_checked Root0Angular20261003.arc0252_checked .s (by decide +kernel)
#print axioms leaf1356
theorem leaf1357 : LeafStatement cap moments EX EY hull0 hull1 ⟨0,(1/8)⟩ ⟨(1/2),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0003 Root0Angular20261003.arc0237 Root0Angular20261003.arc0003_checked Root0Angular20261003.arc0237_checked .s (by decide +kernel)
#print axioms leaf1357
theorem leaf1358 : LeafStatement cap moments EX EY hull0 hull1 ⟨0,(1/8)⟩ ⟨(3/8),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0003 Root0Angular20261003.arc0224 Root0Angular20261003.arc0003_checked Root0Angular20261003.arc0224_checked .s (by decide +kernel)
#print axioms leaf1358
theorem leaf1359 : LeafStatement cap moments EX EY hull0 hull1 ⟨0,(1/8)⟩ ⟨(1/4),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0003 Root0Angular20261003.arc0135 Root0Angular20261003.arc0003_checked Root0Angular20261003.arc0135_checked .s (by decide +kernel)
#print axioms leaf1359
theorem leaf1360 : LeafStatement cap moments EX EY hull0 hull1 ⟨0,(1/8)⟩ ⟨(1/8),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0003 Root0Angular20261003.arc0021 Root0Angular20261003.arc0003_checked Root0Angular20261003.arc0021_checked .re (by decide +kernel)
#print axioms leaf1360
theorem leaf1361 : LeafStatement cap moments EX EY hull0 hull1 ⟨0,(1/8)⟩ ⟨0,(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0003 Root0Angular20261003.arc0003 Root0Angular20261003.arc0003_checked Root0Angular20261003.arc0003_checked .re (by decide +kernel)
#print axioms leaf1361
end ShoulderRoot1Angular20261003
