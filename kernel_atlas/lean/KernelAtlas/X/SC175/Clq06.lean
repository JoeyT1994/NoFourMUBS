import KernelAtlas.X.SC175.Rows2

/-! return X (F6, rho = 175001/1000000): clique decisions 60–69 of the bitset search (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC175

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.KernelAtlas

set_option maxRecDepth 100000

set_option maxHeartbeats 0 in
theorem cq_60 : allNat 322 (fun k => pairOK rowT2 labs2.length (19761 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_61 : allNat 779 (fun k => pairOK rowT2 labs2.length (20083 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_62 : allNat 113 (fun k => pairOK rowT2 labs2.length (20862 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_63 : allNat 714 (fun k => pairOK rowT2 labs2.length (20975 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_64 : allNat 137 (fun k => pairOK rowT2 labs2.length (21689 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_65 : allNat 325 (fun k => pairOK rowT2 labs2.length (21826 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_66 : allNat 377 (fun k => pairOK rowT2 labs2.length (22151 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_67 : allNat 427 (fun k => pairOK rowT2 labs2.length (22528 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_68 : allNat 510 (fun k => pairOK rowT2 labs2.length (22955 + k)) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem cq_69 : allNat 763 (fun k => pairOK rowT2 labs2.length (23465 + k)) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.X.SC175
