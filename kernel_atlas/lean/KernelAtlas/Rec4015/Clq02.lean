import KernelAtlas.Rec4015.Rows2

/-! Record 4015: clique decisions 20–29 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.Rec4015

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_20 : allNat 1 (fun k => pairOK rowT2 labs2.length (1021 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_21 : allNat 1 (fun k => pairOK rowT2 labs2.length (1022 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_22 : allNat 1 (fun k => pairOK rowT2 labs2.length (1023 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_23 : allNat 9 (fun k => pairOK rowT2 labs2.length (1024 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_24 : allNat 2 (fun k => pairOK rowT2 labs2.length (1033 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_25 : allNat 19 (fun k => pairOK rowT2 labs2.length (1035 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_26 : allNat 294 (fun k => pairOK rowT2 labs2.length (1054 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_27 : allNat 14 (fun k => pairOK rowT2 labs2.length (1348 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_28 : allNat 144 (fun k => pairOK rowT2 labs2.length (1362 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_29 : allNat 6 (fun k => pairOK rowT2 labs2.length (1506 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.Rec4015
