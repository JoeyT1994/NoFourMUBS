import CircleFullInterface
import CircleForestAssembly0260
import CircleForestChunk1000
import CircleForestChunk1001
import CircleForestChunk1002
import CircleForestChunk1003
import CircleForestChunk1004
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1540754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 43)))
theorem cover_1540754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540754 := by
  apply coveredState_split_literal (state := state_1540754) 3
    state_1540755 state_1540762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540755
  · exact cover_1540762
#print axioms cover_1540754

def state_1540736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 21)))
theorem cover_1540736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540736 := by
  apply coveredState_split_literal (state := state_1540736) 4
    state_1540737 state_1540754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540737
  · exact cover_1540754
#print axioms cover_1540736

def state_1540735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 21)))
theorem cover_1540735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540735 := by
  apply coveredState_split_literal (state := state_1540735) 2
    state_1540736 state_1540853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540736
  · exact cover_1540853
#print axioms cover_1540735

def state_1540719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 21)))
theorem cover_1540719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540719 := by
  apply coveredState_split_literal (state := state_1540719) 0
    state_1540720 state_1540735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540720
  · exact cover_1540735
#print axioms cover_1540719

def state_1540718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 21)))
theorem cover_1540718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540718 := by
  apply coveredState_split_literal (state := state_1540718) 1
    state_1540719 state_1540876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540719
  · exact cover_1540876
#print axioms cover_1540718

def state_1540710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 21)))
theorem cover_1540710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540710 := by
  apply coveredState_split_literal (state := state_1540710) 3
    state_1540711 state_1540718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540711
  · exact cover_1540718
#print axioms cover_1540710

def state_1540692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 10)))
theorem cover_1540692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540692 := by
  apply coveredState_split_literal (state := state_1540692) 4
    state_1540693 state_1540710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540693
  · exact cover_1540710
#print axioms cover_1540692

def state_1540548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 10)))
theorem cover_1540548 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540548 := by
  apply coveredState_split_literal (state := state_1540548) 2
    state_1540549 state_1540692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540549
  · exact cover_1540692
#print axioms cover_1540548

def state_1540547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 10)))
theorem cover_1540547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540547 := by
  apply coveredState_split_literal (state := state_1540547) 0
    state_1540548 state_1540885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540548
  · exact cover_1540885
#print axioms cover_1540547

def state_1540533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 10)))
theorem cover_1540533 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540533 := by
  apply coveredState_split_literal (state := state_1540533) 3
    state_1540534 state_1540547
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540534
  · exact cover_1540547
#print axioms cover_1540533

def state_1538211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 10)))
theorem cover_1538211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538211 := by
  apply coveredState_split_literal (state := state_1538211) 1
    state_1538212 state_1540533
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538212
  · exact cover_1540533
#print axioms cover_1538211

def state_1540993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 18 else 44)))
theorem cover_1540993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540993 := by
  apply coveredState_split_literal (state := state_1540993) 1
    state_1540994 state_1541007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540994
  · exact cover_1541007
#print axioms cover_1540993

def state_1540992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 18 else 22)))
theorem cover_1540992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540992 := by
  apply coveredState_split_literal (state := state_1540992) 4
    state_1540993 state_1541068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540993
  · exact cover_1541068
#print axioms cover_1540992

def state_1540991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 18 else 22)))
theorem cover_1540991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540991 := by
  apply coveredState_split_literal (state := state_1540991) 2
    state_1540992 state_1541069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540992
  · exact cover_1541069
#print axioms cover_1540991

def state_1540971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 18 else 22)))
theorem cover_1540971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540971 := by
  apply coveredState_split_literal (state := state_1540971) 0
    state_1540972 state_1540991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540972
  · exact cover_1540991
#print axioms cover_1540971

def state_1541157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 49 else (if j.val < 4 then 19 else 44)))
theorem cover_1541157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541157 := by
  apply coveredState_split_literal (state := state_1541157) 3
    state_1541158 state_1541211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541158
  · exact cover_1541211
