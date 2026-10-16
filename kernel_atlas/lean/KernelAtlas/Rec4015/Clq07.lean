import KernelAtlas.Rec4015.Rows2

/-! Record 4015: clique decisions 70–73 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.Rec4015

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxHeartbeats 0 in
theorem cq_70 : allNat 475 (fun k => pairOK rowT2 labs2.length (5981 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_71 : allNat 1484 (fun k => pairOK rowT2 labs2.length (6456 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_72 : allNat 483 (fun k => pairOK rowT2 labs2.length (7940 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_73 : allNat 18473 (fun k => pairOK rowT2 labs2.length (8423 + k)) = true := by decide +kernel

end NoFourMUBs.KernelAtlas.Rec4015
