import NoFourMUBs.L1.SideCircuits

/-! Kernel check of the side identities: detId coreI coreII coreIII. Each `valid` is decided by the kernel (`Circ.checkSparse`). -/

namespace NoFourMUBs.L1.SideCircuits

set_option maxRecDepth 1000000

theorem detId_valid : detId.valid 2 = true := by decide +kernel

theorem coreI_valid : coreI.valid 2 = true := by decide +kernel

theorem coreII_valid : coreII.valid 2 = true := by decide +kernel

theorem coreIII_valid : coreIII.valid 2 = true := by decide +kernel

end NoFourMUBs.L1.SideCircuits
