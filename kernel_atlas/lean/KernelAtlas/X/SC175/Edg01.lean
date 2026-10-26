import KernelAtlas.X.SC175.Hints2

/-! return X (F6, rho = 175001/1000000): edge decisions 3–5 (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem ck_3 : allNat 10 (fun k => erow (30 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_4 : allNat 10 (fun k => erow (40 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_5 : allNat 10 (fun k => erow (50 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
