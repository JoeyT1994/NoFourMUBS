import KernelAtlas.Rec4015.Rows2

/-! Record 4015: clique decisions 50–59 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.Rec4015

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_50 : allNat 9 (fun k => pairOK rowT2 labs2.length (3155 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_51 : allNat 2 (fun k => pairOK rowT2 labs2.length (3164 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_52 : allNat 9 (fun k => pairOK rowT2 labs2.length (3166 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_53 : allNat 134 (fun k => pairOK rowT2 labs2.length (3175 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_54 : allNat 3 (fun k => pairOK rowT2 labs2.length (3309 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_55 : allNat 3 (fun k => pairOK rowT2 labs2.length (3312 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_56 : allNat 2 (fun k => pairOK rowT2 labs2.length (3315 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_57 : allNat 2 (fun k => pairOK rowT2 labs2.length (3317 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_58 : allNat 9 (fun k => pairOK rowT2 labs2.length (3319 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_59 : allNat 3 (fun k => pairOK rowT2 labs2.length (3328 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.Rec4015
