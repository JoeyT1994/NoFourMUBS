import ParametricAngularLeaf
import Root0Arcs01
import Root0Arcs02
import Root0Arcs07
import Root0Arcs08
import Root0Arcs09
import Root0Arcs13
import Root0Arcs14
import Root0Arcs15
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
theorem leaf0240 : LeafStatement cap moments EX EY hull0 hull1 ⟨(17/32),(9/16)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0239 Root0Angular20261003.arc0222 Root0Angular20261003.arc0239_checked Root0Angular20261003.arc0222_checked .im (by decide +kernel)
#print axioms leaf0240
theorem leaf0241 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(17/32)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0235 Root0Angular20261003.arc0228 Root0Angular20261003.arc0235_checked Root0Angular20261003.arc0228_checked .im (by decide +kernel)
#print axioms leaf0241
theorem leaf0242 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(17/32)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0235 Root0Angular20261003.arc0222 Root0Angular20261003.arc0235_checked Root0Angular20261003.arc0222_checked .im (by decide +kernel)
#print axioms leaf0242
theorem leaf0243 : LeafStatement cap moments EX EY hull0 hull1 ⟨(39/64),(5/8)⟩ ⟨(23/64),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0247 Root0Angular20261003.arc0218 Root0Angular20261003.arc0247_checked Root0Angular20261003.arc0218_checked .re (by decide +kernel)
#print axioms leaf0243
theorem leaf0244 : LeafStatement cap moments EX EY hull0 hull1 ⟨(39/64),(5/8)⟩ ⟨(11/32),(23/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0247 Root0Angular20261003.arc0214 Root0Angular20261003.arc0247_checked Root0Angular20261003.arc0214_checked .re (by decide +kernel)
#print axioms leaf0244
theorem leaf0245 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/32),(39/64)⟩ ⟨(11/32),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0245 Root0Angular20261003.arc0215 Root0Angular20261003.arc0245_checked Root0Angular20261003.arc0215_checked .re (by decide +kernel)
#print axioms leaf0245
theorem leaf0246 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/32),(5/8)⟩ ⟨(5/16),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0246 Root0Angular20261003.arc0149 Root0Angular20261003.arc0246_checked Root0Angular20261003.arc0149_checked .re (by decide +kernel)
#print axioms leaf0246
theorem leaf0247 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(19/32)⟩ ⟨(11/32),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0242 Root0Angular20261003.arc0215 Root0Angular20261003.arc0242_checked Root0Angular20261003.arc0215_checked .re (by decide +kernel)
#print axioms leaf0247
theorem leaf0248 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(19/32)⟩ ⟨(5/16),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0242 Root0Angular20261003.arc0149 Root0Angular20261003.arc0242_checked Root0Angular20261003.arc0149_checked .re (by decide +kernel)
#print axioms leaf0248
theorem leaf0249 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/32),(5/8)⟩ ⟨(1/4),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0246 Root0Angular20261003.arc0134 Root0Angular20261003.arc0246_checked Root0Angular20261003.arc0134_checked .re (by decide +kernel)
#print axioms leaf0249
theorem leaf0250 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(19/32)⟩ ⟨(1/4),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0242 Root0Angular20261003.arc0134 Root0Angular20261003.arc0242_checked Root0Angular20261003.arc0134_checked .re (by decide +kernel)
#print axioms leaf0250
theorem leaf0251 : LeafStatement cap moments EX EY hull0 hull1 ⟨(17/32),(9/16)⟩ ⟨(5/16),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0239 Root0Angular20261003.arc0150 Root0Angular20261003.arc0239_checked Root0Angular20261003.arc0150_checked .re (by decide +kernel)
#print axioms leaf0251
theorem leaf0252 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(17/32)⟩ ⟨(5/16),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0235 Root0Angular20261003.arc0150 Root0Angular20261003.arc0235_checked Root0Angular20261003.arc0150_checked .re (by decide +kernel)
#print axioms leaf0252
theorem leaf0253 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/2),(9/16)⟩ ⟨(1/4),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0236 Root0Angular20261003.arc0134 Root0Angular20261003.arc0236_checked Root0Angular20261003.arc0134_checked .re (by decide +kernel)
#print axioms leaf0253
theorem leaf0254 : LeafStatement cap moments EX EY hull0 hull1 ⟨(39/64),(5/8)⟩ ⟨(15/64),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0247 Root0Angular20261003.arc0131 Root0Angular20261003.arc0247_checked Root0Angular20261003.arc0131_checked .re (by decide +kernel)
#print axioms leaf0254
theorem leaf0255 : LeafStatement cap moments EX EY hull0 hull1 ⟨(39/64),(5/8)⟩ ⟨(7/32),(15/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0247 Root0Angular20261003.arc0128 Root0Angular20261003.arc0247_checked Root0Angular20261003.arc0128_checked .im (by decide +kernel)
#print axioms leaf0255
theorem leaf0256 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/32),(39/64)⟩ ⟨(7/32),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0245 Root0Angular20261003.arc0129 Root0Angular20261003.arc0245_checked Root0Angular20261003.arc0129_checked .re (by decide +kernel)
#print axioms leaf0256
theorem leaf0257 : LeafStatement cap moments EX EY hull0 hull1 ⟨(39/64),(5/8)⟩ ⟨(3/16),(7/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0247 Root0Angular20261003.arc0117 Root0Angular20261003.arc0247_checked Root0Angular20261003.arc0117_checked .im (by decide +kernel)
#print axioms leaf0257
theorem leaf0258 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/32),(39/64)⟩ ⟨(3/16),(7/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0245 Root0Angular20261003.arc0117 Root0Angular20261003.arc0245_checked Root0Angular20261003.arc0117_checked .im (by decide +kernel)
#print axioms leaf0258
theorem leaf0259 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(19/32)⟩ ⟨(3/16),(7/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0242 Root0Angular20261003.arc0117 Root0Angular20261003.arc0242_checked Root0Angular20261003.arc0117_checked .re (by decide +kernel)
#print axioms leaf0259
theorem leaf0260 : LeafStatement cap moments EX EY hull0 hull1 ⟨(9/16),(19/32)⟩ ⟨(7/32),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0242 Root0Angular20261003.arc0129 Root0Angular20261003.arc0242_checked Root0Angular20261003.arc0129_checked .re (by decide +kernel)
#print axioms leaf0260
theorem leaf0261 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/32),(5/8)⟩ ⟨(5/32),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0246 Root0Angular20261003.arc0034 Root0Angular20261003.arc0246_checked Root0Angular20261003.arc0034_checked .im (by decide +kernel)
#print axioms leaf0261
theorem leaf0262 : LeafStatement cap moments EX EY hull0 hull1 ⟨(19/32),(5/8)⟩ ⟨(1/8),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0246 Root0Angular20261003.arc0019 Root0Angular20261003.arc0246_checked Root0Angular20261003.arc0019_checked .im (by decide +kernel)
#print axioms leaf0262
theorem leaf0263 : LeafStatement cap moments EX EY hull0 hull1 ⟨(37/64),(19/32)⟩ ⟨(5/32),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0244 Root0Angular20261003.arc0034 Root0Angular20261003.arc0244_checked Root0Angular20261003.arc0034_checked .im (by decide +kernel)
#print axioms leaf0263
end ShoulderRoot1Angular20261003
