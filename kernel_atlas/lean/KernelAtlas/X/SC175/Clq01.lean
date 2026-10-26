import KernelAtlas.X.SC175.Rows2

/-! return X (F6, rho = 175001/1000000): clique decisions 10–19 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_10 : allNat 452 (fun k => pairOK rowT2 labs2.length (2549 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_11 : allNat 697 (fun k => pairOK rowT2 labs2.length (3001 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_12 : allNat 21 (fun k => pairOK rowT2 labs2.length (3698 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_13 : allNat 43 (fun k => pairOK rowT2 labs2.length (3719 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_14 : allNat 363 (fun k => pairOK rowT2 labs2.length (3762 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_15 : allNat 398 (fun k => pairOK rowT2 labs2.length (4125 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_16 : allNat 445 (fun k => pairOK rowT2 labs2.length (4523 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_17 : allNat 372 (fun k => pairOK rowT2 labs2.length (4968 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_18 : allNat 19 (fun k => pairOK rowT2 labs2.length (5340 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_19 : allNat 64 (fun k => pairOK rowT2 labs2.length (5359 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
