import KernelAtlas.X.SC175.Rows2

/-! return X (F6, rho = 175001/1000000): clique decisions 0–9 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_0 : allNat 421 (fun k => pairOK rowT2 labs2.length (0 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_1 : allNat 23 (fun k => pairOK rowT2 labs2.length (421 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_2 : allNat 30 (fun k => pairOK rowT2 labs2.length (444 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_3 : allNat 360 (fun k => pairOK rowT2 labs2.length (474 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_4 : allNat 473 (fun k => pairOK rowT2 labs2.length (834 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_5 : allNat 742 (fun k => pairOK rowT2 labs2.length (1307 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_6 : allNat 29 (fun k => pairOK rowT2 labs2.length (2049 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_7 : allNat 18 (fun k => pairOK rowT2 labs2.length (2078 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_8 : allNat 58 (fun k => pairOK rowT2 labs2.length (2096 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_9 : allNat 395 (fun k => pairOK rowT2 labs2.length (2154 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
