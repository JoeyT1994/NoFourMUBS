import KernelAtlas.X.SC175.Rows2

/-! return X (F6, rho = 175001/1000000): clique decisions 50–59 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_50 : allNat 753 (fun k => pairOK rowT2 labs2.length (15611 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_51 : allNat 32 (fun k => pairOK rowT2 labs2.length (16364 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_52 : allNat 376 (fun k => pairOK rowT2 labs2.length (16396 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_53 : allNat 32 (fun k => pairOK rowT2 labs2.length (16772 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_54 : allNat 399 (fun k => pairOK rowT2 labs2.length (16804 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_55 : allNat 804 (fun k => pairOK rowT2 labs2.length (17203 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_56 : allNat 40 (fun k => pairOK rowT2 labs2.length (18007 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_57 : allNat 723 (fun k => pairOK rowT2 labs2.length (18047 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_58 : allNat 497 (fun k => pairOK rowT2 labs2.length (18770 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_59 : allNat 494 (fun k => pairOK rowT2 labs2.length (19267 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
