import NoFourMUBs.L1.SideCircuits

/-! Kernel check of the side identities: Y0. Each `valid` is decided by the kernel (`Circ.checkSparse`). -/

namespace NoFourMUBs.L1.SideCircuits

set_option maxRecDepth 1000000

theorem Y0_valid : Y0.valid 2 = true := by decide +kernel

end NoFourMUBs.L1.SideCircuits
