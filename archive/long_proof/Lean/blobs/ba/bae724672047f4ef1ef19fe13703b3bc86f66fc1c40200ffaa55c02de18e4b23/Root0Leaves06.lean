import AngularLeaf
import Root0CoverData
import Root0Arcs09
import Root0Arcs10
import Root0Arcs13
import Root0Arcs16
import Root0Arcs17
import Root0Arcs18
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem leaf0144 : LeafStatement moments EX EY hull0 hull1 ⟨(683/1024),(171/256)⟩ ⟨(41/128),(165/512)⟩ := by
  exact corner_leaf arc0298 arc0154 arc0298_checked arc0154_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0144
theorem leaf0145 : LeafStatement moments EX EY hull0 hull1 ⟨(341/512),(683/1024)⟩ ⟨(329/1024),(165/512)⟩ := by
  exact corner_leaf arc0294 arc0157 arc0294_checked arc0157_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0145
theorem leaf0146 : LeafStatement moments EX EY hull0 hull1 ⟨(341/512),(683/1024)⟩ ⟨(41/128),(329/1024)⟩ := by
  exact moment_leaf arc0294 arc0153 arc0294_checked arc0153_checked .im (by decide +kernel)
#print axioms leaf0146
theorem leaf0147 : LeafStatement moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(663/2048),(83/256)⟩ := by
  exact keep_left_leaf arc0292 arc0164 arc0292_checked arc0164_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0147
theorem leaf0148 : LeafStatement moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(331/1024),(663/2048)⟩ := by
  exact corner_leaf arc0292 arc0162 arc0292_checked arc0162_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0148
theorem leaf0149 : LeafStatement moments EX EY hull0 hull1 ⟨(681/1024),(1363/2048)⟩ ⟨(331/1024),(83/256)⟩ := by
  exact moment_leaf arc0290 arc0163 arc0290_checked arc0163_checked .re (by decide +kernel)
#print axioms leaf0149
theorem leaf0150 : LeafStatement moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(661/2048),(331/1024)⟩ := by
  exact corner_leaf arc0292 arc0161 arc0292_checked arc0161_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0150
theorem leaf0151 : LeafStatement moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(165/512),(661/2048)⟩ := by
  exact corner_leaf arc0292 arc0158 arc0292_checked arc0158_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0151
theorem leaf0152 : LeafStatement moments EX EY hull0 hull1 ⟨(681/1024),(1363/2048)⟩ ⟨(165/512),(331/1024)⟩ := by
  exact moment_leaf arc0290 arc0159 arc0290_checked arc0159_checked .re (by decide +kernel)
#print axioms leaf0152
theorem leaf0153 : LeafStatement moments EX EY hull0 hull1 ⟨(85/128),(681/1024)⟩ ⟨(165/512),(83/256)⟩ := by
  exact moment_leaf arc0286 arc0160 arc0286_checked arc0160_checked .re (by decide +kernel)
#print axioms leaf0153
theorem leaf0154 : LeafStatement moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(329/1024),(165/512)⟩ := by
  exact corner_leaf arc0292 arc0157 arc0292_checked arc0157_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0154
theorem leaf0155 : LeafStatement moments EX EY hull0 hull1 ⟨(681/1024),(1363/2048)⟩ ⟨(329/1024),(165/512)⟩ := by
  exact moment_leaf arc0290 arc0157 arc0290_checked arc0157_checked .re (by decide +kernel)
#print axioms leaf0155
theorem leaf0156 : LeafStatement moments EX EY hull0 hull1 ⟨(681/1024),(341/512)⟩ ⟨(41/128),(329/1024)⟩ := by
  exact moment_leaf arc0291 arc0153 arc0291_checked arc0153_checked .im (by decide +kernel)
#print axioms leaf0156
theorem leaf0157 : LeafStatement moments EX EY hull0 hull1 ⟨(85/128),(681/1024)⟩ ⟨(41/128),(165/512)⟩ := by
  exact moment_leaf arc0286 arc0154 arc0286_checked arc0154_checked .re (by decide +kernel)
#print axioms leaf0157
theorem leaf0158 : LeafStatement moments EX EY hull0 hull1 ⟨(171/256),(43/64)⟩ ⟨(5/16),(41/128)⟩ := by
  exact moment_leaf arc0301 arc0147 arc0301_checked arc0147_checked .re (by decide +kernel)
#print axioms leaf0158
theorem leaf0159 : LeafStatement moments EX EY hull0 hull1 ⟨(341/512),(171/256)⟩ ⟨(163/512),(41/128)⟩ := by
  exact moment_leaf arc0295 arc0152 arc0295_checked arc0152_checked .im (by decide +kernel)
#print axioms leaf0159
theorem leaf0160 : LeafStatement moments EX EY hull0 hull1 ⟨(341/512),(171/256)⟩ ⟨(81/256),(163/512)⟩ := by
  exact moment_leaf arc0295 arc0151 arc0295_checked arc0151_checked .im (by decide +kernel)
#print axioms leaf0160
theorem leaf0161 : LeafStatement moments EX EY hull0 hull1 ⟨(681/1024),(341/512)⟩ ⟨(163/512),(41/128)⟩ := by
  exact moment_leaf arc0291 arc0152 arc0291_checked arc0152_checked .im (by decide +kernel)
#print axioms leaf0161
theorem leaf0162 : LeafStatement moments EX EY hull0 hull1 ⟨(85/128),(681/1024)⟩ ⟨(163/512),(41/128)⟩ := by
  exact moment_leaf arc0286 arc0152 arc0286_checked arc0152_checked .re (by decide +kernel)
#print axioms leaf0162
theorem leaf0163 : LeafStatement moments EX EY hull0 hull1 ⟨(85/128),(341/512)⟩ ⟨(81/256),(163/512)⟩ := by
  exact moment_leaf arc0287 arc0151 arc0287_checked arc0151_checked .im (by decide +kernel)
#print axioms leaf0163
theorem leaf0164 : LeafStatement moments EX EY hull0 hull1 ⟨(85/128),(171/256)⟩ ⟨(5/16),(81/256)⟩ := by
  exact moment_leaf arc0288 arc0146 arc0288_checked arc0146_checked .im (by decide +kernel)
#print axioms leaf0164
theorem leaf0165 : LeafStatement moments EX EY hull0 hull1 ⟨(21/32),(85/128)⟩ ⟨(41/128),(21/64)⟩ := by
  exact moment_leaf arc0266 arc0156 arc0266_checked arc0156_checked .re (by decide +kernel)
#print axioms leaf0165
theorem leaf0166 : LeafStatement moments EX EY hull0 hull1 ⟨(21/32),(85/128)⟩ ⟨(5/16),(41/128)⟩ := by
  exact moment_leaf arc0266 arc0147 arc0266_checked arc0147_checked .re (by decide +kernel)
#print axioms leaf0166
theorem leaf0167 : LeafStatement moments EX EY hull0 hull1 ⟨(41/64),(21/32)⟩ ⟨(23/64),(3/8)⟩ := by
  exact moment_leaf arc0256 arc0218 arc0256_checked arc0218_checked .im (by decide +kernel)
#print axioms leaf0167
end Root0Angular20261003
