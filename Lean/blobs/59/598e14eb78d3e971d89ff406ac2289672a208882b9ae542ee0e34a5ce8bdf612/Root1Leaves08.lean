import ParametricAngularLeaf
import Root0Arcs00
import Root0Arcs01
import Root0Arcs02
import Root0Arcs07
import Root0Arcs08
import Root0Arcs15
import Root0Arcs16
import Root0Arcs19
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
theorem leaf0192 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(43/64)⟩ ⟨(1/4),(17/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0267 Root0Angular20261003.arc0132 Root0Angular20261003.arc0267_checked Root0Angular20261003.arc0132_checked .re (by decide +kernel)
#print axioms leaf0192
theorem leaf0193 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/64),(21/32)⟩ ⟨(19/64),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0256 Root0Angular20261003.arc0142 Root0Angular20261003.arc0256_checked Root0Angular20261003.arc0142_checked .re (by decide +kernel)
#print axioms leaf0193
theorem leaf0194 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/128),(21/32)⟩ ⟨(37/128),(19/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0259 Root0Angular20261003.arc0140 Root0Angular20261003.arc0259_checked Root0Angular20261003.arc0140_checked .re (by decide +kernel)
#print axioms leaf0194
theorem leaf0195 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/128),(21/32)⟩ ⟨(9/32),(37/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0259 Root0Angular20261003.arc0137 Root0Angular20261003.arc0259_checked Root0Angular20261003.arc0137_checked .im (by decide +kernel)
#print axioms leaf0195
theorem leaf0196 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/64),(83/128)⟩ ⟨(9/32),(19/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0255 Root0Angular20261003.arc0138 Root0Angular20261003.arc0255_checked Root0Angular20261003.arc0138_checked .re (by decide +kernel)
#print axioms leaf0196
theorem leaf0197 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(41/64)⟩ ⟨(9/32),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0249 Root0Angular20261003.arc0139 Root0Angular20261003.arc0249_checked Root0Angular20261003.arc0139_checked .re (by decide +kernel)
#print axioms leaf0197
theorem leaf0198 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/128),(21/32)⟩ ⟨(17/64),(9/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0259 Root0Angular20261003.arc0136 Root0Angular20261003.arc0259_checked Root0Angular20261003.arc0136_checked .im (by decide +kernel)
#print axioms leaf0198
theorem leaf0199 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/64),(83/128)⟩ ⟨(17/64),(9/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0255 Root0Angular20261003.arc0136 Root0Angular20261003.arc0255_checked Root0Angular20261003.arc0136_checked .re (by decide +kernel)
#print axioms leaf0199
theorem leaf0200 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/64),(21/32)⟩ ⟨(1/4),(17/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0256 Root0Angular20261003.arc0132 Root0Angular20261003.arc0256_checked Root0Angular20261003.arc0132_checked .im (by decide +kernel)
#print axioms leaf0200
theorem leaf0201 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(41/64)⟩ ⟨(17/64),(9/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0249 Root0Angular20261003.arc0136 Root0Angular20261003.arc0249_checked Root0Angular20261003.arc0136_checked .re (by decide +kernel)
#print axioms leaf0201
theorem leaf0202 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(41/64)⟩ ⟨(1/4),(17/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0249 Root0Angular20261003.arc0132 Root0Angular20261003.arc0249_checked Root0Angular20261003.arc0132_checked .re (by decide +kernel)
#print axioms leaf0202
theorem leaf0203 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/16),(3/4)⟩ ⟨(1/8),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0311 Root0Angular20261003.arc0021 Root0Angular20261003.arc0311_checked Root0Angular20261003.arc0021_checked .s (by decide +kernel)
#print axioms leaf0203
theorem leaf0204 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(11/16)⟩ ⟨(7/32),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0268 Root0Angular20261003.arc0129 Root0Angular20261003.arc0268_checked Root0Angular20261003.arc0129_checked .re (by decide +kernel)
#print axioms leaf0204
theorem leaf0205 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(11/16)⟩ ⟨(3/16),(7/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0268 Root0Angular20261003.arc0117 Root0Angular20261003.arc0268_checked Root0Angular20261003.arc0117_checked .re (by decide +kernel)
#print axioms leaf0205
theorem leaf0206 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/64),(21/32)⟩ ⟨(7/32),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0256 Root0Angular20261003.arc0129 Root0Angular20261003.arc0256_checked Root0Angular20261003.arc0129_checked .im (by decide +kernel)
#print axioms leaf0206
theorem leaf0207 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(41/64)⟩ ⟨(7/32),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0249 Root0Angular20261003.arc0129 Root0Angular20261003.arc0249_checked Root0Angular20261003.arc0129_checked .im (by decide +kernel)
#print axioms leaf0207
theorem leaf0208 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(21/32)⟩ ⟨(3/16),(7/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0250 Root0Angular20261003.arc0117 Root0Angular20261003.arc0250_checked Root0Angular20261003.arc0117_checked .im (by decide +kernel)
#print axioms leaf0208
theorem leaf0209 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(11/16)⟩ ⟨(1/8),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0268 Root0Angular20261003.arc0020 Root0Angular20261003.arc0268_checked Root0Angular20261003.arc0020_checked .re (by decide +kernel)
#print axioms leaf0209
theorem leaf0210 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(21/32)⟩ ⟨(5/32),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0250 Root0Angular20261003.arc0034 Root0Angular20261003.arc0250_checked Root0Angular20261003.arc0034_checked .re (by decide +kernel)
#print axioms leaf0210
theorem leaf0211 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(21/32)⟩ ⟨(1/8),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0250 Root0Angular20261003.arc0019 Root0Angular20261003.arc0250_checked Root0Angular20261003.arc0019_checked .re (by decide +kernel)
#print axioms leaf0211
theorem leaf0212 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/16),(3/4)⟩ ⟨0,(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0311 Root0Angular20261003.arc0003 Root0Angular20261003.arc0311_checked Root0Angular20261003.arc0003_checked .re (by decide +kernel)
#print axioms leaf0212
theorem leaf0213 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(11/16)⟩ ⟨(1/16),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0268 Root0Angular20261003.arc0010 Root0Angular20261003.arc0268_checked Root0Angular20261003.arc0010_checked .re (by decide +kernel)
#print axioms leaf0213
theorem leaf0214 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(21/32)⟩ ⟨(1/16),(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0250 Root0Angular20261003.arc0010 Root0Angular20261003.arc0250_checked Root0Angular20261003.arc0010_checked .re (by decide +kernel)
#print axioms leaf0214
theorem leaf0215 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(11/16)⟩ ⟨0,(1/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0251 Root0Angular20261003.arc0002 Root0Angular20261003.arc0251_checked Root0Angular20261003.arc0002_checked .re (by decide +kernel)
#print axioms leaf0215
end ShoulderRoot1Angular20261003
