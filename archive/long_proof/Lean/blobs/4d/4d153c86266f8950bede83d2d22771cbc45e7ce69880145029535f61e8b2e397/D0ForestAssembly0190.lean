import D0FullInterface
import D0ForestAssembly0189
import D0ForestChunk0712
import D0ForestChunk0713
import D0ForestChunk0714
import D0ForestChunk0715
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1471579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_1471579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471579 := by
  apply coveredState_split_literal (state := state_1471579) 0
    state_1471580 state_1471775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471580
  · exact cover_1471775
#print axioms cover_1471579

def state_1471809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 21 else 28)))
theorem cover_1471809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471809 := by
  apply coveredState_split_literal (state := state_1471809) 1
    state_1471810 state_1471825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471810
  · exact cover_1471825
#print axioms cover_1471809

def state_1471808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 21 else 28)))
theorem cover_1471808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471808 := by
  apply coveredState_split_literal (state := state_1471808) 0
    state_1471809 state_1471878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471809
  · exact cover_1471878
#print axioms cover_1471808

def state_1471807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 21 else 28)))
theorem cover_1471807 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471807 := by
  apply coveredState_split_literal (state := state_1471807) 2
    state_1471808 state_1471887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471808
  · exact cover_1471887
#print axioms cover_1471807

def state_1471806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 21 else 14)))
theorem cover_1471806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471806 := by
  apply coveredState_split_literal (state := state_1471806) 4
    state_1471807 state_1471902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471807
  · exact cover_1471902
#print axioms cover_1471806

def state_1471802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
theorem cover_1471802 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471802 := by
  apply coveredState_split_literal (state := state_1471802) 3
    state_1471803 state_1471806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471803
  · exact cover_1471806
#print axioms cover_1471802

def state_1471792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
theorem cover_1471792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471792 := by
  apply coveredState_split_literal (state := state_1471792) 1
    state_1471793 state_1471802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471793
  · exact cover_1471802
#print axioms cover_1471792

def state_1471791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
theorem cover_1471791 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471791 := by
  apply coveredState_split_literal (state := state_1471791) 0
    state_1471792 state_1471923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471792
  · exact cover_1471923
#print axioms cover_1471791

def state_1471790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 7)))
theorem cover_1471790 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471790 := by
  apply coveredState_split_literal (state := state_1471790) 4
    state_1471791 state_1471936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471791
  · exact cover_1471936
#print axioms cover_1471790

def state_1471789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 7)))
theorem cover_1471789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471789 := by
  apply coveredState_split_literal (state := state_1471789) 2
    state_1471790 state_1471941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471790
  · exact cover_1471941
#print axioms cover_1471789

def state_1472064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 32 else (if j.val < 4 then 89 else 57)))
theorem cover_1472064 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472064 := by
  apply coveredState_split_literal (state := state_1472064) 1
    state_1472065 state_1472068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472065
  · exact cover_1472068
#print axioms cover_1472064

def state_1472016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 57)))
theorem cover_1472016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472016 := by
  apply coveredState_split_literal (state := state_1472016) 3
    state_1472017 state_1472064
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472017
  · exact cover_1472064
#print axioms cover_1472016

def state_1472015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 57)))
theorem cover_1472015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472015 := by
  apply coveredState_split_literal (state := state_1472015) 0
    state_1472016 state_1472129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472016
  · exact cover_1472129
#print axioms cover_1472015

def state_1472169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 89 else 57)))
theorem cover_1472169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472169 := by
  apply coveredState_split_literal (state := state_1472169) 1
    state_1472170 state_1472181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472170
  · exact cover_1472181
#print axioms cover_1472169

def state_1472141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 57)))
theorem cover_1472141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472141 := by
  apply coveredState_split_literal (state := state_1472141) 3
    state_1472142 state_1472169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472142
  · exact cover_1472169
#print axioms cover_1472141

def state_1472140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 57)))
theorem cover_1472140 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472140 := by
  apply coveredState_split_literal (state := state_1472140) 0
    state_1472141 state_1472238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472141
  · exact cover_1472238
#print axioms cover_1472140

def state_1472014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 57)))
theorem cover_1472014 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472014 := by
  apply coveredState_split_literal (state := state_1472014) 2
    state_1472015 state_1472140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472015
  · exact cover_1472140
#print axioms cover_1472014

def state_1471996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 28)))
theorem cover_1471996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471996 := by
  apply coveredState_split_literal (state := state_1471996) 4
    state_1471997 state_1472014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471997
  · exact cover_1472014
#print axioms cover_1471996

def state_1471978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 28)))
theorem cover_1471978 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471978 := by
  apply coveredState_split_literal (state := state_1471978) 1
    state_1471979 state_1471996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471979
  · exact cover_1471996
#print axioms cover_1471978

def state_1472299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 57)))
theorem cover_1472299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472299 := by
  apply coveredState_split_literal (state := state_1472299) 1
    state_1472300 state_1472313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472300
  · exact cover_1472313
#print axioms cover_1472299

def state_1472298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 45 else 57)))
theorem cover_1472298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472298 := by
  apply coveredState_split_literal (state := state_1472298) 3
    state_1472299 state_1472374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472299
  · exact cover_1472374
#print axioms cover_1472298

def state_1472297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 45 else 57)))
theorem cover_1472297 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472297 := by
  apply coveredState_split_literal (state := state_1472297) 0
    state_1472298 state_1472395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472298
  · exact cover_1472395
#print axioms cover_1472297

def state_1472267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 57)))
theorem cover_1472267 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472267 := by
  apply coveredState_split_literal (state := state_1472267) 2
    state_1472268 state_1472297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472268
  · exact cover_1472297
#print axioms cover_1472267

def state_1472259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 28)))
theorem cover_1472259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472259 := by
  apply coveredState_split_literal (state := state_1472259) 4
    state_1472260 state_1472267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472260
  · exact cover_1472267
#print axioms cover_1472259

def state_1472249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 28)))
theorem cover_1472249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472249 := by
  apply coveredState_split_literal (state := state_1472249) 1
    state_1472250 state_1472259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472250
  · exact cover_1472259
#print axioms cover_1472249

def state_1471977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 28)))
theorem cover_1471977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471977 := by
  apply coveredState_split_literal (state := state_1471977) 3
    state_1471978 state_1472249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471978
  · exact cover_1472249
#print axioms cover_1471977

def state_1471976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 28)))
theorem cover_1471976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471976 := by
  apply coveredState_split_literal (state := state_1471976) 0
    state_1471977 state_1472418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471977
  · exact cover_1472418
#print axioms cover_1471976

def state_1472470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 45 else 28)))
theorem cover_1472470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472470 := by
  apply coveredState_split_literal (state := state_1472470) 1
    state_1472471 state_1472500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472471
  · exact cover_1472500
#print axioms cover_1472470

def state_1472436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 28)))
theorem cover_1472436 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472436 := by
  apply coveredState_split_literal (state := state_1472436) 3
    state_1472437 state_1472470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472437
  · exact cover_1472470
#print axioms cover_1472436

def state_1472435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 28)))
theorem cover_1472435 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472435 := by
  apply coveredState_split_literal (state := state_1472435) 0
    state_1472436 state_1472561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472436
  · exact cover_1472561
#print axioms cover_1472435

def state_1471975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 28)))
theorem cover_1471975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471975 := by
  apply coveredState_split_literal (state := state_1471975) 2
    state_1471976 state_1472435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471976
  · exact cover_1472435
#print axioms cover_1471975

def state_1472600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 32 else (if j.val < 4 then 89 else 58)))
theorem cover_1472600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472600 := by
  apply coveredState_split_literal (state := state_1472600) 1
    state_1472601 state_1472602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472601
  · exact cover_1472602
#print axioms cover_1472600
end Mub6.Numerical.CircleFullD0.Forest
