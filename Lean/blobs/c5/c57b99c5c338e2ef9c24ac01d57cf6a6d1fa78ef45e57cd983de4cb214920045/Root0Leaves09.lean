import AngularLeaf
import Root0CoverData
import Root0Arcs13
import Root0Arcs14
import Root0Arcs15
import Root0Arcs19
import Root0Arcs20
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem leaf0216 : LeafStatement moments EX EY hull0 hull1 ⟨(9/16),(5/8)⟩ ⟨(13/16),(7/8)⟩ := by
  exact moment_leaf arc0243 arc0320 arc0243_checked arc0320_checked .re (by decide +kernel)
#print axioms leaf0216
theorem leaf0217 : LeafStatement moments EX EY hull0 hull1 ⟨(9/16),(5/8)⟩ ⟨(3/4),(13/16)⟩ := by
  exact moment_leaf arc0243 arc0316 arc0243_checked arc0316_checked .re (by decide +kernel)
#print axioms leaf0217
theorem leaf0218 : LeafStatement moments EX EY hull0 hull1 ⟨(1/2),(9/16)⟩ ⟨(13/16),(7/8)⟩ := by
  exact moment_leaf arc0236 arc0320 arc0236_checked arc0320_checked .re (by decide +kernel)
#print axioms leaf0218
theorem leaf0219 : LeafStatement moments EX EY hull0 hull1 ⟨(1/2),(9/16)⟩ ⟨(3/4),(13/16)⟩ := by
  exact moment_leaf arc0236 arc0316 arc0236_checked arc0316_checked .re (by decide +kernel)
#print axioms leaf0219
theorem leaf0220 : LeafStatement moments EX EY hull0 hull1 ⟨(9/16),(5/8)⟩ ⟨(11/16),(3/4)⟩ := by
  exact moment_leaf arc0243 arc0311 arc0243_checked arc0311_checked .re (by decide +kernel)
#print axioms leaf0220
theorem leaf0221 : LeafStatement moments EX EY hull0 hull1 ⟨(9/16),(5/8)⟩ ⟨(5/8),(11/16)⟩ := by
  exact moment_leaf arc0243 arc0251 arc0243_checked arc0251_checked .re (by decide +kernel)
#print axioms leaf0221
theorem leaf0222 : LeafStatement moments EX EY hull0 hull1 ⟨(1/2),(9/16)⟩ ⟨(5/8),(3/4)⟩ := by
  exact moment_leaf arc0236 arc0252 arc0236_checked arc0252_checked .im (by decide +kernel)
#print axioms leaf0222
theorem leaf0223 : LeafStatement moments EX EY hull0 hull1 ⟨(9/16),(5/8)⟩ ⟨(9/16),(5/8)⟩ := by
  exact moment_leaf arc0243 arc0243 arc0243_checked arc0243_checked .im (by decide +kernel)
#print axioms leaf0223
theorem leaf0224 : LeafStatement moments EX EY hull0 hull1 ⟨(9/16),(5/8)⟩ ⟨(1/2),(9/16)⟩ := by
  exact moment_leaf arc0243 arc0236 arc0243_checked arc0236_checked .im (by decide +kernel)
#print axioms leaf0224
theorem leaf0225 : LeafStatement moments EX EY hull0 hull1 ⟨(1/2),(9/16)⟩ ⟨(9/16),(5/8)⟩ := by
  exact moment_leaf arc0236 arc0243 arc0236_checked arc0243_checked .im (by decide +kernel)
#print axioms leaf0225
theorem leaf0226 : LeafStatement moments EX EY hull0 hull1 ⟨(1/2),(9/16)⟩ ⟨(1/2),(9/16)⟩ := by
  exact moment_leaf arc0236 arc0236 arc0236_checked arc0236_checked .im (by decide +kernel)
#print axioms leaf0226
theorem leaf0227 : LeafStatement moments EX EY hull0 hull1 ⟨(19/32),(5/8)⟩ ⟨(7/16),(1/2)⟩ := by
  exact moment_leaf arc0246 arc0232 arc0246_checked arc0232_checked .im (by decide +kernel)
#print axioms leaf0227
theorem leaf0228 : LeafStatement moments EX EY hull0 hull1 ⟨(9/16),(19/32)⟩ ⟨(7/16),(1/2)⟩ := by
  exact moment_leaf arc0242 arc0232 arc0242_checked arc0232_checked .im (by decide +kernel)
#print axioms leaf0228
theorem leaf0229 : LeafStatement moments EX EY hull0 hull1 ⟨(19/32),(5/8)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf arc0246 arc0228 arc0246_checked arc0228_checked .im (by decide +kernel)
#print axioms leaf0229
theorem leaf0230 : LeafStatement moments EX EY hull0 hull1 ⟨(39/64),(5/8)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf arc0247 arc0222 arc0247_checked arc0222_checked .im (by decide +kernel)
#print axioms leaf0230
theorem leaf0231 : LeafStatement moments EX EY hull0 hull1 ⟨(19/32),(39/64)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf arc0245 arc0222 arc0245_checked arc0222_checked .im (by decide +kernel)
#print axioms leaf0231
theorem leaf0232 : LeafStatement moments EX EY hull0 hull1 ⟨(9/16),(19/32)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf arc0242 arc0228 arc0242_checked arc0228_checked .im (by decide +kernel)
#print axioms leaf0232
theorem leaf0233 : LeafStatement moments EX EY hull0 hull1 ⟨(9/16),(19/32)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf arc0242 arc0222 arc0242_checked arc0222_checked .im (by decide +kernel)
#print axioms leaf0233
theorem leaf0234 : LeafStatement moments EX EY hull0 hull1 ⟨(1/2),(9/16)⟩ ⟨(7/16),(1/2)⟩ := by
  exact moment_leaf arc0236 arc0232 arc0236_checked arc0232_checked .im (by decide +kernel)
#print axioms leaf0234
theorem leaf0235 : LeafStatement moments EX EY hull0 hull1 ⟨(17/32),(9/16)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf arc0239 arc0228 arc0239_checked arc0228_checked .im (by decide +kernel)
#print axioms leaf0235
theorem leaf0236 : LeafStatement moments EX EY hull0 hull1 ⟨(17/32),(9/16)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf arc0239 arc0222 arc0239_checked arc0222_checked .im (by decide +kernel)
#print axioms leaf0236
theorem leaf0237 : LeafStatement moments EX EY hull0 hull1 ⟨(1/2),(17/32)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf arc0235 arc0228 arc0235_checked arc0228_checked .im (by decide +kernel)
#print axioms leaf0237
theorem leaf0238 : LeafStatement moments EX EY hull0 hull1 ⟨(1/2),(17/32)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf arc0235 arc0222 arc0235_checked arc0222_checked .im (by decide +kernel)
#print axioms leaf0238
theorem leaf0239 : LeafStatement moments EX EY hull0 hull1 ⟨(39/64),(5/8)⟩ ⟨(23/64),(3/8)⟩ := by
  exact moment_leaf arc0247 arc0218 arc0247_checked arc0218_checked .re (by decide +kernel)
#print axioms leaf0239
end Root0Angular20261003
