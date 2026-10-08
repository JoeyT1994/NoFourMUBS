import D0FullInterface
import D0ForestAssembly0029
import D0ForestChunk0122
import D0ForestChunk0123
import D0ForestChunk0124
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_966900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_966900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966900 := by
  apply coveredState_split_literal (state := state_966900) 1
    state_966901 state_966906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966901
  · exact cover_966906
#print axioms cover_966900

def state_966852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_966852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966852 := by
  apply coveredState_split_literal (state := state_966852) 0
    state_966853 state_966900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966853
  · exact cover_966900
#print axioms cover_966852

def state_966851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 7)))
theorem cover_966851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966851 := by
  apply coveredState_split_literal (state := state_966851) 4
    state_966852 state_966977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966852
  · exact cover_966977
#print axioms cover_966851

def state_966839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 7)))
theorem cover_966839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966839 := by
  apply coveredState_split_literal (state := state_966839) 3
    state_966840 state_966851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966840
  · exact cover_966851
#print axioms cover_966839

def state_966769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_966769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966769 := by
  apply coveredState_split_literal (state := state_966769) 2
    state_966770 state_966839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966770
  · exact cover_966839
#print axioms cover_966769

def state_967079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 56)))
theorem cover_967079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967079 := by
  apply coveredState_split_literal (state := state_967079) 1
    state_967080 state_967105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967080
  · exact cover_967105
#print axioms cover_967079

def state_967071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 56)))
theorem cover_967071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967071 := by
  apply coveredState_split_literal (state := state_967071) 0
    state_967072 state_967079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967072
  · exact cover_967079
#print axioms cover_967071

def state_967057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 56)))
theorem cover_967057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967057 := by
  apply coveredState_split_literal (state := state_967057) 3
    state_967058 state_967071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967058
  · exact cover_967071
#print axioms cover_967057

def state_967056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 28)))
theorem cover_967056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967056 := by
  apply coveredState_split_literal (state := state_967056) 4
    state_967057 state_967148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967057
  · exact cover_967148
#print axioms cover_967056

def state_967036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
theorem cover_967036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967036 := by
  apply coveredState_split_literal (state := state_967036) 2
    state_967037 state_967056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967037
  · exact cover_967056
#print axioms cover_967036

def state_967018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
theorem cover_967018 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967018 := by
  apply coveredState_split_literal (state := state_967018) 1
    state_967019 state_967036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967019
  · exact cover_967036
#print axioms cover_967018

def state_967012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
theorem cover_967012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967012 := by
  apply coveredState_split_literal (state := state_967012) 0
    state_967013 state_967018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967013
  · exact cover_967018
#print axioms cover_967012

def state_967006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 28)))
theorem cover_967006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967006 := by
  apply coveredState_split_literal (state := state_967006) 3
    state_967007 state_967012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967007
  · exact cover_967012
#print axioms cover_967006

def state_967005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 14)))
theorem cover_967005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967005 := by
  apply coveredState_split_literal (state := state_967005) 4
    state_967006 state_967157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967006
  · exact cover_967157
#print axioms cover_967005

def state_966985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 14)))
theorem cover_966985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966985 := by
  apply coveredState_split_literal (state := state_966985) 2
    state_966986 state_967005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966986
  · exact cover_967005
#print axioms cover_966985

def state_967216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
theorem cover_967216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967216 := by
  apply coveredState_split_literal (state := state_967216) 2
    state_967217 state_967238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967217
  · exact cover_967238
#print axioms cover_967216

def state_967210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
theorem cover_967210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967210 := by
  apply coveredState_split_literal (state := state_967210) 0
    state_967211 state_967216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967211
  · exact cover_967216
#print axioms cover_967210

def state_967209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
theorem cover_967209 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967209 := by
  apply coveredState_split_literal (state := state_967209) 1
    state_967210 state_967293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967210
  · exact cover_967293
#print axioms cover_967209

def state_967191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 28)))
theorem cover_967191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967191 := by
  apply coveredState_split_literal (state := state_967191) 3
    state_967192 state_967209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967192
  · exact cover_967209
#print axioms cover_967191

def state_967190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 14)))
theorem cover_967190 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967190 := by
  apply coveredState_split_literal (state := state_967190) 4
    state_967191 state_967322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967191
  · exact cover_967322
#print axioms cover_967190

def state_967158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 14)))
theorem cover_967158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967158 := by
  apply coveredState_split_literal (state := state_967158) 2
    state_967159 state_967190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967159
  · exact cover_967190
#print axioms cover_967158

def state_966984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 14)))
theorem cover_966984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966984 := by
  apply coveredState_split_literal (state := state_966984) 1
    state_966985 state_967158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966985
  · exact cover_967158
#print axioms cover_966984

def state_967440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 56)))
theorem cover_967440 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967440 := by
  apply coveredState_split_literal (state := state_967440) 1
    state_967441 state_967456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967441
  · exact cover_967456
#print axioms cover_967440

def state_967439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 56)))
theorem cover_967439 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967439 := by
  apply coveredState_split_literal (state := state_967439) 0
    state_967440 state_967509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967440
  · exact cover_967509
#print axioms cover_967439

def state_967423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 56)))
theorem cover_967423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967423 := by
  apply coveredState_split_literal (state := state_967423) 3
    state_967424 state_967439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967424
  · exact cover_967439
#print axioms cover_967423

def state_967422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 28)))
theorem cover_967422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967422 := by
  apply coveredState_split_literal (state := state_967422) 4
    state_967423 state_967518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967423
  · exact cover_967518
#print axioms cover_967422

def state_967394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
theorem cover_967394 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967394 := by
  apply coveredState_split_literal (state := state_967394) 2
    state_967395 state_967422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967395
  · exact cover_967422
#print axioms cover_967394

def state_967376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
theorem cover_967376 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967376 := by
  apply coveredState_split_literal (state := state_967376) 1
    state_967377 state_967394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967377
  · exact cover_967394
#print axioms cover_967376

def state_967375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
theorem cover_967375 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967375 := by
  apply coveredState_split_literal (state := state_967375) 0
    state_967376 state_967521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967376
  · exact cover_967521
#print axioms cover_967375

def state_967363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 28)))
theorem cover_967363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967363 := by
  apply coveredState_split_literal (state := state_967363) 3
    state_967364 state_967375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967364
  · exact cover_967375
#print axioms cover_967363

def state_967362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 14)))
theorem cover_967362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967362 := by
  apply coveredState_split_literal (state := state_967362) 4
    state_967363 state_967530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967363
  · exact cover_967530
#print axioms cover_967362

def state_967340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 14)))
theorem cover_967340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967340 := by
  apply coveredState_split_literal (state := state_967340) 2
    state_967341 state_967362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967341
  · exact cover_967362
#print axioms cover_967340
end Mub6.Numerical.CircleFullD0.Forest
