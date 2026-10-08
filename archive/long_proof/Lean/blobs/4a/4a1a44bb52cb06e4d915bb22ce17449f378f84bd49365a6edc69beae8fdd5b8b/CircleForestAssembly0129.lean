import CircleFullInterface
import CircleForestAssembly0124
import CircleForestAssembly0128
import CircleForestChunk0481
import CircleForestChunk0501
import CircleForestChunk0502
import CircleForestChunk0503
import CircleForestChunk0504
import CircleForestChunk0505
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1309080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 11)))
theorem cover_1309080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309080 := by
  apply coveredState_split_literal (state := state_1309080) 0
    state_1309081 state_1309100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309081
  · exact cover_1309100
#print axioms cover_1309080

def state_1309076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
theorem cover_1309076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309076 := by
  apply coveredState_split_literal (state := state_1309076) 4
    state_1309077 state_1309080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309077
  · exact cover_1309080
#print axioms cover_1309076

def state_1305234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1305234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305234 := by
  apply coveredState_split_literal (state := state_1305234) 2
    state_1305235 state_1309076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305235
  · exact cover_1309076
#print axioms cover_1305234

def state_1304268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1304268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304268 := by
  apply coveredState_split_literal (state := state_1304268) 1
    state_1304269 state_1305234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304269
  · exact cover_1305234
#print axioms cover_1304268

def state_1304260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_1304260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304260 := by
  apply coveredState_split_literal (state := state_1304260) 4
    state_1304261 state_1304268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304261
  · exact cover_1304268
#print axioms cover_1304260

def state_1304200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1304200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304200 := by
  apply coveredState_split_literal (state := state_1304200) 3
    state_1304201 state_1304260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304201
  · exact cover_1304260
#print axioms cover_1304200

def state_1304199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1304199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304199 := by
  apply coveredState_split_literal (state := state_1304199) 2
    state_1304200 state_1309151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304200
  · exact cover_1309151
#print axioms cover_1304199

def state_1304155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1304155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304155 := by
  apply coveredState_split_literal (state := state_1304155) 1
    state_1304156 state_1304199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304156
  · exact cover_1304199
#print axioms cover_1304155

def state_1309221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1309221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309221 := by
  apply coveredState_split_literal (state := state_1309221) 2
    state_1309222 state_1309265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309222
  · exact cover_1309265
#print axioms cover_1309221

def state_1309397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 23)))
theorem cover_1309397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309397 := by
  apply coveredState_split_literal (state := state_1309397) 0
    state_1309398 state_1309443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309398
  · exact cover_1309443
#print axioms cover_1309397

def state_1309385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 11)))
theorem cover_1309385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309385 := by
  apply coveredState_split_literal (state := state_1309385) 4
    state_1309386 state_1309397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309386
  · exact cover_1309397
#print axioms cover_1309385

def state_1309384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 11)))
theorem cover_1309384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309384 := by
  apply coveredState_split_literal (state := state_1309384) 1
    state_1309385 state_1309468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309385
  · exact cover_1309468
#print axioms cover_1309384

def state_1309372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 11)))
theorem cover_1309372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309372 := by
  apply coveredState_split_literal (state := state_1309372) 3
    state_1309373 state_1309384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309373
  · exact cover_1309384
#print axioms cover_1309372

def state_1309364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
theorem cover_1309364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309364 := by
  apply coveredState_split_literal (state := state_1309364) 4
    state_1309365 state_1309372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309365
  · exact cover_1309372
#print axioms cover_1309364

def state_1309322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1309322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309322 := by
  apply coveredState_split_literal (state := state_1309322) 2
    state_1309323 state_1309364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309323
  · exact cover_1309364
#print axioms cover_1309322

def state_1309220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1309220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309220 := by
  apply coveredState_split_literal (state := state_1309220) 1
    state_1309221 state_1309322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309221
  · exact cover_1309322
#print axioms cover_1309220

def state_1309219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1309219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309219 := by
  apply coveredState_split_literal (state := state_1309219) 0
    state_1309220 state_1309487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309220
  · exact cover_1309487
#print axioms cover_1309219

def state_1309211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_1309211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309211 := by
  apply coveredState_split_literal (state := state_1309211) 4
    state_1309212 state_1309219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309212
  · exact cover_1309219
#print axioms cover_1309211

def state_1309197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1309197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309197 := by
  apply coveredState_split_literal (state := state_1309197) 3
    state_1309198 state_1309211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309198
  · exact cover_1309211
#print axioms cover_1309197

def state_1309526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_1309526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309526 := by
  apply coveredState_split_literal (state := state_1309526) 3
    state_1309527 state_1309538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309527
  · exact cover_1309538
#print axioms cover_1309526

def state_1309196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1309196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309196 := by
  apply coveredState_split_literal (state := state_1309196) 2
    state_1309197 state_1309526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309197
  · exact cover_1309526
#print axioms cover_1309196

def state_1309166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1309166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309166 := by
  apply coveredState_split_literal (state := state_1309166) 1
    state_1309167 state_1309196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309167
  · exact cover_1309196
#print axioms cover_1309166

def state_1304154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1304154 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304154 := by
  apply coveredState_split_literal (state := state_1304154) 0
    state_1304155 state_1309166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304155
  · exact cover_1309166
#print axioms cover_1304154

def state_1309663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1309663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309663 := by
  apply coveredState_split_literal (state := state_1309663) 2
    state_1309664 state_1309695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309664
  · exact cover_1309695
#print axioms cover_1309663

def state_1309637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1309637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309637 := by
  apply coveredState_split_literal (state := state_1309637) 3
    state_1309638 state_1309663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309638
  · exact cover_1309663
#print axioms cover_1309637

def state_1309625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1309625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309625 := by
  apply coveredState_split_literal (state := state_1309625) 0
    state_1309626 state_1309637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309626
  · exact cover_1309637
#print axioms cover_1309625

def state_1309624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_1309624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309624 := by
  apply coveredState_split_literal (state := state_1309624) 4
    state_1309625 state_1309748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309625
  · exact cover_1309748
#print axioms cover_1309624

def state_1309623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1309623 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309623 := by
  apply coveredState_split_literal (state := state_1309623) 2
    state_1309624 state_1309751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309624
  · exact cover_1309751
#print axioms cover_1309623

def state_1309759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1309759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309759 := by
  apply coveredState_split_literal (state := state_1309759) 3
    state_1309760 state_1309779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309760
  · exact cover_1309779
#print axioms cover_1309759

def state_1309873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 24)))
theorem cover_1309873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309873 := by
  apply coveredState_split_literal (state := state_1309873) 0
    state_1309874 state_1309931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309874
  · exact cover_1309931
#print axioms cover_1309873

def state_1309872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 12)))
theorem cover_1309872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309872 := by
  apply coveredState_split_literal (state := state_1309872) 4
    state_1309873 state_1309956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309873
  · exact cover_1309956
#print axioms cover_1309872

def state_1310029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 24)))
theorem cover_1310029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310029 := by
  apply coveredState_split_literal (state := state_1310029) 4
    state_1310030 state_1310079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310030
  · exact cover_1310079
#print axioms cover_1310029
end Mub6.Numerical.CircleFullD0.Forest
