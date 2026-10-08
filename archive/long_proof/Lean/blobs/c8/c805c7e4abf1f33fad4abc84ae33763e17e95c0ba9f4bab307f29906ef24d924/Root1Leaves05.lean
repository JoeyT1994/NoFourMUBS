import ParametricAngularLeaf
import Root0Arcs09
import Root0Arcs10
import Root0Arcs11
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
theorem leaf0120 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(671/2048),(21/64)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0292 Root0Angular20261003.arc0179 Root0Angular20261003.arc0292_checked Root0Angular20261003.arc0179_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0120
theorem leaf0121 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(335/1024),(671/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0292 Root0Angular20261003.arc0177 Root0Angular20261003.arc0292_checked Root0Angular20261003.arc0177_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0121
theorem leaf0122 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/1024),(1363/2048)⟩ ⟨(335/1024),(21/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0290 Root0Angular20261003.arc0178 Root0Angular20261003.arc0290_checked Root0Angular20261003.arc0178_checked .re (by decide +kernel)
#print axioms leaf0122
theorem leaf0123 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(669/2048),(335/1024)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0292 Root0Angular20261003.arc0176 Root0Angular20261003.arc0292_checked Root0Angular20261003.arc0176_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0123
theorem leaf0124 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(167/512),(669/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0292 Root0Angular20261003.arc0173 Root0Angular20261003.arc0292_checked Root0Angular20261003.arc0173_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0124
theorem leaf0125 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/1024),(1363/2048)⟩ ⟨(167/512),(335/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0290 Root0Angular20261003.arc0174 Root0Angular20261003.arc0290_checked Root0Angular20261003.arc0174_checked .re (by decide +kernel)
#print axioms leaf0125
theorem leaf0126 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(681/1024)⟩ ⟨(167/512),(21/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0286 Root0Angular20261003.arc0175 Root0Angular20261003.arc0286_checked Root0Angular20261003.arc0175_checked .re (by decide +kernel)
#print axioms leaf0126
theorem leaf0127 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(667/2048),(167/512)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0292 Root0Angular20261003.arc0172 Root0Angular20261003.arc0292_checked Root0Angular20261003.arc0172_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0127
theorem leaf0128 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(333/1024),(667/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0292 Root0Angular20261003.arc0170 Root0Angular20261003.arc0292_checked Root0Angular20261003.arc0170_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0128
theorem leaf0129 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/1024),(1363/2048)⟩ ⟨(333/1024),(167/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0290 Root0Angular20261003.arc0171 Root0Angular20261003.arc0290_checked Root0Angular20261003.arc0171_checked .re (by decide +kernel)
#print axioms leaf0129
theorem leaf0130 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(665/2048),(333/1024)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0292 Root0Angular20261003.arc0169 Root0Angular20261003.arc0292_checked Root0Angular20261003.arc0169_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0130
theorem leaf0131 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(83/256),(665/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0292 Root0Angular20261003.arc0165 Root0Angular20261003.arc0292_checked Root0Angular20261003.arc0165_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0131
theorem leaf0132 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/1024),(1363/2048)⟩ ⟨(83/256),(333/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0290 Root0Angular20261003.arc0166 Root0Angular20261003.arc0290_checked Root0Angular20261003.arc0166_checked .re (by decide +kernel)
#print axioms leaf0132
theorem leaf0133 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(681/1024)⟩ ⟨(83/256),(167/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0286 Root0Angular20261003.arc0167 Root0Angular20261003.arc0286_checked Root0Angular20261003.arc0167_checked .re (by decide +kernel)
#print axioms leaf0133
theorem leaf0134 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1367/2048),(171/256)⟩ ⟨(331/1024),(83/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0299 Root0Angular20261003.arc0163 Root0Angular20261003.arc0299_checked Root0Angular20261003.arc0163_checked .re (by decide +kernel)
#print axioms leaf0134
theorem leaf0135 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(663/2048),(83/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0297 Root0Angular20261003.arc0164 Root0Angular20261003.arc0297_checked Root0Angular20261003.arc0164_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0135
theorem leaf0136 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(331/1024),(663/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0297 Root0Angular20261003.arc0162 Root0Angular20261003.arc0297_checked Root0Angular20261003.arc0162_checked .im (by decide +kernel)
#print axioms leaf0136
theorem leaf0137 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1367/2048),(171/256)⟩ ⟨(165/512),(331/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0299 Root0Angular20261003.arc0159 Root0Angular20261003.arc0299_checked Root0Angular20261003.arc0159_checked .re (by decide +kernel)
#print axioms leaf0137
theorem leaf0138 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(165/512),(331/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0297 Root0Angular20261003.arc0159 Root0Angular20261003.arc0297_checked Root0Angular20261003.arc0159_checked .im (by decide +kernel)
#print axioms leaf0138
theorem leaf0139 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(663/2048),(83/256)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0296 Root0Angular20261003.arc0164 Root0Angular20261003.arc0296_checked Root0Angular20261003.arc0164_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0139
theorem leaf0140 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(331/1024),(663/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0296 Root0Angular20261003.arc0162 Root0Angular20261003.arc0296_checked Root0Angular20261003.arc0162_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0140
theorem leaf0141 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(663/2048),(83/256)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0293 Root0Angular20261003.arc0164 Root0Angular20261003.arc0293_checked Root0Angular20261003.arc0164_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0141
theorem leaf0142 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(331/1024),(663/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0293 Root0Angular20261003.arc0162 Root0Angular20261003.arc0293_checked Root0Angular20261003.arc0162_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0142
theorem leaf0143 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(661/2048),(331/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0296 Root0Angular20261003.arc0161 Root0Angular20261003.arc0296_checked Root0Angular20261003.arc0161_checked .im (by decide +kernel)
#print axioms leaf0143
end ShoulderRoot1Angular20261003
