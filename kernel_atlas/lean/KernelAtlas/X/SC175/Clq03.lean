import KernelAtlas.X.SC175.Rows2

/-! return X (F6, rho = 175001/1000000): clique decisions 30–39 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_30 : allNat 47 (fun k => pairOK rowT2 labs2.length (8612 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_31 : allNat 362 (fun k => pairOK rowT2 labs2.length (8659 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_32 : allNat 489 (fun k => pairOK rowT2 labs2.length (9021 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_33 : allNat 718 (fun k => pairOK rowT2 labs2.length (9510 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_34 : allNat 416 (fun k => pairOK rowT2 labs2.length (10228 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_35 : allNat 19 (fun k => pairOK rowT2 labs2.length (10644 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_36 : allNat 60 (fun k => pairOK rowT2 labs2.length (10663 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_37 : allNat 334 (fun k => pairOK rowT2 labs2.length (10723 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_38 : allNat 35 (fun k => pairOK rowT2 labs2.length (11057 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_39 : allNat 430 (fun k => pairOK rowT2 labs2.length (11092 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
