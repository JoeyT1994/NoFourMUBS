import KernelAtlas.X.SC175.Hints2

/-! return X (F6, rho = 175001/1000000): edge decisions 33–35 (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem ck_33 : allNat 10 (fun k => erow (330 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_34 : allNat 10 (fun k => erow (340 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_35 : allNat 10 (fun k => erow (350 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
