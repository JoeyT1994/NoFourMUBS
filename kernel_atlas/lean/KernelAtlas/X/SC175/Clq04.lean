import KernelAtlas.X.SC175.Rows2

/-! return X (F6, rho = 175001/1000000): clique decisions 40–49 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_40 : allNat 852 (fun k => pairOK rowT2 labs2.length (11522 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_41 : allNat 718 (fun k => pairOK rowT2 labs2.length (12374 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_42 : allNat 30 (fun k => pairOK rowT2 labs2.length (13092 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_43 : allNat 427 (fun k => pairOK rowT2 labs2.length (13122 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_44 : allNat 427 (fun k => pairOK rowT2 labs2.length (13549 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_45 : allNat 763 (fun k => pairOK rowT2 labs2.length (13976 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_46 : allNat 51 (fun k => pairOK rowT2 labs2.length (14739 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_47 : allNat 364 (fun k => pairOK rowT2 labs2.length (14790 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_48 : allNat 399 (fun k => pairOK rowT2 labs2.length (15154 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_49 : allNat 58 (fun k => pairOK rowT2 labs2.length (15553 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
