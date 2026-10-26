import KernelAtlas.X.SC.Rows2

/-! return X (F6, rho = 150001/1000000): clique decisions 10–19 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_10 : allNat 674 (fun k => pairOK rowT2 labs2.length (3804 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_11 : allNat 705 (fun k => pairOK rowT2 labs2.length (4478 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_12 : allNat 664 (fun k => pairOK rowT2 labs2.length (5183 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_13 : allNat 704 (fun k => pairOK rowT2 labs2.length (5847 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_14 : allNat 749 (fun k => pairOK rowT2 labs2.length (6551 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_15 : allNat 950 (fun k => pairOK rowT2 labs2.length (7300 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_16 : allNat 648 (fun k => pairOK rowT2 labs2.length (8250 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_17 : allNat 682 (fun k => pairOK rowT2 labs2.length (8898 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_18 : allNat 686 (fun k => pairOK rowT2 labs2.length (9580 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_19 : allNat 720 (fun k => pairOK rowT2 labs2.length (10266 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC
