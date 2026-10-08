import D0FullInterface
import D0ForestAssembly0355
import D0ForestChunk1379
import D0ForestChunk1381
import D0ForestChunk1382
import D0ForestChunk1383
import D0ForestChunk1384
import D0ForestChunk1385
import D0ForestChunk1386
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1632342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 55 else (if j.val < 4 then 99 else 36)))
theorem cover_1632342 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632342 := by
  apply coveredState_split_literal (state := state_1632342) 1
    state_1632343 state_1632420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632343
  · exact cover_1632420
#print axioms cover_1632342

def state_1632316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 55 else (if j.val < 4 then 49 else 36)))
theorem cover_1632316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632316 := by
  apply coveredState_split_literal (state := state_1632316) 3
    state_1632317 state_1632342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632317
  · exact cover_1632342
#print axioms cover_1632316

def state_1632142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 36)))
theorem cover_1632142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632142 := by
  apply coveredState_split_literal (state := state_1632142) 2
    state_1632143 state_1632316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632143
  · exact cover_1632316
#print axioms cover_1632142

def state_1632141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 36)))
theorem cover_1632141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632141 := by
  apply coveredState_split_literal (state := state_1632141) 0
    state_1632142 state_1632471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632142
  · exact cover_1632471
#print axioms cover_1632141

def state_1632572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 102) else (if j.val < 3 then 55 else (if j.val < 4 then 99 else 37)))
theorem cover_1632572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632572 := by
  apply coveredState_split_literal (state := state_1632572) 4
    state_1632573 state_1632622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632573
  · exact cover_1632622
#print axioms cover_1632572

def state_1632571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 55 else (if j.val < 4 then 99 else 37)))
theorem cover_1632571 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632571 := by
  apply coveredState_split_literal (state := state_1632571) 1
    state_1632572 state_1632647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632572
  · exact cover_1632647
#print axioms cover_1632571

def state_1632561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 55 else (if j.val < 4 then 49 else 37)))
theorem cover_1632561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632561 := by
  apply coveredState_split_literal (state := state_1632561) 3
    state_1632562 state_1632571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632562
  · exact cover_1632571
#print axioms cover_1632561

def state_1632507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 37)))
theorem cover_1632507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632507 := by
  apply coveredState_split_literal (state := state_1632507) 2
    state_1632508 state_1632561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632508
  · exact cover_1632561
#print axioms cover_1632507

def state_1632506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 37)))
theorem cover_1632506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632506 := by
  apply coveredState_split_literal (state := state_1632506) 0
    state_1632507 state_1632664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632507
  · exact cover_1632664
#print axioms cover_1632506

def state_1632140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
theorem cover_1632140 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632140 := by
  apply coveredState_split_literal (state := state_1632140) 4
    state_1632141 state_1632506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632141
  · exact cover_1632506
#print axioms cover_1632140

def state_1631976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
theorem cover_1631976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631976 := by
  apply coveredState_split_literal (state := state_1631976) 1
    state_1631977 state_1632140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631977
  · exact cover_1632140
#print axioms cover_1631976

def state_1631938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 18)))
theorem cover_1631938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631938 := by
  apply coveredState_split_literal (state := state_1631938) 3
    state_1631939 state_1631976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631939
  · exact cover_1631976
#print axioms cover_1631938

def state_1632681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 19)))
theorem cover_1632681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632681 := by
  apply coveredState_split_literal (state := state_1632681) 1
    state_1632682 state_1632725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632682
  · exact cover_1632725
#print axioms cover_1632681

def state_1632675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 19)))
theorem cover_1632675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632675 := by
  apply coveredState_split_literal (state := state_1632675) 3
    state_1632676 state_1632681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632676
  · exact cover_1632681
#print axioms cover_1632675

def state_1631937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 9)))
theorem cover_1631937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631937 := by
  apply coveredState_split_literal (state := state_1631937) 4
    state_1631938 state_1632675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631938
  · exact cover_1632675
#print axioms cover_1631937