#print axioms cover_1541157

def state_1541156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 49 else (if j.val < 4 then 19 else 22)))
theorem cover_1541156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541156 := by
  apply coveredState_split_literal (state := state_1541156) 4
    state_1541157 state_1541230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541157
  · exact cover_1541230
#print axioms cover_1541156

def state_1541092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 22)))
theorem cover_1541092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541092 := by
  apply coveredState_split_literal (state := state_1541092) 2
    state_1541093 state_1541156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541093
  · exact cover_1541156
#print axioms cover_1541092

def state_1541078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 22)))
theorem cover_1541078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541078 := by
  apply coveredState_split_literal (state := state_1541078) 0
    state_1541079 state_1541092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541079
  · exact cover_1541092
#print axioms cover_1541078

def state_1540970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 22)))
theorem cover_1540970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540970 := by
  apply coveredState_split_literal (state := state_1540970) 3
    state_1540971 state_1541078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540971
  · exact cover_1541078
#print axioms cover_1540970

def state_1540962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 22)))
theorem cover_1540962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540962 := by
  apply coveredState_split_literal (state := state_1540962) 1
    state_1540963 state_1540970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540963
  · exact cover_1540970
#print axioms cover_1540962

def state_1540961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 11)))
theorem cover_1540961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540961 := by
  apply coveredState_split_literal (state := state_1540961) 4
    state_1540962 state_1541233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540962
  · exact cover_1541233
#print axioms cover_1540961

def state_1541263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 22)))
theorem cover_1541263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541263 := by
  apply coveredState_split_literal (state := state_1541263) 2
    state_1541264 state_1541321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541264
  · exact cover_1541321
#print axioms cover_1541263

def state_1541249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 22)))
theorem cover_1541249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541249 := by
  apply coveredState_split_literal (state := state_1541249) 0
    state_1541250 state_1541263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541250
  · exact cover_1541263
#print axioms cover_1541249

def state_1541245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 22)))
theorem cover_1541245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541245 := by
  apply coveredState_split_literal (state := state_1541245) 3
    state_1541246 state_1541249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541246
  · exact cover_1541249
#print axioms cover_1541245

def state_1541239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 22)))
theorem cover_1541239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541239 := by
  apply coveredState_split_literal (state := state_1541239) 1
    state_1541240 state_1541245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541240
  · exact cover_1541245
#print axioms cover_1541239

def state_1541238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 11)))
theorem cover_1541238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541238 := by
  apply coveredState_split_literal (state := state_1541238) 4
    state_1541239 state_1541332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541239
  · exact cover_1541332
#print axioms cover_1541238

def state_1540960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 11)))
theorem cover_1540960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540960 := by
  apply coveredState_split_literal (state := state_1540960) 2
    state_1540961 state_1541238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540961
  · exact cover_1541238
#print axioms cover_1540960

def state_1541339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 11)))
theorem cover_1541339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541339 := by
  apply coveredState_split_literal (state := state_1541339) 2
    state_1541340 state_1541385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541340
  · exact cover_1541385
#print axioms cover_1541339

def state_1540959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 11)))
theorem cover_1540959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540959 := by
  apply coveredState_split_literal (state := state_1540959) 0
    state_1540960 state_1541339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540960
  · exact cover_1541339
#print axioms cover_1540959

def state_1540945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 11)))
theorem cover_1540945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540945 := by
  apply coveredState_split_literal (state := state_1540945) 3
    state_1540946 state_1540959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540946
  · exact cover_1540959
#print axioms cover_1540945

def state_1541444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 48 else (if j.val < 4 then 18 else 22)))
theorem cover_1541444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541444 := by
  apply coveredState_split_literal (state := state_1541444) 4
    state_1541445 state_1541496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541445
  · exact cover_1541496
#print axioms cover_1541444
end Mub6.Numerical.CircleFullD0.Forest
