import KernelAtlas.X.SC175.Hints2

/-! return X (F6, rho = 175001/1000000): edge decisions 30–32 (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem ck_30 : allNat 10 (fun k => erow (300 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_31 : allNat 10 (fun k => erow (310 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_32 : allNat 10 (fun k => erow (320 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
