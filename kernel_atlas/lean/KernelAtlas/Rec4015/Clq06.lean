import KernelAtlas.Rec4015.Rows2

/-! Record 4015: clique decisions 60–69 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.Rec4015

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_60 : allNat 142 (fun k => pairOK rowT2 labs2.length (3331 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_61 : allNat 8 (fun k => pairOK rowT2 labs2.length (3473 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_62 : allNat 13 (fun k => pairOK rowT2 labs2.length (3481 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_63 : allNat 150 (fun k => pairOK rowT2 labs2.length (3494 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_64 : allNat 162 (fun k => pairOK rowT2 labs2.length (3644 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_65 : allNat 43 (fun k => pairOK rowT2 labs2.length (3806 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_66 : allNat 976 (fun k => pairOK rowT2 labs2.length (3849 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_67 : allNat 482 (fun k => pairOK rowT2 labs2.length (4825 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_68 : allNat 337 (fun k => pairOK rowT2 labs2.length (5307 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_69 : allNat 337 (fun k => pairOK rowT2 labs2.length (5644 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.Rec4015
