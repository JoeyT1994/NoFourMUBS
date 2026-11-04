import KernelAtlas.X.SC175.Rows2

/-! return X (F6, rho = 175001/1000000): clique decisions 90–99 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_90 : allNat 1232 (fun k => pairOK rowT2 labs2.length (39315 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_91 : allNat 1595 (fun k => pairOK rowT2 labs2.length (40547 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_92 : allNat 1679 (fun k => pairOK rowT2 labs2.length (42142 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_93 : allNat 1601 (fun k => pairOK rowT2 labs2.length (43821 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_94 : allNat 1296 (fun k => pairOK rowT2 labs2.length (45422 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_95 : allNat 1181 (fun k => pairOK rowT2 labs2.length (46718 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_96 : allNat 1613 (fun k => pairOK rowT2 labs2.length (47899 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_97 : allNat 2037 (fun k => pairOK rowT2 labs2.length (49512 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_98 : allNat 2050 (fun k => pairOK rowT2 labs2.length (51549 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_99 : allNat 2504 (fun k => pairOK rowT2 labs2.length (53599 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
