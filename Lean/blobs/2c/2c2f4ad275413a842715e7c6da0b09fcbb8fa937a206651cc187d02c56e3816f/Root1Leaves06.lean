import ParametricAngularLeaf
import Root0Arcs09
import Root0Arcs10
import Root0Arcs17
import Root0Arcs18
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
theorem leaf0144 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(165/512),(661/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0296 Root0Angular20261003.arc0158 Root0Angular20261003.arc0296_checked Root0Angular20261003.arc0158_checked .im (by decide +kernel)
#print axioms leaf0144
theorem leaf0145 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(661/2048),(331/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0293 Root0Angular20261003.arc0161 Root0Angular20261003.arc0293_checked Root0Angular20261003.arc0161_checked .im (by decide +kernel)
#print axioms leaf0145
theorem leaf0146 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(165/512),(661/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0293 Root0Angular20261003.arc0158 Root0Angular20261003.arc0293_checked Root0Angular20261003.arc0158_checked .im (by decide +kernel)
#print axioms leaf0146
theorem leaf0147 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(171/256)⟩ ⟨(41/128),(165/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0298 Root0Angular20261003.arc0154 Root0Angular20261003.arc0298_checked Root0Angular20261003.arc0154_checked .im (by decide +kernel)
#print axioms leaf0147
theorem leaf0148 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(683/1024)⟩ ⟨(329/1024),(165/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0294 Root0Angular20261003.arc0157 Root0Angular20261003.arc0294_checked Root0Angular20261003.arc0157_checked .im (by decide +kernel)
#print axioms leaf0148
theorem leaf0149 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(683/1024)⟩ ⟨(41/128),(329/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0294 Root0Angular20261003.arc0153 Root0Angular20261003.arc0294_checked Root0Angular20261003.arc0153_checked .im (by decide +kernel)
#print axioms leaf0149
theorem leaf0150 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(663/2048),(83/256)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0292 Root0Angular20261003.arc0164 Root0Angular20261003.arc0292_checked Root0Angular20261003.arc0164_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0150
theorem leaf0151 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(331/1024),(663/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0292 Root0Angular20261003.arc0162 Root0Angular20261003.arc0292_checked Root0Angular20261003.arc0162_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0151
theorem leaf0152 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/1024),(1363/2048)⟩ ⟨(331/1024),(83/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0290 Root0Angular20261003.arc0163 Root0Angular20261003.arc0290_checked Root0Angular20261003.arc0163_checked .re (by decide +kernel)
#print axioms leaf0152
theorem leaf0153 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(661/2048),(331/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0292 Root0Angular20261003.arc0161 Root0Angular20261003.arc0292_checked Root0Angular20261003.arc0161_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0153
theorem leaf0154 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(165/512),(661/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0292 Root0Angular20261003.arc0158 Root0Angular20261003.arc0292_checked Root0Angular20261003.arc0158_checked .im (by decide +kernel)
#print axioms leaf0154
theorem leaf0155 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/1024),(1363/2048)⟩ ⟨(165/512),(331/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0290 Root0Angular20261003.arc0159 Root0Angular20261003.arc0290_checked Root0Angular20261003.arc0159_checked .re (by decide +kernel)
#print axioms leaf0155
theorem leaf0156 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(681/1024)⟩ ⟨(165/512),(83/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0286 Root0Angular20261003.arc0160 Root0Angular20261003.arc0286_checked Root0Angular20261003.arc0160_checked .re (by decide +kernel)
#print axioms leaf0156
theorem leaf0157 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(329/1024),(165/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0292 Root0Angular20261003.arc0157 Root0Angular20261003.arc0292_checked Root0Angular20261003.arc0157_checked .im (by decide +kernel)
#print axioms leaf0157
theorem leaf0158 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/1024),(1363/2048)⟩ ⟨(329/1024),(165/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0290 Root0Angular20261003.arc0157 Root0Angular20261003.arc0290_checked Root0Angular20261003.arc0157_checked .re (by decide +kernel)
#print axioms leaf0158
theorem leaf0159 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/1024),(341/512)⟩ ⟨(41/128),(329/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0291 Root0Angular20261003.arc0153 Root0Angular20261003.arc0291_checked Root0Angular20261003.arc0153_checked .im (by decide +kernel)
#print axioms leaf0159
theorem leaf0160 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(681/1024)⟩ ⟨(41/128),(165/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0286 Root0Angular20261003.arc0154 Root0Angular20261003.arc0286_checked Root0Angular20261003.arc0154_checked .re (by decide +kernel)
#print axioms leaf0160
theorem leaf0161 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/256),(43/64)⟩ ⟨(5/16),(41/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0301 Root0Angular20261003.arc0147 Root0Angular20261003.arc0301_checked Root0Angular20261003.arc0147_checked .re (by decide +kernel)
#print axioms leaf0161
theorem leaf0162 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(171/256)⟩ ⟨(163/512),(41/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0295 Root0Angular20261003.arc0152 Root0Angular20261003.arc0295_checked Root0Angular20261003.arc0152_checked .im (by decide +kernel)
#print axioms leaf0162
theorem leaf0163 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(171/256)⟩ ⟨(81/256),(163/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0295 Root0Angular20261003.arc0151 Root0Angular20261003.arc0295_checked Root0Angular20261003.arc0151_checked .im (by decide +kernel)
#print axioms leaf0163
theorem leaf0164 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/1024),(341/512)⟩ ⟨(163/512),(41/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0291 Root0Angular20261003.arc0152 Root0Angular20261003.arc0291_checked Root0Angular20261003.arc0152_checked .im (by decide +kernel)
#print axioms leaf0164
theorem leaf0165 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(681/1024)⟩ ⟨(163/512),(41/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0286 Root0Angular20261003.arc0152 Root0Angular20261003.arc0286_checked Root0Angular20261003.arc0152_checked .re (by decide +kernel)
#print axioms leaf0165
theorem leaf0166 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(341/512)⟩ ⟨(81/256),(163/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0287 Root0Angular20261003.arc0151 Root0Angular20261003.arc0287_checked Root0Angular20261003.arc0151_checked .im (by decide +kernel)
#print axioms leaf0166
theorem leaf0167 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(171/256)⟩ ⟨(5/16),(81/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0295 Root0Angular20261003.arc0146 Root0Angular20261003.arc0295_checked Root0Angular20261003.arc0146_checked .im (by decide +kernel)
#print axioms leaf0167
end ShoulderRoot1Angular20261003
