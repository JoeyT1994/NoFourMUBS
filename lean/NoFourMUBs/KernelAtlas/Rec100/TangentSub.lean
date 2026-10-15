import NoFourMUBs.KernelAtlas.Rec100.TangentData

/-! Record 100: selected sub-slabs with the direct test, the tangent test and the children (generated).
Mirror `0_8`: `{"ok": true, "rejected_0": 2115, "rejected_1": 2620, "rejected_2": 2252, "rejected_3": 1621, "seconds": 0.15, "survivor_0": 304, "tangent_0": 3069, "tangent_1": 804, "tangent_2": 244, "tangent_3": 107, "tested_0": 5184, "tested_1": 3424, "tested_2": 2496, "tested_3": 1728, "trej_0": 2765, "trej_1": 642, "trej_2": 137, "trej_3": 29}`.
Mirror `6_2`: `{"ok": true, "rejected_0": 1728, "rejected_1": 2032, "rejected_2": 2850, "rejected_3": 1605, "seconds": 0.14, "survivor_0": 286, "tangent_0": 2784, "tangent_1": 784, "tangent_2": 254, "tangent_3": 123, "tested_0": 4512, "tested_1": 2816, "tested_2": 3104, "tested_3": 1728, "trej_0": 2498, "trej_1": 643, "trej_2": 166, "trej_3": 26}`.
-/

namespace NoFourMUBs.KernelAtlas.Rec100

open NoFourMUBs.KernelAtlas

theorem tsub_0_8 : slabT cfg tcfg true true leafT T1_0 [T2_8] L3 L4 L5 = true := by decide +kernel

theorem tsub_6_2 : slabT cfg tcfg true true leafT T1_6 [T2_2] L3 L4 L5 = true := by decide +kernel

end NoFourMUBs.KernelAtlas.Rec100
