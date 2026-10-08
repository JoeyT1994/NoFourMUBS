import ParametricAngularLeaf
import Root0Arcs10
import Root0Arcs11
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
theorem leaf0096 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(669/2048),(335/1024)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0297 Root0Angular20261003.arc0176 Root0Angular20261003.arc0297_checked Root0Angular20261003.arc0176_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0096
theorem leaf0097 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(167/512),(669/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0297 Root0Angular20261003.arc0173 Root0Angular20261003.arc0297_checked Root0Angular20261003.arc0173_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0097
theorem leaf0098 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(671/2048),(21/64)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0296 Root0Angular20261003.arc0179 Root0Angular20261003.arc0296_checked Root0Angular20261003.arc0179_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0098
theorem leaf0099 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(335/1024),(671/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0296 Root0Angular20261003.arc0177 Root0Angular20261003.arc0296_checked Root0Angular20261003.arc0177_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0099
theorem leaf0100 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(671/2048),(21/64)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0293 Root0Angular20261003.arc0179 Root0Angular20261003.arc0293_checked Root0Angular20261003.arc0179_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0100
theorem leaf0101 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(335/1024),(671/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0293 Root0Angular20261003.arc0177 Root0Angular20261003.arc0293_checked Root0Angular20261003.arc0177_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0101
theorem leaf0102 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(669/2048),(335/1024)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0296 Root0Angular20261003.arc0176 Root0Angular20261003.arc0296_checked Root0Angular20261003.arc0176_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0102
theorem leaf0103 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(167/512),(669/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0296 Root0Angular20261003.arc0173 Root0Angular20261003.arc0296_checked Root0Angular20261003.arc0173_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0103
theorem leaf0104 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(669/2048),(335/1024)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0293 Root0Angular20261003.arc0176 Root0Angular20261003.arc0293_checked Root0Angular20261003.arc0176_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0104
theorem leaf0105 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(167/512),(669/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0293 Root0Angular20261003.arc0173 Root0Angular20261003.arc0293_checked Root0Angular20261003.arc0173_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0105
theorem leaf0106 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1367/2048),(171/256)⟩ ⟨(333/1024),(167/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0299 Root0Angular20261003.arc0171 Root0Angular20261003.arc0299_checked Root0Angular20261003.arc0171_checked .re (by decide +kernel)
#print axioms leaf0106
theorem leaf0107 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(667/2048),(167/512)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0297 Root0Angular20261003.arc0172 Root0Angular20261003.arc0297_checked Root0Angular20261003.arc0172_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0107
theorem leaf0108 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(333/1024),(667/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0297 Root0Angular20261003.arc0170 Root0Angular20261003.arc0297_checked Root0Angular20261003.arc0170_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0108
theorem leaf0109 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1367/2048),(171/256)⟩ ⟨(83/256),(333/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0299 Root0Angular20261003.arc0166 Root0Angular20261003.arc0299_checked Root0Angular20261003.arc0166_checked .re (by decide +kernel)
#print axioms leaf0109
theorem leaf0110 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(665/2048),(333/1024)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0297 Root0Angular20261003.arc0169 Root0Angular20261003.arc0297_checked Root0Angular20261003.arc0169_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0110
theorem leaf0111 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(83/256),(665/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0297 Root0Angular20261003.arc0165 Root0Angular20261003.arc0297_checked Root0Angular20261003.arc0165_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0111
theorem leaf0112 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(667/2048),(167/512)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0296 Root0Angular20261003.arc0172 Root0Angular20261003.arc0296_checked Root0Angular20261003.arc0172_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0112
theorem leaf0113 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(333/1024),(667/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0296 Root0Angular20261003.arc0170 Root0Angular20261003.arc0296_checked Root0Angular20261003.arc0170_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0113
theorem leaf0114 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(667/2048),(167/512)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0293 Root0Angular20261003.arc0172 Root0Angular20261003.arc0293_checked Root0Angular20261003.arc0172_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0114
theorem leaf0115 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(333/1024),(667/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0293 Root0Angular20261003.arc0170 Root0Angular20261003.arc0293_checked Root0Angular20261003.arc0170_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0115
theorem leaf0116 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(665/2048),(333/1024)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0296 Root0Angular20261003.arc0169 Root0Angular20261003.arc0296_checked Root0Angular20261003.arc0169_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0116
theorem leaf0117 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(83/256),(665/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0296 Root0Angular20261003.arc0165 Root0Angular20261003.arc0296_checked Root0Angular20261003.arc0165_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0117
theorem leaf0118 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(665/2048),(333/1024)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0293 Root0Angular20261003.arc0169 Root0Angular20261003.arc0293_checked Root0Angular20261003.arc0169_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0118
theorem leaf0119 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(83/256),(665/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0293 Root0Angular20261003.arc0165 Root0Angular20261003.arc0293_checked Root0Angular20261003.arc0165_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0119
end ShoulderRoot1Angular20261003
