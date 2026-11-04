import KernelAtlas.X.SC175.Hints2

/-! return X (F6, rho = 175001/1000000): edge decisions 24–26 (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem ck_24 : allNat 10 (fun k => erow (240 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_25 : allNat 10 (fun k => erow (250 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_26 : allNat 10 (fun k => erow (260 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
