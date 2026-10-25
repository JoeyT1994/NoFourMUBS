import KernelAtlas.X.SC.Rows2

/-! return X (F6, rho = 150001/1000000): clique decisions 30–37 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_30 : allNat 666 (fun k => pairOK rowT2 labs2.length (16431 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_31 : allNat 676 (fun k => pairOK rowT2 labs2.length (17097 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_32 : allNat 675 (fun k => pairOK rowT2 labs2.length (17773 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_33 : allNat 693 (fun k => pairOK rowT2 labs2.length (18448 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_34 : allNat 5822 (fun k => pairOK rowT2 labs2.length (19141 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_35 : allNat 5464 (fun k => pairOK rowT2 labs2.length (24963 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_36 : allNat 7126 (fun k => pairOK rowT2 labs2.length (30427 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_37 : allNat 78047 (fun k => pairOK rowT2 labs2.length (37553 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC
