import KernelAtlas.Rec4015.Hints2

/-! Record 4015: edge decisions 12–14 (generated). -/

namespace NoFourMUBs.KernelAtlas.Rec4015

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem ck_12 : allNat 10 (fun k => erow (120 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_13 : allNat 10 (fun k => erow (130 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_14 : allNat 10 (fun k => erow (140 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.Rec4015
