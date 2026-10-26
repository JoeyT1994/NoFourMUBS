import KernelAtlas.X.SC.Rows2

/-! return X (F6, rho = 150001/1000000): clique decisions 0–9 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_0 : allNat 414 (fun k => pairOK rowT2 labs2.length (0 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_1 : allNat 343 (fun k => pairOK rowT2 labs2.length (414 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_2 : allNat 343 (fun k => pairOK rowT2 labs2.length (757 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_3 : allNat 341 (fun k => pairOK rowT2 labs2.length (1100 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_4 : allNat 361 (fun k => pairOK rowT2 labs2.length (1441 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_5 : allNat 341 (fun k => pairOK rowT2 labs2.length (1802 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_6 : allNat 341 (fun k => pairOK rowT2 labs2.length (2143 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_7 : allNat 350 (fun k => pairOK rowT2 labs2.length (2484 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_8 : allNat 636 (fun k => pairOK rowT2 labs2.length (2834 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_9 : allNat 334 (fun k => pairOK rowT2 labs2.length (3470 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC
