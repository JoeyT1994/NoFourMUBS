import KernelAtlas.X.SC175.Rows2

/-! return X (F6, rho = 175001/1000000): clique decisions 70–79 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_70 : allNat 1162 (fun k => pairOK rowT2 labs2.length (24228 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_71 : allNat 405 (fun k => pairOK rowT2 labs2.length (25390 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_72 : allNat 399 (fun k => pairOK rowT2 labs2.length (25795 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_73 : allNat 408 (fun k => pairOK rowT2 labs2.length (26194 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_74 : allNat 152 (fun k => pairOK rowT2 labs2.length (26602 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_75 : allNat 316 (fun k => pairOK rowT2 labs2.length (26754 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_76 : allNat 764 (fun k => pairOK rowT2 labs2.length (27070 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_77 : allNat 400 (fun k => pairOK rowT2 labs2.length (27834 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_78 : allNat 814 (fun k => pairOK rowT2 labs2.length (28234 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_79 : allNat 1231 (fun k => pairOK rowT2 labs2.length (29048 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
