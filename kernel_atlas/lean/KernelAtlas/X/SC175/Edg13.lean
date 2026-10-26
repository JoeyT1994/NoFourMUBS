import KernelAtlas.X.SC175.Hints2

/-! return X (F6, rho = 175001/1000000): edge decisions 39–40 (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem ck_39 : allNat 10 (fun k => erow (390 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_40 : allNat 8 (fun k => erow (400 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
