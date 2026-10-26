import KernelAtlas.X.SC175.Hints2

/-! return X (F6, rho = 175001/1000000): edge decisions 0–2 (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem ck_0 : allNat 10 (fun k => erow (0 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_1 : allNat 10 (fun k => erow (10 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_2 : allNat 10 (fun k => erow (20 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
