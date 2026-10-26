import KernelAtlas.X.SC.Hints2

/-! return X (F6, rho = 150001/1000000): edge decisions 9–11 (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem ck_9 : allNat 10 (fun k => erow (90 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_10 : allNat 10 (fun k => erow (100 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_11 : allNat 10 (fun k => erow (110 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC
