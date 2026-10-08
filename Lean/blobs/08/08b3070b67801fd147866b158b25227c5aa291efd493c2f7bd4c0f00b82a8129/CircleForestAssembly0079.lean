import CircleFullInterface
import CircleForestAssembly0078
import CircleForestChunk0314
import CircleForestChunk0315
import CircleForestChunk0316
import CircleForestChunk0317
import CircleForestChunk0318
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1013108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 22)))
theorem cover_1013108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013108 := by
  apply coveredState_split_literal (state := state_1013108) 0
    state_1013109 state_1013136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013109
  · exact cover_1013136
#print axioms cover_1013108

def state_1013107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 22)))
theorem cover_1013107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013107 := by
  apply coveredState_split_literal (state := state_1013107) 3
    state_1013108 state_1013221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013108
  · exact cover_1013221
#print axioms cover_1013107

def state_1013099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
theorem cover_1013099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013099 := by
  apply coveredState_split_literal (state := state_1013099) 2
    state_1013100 state_1013107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013100
  · exact cover_1013107
#print axioms cover_1013099

def state_1013098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
theorem cover_1013098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013098 := by
  apply coveredState_split_literal (state := state_1013098) 1
    state_1013099 state_1013228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013099
  · exact cover_1013228
#print axioms cover_1013098

def state_1013097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_1013097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013097 := by
  apply coveredState_split_literal (state := state_1013097) 4
    state_1013098 state_1013241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013098
  · exact cover_1013241
#print axioms cover_1013097

def state_1013095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_1013095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013095 := by
  apply coveredState_split_literal (state := state_1013095) 0
    state_1013096 state_1013097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013096
  · exact cover_1013097
#print axioms cover_1013095

def state_1013094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 11)))
theorem cover_1013094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013094 := by
  apply coveredState_split_literal (state := state_1013094) 3
    state_1013095 state_1013260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013095
  · exact cover_1013260
#print axioms cover_1013094

def state_1013084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_1013084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013084 := by
  apply coveredState_split_literal (state := state_1013084) 2
    state_1013085 state_1013094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013085
  · exact cover_1013094
#print axioms cover_1013084

def state_1013083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_1013083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013083 := by
  apply coveredState_split_literal (state := state_1013083) 1
    state_1013084 state_1013273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013084
  · exact cover_1013273
#print axioms cover_1013083

def state_1012993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_1012993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012993 := by
  apply coveredState_split_literal (state := state_1012993) 4
    state_1012994 state_1013083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012994
  · exact cover_1013083
#print axioms cover_1012993

def state_1012991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_1012991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012991 := by
  apply coveredState_split_literal (state := state_1012991) 0
    state_1012992 state_1012993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012992
  · exact cover_1012993
#print axioms cover_1012991

def state_1012985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_1012985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012985 := by
  apply coveredState_split_literal (state := state_1012985) 4
    state_1012986 state_1012991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012986
  · exact cover_1012991
#print axioms cover_1012985

def state_1008533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_1008533 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008533 := by
  apply coveredState_split_literal (state := state_1008533) 3
    state_1008534 state_1012985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008534
  · exact cover_1012985
#print axioms cover_1008533

def state_1013316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 11)))
theorem cover_1013316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013316 := by
  apply coveredState_split_literal (state := state_1013316) 1
    state_1013317 state_1013372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013317
  · exact cover_1013372
#print axioms cover_1013316

def state_1013314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 5)))
theorem cover_1013314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013314 := by
  apply coveredState_split_literal (state := state_1013314) 4
    state_1013315 state_1013316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013315
  · exact cover_1013316
#print axioms cover_1013314

def state_1013302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
theorem cover_1013302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013302 := by
  apply coveredState_split_literal (state := state_1013302) 3
    state_1013303 state_1013314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013303
  · exact cover_1013314
#print axioms cover_1013302

def state_1013301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_1013301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013301 := by
  apply coveredState_split_literal (state := state_1013301) 2
    state_1013302 state_1013381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013302
  · exact cover_1013381
#print axioms cover_1013301

def state_1013293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_1013293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013293 := by
  apply coveredState_split_literal (state := state_1013293) 0
    state_1013294 state_1013301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013294
  · exact cover_1013301
#print axioms cover_1013293

def state_1013287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_1013287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013287 := by
  apply coveredState_split_literal (state := state_1013287) 4
    state_1013288 state_1013293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013288
  · exact cover_1013293
#print axioms cover_1013287

def state_1013636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 59 else 43)))
theorem cover_1013636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013636 := by
  apply coveredState_split_literal (state := state_1013636) 4
    state_1013637 state_1013654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013637
  · exact cover_1013654
#print axioms cover_1013636

def state_1013620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 59 else 43)))
theorem cover_1013620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013620 := by
  apply coveredState_split_literal (state := state_1013620) 0
    state_1013621 state_1013636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013621
  · exact cover_1013636
#print axioms cover_1013620

def state_1013610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 59 else 43)))
theorem cover_1013610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013610 := by
  apply coveredState_split_literal (state := state_1013610) 2
    state_1013611 state_1013620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013611
  · exact cover_1013620
#print axioms cover_1013610

def state_1013576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 43)))
theorem cover_1013576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013576 := by
  apply coveredState_split_literal (state := state_1013576) 3
    state_1013577 state_1013610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013577
  · exact cover_1013610
#print axioms cover_1013576

def state_1013575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 43)))
theorem cover_1013575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013575 := by
  apply coveredState_split_literal (state := state_1013575) 1
    state_1013576 state_1013701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013576
  · exact cover_1013701
#print axioms cover_1013575

def state_1013553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 21)))
theorem cover_1013553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013553 := by
  apply coveredState_split_literal (state := state_1013553) 4
    state_1013554 state_1013575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013554
  · exact cover_1013575
#print axioms cover_1013553

def state_1013709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 43)))
theorem cover_1013709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013709 := by
  apply coveredState_split_literal (state := state_1013709) 3
    state_1013710 state_1013725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013710
  · exact cover_1013725
#print axioms cover_1013709

def state_1013708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 43)))
theorem cover_1013708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013708 := by
  apply coveredState_split_literal (state := state_1013708) 1
    state_1013709 state_1013784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013709
  · exact cover_1013784
#print axioms cover_1013708

def state_1013706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 21)))
theorem cover_1013706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013706 := by
  apply coveredState_split_literal (state := state_1013706) 4
    state_1013707 state_1013708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013707
  · exact cover_1013708
#print axioms cover_1013706

def state_1013552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 21)))
theorem cover_1013552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013552 := by
  apply coveredState_split_literal (state := state_1013552) 0
    state_1013553 state_1013706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013553
  · exact cover_1013706
#print axioms cover_1013552

def state_1013526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 21)))
theorem cover_1013526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013526 := by
  apply coveredState_split_literal (state := state_1013526) 3
    state_1013527 state_1013552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013527
  · exact cover_1013552
#print axioms cover_1013526

def state_1013525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 21)))
theorem cover_1013525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013525 := by
  apply coveredState_split_literal (state := state_1013525) 1
    state_1013526 state_1013787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013526
  · exact cover_1013787
#print axioms cover_1013525

def state_1013513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 10)))
theorem cover_1013513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013513 := by
  apply coveredState_split_literal (state := state_1013513) 4
    state_1013514 state_1013525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013514
  · exact cover_1013525
#print axioms cover_1013513
end Mub6.Numerical.CircleFullD0.Forest
