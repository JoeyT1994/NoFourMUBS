import KernelAtlas.Rec4015.Hints2

/-! Record 4015: edge decisions 9–11 (generated). -/

namespace NoFourMUBs.KernelAtlas.Rec4015

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem ck_9 : allNat 10 (fun k => erow (90 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_10 : allNat 10 (fun k => erow (100 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_11 : allNat 10 (fun k => erow (110 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.Rec4015
