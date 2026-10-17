import KernelAtlas.Rec4015.Rows2

/-! Record 4015: clique decisions 40–49 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.Rec4015

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_40 : allNat 640 (fun k => pairOK rowT2 labs2.length (2182 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_41 : allNat 5 (fun k => pairOK rowT2 labs2.length (2822 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_42 : allNat 158 (fun k => pairOK rowT2 labs2.length (2827 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_43 : allNat 36 (fun k => pairOK rowT2 labs2.length (2985 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_44 : allNat 124 (fun k => pairOK rowT2 labs2.length (3021 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_45 : allNat 2 (fun k => pairOK rowT2 labs2.length (3145 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_46 : allNat 2 (fun k => pairOK rowT2 labs2.length (3147 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_47 : allNat 2 (fun k => pairOK rowT2 labs2.length (3149 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_48 : allNat 2 (fun k => pairOK rowT2 labs2.length (3151 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_49 : allNat 2 (fun k => pairOK rowT2 labs2.length (3153 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.Rec4015