def state_1631891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
theorem cover_1631891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631891 := by
  apply coveredState_split_literal (state := state_1631891) 2
    state_1631892 state_1631937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631892
  · exact cover_1631937
#print axioms cover_1631891

def state_1631890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
theorem cover_1631890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631890 := by
  apply coveredState_split_literal (state := state_1631890) 0
    state_1631891 state_1632752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631891
  · exact cover_1632752
#print axioms cover_1631890

def state_1632881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 36)))
theorem cover_1632881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632881 := by
  apply coveredState_split_literal (state := state_1632881) 0
    state_1632882 state_1632941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632882
  · exact cover_1632941
#print axioms cover_1632881

def state_1632994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 55 else (if j.val < 4 then 100 else 37)))
theorem cover_1632994 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632994 := by
  apply coveredState_split_literal (state := state_1632994) 1
    state_1632995 state_1633044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632995
  · exact cover_1633044
#print axioms cover_1632994

def state_1632993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 55 else (if j.val < 4 then 50 else 37)))
theorem cover_1632993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632993 := by
  apply coveredState_split_literal (state := state_1632993) 3
    state_1632994 state_1633071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632994
  · exact cover_1633071
#print axioms cover_1632993

def state_1632949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 37)))
theorem cover_1632949 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632949 := by
  apply coveredState_split_literal (state := state_1632949) 2
    state_1632950 state_1632993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632950
  · exact cover_1632993
#print axioms cover_1632949

def state_1632948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 37)))
theorem cover_1632948 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632948 := by
  apply coveredState_split_literal (state := state_1632948) 0
    state_1632949 state_1633088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632949
  · exact cover_1633088
#print axioms cover_1632948

def state_1632880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 18)))
theorem cover_1632880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632880 := by
  apply coveredState_split_literal (state := state_1632880) 4
    state_1632881 state_1632948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632881
  · exact cover_1632948
#print axioms cover_1632880

def state_1632879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 18)))
theorem cover_1632879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632879 := by
  apply coveredState_split_literal (state := state_1632879) 3
    state_1632880 state_1633149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632880
  · exact cover_1633149
#print axioms cover_1632879

def state_1632815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 18)))
theorem cover_1632815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632815 := by
  apply coveredState_split_literal (state := state_1632815) 1
    state_1632816 state_1632879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632816
  · exact cover_1632879
#print axioms cover_1632815

def state_1633167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 38)))
theorem cover_1633167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633167 := by
  apply coveredState_split_literal (state := state_1633167) 0
    state_1633168 state_1633217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633168
  · exact cover_1633217
#print axioms cover_1633167

def state_1633166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 19)))
theorem cover_1633166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633166 := by
  apply coveredState_split_literal (state := state_1633166) 4
    state_1633167 state_1633244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633167
  · exact cover_1633244
#print axioms cover_1633166

def state_1633165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 19)))
theorem cover_1633165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633165 := by
  apply coveredState_split_literal (state := state_1633165) 3
    state_1633166 state_1633279
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633166
  · exact cover_1633279
#print axioms cover_1633165

def state_1633322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 38)))
theorem cover_1633322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633322 := by
  apply coveredState_split_literal (state := state_1633322) 0
    state_1633323 state_1633368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633323
  · exact cover_1633368
#print axioms cover_1633322

def state_1633321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 19)))
theorem cover_1633321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633321 := by
  apply coveredState_split_literal (state := state_1633321) 4
    state_1633322 state_1633415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633322
  · exact cover_1633415
#print axioms cover_1633321

def state_1633320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 19)))
theorem cover_1633320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633320 := by
  apply coveredState_split_literal (state := state_1633320) 3
    state_1633321 state_1633434
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633321
  · exact cover_1633434
#print axioms cover_1633320

def state_1633164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 19)))
theorem cover_1633164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633164 := by
  apply coveredState_split_literal (state := state_1633164) 1
    state_1633165 state_1633320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633165
  · exact cover_1633320
#print axioms cover_1633164
end Mub6.Numerical.CircleFullD0.Forest
