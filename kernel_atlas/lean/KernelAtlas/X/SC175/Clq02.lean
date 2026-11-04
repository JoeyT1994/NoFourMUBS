import KernelAtlas.X.SC175.Rows2

/-! return X (F6, rho = 175001/1000000): clique decisions 20–29 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_20 : allNat 373 (fun k => pairOK rowT2 labs2.length (5423 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_21 : allNat 763 (fun k => pairOK rowT2 labs2.length (5796 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_22 : allNat 415 (fun k => pairOK rowT2 labs2.length (6559 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_23 : allNat 52 (fun k => pairOK rowT2 labs2.length (6974 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_24 : allNat 453 (fun k => pairOK rowT2 labs2.length (7026 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_25 : allNat 313 (fun k => pairOK rowT2 labs2.length (7479 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_26 : allNat 28 (fun k => pairOK rowT2 labs2.length (7792 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_27 : allNat 96 (fun k => pairOK rowT2 labs2.length (7820 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_28 : allNat 679 (fun k => pairOK rowT2 labs2.length (7916 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_29 : allNat 17 (fun k => pairOK rowT2 labs2.length (8595 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
