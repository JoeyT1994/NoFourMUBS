import KernelAtlas.Rec100.LabelData

/-! Record 100: selected sub-slabs with the direct test, the tangent test and the children (generated).
-/

namespace NoFourMUBs.KernelAtlas.Rec100

open NoFourMUBs.KernelAtlas

theorem tsub_0_8 : slabT cfg tcfg true true (leafL labs) T1_0 [T2_8] L3 L4 L5 = true := by decide +kernel

theorem tsub_6_2 : slabT cfg tcfg true true (leafL labs) T1_6 [T2_2] L3 L4 L5 = true := by decide +kernel

end NoFourMUBs.KernelAtlas.Rec100
