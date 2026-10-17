import KernelAtlas.Rec4015.Hints2

/-! Record 4015: edge decisions 15–16 (generated). -/

namespace NoFourMUBs.KernelAtlas.Rec4015

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem ck_15 : allNat 10 (fun k => erow (150 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_16 : allNat 4 (fun k => erow (160 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.Rec4015
