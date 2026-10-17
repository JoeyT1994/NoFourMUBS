import KernelAtlas.Rec4015.Hints2

/-! Record 4015: edge decisions 3–5 (generated). -/

namespace NoFourMUBs.KernelAtlas.Rec4015

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem ck_3 : allNat 10 (fun k => erow (30 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_4 : allNat 10 (fun k => erow (40 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_5 : allNat 10 (fun k => erow (50 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.Rec4015
