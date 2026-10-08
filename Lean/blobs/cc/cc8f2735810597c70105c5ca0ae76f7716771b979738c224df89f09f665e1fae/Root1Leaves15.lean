import ParametricAngularLeaf
import Root0Arcs00
import Root0Arcs01
import Root0Arcs02
import Root0Arcs07
import Root0Arcs08
import Root0Arcs13
import Root0Arcs14
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
theorem leaf0360 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(1/2)⟩ ⟨(3/16),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0232 Root0Angular20261003.arc0118 Root0Angular20261003.arc0232_checked Root0Angular20261003.arc0118_checked .re (by decide +kernel)
#print axioms leaf0360
theorem leaf0361 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(1/2)⟩ ⟨(1/8),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0232 Root0Angular20261003.arc0020 Root0Angular20261003.arc0232_checked Root0Angular20261003.arc0020_checked .re (by decide +kernel)
#print axioms leaf0361
theorem leaf0362 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(3/16),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0118 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0118_checked .re (by decide +kernel)
#print axioms leaf0362
theorem leaf0363 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(7/32),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0129 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0129_checked .re (by decide +kernel)
#print axioms leaf0363
theorem leaf0364 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(3/16),(7/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0117 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0117_checked .re (by decide +kernel)
#print axioms leaf0364
theorem leaf0365 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(1/8),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0020 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0020_checked .re (by decide +kernel)
#print axioms leaf0365
theorem leaf0366 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(5/32),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0034 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0034_checked .re (by decide +kernel)
#print axioms leaf0366
theorem leaf0367 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(1/8),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0019 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0019_checked .re (by decide +kernel)
#print axioms leaf0367
theorem leaf0368 : LeafStatement cap moments EX EY hull0 hull1 ⟨(15/32),(1/2)⟩ ⟨(3/32),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0234 Root0Angular20261003.arc0013 Root0Angular20261003.arc0234_checked Root0Angular20261003.arc0013_checked .re (by decide +kernel)
#print axioms leaf0368
theorem leaf0369 : LeafStatement cap moments EX EY hull0 hull1 ⟨(15/32),(1/2)⟩ ⟨(1/16),(3/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0234 Root0Angular20261003.arc0009 Root0Angular20261003.arc0234_checked Root0Angular20261003.arc0009_checked .im (by decide +kernel)
#print axioms leaf0369
theorem leaf0370 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(15/32)⟩ ⟨(1/16),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0231 Root0Angular20261003.arc0010 Root0Angular20261003.arc0231_checked Root0Angular20261003.arc0010_checked .re (by decide +kernel)
#print axioms leaf0370
theorem leaf0371 : LeafStatement cap moments EX EY hull0 hull1 ⟨(15/32),(1/2)⟩ ⟨0,(1/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0234 Root0Angular20261003.arc0002 Root0Angular20261003.arc0234_checked Root0Angular20261003.arc0002_checked .im (by decide +kernel)
#print axioms leaf0371
theorem leaf0372 : LeafStatement cap moments EX EY hull0 hull1 ⟨(29/64),(15/32)⟩ ⟨(1/32),(1/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0233 Root0Angular20261003.arc0006 Root0Angular20261003.arc0233_checked Root0Angular20261003.arc0006_checked .re (by decide +kernel)
#print axioms leaf0372
theorem leaf0373 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(29/64)⟩ ⟨(1/32),(1/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0230 Root0Angular20261003.arc0006 Root0Angular20261003.arc0230_checked Root0Angular20261003.arc0006_checked .re (by decide +kernel)
#print axioms leaf0373
theorem leaf0374 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(15/32)⟩ ⟨0,(1/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0231 Root0Angular20261003.arc0001 Root0Angular20261003.arc0231_checked Root0Angular20261003.arc0001_checked .im (by decide +kernel)
#print axioms leaf0374
theorem leaf0375 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(1/16),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0010 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0010_checked .re (by decide +kernel)
#print axioms leaf0375
theorem leaf0376 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(3/32),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0013 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0013_checked .re (by decide +kernel)
#print axioms leaf0376
theorem leaf0377 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(1/16),(3/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0009 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0009_checked .re (by decide +kernel)
#print axioms leaf0377
theorem leaf0378 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(1/32),(1/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0006 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0006_checked .re (by decide +kernel)
#print axioms leaf0378
theorem leaf0379 : LeafStatement cap moments EX EY hull0 hull1 ⟨(27/64),(7/16)⟩ ⟨0,(1/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0229 Root0Angular20261003.arc0001 Root0Angular20261003.arc0229_checked Root0Angular20261003.arc0001_checked .re (by decide +kernel)
#print axioms leaf0379
theorem leaf0380 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(27/64)⟩ ⟨0,(1/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0227 Root0Angular20261003.arc0001 Root0Angular20261003.arc0227_checked Root0Angular20261003.arc0001_checked .re (by decide +kernel)
#print axioms leaf0380
theorem leaf0381 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(13/32)⟩ ⟨(1/32),(1/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0222 Root0Angular20261003.arc0006 Root0Angular20261003.arc0222_checked Root0Angular20261003.arc0006_checked .re (by decide +kernel)
#print axioms leaf0381
theorem leaf0382 : LeafStatement cap moments EX EY hull0 hull1 ⟨(25/64),(13/32)⟩ ⟨0,(1/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0226 Root0Angular20261003.arc0001 Root0Angular20261003.arc0226_checked Root0Angular20261003.arc0001_checked .re (by decide +kernel)
#print axioms leaf0382
theorem leaf0383 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/8),(25/64)⟩ ⟨0,(1/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0221 Root0Angular20261003.arc0001 Root0Angular20261003.arc0221_checked Root0Angular20261003.arc0001_checked .re (by decide +kernel)
#print axioms leaf0383
end ShoulderRoot1Angular20261003
