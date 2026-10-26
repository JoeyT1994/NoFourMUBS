import KernelAtlas.X.SC175.Hints2

/-! return X (F6, rho = 175001/1000000): edge decisions 27–29 (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem ck_27 : allNat 10 (fun k => erow (270 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_28 : allNat 10 (fun k => erow (280 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem ck_29 : allNat 10 (fun k => erow (290 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
