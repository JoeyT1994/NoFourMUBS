import D0FullInterface
import D0ForestAssembly0194
import D0ForestChunk0730
import D0ForestChunk0731
import D0ForestChunk0732
import D0ForestChunk0733
import D0ForestChunk0734
import D0ForestChunk0735
import D0ForestChunk0736
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1476667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 177) else (if j.val < 3 then 66 else (if j.val < 4 then 179 else 116)))
theorem cover_1476667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476667 := by
  apply coveredState_split_literal (state := state_1476667) 4
    state_1476668 state_1476681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476668
  · exact cover_1476681
#print axioms cover_1476667

def state_1476515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 179 else 116)))
theorem cover_1476515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476515 := by
  apply coveredState_split_literal (state := state_1476515) 1
    state_1476516 state_1476667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476516
  · exact cover_1476667
#print axioms cover_1476515

def state_1476463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 89 else 116)))
theorem cover_1476463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476463 := by
  apply coveredState_split_literal (state := state_1476463) 3
    state_1476464 state_1476515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476464
  · exact cover_1476515
#print axioms cover_1476463

def state_1476261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 89 else 116)))
theorem cover_1476261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476261 := by
  apply coveredState_split_literal (state := state_1476261) 0
    state_1476262 state_1476463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476262
  · exact cover_1476463
#print axioms cover_1476261

def state_1476260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 33 else (if j.val < 4 then 89 else 116)))
theorem cover_1476260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476260 := by
  apply coveredState_split_literal (state := state_1476260) 2
    state_1476261 state_1476750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476261
  · exact cover_1476750
#print axioms cover_1476260

def state_1476789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 33 else (if j.val < 4 then 89 else 117)))
theorem cover_1476789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476789 := by
  apply coveredState_split_literal (state := state_1476789) 2
    state_1476790 state_1476845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476790
  · exact cover_1476845
#print axioms cover_1476789

def state_1476259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 33 else (if j.val < 4 then 89 else 58)))
theorem cover_1476259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476259 := by
  apply coveredState_split_literal (state := state_1476259) 4
    state_1476260 state_1476789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476260
  · exact cover_1476789
#print axioms cover_1476259

def state_1476223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 58)))
theorem cover_1476223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476223 := by
  apply coveredState_split_literal (state := state_1476223) 3
    state_1476224 state_1476259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476224
  · exact cover_1476259
#print axioms cover_1476223

def state_1476858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 89) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 58)))
theorem cover_1476858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476858 := by
  apply coveredState_split_literal (state := state_1476858) 3
    state_1476859 state_1476876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476859
  · exact cover_1476876
#print axioms cover_1476858

def state_1476222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 58)))
theorem cover_1476222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476222 := by
  apply coveredState_split_literal (state := state_1476222) 1
    state_1476223 state_1476858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476223
  · exact cover_1476858
#print axioms cover_1476222

def state_1476936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 88) else (if j.val < 3 then 33 else (if j.val < 4 then 89 else 58)))
theorem cover_1476936 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476936 := by
  apply coveredState_split_literal (state := state_1476936) 4
    state_1476937 state_1476968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476937
  · exact cover_1476968
#print axioms cover_1476936

def state_1476932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 88) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 58)))
theorem cover_1476932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476932 := by
  apply coveredState_split_literal (state := state_1476932) 3
    state_1476933 state_1476936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476933
  · exact cover_1476936
#print axioms cover_1476932

def state_1476931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 58)))
theorem cover_1476931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476931 := by
  apply coveredState_split_literal (state := state_1476931) 1
    state_1476932 state_1477017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476932
  · exact cover_1477017
#print axioms cover_1476931

def state_1476221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 58)))
theorem cover_1476221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476221 := by
  apply coveredState_split_literal (state := state_1476221) 0
    state_1476222 state_1476931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476222
  · exact cover_1476931
#print axioms cover_1476221

def state_1475277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 58)))
theorem cover_1475277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475277 := by
  apply coveredState_split_literal (state := state_1475277) 2
    state_1475278 state_1476221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475278
  · exact cover_1476221
#print axioms cover_1475277

def state_1475276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 29)))
theorem cover_1475276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475276 := by
  apply coveredState_split_literal (state := state_1475276) 4
    state_1475277 state_1477058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475277
  · exact cover_1477058
#print axioms cover_1475276

def state_1477123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 90 else 58)))
theorem cover_1477123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477123 := by
  apply coveredState_split_literal (state := state_1477123) 1
    state_1477124 state_1477175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477124
  · exact cover_1477175
#print axioms cover_1477123

def state_1477122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 45 else 58)))
theorem cover_1477122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477122 := by
  apply coveredState_split_literal (state := state_1477122) 3
    state_1477123 state_1477194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477123
  · exact cover_1477194
#print axioms cover_1477122

def state_1477121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 45 else 58)))
theorem cover_1477121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477121 := by
  apply coveredState_split_literal (state := state_1477121) 0
    state_1477122 state_1477197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477122
  · exact cover_1477197
#print axioms cover_1477121

def state_1477261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 176) else (if j.val < 3 then 66 else (if j.val < 4 then 180 else 116)))
theorem cover_1477261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477261 := by
  apply coveredState_split_literal (state := state_1477261) 4
    state_1477262 state_1477303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477262
  · exact cover_1477303
#print axioms cover_1477261

def state_1477260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 180 else 116)))
theorem cover_1477260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477260 := by
  apply coveredState_split_literal (state := state_1477260) 1
    state_1477261 state_1477366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477261
  · exact cover_1477366
#print axioms cover_1477260

def state_1477259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 90 else 116)))
theorem cover_1477259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477259 := by
  apply coveredState_split_literal (state := state_1477259) 3
    state_1477260 state_1477413
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477260
  · exact cover_1477413
#print axioms cover_1477259

def state_1477217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 90 else 116)))
theorem cover_1477217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477217 := by
  apply coveredState_split_literal (state := state_1477217) 0
    state_1477218 state_1477259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477218
  · exact cover_1477259
#print axioms cover_1477217

def state_1477445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 67 else (if j.val < 4 then 180 else 116)))
theorem cover_1477445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477445 := by
  apply coveredState_split_literal (state := state_1477445) 1
    state_1477446 state_1477507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477446
  · exact cover_1477507
#print axioms cover_1477445

def state_1477444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 67 else (if j.val < 4 then 90 else 116)))
theorem cover_1477444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477444 := by
  apply coveredState_split_literal (state := state_1477444) 3
    state_1477445 state_1477530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477445
  · exact cover_1477530
#print axioms cover_1477444

def state_1477418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 67 else (if j.val < 4 then 90 else 116)))
theorem cover_1477418 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477418 := by
  apply coveredState_split_literal (state := state_1477418) 0
    state_1477419 state_1477444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477419
  · exact cover_1477444
#print axioms cover_1477418

def state_1477216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 116)))
theorem cover_1477216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477216 := by
  apply coveredState_split_literal (state := state_1477216) 2
    state_1477217 state_1477418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477217
  · exact cover_1477418
#print axioms cover_1477216

def state_1477598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 90 else 117)))
theorem cover_1477598 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477598 := by
  apply coveredState_split_literal (state := state_1477598) 3
    state_1477599 state_1477662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477599
  · exact cover_1477662
#print axioms cover_1477598

def state_1477586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 90 else 117)))
theorem cover_1477586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477586 := by
  apply coveredState_split_literal (state := state_1477586) 0
    state_1477587 state_1477598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477587
  · exact cover_1477598
#print axioms cover_1477586

def state_1477677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 67 else (if j.val < 4 then 90 else 117)))
theorem cover_1477677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477677 := by
  apply coveredState_split_literal (state := state_1477677) 3
    state_1477678 state_1477707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477678
  · exact cover_1477707
#print axioms cover_1477677

def state_1477669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 67 else (if j.val < 4 then 90 else 117)))
theorem cover_1477669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477669 := by
  apply coveredState_split_literal (state := state_1477669) 0
    state_1477670 state_1477677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477670
  · exact cover_1477677
#print axioms cover_1477669

def state_1477585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 117)))
theorem cover_1477585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477585 := by
  apply coveredState_split_literal (state := state_1477585) 2
    state_1477586 state_1477669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477586
  · exact cover_1477669
#print axioms cover_1477585
end Mub6.Numerical.CircleFullD0.Forest
