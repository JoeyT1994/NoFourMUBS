import ParametricAngularLeaf
import Root0Arcs00
import Root0Arcs01
import Root0Arcs02
import Root0Arcs07
import Root0Arcs14
import Root0Arcs15
import Root0Arcs20
import Root0Arcs21
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
theorem leaf0264 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(37/64)⟩ ⟨(5/32),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0241 Root0Angular20261003.arc0034 Root0Angular20261003.arc0241_checked Root0Angular20261003.arc0034_checked .im (by decide +kernel)
#print axioms leaf0264
theorem leaf0265 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(19/32)⟩ ⟨(1/8),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0242 Root0Angular20261003.arc0019 Root0Angular20261003.arc0242_checked Root0Angular20261003.arc0019_checked .im (by decide +kernel)
#print axioms leaf0265
theorem leaf0266 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(9/16)⟩ ⟨(3/16),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0236 Root0Angular20261003.arc0118 Root0Angular20261003.arc0236_checked Root0Angular20261003.arc0118_checked .re (by decide +kernel)
#print axioms leaf0266
theorem leaf0267 : LeafStatement cap moments EX EY hull0 hull1 ⟨(17/32),(9/16)⟩ ⟨(5/32),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0239 Root0Angular20261003.arc0034 Root0Angular20261003.arc0239_checked Root0Angular20261003.arc0034_checked .re (by decide +kernel)
#print axioms leaf0267
theorem leaf0268 : LeafStatement cap moments EX EY hull0 hull1 ⟨(35/64),(9/16)⟩ ⟨(1/8),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0240 Root0Angular20261003.arc0019 Root0Angular20261003.arc0240_checked Root0Angular20261003.arc0019_checked .im (by decide +kernel)
#print axioms leaf0268
theorem leaf0269 : LeafStatement cap moments EX EY hull0 hull1 ⟨(17/32),(35/64)⟩ ⟨(1/8),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0238 Root0Angular20261003.arc0019 Root0Angular20261003.arc0238_checked Root0Angular20261003.arc0019_checked .re (by decide +kernel)
#print axioms leaf0269
theorem leaf0270 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(17/32)⟩ ⟨(1/8),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0235 Root0Angular20261003.arc0020 Root0Angular20261003.arc0235_checked Root0Angular20261003.arc0020_checked .re (by decide +kernel)
#print axioms leaf0270
theorem leaf0271 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/32),(5/8)⟩ ⟨(1/16),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0246 Root0Angular20261003.arc0010 Root0Angular20261003.arc0246_checked Root0Angular20261003.arc0010_checked .im (by decide +kernel)
#print axioms leaf0271
theorem leaf0272 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(19/32)⟩ ⟨(1/16),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0242 Root0Angular20261003.arc0010 Root0Angular20261003.arc0242_checked Root0Angular20261003.arc0010_checked .im (by decide +kernel)
#print axioms leaf0272
theorem leaf0273 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(5/8)⟩ ⟨0,(1/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0243 Root0Angular20261003.arc0002 Root0Angular20261003.arc0243_checked Root0Angular20261003.arc0002_checked .im (by decide +kernel)
#print axioms leaf0273
theorem leaf0274 : LeafStatement cap moments EX EY hull0 hull1 ⟨(17/32),(9/16)⟩ ⟨(3/32),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0239 Root0Angular20261003.arc0013 Root0Angular20261003.arc0239_checked Root0Angular20261003.arc0013_checked .im (by decide +kernel)
#print axioms leaf0274
theorem leaf0275 : LeafStatement cap moments EX EY hull0 hull1 ⟨(17/32),(9/16)⟩ ⟨(1/16),(3/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0239 Root0Angular20261003.arc0009 Root0Angular20261003.arc0239_checked Root0Angular20261003.arc0009_checked .im (by decide +kernel)
#print axioms leaf0275
theorem leaf0276 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(17/32)⟩ ⟨(3/32),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0235 Root0Angular20261003.arc0013 Root0Angular20261003.arc0235_checked Root0Angular20261003.arc0013_checked .im (by decide +kernel)
#print axioms leaf0276
theorem leaf0277 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(17/32)⟩ ⟨(1/16),(3/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0235 Root0Angular20261003.arc0009 Root0Angular20261003.arc0235_checked Root0Angular20261003.arc0009_checked .im (by decide +kernel)
#print axioms leaf0277
theorem leaf0278 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(9/16)⟩ ⟨0,(1/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0236 Root0Angular20261003.arc0002 Root0Angular20261003.arc0236_checked Root0Angular20261003.arc0002_checked .im (by decide +kernel)
#print axioms leaf0278
theorem leaf0279 : LeafStatement cap moments EX EY hull0 hull1 ⟨(15/32),(1/2)⟩ ⟨(15/16),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0234 Root0Angular20261003.arc0334 Root0Angular20261003.arc0234_checked Root0Angular20261003.arc0334_checked .im (by decide +kernel)
#print axioms leaf0279
theorem leaf0280 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(15/32)⟩ ⟨(15/16),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0231 Root0Angular20261003.arc0334 Root0Angular20261003.arc0231_checked Root0Angular20261003.arc0334_checked .im (by decide +kernel)
#print axioms leaf0280
theorem leaf0281 : LeafStatement cap moments EX EY hull0 hull1 ⟨(15/32),(1/2)⟩ ⟨(7/8),(15/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0234 Root0Angular20261003.arc0326 Root0Angular20261003.arc0234_checked Root0Angular20261003.arc0326_checked .im (by decide +kernel)
#print axioms leaf0281
theorem leaf0282 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/16),(15/32)⟩ ⟨(7/8),(15/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0231 Root0Angular20261003.arc0326 Root0Angular20261003.arc0231_checked Root0Angular20261003.arc0326_checked .im (by decide +kernel)
#print axioms leaf0282
theorem leaf0283 : LeafStatement cap moments EX EY hull0 hull1 ⟨(27/64),(7/16)⟩ ⟨(31/32),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0229 Root0Angular20261003.arc0337 Root0Angular20261003.arc0229_checked Root0Angular20261003.arc0337_checked .im (by decide +kernel)
#print axioms leaf0283
theorem leaf0284 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(27/64)⟩ ⟨(31/32),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0227 Root0Angular20261003.arc0337 Root0Angular20261003.arc0227_checked Root0Angular20261003.arc0337_checked .im (by decide +kernel)
#print axioms leaf0284
theorem leaf0285 : LeafStatement cap moments EX EY hull0 hull1 ⟨(13/32),(7/16)⟩ ⟨(15/16),(31/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0228 Root0Angular20261003.arc0333 Root0Angular20261003.arc0228_checked Root0Angular20261003.arc0333_checked .im (by decide +kernel)
#print axioms leaf0285
theorem leaf0286 : LeafStatement cap moments EX EY hull0 hull1 ⟨(25/64),(13/32)⟩ ⟨(63/64),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0226 Root0Angular20261003.arc0338 Root0Angular20261003.arc0226_checked Root0Angular20261003.arc0338_checked .re (by decide +kernel)
#print axioms leaf0286
theorem leaf0287 : LeafStatement cap moments EX EY hull0 hull1 ⟨(25/64),(13/32)⟩ ⟨(31/32),(63/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0226 Root0Angular20261003.arc0336 Root0Angular20261003.arc0226_checked Root0Angular20261003.arc0336_checked .im (by decide +kernel)
#print axioms leaf0287
end ShoulderRoot1Angular20261003
