import CircleFullInterface
import CircleForestAssembly0265
import CircleForestAssembly0266
import CircleForestChunk1013
import CircleForestChunk1015
import CircleForestChunk1016
import CircleForestChunk1021
import CircleForestChunk1023
import CircleForestChunk1025
import CircleForestChunk1026
import CircleForestChunk1027
import CircleForestChunk1028
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1546056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 86)))
theorem cover_1546056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546056 := by
  apply coveredState_split_literal (state := state_1546056) 0
    state_1546057 state_1546104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546057
  · exact cover_1546104
#print axioms cover_1546056

def state_1545996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 86)))
theorem cover_1545996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545996 := by
  apply coveredState_split_literal (state := state_1545996) 1
    state_1545997 state_1546056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545997
  · exact cover_1546056
#print axioms cover_1545996

def state_1545950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 86)))
theorem cover_1545950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545950 := by
  apply coveredState_split_literal (state := state_1545950) 3
    state_1545951 state_1545996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545951
  · exact cover_1545996
#print axioms cover_1545950

def state_1546419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
theorem cover_1546419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546419 := by
  apply coveredState_split_literal (state := state_1546419) 1
    state_1546420 state_1546425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546420
  · exact cover_1546425
#print axioms cover_1546419

def state_1546403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 87)))
theorem cover_1546403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546403 := by
  apply coveredState_split_literal (state := state_1546403) 3
    state_1546404 state_1546419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546404
  · exact cover_1546419
#print axioms cover_1546403

def state_1545949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 43)))
theorem cover_1545949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545949 := by
  apply coveredState_split_literal (state := state_1545949) 4
    state_1545950 state_1546403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545950
  · exact cover_1546403
#print axioms cover_1545949

def state_1545537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 43)))
theorem cover_1545537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545537 := by
  apply coveredState_split_literal (state := state_1545537) 2
    state_1545538 state_1545949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545538
  · exact cover_1545949
#print axioms cover_1545537

def state_1545499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 43)))
theorem cover_1545499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545499 := by
  apply coveredState_split_literal (state := state_1545499) 0
    state_1545500 state_1545537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545500
  · exact cover_1545537
#print axioms cover_1545499

def state_1546502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 43)))
theorem cover_1546502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546502 := by
  apply coveredState_split_literal (state := state_1546502) 4
    state_1546503 state_1546564
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546503
  · exact cover_1546564
#print axioms cover_1546502

def state_1546488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 43)))
theorem cover_1546488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546488 := by
  apply coveredState_split_literal (state := state_1546488) 2
    state_1546489 state_1546502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546489
  · exact cover_1546502
#print axioms cover_1546488

def state_1546486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 43)))
theorem cover_1546486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546486 := by
  apply coveredState_split_literal (state := state_1546486) 0
    state_1546487 state_1546488
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546487
  · exact cover_1546488
#print axioms cover_1546486

def state_1545498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 43)))
theorem cover_1545498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545498 := by
  apply coveredState_split_literal (state := state_1545498) 3
    state_1545499 state_1546486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545499
  · exact cover_1546486
#print axioms cover_1545498

def state_1545474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 43)))
theorem cover_1545474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545474 := by
  apply coveredState_split_literal (state := state_1545474) 1
    state_1545475 state_1545498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545475
  · exact cover_1545498
#print axioms cover_1545474

def state_1544536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 21)))
theorem cover_1544536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544536 := by
  apply coveredState_split_literal (state := state_1544536) 4
    state_1544537 state_1545474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544537
  · exact cover_1545474
#print axioms cover_1544536

def state_1544242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
theorem cover_1544242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544242 := by
  apply coveredState_split_literal (state := state_1544242) 2
    state_1544243 state_1544536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544243
  · exact cover_1544536
#print axioms cover_1544242

def state_1544220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
theorem cover_1544220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544220 := by
  apply coveredState_split_literal (state := state_1544220) 0
    state_1544221 state_1544242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544221
  · exact cover_1544242
#print axioms cover_1544220

def state_1544204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
theorem cover_1544204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544204 := by
  apply coveredState_split_literal (state := state_1544204) 1
    state_1544205 state_1544220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544205
  · exact cover_1544220
#print axioms cover_1544204

def state_1543648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 10)))
theorem cover_1543648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543648 := by
  apply coveredState_split_literal (state := state_1543648) 4
    state_1543649 state_1544204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543649
  · exact cover_1544204
#print axioms cover_1543648

def state_1543647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 10)))
theorem cover_1543647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543647 := by
  apply coveredState_split_literal (state := state_1543647) 3
    state_1543648 state_1546567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543648
  · exact cover_1546567
#print axioms cover_1543647

def state_1543605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 10)))
theorem cover_1543605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543605 := by
  apply coveredState_split_literal (state := state_1543605) 2
    state_1543606 state_1543647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543606
  · exact cover_1543647
#print axioms cover_1543605

def state_1546620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 20)))
theorem cover_1546620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546620 := by
  apply coveredState_split_literal (state := state_1546620) 2
    state_1546621 state_1546628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546621
  · exact cover_1546628
#print axioms cover_1546620

def state_1546619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 20)))
theorem cover_1546619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546619 := by
  apply coveredState_split_literal (state := state_1546619) 0
    state_1546620 state_1546685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546620
  · exact cover_1546685
#print axioms cover_1546619

def state_1546693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 20)))
theorem cover_1546693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546693 := by
  apply coveredState_split_literal (state := state_1546693) 2
    state_1546694 state_1546703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546694
  · exact cover_1546703
#print axioms cover_1546693

def state_1546692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 20)))
theorem cover_1546692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546692 := by
  apply coveredState_split_literal (state := state_1546692) 0
    state_1546693 state_1546764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546693
  · exact cover_1546764
#print axioms cover_1546692

def state_1546618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 20)))
theorem cover_1546618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546618 := by
  apply coveredState_split_literal (state := state_1546618) 1
    state_1546619 state_1546692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546619
  · exact cover_1546692
#print axioms cover_1546618

def state_1546842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 42)))
theorem cover_1546842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546842 := by
  apply coveredState_split_literal (state := state_1546842) 3
    state_1546843 state_1546900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546843
  · exact cover_1546900
#print axioms cover_1546842

def state_1547034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 85)))
theorem cover_1547034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547034 := by
  apply coveredState_split_literal (state := state_1547034) 1
    state_1547035 state_1547090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547035
  · exact cover_1547090
#print axioms cover_1547034

def state_1547018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 42)))
theorem cover_1547018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547018 := by
  apply coveredState_split_literal (state := state_1547018) 4
    state_1547019 state_1547034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547019
  · exact cover_1547034
#print axioms cover_1547018

def state_1547002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 42)))
theorem cover_1547002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547002 := by
  apply coveredState_split_literal (state := state_1547002) 2
    state_1547003 state_1547018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547003
  · exact cover_1547018
#print axioms cover_1547002

def state_1547001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 42)))
theorem cover_1547001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547001 := by
  apply coveredState_split_literal (state := state_1547001) 0
    state_1547002 state_1547117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547002
  · exact cover_1547117
#print axioms cover_1547001

def state_1546939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 42)))
theorem cover_1546939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546939 := by
  apply coveredState_split_literal (state := state_1546939) 3
    state_1546940 state_1547001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546940
  · exact cover_1547001
#print axioms cover_1546939

def state_1546841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 42)))
theorem cover_1546841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546841 := by
  apply coveredState_split_literal (state := state_1546841) 1
    state_1546842 state_1546939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546842
  · exact cover_1546939
#print axioms cover_1546841
end Mub6.Numerical.CircleFullD0.Forest
