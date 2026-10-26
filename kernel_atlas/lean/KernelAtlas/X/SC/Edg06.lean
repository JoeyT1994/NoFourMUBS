import KernelAtlas.X.SC.Hints2

/-! return X (F6, rho = 150001/1000000): edge decisions 18–20 (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem ck_18 : allNat 10 (fun k => erow (180 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_19 : allNat 10 (fun k => erow (190 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_20 : allNat 10 (fun k => erow (200 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC
