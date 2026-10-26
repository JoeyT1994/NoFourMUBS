import KernelAtlas.X.SC175.Rows2

/-! return X (F6, rho = 175001/1000000): clique decisions 100–109 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_100 : allNat 2804 (fun k => pairOK rowT2 labs2.length (56103 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_101 : allNat 4089 (fun k => pairOK rowT2 labs2.length (58907 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_102 : allNat 3290 (fun k => pairOK rowT2 labs2.length (62996 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_103 : allNat 2045 (fun k => pairOK rowT2 labs2.length (66286 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_104 : allNat 3297 (fun k => pairOK rowT2 labs2.length (68331 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_105 : allNat 4038 (fun k => pairOK rowT2 labs2.length (71628 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_106 : allNat 5821 (fun k => pairOK rowT2 labs2.length (75666 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_107 : allNat 10569 (fun k => pairOK rowT2 labs2.length (81487 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_108 : allNat 64804 (fun k => pairOK rowT2 labs2.length (92056 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_109 : allNat 9604 (fun k => pairOK rowT2 labs2.length (156860 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
