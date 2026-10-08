import ParametricAngularLeaf
import Root0Arcs13
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
theorem leaf0216 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(5/8)⟩ ⟨(15/16),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0243 Root0Angular20261003.arc0334 Root0Angular20261003.arc0243_checked Root0Angular20261003.arc0334_checked .re (by decide +kernel)
#print axioms leaf0216
theorem leaf0217 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(5/8)⟩ ⟨(7/8),(15/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0243 Root0Angular20261003.arc0326 Root0Angular20261003.arc0243_checked Root0Angular20261003.arc0326_checked .re (by decide +kernel)
#print axioms leaf0217
theorem leaf0218 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(9/16)⟩ ⟨(15/16),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0236 Root0Angular20261003.arc0334 Root0Angular20261003.arc0236_checked Root0Angular20261003.arc0334_checked .im (by decide +kernel)
#print axioms leaf0218
theorem leaf0219 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(9/16)⟩ ⟨(7/8),(15/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0236 Root0Angular20261003.arc0326 Root0Angular20261003.arc0236_checked Root0Angular20261003.arc0326_checked .im (by decide +kernel)
#print axioms leaf0219
theorem leaf0220 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(5/8)⟩ ⟨(13/16),(7/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0243 Root0Angular20261003.arc0320 Root0Angular20261003.arc0243_checked Root0Angular20261003.arc0320_checked .re (by decide +kernel)
#print axioms leaf0220
theorem leaf0221 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(5/8)⟩ ⟨(3/4),(13/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0243 Root0Angular20261003.arc0316 Root0Angular20261003.arc0243_checked Root0Angular20261003.arc0316_checked .re (by decide +kernel)
#print axioms leaf0221
theorem leaf0222 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(9/16)⟩ ⟨(13/16),(7/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0236 Root0Angular20261003.arc0320 Root0Angular20261003.arc0236_checked Root0Angular20261003.arc0320_checked .re (by decide +kernel)
#print axioms leaf0222
theorem leaf0223 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(9/16)⟩ ⟨(3/4),(13/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0236 Root0Angular20261003.arc0316 Root0Angular20261003.arc0236_checked Root0Angular20261003.arc0316_checked .re (by decide +kernel)
#print axioms leaf0223
theorem leaf0224 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(5/8)⟩ ⟨(11/16),(3/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0243 Root0Angular20261003.arc0311 Root0Angular20261003.arc0243_checked Root0Angular20261003.arc0311_checked .re (by decide +kernel)
#print axioms leaf0224
theorem leaf0225 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(5/8)⟩ ⟨(5/8),(11/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0243 Root0Angular20261003.arc0251 Root0Angular20261003.arc0243_checked Root0Angular20261003.arc0251_checked .re (by decide +kernel)
#print axioms leaf0225
theorem leaf0226 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(9/16)⟩ ⟨(5/8),(3/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0236 Root0Angular20261003.arc0252 Root0Angular20261003.arc0236_checked Root0Angular20261003.arc0252_checked .im (by decide +kernel)
#print axioms leaf0226
theorem leaf0227 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(5/8)⟩ ⟨(9/16),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0243 Root0Angular20261003.arc0243 Root0Angular20261003.arc0243_checked Root0Angular20261003.arc0243_checked .im (by decide +kernel)
#print axioms leaf0227
theorem leaf0228 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(5/8)⟩ ⟨(1/2),(9/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0243 Root0Angular20261003.arc0236 Root0Angular20261003.arc0243_checked Root0Angular20261003.arc0236_checked .im (by decide +kernel)
#print axioms leaf0228
theorem leaf0229 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(9/16)⟩ ⟨(9/16),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0236 Root0Angular20261003.arc0243 Root0Angular20261003.arc0236_checked Root0Angular20261003.arc0243_checked .im (by decide +kernel)
#print axioms leaf0229
theorem leaf0230 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(9/16)⟩ ⟨(1/2),(9/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0236 Root0Angular20261003.arc0236 Root0Angular20261003.arc0236_checked Root0Angular20261003.arc0236_checked .im (by decide +kernel)
#print axioms leaf0230
theorem leaf0231 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/32),(5/8)⟩ ⟨(7/16),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0246 Root0Angular20261003.arc0232 Root0Angular20261003.arc0246_checked Root0Angular20261003.arc0232_checked .im (by decide +kernel)
#print axioms leaf0231
theorem leaf0232 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(19/32)⟩ ⟨(7/16),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0242 Root0Angular20261003.arc0232 Root0Angular20261003.arc0242_checked Root0Angular20261003.arc0232_checked .im (by decide +kernel)
#print axioms leaf0232
theorem leaf0233 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/32),(5/8)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0246 Root0Angular20261003.arc0228 Root0Angular20261003.arc0246_checked Root0Angular20261003.arc0228_checked .im (by decide +kernel)
#print axioms leaf0233
theorem leaf0234 : LeafStatement cap moments EX EY hull0 hull1 ⟨(39/64),(5/8)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0247 Root0Angular20261003.arc0222 Root0Angular20261003.arc0247_checked Root0Angular20261003.arc0222_checked .im (by decide +kernel)
#print axioms leaf0234
theorem leaf0235 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/32),(39/64)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0245 Root0Angular20261003.arc0222 Root0Angular20261003.arc0245_checked Root0Angular20261003.arc0222_checked .im (by decide +kernel)
#print axioms leaf0235
theorem leaf0236 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(19/32)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0242 Root0Angular20261003.arc0228 Root0Angular20261003.arc0242_checked Root0Angular20261003.arc0228_checked .im (by decide +kernel)
#print axioms leaf0236
theorem leaf0237 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(19/32)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0242 Root0Angular20261003.arc0222 Root0Angular20261003.arc0242_checked Root0Angular20261003.arc0222_checked .im (by decide +kernel)
#print axioms leaf0237
theorem leaf0238 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(9/16)⟩ ⟨(7/16),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0236 Root0Angular20261003.arc0232 Root0Angular20261003.arc0236_checked Root0Angular20261003.arc0232_checked .im (by decide +kernel)
#print axioms leaf0238
theorem leaf0239 : LeafStatement cap moments EX EY hull0 hull1 ⟨(17/32),(9/16)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0239 Root0Angular20261003.arc0228 Root0Angular20261003.arc0239_checked Root0Angular20261003.arc0228_checked .im (by decide +kernel)
#print axioms leaf0239
end ShoulderRoot1Angular20261003
