import D0FullInterface
import D0ForestAssembly0167
import D0ForestAssembly0169
import D0ForestChunk0639
import D0ForestChunk0646
import D0ForestChunk0648
import D0ForestChunk0649
import D0ForestChunk0650
import D0ForestChunk0651
import D0ForestChunk0652
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1344173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 12)))
theorem cover_1344173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344173 := by
  apply coveredState_split_literal (state := state_1344173) 2
    state_1344174 state_1344533
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344174
  · exact cover_1344533
#print axioms cover_1344173

def state_1344161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 12)))
theorem cover_1344161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344161 := by
  apply coveredState_split_literal (state := state_1344161) 0
    state_1344162 state_1344173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344162
  · exact cover_1344173
#print axioms cover_1344161

def state_1344160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 6)))
theorem cover_1344160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344160 := by
  apply coveredState_split_literal (state := state_1344160) 4
    state_1344161 state_1344604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344161
  · exact cover_1344604
#print axioms cover_1344160

def state_1344159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 6)))
theorem cover_1344159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344159 := by
  apply coveredState_split_literal (state := state_1344159) 3
    state_1344160 state_1344627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344160
  · exact cover_1344627
#print axioms cover_1344159

def state_1344095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_1344095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344095 := by
  apply coveredState_split_literal (state := state_1344095) 2
    state_1344096 state_1344159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344096
  · exact cover_1344159
#print axioms cover_1344095

def state_1343755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_1343755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343755 := by
  apply coveredState_split_literal (state := state_1343755) 1
    state_1343756 state_1344095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343756
  · exact cover_1344095
#print axioms cover_1343755

def state_1343754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_1343754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343754 := by
  apply coveredState_split_literal (state := state_1343754) 4
    state_1343755 state_1344656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343755
  · exact cover_1344656
#print axioms cover_1343754

def state_1342390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_1342390 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342390 := by
  apply coveredState_split_literal (state := state_1342390) 3
    state_1342391 state_1343754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342391
  · exact cover_1343754
#print axioms cover_1342390

def state_1342366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1342366 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342366 := by
  apply coveredState_split_literal (state := state_1342366) 2
    state_1342367 state_1342390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342367
  · exact cover_1342390
#print axioms cover_1342366

def state_1344692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 6)))
theorem cover_1344692 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344692 := by
  apply coveredState_split_literal (state := state_1344692) 3
    state_1344693 state_1344706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344693
  · exact cover_1344706
#print axioms cover_1344692

def state_1344684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_1344684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344684 := by
  apply coveredState_split_literal (state := state_1344684) 2
    state_1344685 state_1344692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344685
  · exact cover_1344692
#print axioms cover_1344684

def state_1344683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_1344683 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344683 := by
  apply coveredState_split_literal (state := state_1344683) 4
    state_1344684 state_1344763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344684
  · exact cover_1344763
#print axioms cover_1344683

def state_1344675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_1344675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344675 := by
  apply coveredState_split_literal (state := state_1344675) 3
    state_1344676 state_1344683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344676
  · exact cover_1344683
#print axioms cover_1344675

def state_1344663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1344663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344663 := by
  apply coveredState_split_literal (state := state_1344663) 2
    state_1344664 state_1344675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344664
  · exact cover_1344675
#print axioms cover_1344663

def state_1342365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1342365 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342365 := by
  apply coveredState_split_literal (state := state_1342365) 1
    state_1342366 state_1344663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342366
  · exact cover_1344663
#print axioms cover_1342365

def state_1342229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1342229 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342229 := by
  apply coveredState_split_literal (state := state_1342229) 0
    state_1342230 state_1342365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342230
  · exact cover_1342365
#print axioms cover_1342229

def state_1336809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1336809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336809 := by
  apply coveredState_split_literal (state := state_1336809) 4
    state_1336810 state_1342229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336810
  · exact cover_1342229
#print axioms cover_1336809

def state_1344839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_1344839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344839 := by
  apply coveredState_split_literal (state := state_1344839) 3
    state_1344840 state_1344897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344840
  · exact cover_1344897
#print axioms cover_1344839

def state_1344838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1344838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344838 := by
  apply coveredState_split_literal (state := state_1344838) 2
    state_1344839 state_1344904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344839
  · exact cover_1344904
#print axioms cover_1344838

def state_1344778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1344778 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344778 := by
  apply coveredState_split_literal (state := state_1344778) 1
    state_1344779 state_1344838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344779
  · exact cover_1344838
#print axioms cover_1344778

def state_1344931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1344931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344931 := by
  apply coveredState_split_literal (state := state_1344931) 1
    state_1344932 state_1344975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344932
  · exact cover_1344975
#print axioms cover_1344931

def state_1344777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1344777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344777 := by
  apply coveredState_split_literal (state := state_1344777) 0
    state_1344778 state_1344931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344778
  · exact cover_1344931
#print axioms cover_1344777

def state_1345278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
theorem cover_1345278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345278 := by
  apply coveredState_split_literal (state := state_1345278) 1
    state_1345279 state_1345322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345279
  · exact cover_1345322
#print axioms cover_1345278

def state_1345276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 51)))
theorem cover_1345276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345276 := by
  apply coveredState_split_literal (state := state_1345276) 2
    state_1345277 state_1345278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345277
  · exact cover_1345278
#print axioms cover_1345276

def state_1345256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 25)))
theorem cover_1345256 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345256 := by
  apply coveredState_split_literal (state := state_1345256) 4
    state_1345257 state_1345276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345257
  · exact cover_1345276
#print axioms cover_1345256

def state_1345240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1345240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345240 := by
  apply coveredState_split_literal (state := state_1345240) 3
    state_1345241 state_1345256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345241
  · exact cover_1345256
#print axioms cover_1345240

def state_1345239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1345239 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345239 := by
  apply coveredState_split_literal (state := state_1345239) 0
    state_1345240 state_1345383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345240
  · exact cover_1345383
#print axioms cover_1345239

def state_1345195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1345195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345195 := by
  apply coveredState_split_literal (state := state_1345195) 1
    state_1345196 state_1345239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345196
  · exact cover_1345239
#print axioms cover_1345195

def state_1345394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
theorem cover_1345394 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345394 := by
  apply coveredState_split_literal (state := state_1345394) 0
    state_1345395 state_1345458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345395
  · exact cover_1345458
#print axioms cover_1345394

def state_1345392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
theorem cover_1345392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345392 := by
  apply coveredState_split_literal (state := state_1345392) 1
    state_1345393 state_1345394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345393
  · exact cover_1345394
#print axioms cover_1345392

def state_1345194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 25)))
theorem cover_1345194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345194 := by
  apply coveredState_split_literal (state := state_1345194) 2
    state_1345195 state_1345392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345195
  · exact cover_1345392
#print axioms cover_1345194

def state_1345182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 12)))
theorem cover_1345182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345182 := by
  apply coveredState_split_literal (state := state_1345182) 4
    state_1345183 state_1345194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345183
  · exact cover_1345194
#print axioms cover_1345182
end Mub6.Numerical.CircleFullD0.Forest
