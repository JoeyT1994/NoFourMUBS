import KernelAtlas.X.SC175.Rows2

/-! return X (F6, rho = 175001/1000000): clique decisions 80–89 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_80 : allNat 822 (fun k => pairOK rowT2 labs2.length (30279 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_81 : allNat 436 (fun k => pairOK rowT2 labs2.length (31101 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_82 : allNat 856 (fun k => pairOK rowT2 labs2.length (31537 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_83 : allNat 1186 (fun k => pairOK rowT2 labs2.length (32393 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_84 : allNat 810 (fun k => pairOK rowT2 labs2.length (33579 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_85 : allNat 1208 (fun k => pairOK rowT2 labs2.length (34389 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_86 : allNat 862 (fun k => pairOK rowT2 labs2.length (35597 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_87 : allNat 1170 (fun k => pairOK rowT2 labs2.length (36459 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_88 : allNat 548 (fun k => pairOK rowT2 labs2.length (37629 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_89 : allNat 1138 (fun k => pairOK rowT2 labs2.length (38177 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
