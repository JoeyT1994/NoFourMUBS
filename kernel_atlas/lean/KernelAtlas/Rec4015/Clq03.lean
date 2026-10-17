import KernelAtlas.Rec4015.Rows2

/-! Record 4015: clique decisions 30–39 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.Rec4015

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_30 : allNat 12 (fun k => pairOK rowT2 labs2.length (1512 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_31 : allNat 143 (fun k => pairOK rowT2 labs2.length (1524 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_32 : allNat 8 (fun k => pairOK rowT2 labs2.length (1667 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_33 : allNat 4 (fun k => pairOK rowT2 labs2.length (1675 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_34 : allNat 11 (fun k => pairOK rowT2 labs2.length (1679 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_35 : allNat 143 (fun k => pairOK rowT2 labs2.length (1690 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_36 : allNat 8 (fun k => pairOK rowT2 labs2.length (1833 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_37 : allNat 15 (fun k => pairOK rowT2 labs2.length (1841 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_38 : allNat 148 (fun k => pairOK rowT2 labs2.length (1856 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_39 : allNat 178 (fun k => pairOK rowT2 labs2.length (2004 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.Rec4015
