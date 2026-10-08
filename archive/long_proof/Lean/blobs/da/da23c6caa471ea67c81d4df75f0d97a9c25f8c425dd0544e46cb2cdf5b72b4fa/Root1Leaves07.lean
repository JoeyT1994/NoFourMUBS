import ParametricAngularLeaf
import Root0Arcs08
import Root0Arcs09
import Root0Arcs13
import Root0Arcs15
import Root0Arcs16
import Root0Arcs17
import Root0Arcs18
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
theorem leaf0168 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(341/512)⟩ ⟨(5/16),(81/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0287 Root0Angular20261003.arc0146 Root0Angular20261003.arc0287_checked Root0Angular20261003.arc0146_checked .im (by decide +kernel)
#print axioms leaf0168
theorem leaf0169 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(85/128)⟩ ⟨(41/128),(21/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0266 Root0Angular20261003.arc0156 Root0Angular20261003.arc0266_checked Root0Angular20261003.arc0156_checked .re (by decide +kernel)
#print axioms leaf0169
theorem leaf0170 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(85/128)⟩ ⟨(5/16),(41/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0266 Root0Angular20261003.arc0147 Root0Angular20261003.arc0266_checked Root0Angular20261003.arc0147_checked .re (by decide +kernel)
#print axioms leaf0170
theorem leaf0171 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/64),(21/32)⟩ ⟨(23/64),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0256 Root0Angular20261003.arc0218 Root0Angular20261003.arc0256_checked Root0Angular20261003.arc0218_checked .im (by decide +kernel)
#print axioms leaf0171
theorem leaf0172 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/128),(21/32)⟩ ⟨(45/128),(23/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0259 Root0Angular20261003.arc0216 Root0Angular20261003.arc0259_checked Root0Angular20261003.arc0216_checked .im (by decide +kernel)
#print axioms leaf0172
theorem leaf0173 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/128),(21/32)⟩ ⟨(11/32),(45/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0259 Root0Angular20261003.arc0213 Root0Angular20261003.arc0259_checked Root0Angular20261003.arc0213_checked .re (by decide +kernel)
#print axioms leaf0173
theorem leaf0174 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/64),(83/128)⟩ ⟨(11/32),(23/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0255 Root0Angular20261003.arc0214 Root0Angular20261003.arc0255_checked Root0Angular20261003.arc0214_checked .re (by decide +kernel)
#print axioms leaf0174
theorem leaf0175 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(41/64)⟩ ⟨(23/64),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0249 Root0Angular20261003.arc0218 Root0Angular20261003.arc0249_checked Root0Angular20261003.arc0218_checked .im (by decide +kernel)
#print axioms leaf0175
theorem leaf0176 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(41/64)⟩ ⟨(11/32),(23/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0249 Root0Angular20261003.arc0214 Root0Angular20261003.arc0249_checked Root0Angular20261003.arc0214_checked .re (by decide +kernel)
#print axioms leaf0176
theorem leaf0177 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/64),(21/32)⟩ ⟨(5/16),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0256 Root0Angular20261003.arc0149 Root0Angular20261003.arc0256_checked Root0Angular20261003.arc0149_checked .re (by decide +kernel)
#print axioms leaf0177
theorem leaf0178 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(41/64)⟩ ⟨(5/16),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0249 Root0Angular20261003.arc0149 Root0Angular20261003.arc0249_checked Root0Angular20261003.arc0149_checked .re (by decide +kernel)
#print axioms leaf0178
theorem leaf0179 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/64),(11/16)⟩ ⟨(9/32),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0305 Root0Angular20261003.arc0139 Root0Angular20261003.arc0305_checked Root0Angular20261003.arc0139_checked .re (by decide +kernel)
#print axioms leaf0179
theorem leaf0180 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/256),(43/64)⟩ ⟨(39/128),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0301 Root0Angular20261003.arc0144 Root0Angular20261003.arc0301_checked Root0Angular20261003.arc0144_checked .re (by decide +kernel)
#print axioms leaf0180
theorem leaf0181 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(171/256)⟩ ⟨(39/128),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0288 Root0Angular20261003.arc0144 Root0Angular20261003.arc0288_checked Root0Angular20261003.arc0144_checked .im (by decide +kernel)
#print axioms leaf0181
theorem leaf0182 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(43/64)⟩ ⟨(19/64),(39/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0289 Root0Angular20261003.arc0141 Root0Angular20261003.arc0289_checked Root0Angular20261003.arc0141_checked .im (by decide +kernel)
#print axioms leaf0182
theorem leaf0183 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/256),(85/128)⟩ ⟨(79/256),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0281 Root0Angular20261003.arc0145 Root0Angular20261003.arc0281_checked Root0Angular20261003.arc0145_checked .im (by decide +kernel)
#print axioms leaf0183
theorem leaf0184 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/256),(85/128)⟩ ⟨(39/128),(79/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0281 Root0Angular20261003.arc0143 Root0Angular20261003.arc0281_checked Root0Angular20261003.arc0143_checked .im (by decide +kernel)
#print axioms leaf0184
theorem leaf0185 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(169/256)⟩ ⟨(39/128),(5/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0265 Root0Angular20261003.arc0144 Root0Angular20261003.arc0265_checked Root0Angular20261003.arc0144_checked .re (by decide +kernel)
#print axioms leaf0185
theorem leaf0186 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/256),(85/128)⟩ ⟨(19/64),(39/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0281 Root0Angular20261003.arc0141 Root0Angular20261003.arc0281_checked Root0Angular20261003.arc0141_checked .im (by decide +kernel)
#print axioms leaf0186
theorem leaf0187 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(169/256)⟩ ⟨(19/64),(39/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0265 Root0Angular20261003.arc0141 Root0Angular20261003.arc0265_checked Root0Angular20261003.arc0141_checked .re (by decide +kernel)
#print axioms leaf0187
theorem leaf0188 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(43/64)⟩ ⟨(9/32),(19/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0289 Root0Angular20261003.arc0138 Root0Angular20261003.arc0289_checked Root0Angular20261003.arc0138_checked .im (by decide +kernel)
#print axioms leaf0188
theorem leaf0189 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(85/128)⟩ ⟨(9/32),(19/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0266 Root0Angular20261003.arc0138 Root0Angular20261003.arc0266_checked Root0Angular20261003.arc0138_checked .im (by decide +kernel)
#print axioms leaf0189
theorem leaf0190 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/64),(11/16)⟩ ⟨(1/4),(9/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0305 Root0Angular20261003.arc0133 Root0Angular20261003.arc0305_checked Root0Angular20261003.arc0133_checked .re (by decide +kernel)
#print axioms leaf0190
theorem leaf0191 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(43/64)⟩ ⟨(17/64),(9/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0267 Root0Angular20261003.arc0136 Root0Angular20261003.arc0267_checked Root0Angular20261003.arc0136_checked .im (by decide +kernel)
#print axioms leaf0191
end ShoulderRoot1Angular20261003
