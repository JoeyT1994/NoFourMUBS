import KernelAtlas.X.SC175.Hints2

/-! return X (F6, rho = 175001/1000000): edge decisions 36–38 (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem ck_36 : allNat 10 (fun k => erow (360 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_37 : allNat 10 (fun k => erow (370 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_38 : allNat 10 (fun k => erow (380 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
