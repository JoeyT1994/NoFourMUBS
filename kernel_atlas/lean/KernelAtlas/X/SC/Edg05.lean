import KernelAtlas.X.SC.Hints2

/-! return X (F6, rho = 150001/1000000): edge decisions 15–17 (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem ck_15 : allNat 10 (fun k => erow (150 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_16 : allNat 10 (fun k => erow (160 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_17 : allNat 10 (fun k => erow (170 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC
