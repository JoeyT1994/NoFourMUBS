import KernelAtlas.X.SC.Hints2

/-! return X (F6, rho = 150001/1000000): edge decisions 33–33 (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem ck_33 : allNat 10 (fun k => erow (330 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC
