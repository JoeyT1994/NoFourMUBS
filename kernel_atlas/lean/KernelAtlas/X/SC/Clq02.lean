import KernelAtlas.X.SC.Rows2

/-! return X (F6, rho = 150001/1000000): clique decisions 20–29 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_20 : allNat 983 (fun k => pairOK rowT2 labs2.length (10986 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_21 : allNat 684 (fun k => pairOK rowT2 labs2.length (11969 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_22 : allNat 343 (fun k => pairOK rowT2 labs2.length (12653 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_23 : allNat 343 (fun k => pairOK rowT2 labs2.length (12996 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_24 : allNat 342 (fun k => pairOK rowT2 labs2.length (13339 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_25 : allNat 361 (fun k => pairOK rowT2 labs2.length (13681 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_26 : allNat 664 (fun k => pairOK rowT2 labs2.length (14042 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_27 : allNat 661 (fun k => pairOK rowT2 labs2.length (14706 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_28 : allNat 676 (fun k => pairOK rowT2 labs2.length (15367 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_29 : allNat 388 (fun k => pairOK rowT2 labs2.length (16043 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC
