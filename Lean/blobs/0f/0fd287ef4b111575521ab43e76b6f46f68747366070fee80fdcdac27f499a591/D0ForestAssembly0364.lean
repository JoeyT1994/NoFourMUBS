import D0FullInterface
import D0ForestAssembly0363
import D0ForestChunk1413
import D0ForestChunk1414
import D0ForestChunk1415
import D0ForestChunk1416
import D0ForestChunk1417
import D0ForestChunk1418
import D0ForestChunk1419
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1640113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 9)))
theorem cover_1640113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640113 := by
  apply coveredState_split_literal (state := state_1640113) 3
    state_1640114 state_1640145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640114
  · exact cover_1640145
#print axioms cover_1640113

def state_1640471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 19)))
theorem cover_1640471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640471 := by
  apply coveredState_split_literal (state := state_1640471) 3
    state_1640472 state_1640493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640472
  · exact cover_1640493
#print axioms cover_1640471

def state_1640470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 19)))
theorem cover_1640470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640470 := by
  apply coveredState_split_literal (state := state_1640470) 1
    state_1640471 state_1640554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640471
  · exact cover_1640554
#print axioms cover_1640470

def state_1640469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 19)))
theorem cover_1640469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640469 := by
  apply coveredState_split_literal (state := state_1640469) 0
    state_1640470 state_1640567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640470
  · exact cover_1640567
#print axioms cover_1640469

def state_1640573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 19)))
theorem cover_1640573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640573 := by
  apply coveredState_split_literal (state := state_1640573) 1
    state_1640574 state_1640631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640574
  · exact cover_1640631
#print axioms cover_1640573

def state_1640572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 19)))
theorem cover_1640572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640572 := by
  apply coveredState_split_literal (state := state_1640572) 0
    state_1640573 state_1640640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640573
  · exact cover_1640640
#print axioms cover_1640572

def state_1640468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 19)))
theorem cover_1640468 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640468 := by
  apply coveredState_split_literal (state := state_1640468) 2
    state_1640469 state_1640572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640469
  · exact cover_1640572
#print axioms cover_1640468

def state_1640442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 9)))
theorem cover_1640442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640442 := by
  apply coveredState_split_literal (state := state_1640442) 4
    state_1640443 state_1640468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640443
  · exact cover_1640468
#print axioms cover_1640442

def state_1640432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 9)))
theorem cover_1640432 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640432 := by
  apply coveredState_split_literal (state := state_1640432) 3
    state_1640433 state_1640442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640433
  · exact cover_1640442
#print axioms cover_1640432

def state_1640112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 9)))
theorem cover_1640112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640112 := by
  apply coveredState_split_literal (state := state_1640112) 1
    state_1640113 state_1640432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640113
  · exact cover_1640432
#print axioms cover_1640112

def state_1640111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 9)))
theorem cover_1640111 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640111 := by
  apply coveredState_split_literal (state := state_1640111) 0
    state_1640112 state_1640669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640112
  · exact cover_1640669
#print axioms cover_1640111

def state_1640087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 4)))
theorem cover_1640087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640087 := by
  apply coveredState_split_literal (state := state_1640087) 4
    state_1640088 state_1640111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640088
  · exact cover_1640111
#print axioms cover_1640087

def state_1639987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
theorem cover_1639987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639987 := by
  apply coveredState_split_literal (state := state_1639987) 2
    state_1639988 state_1640087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639988
  · exact cover_1640087
#print axioms cover_1639987

def state_1640721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 9)))
theorem cover_1640721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640721 := by
  apply coveredState_split_literal (state := state_1640721) 1
    state_1640722 state_1640779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640722
  · exact cover_1640779
#print axioms cover_1640721

def state_1640720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 9)))
theorem cover_1640720 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640720 := by
  apply coveredState_split_literal (state := state_1640720) 0
    state_1640721 state_1640804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640721
  · exact cover_1640804
#print axioms cover_1640720

def state_1640718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 4)))
theorem cover_1640718 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640718 := by
  apply coveredState_split_literal (state := state_1640718) 4
    state_1640719 state_1640720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640719
  · exact cover_1640720
#print axioms cover_1640718

def state_1640696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 4)))
theorem cover_1640696 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640696 := by
  apply coveredState_split_literal (state := state_1640696) 2
    state_1640697 state_1640718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640697
  · exact cover_1640718
#print axioms cover_1640696

def state_1639986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1639986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639986 := by
  apply coveredState_split_literal (state := state_1639986) 3
    state_1639987 state_1640696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639987
  · exact cover_1640696
#print axioms cover_1639986

def state_1639985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1639985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639985 := by
  apply coveredState_split_literal (state := state_1639985) 1
    state_1639986 state_1640813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639986
  · exact cover_1640813
#print axioms cover_1639985

def state_1635043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1635043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635043 := by
  apply coveredState_split_literal (state := state_1635043) 0
    state_1635044 state_1639985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635044
  · exact cover_1639985
#print axioms cover_1635043

def state_1640897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 20)))
theorem cover_1640897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640897 := by
  apply coveredState_split_literal (state := state_1640897) 1
    state_1640898 state_1640911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640898
  · exact cover_1640911
#print axioms cover_1640897

def state_1640896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 20)))
theorem cover_1640896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640896 := by
  apply coveredState_split_literal (state := state_1640896) 2
    state_1640897 state_1640962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640897
  · exact cover_1640962
#print axioms cover_1640896

def state_1640895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 10)))
theorem cover_1640895 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640895 := by
  apply coveredState_split_literal (state := state_1640895) 4
    state_1640896 state_1640987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640896
  · exact cover_1640987
#print axioms cover_1640895

def state_1641121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 20)))
theorem cover_1641121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641121 := by
  apply coveredState_split_literal (state := state_1641121) 4
    state_1641122 state_1641181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641122
  · exact cover_1641181
#print axioms cover_1641121

def state_1641120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 20)))
theorem cover_1641120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641120 := by
  apply coveredState_split_literal (state := state_1641120) 2
    state_1641121 state_1641212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641121
  · exact cover_1641212
#print axioms cover_1641120

def state_1641360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 40)))
theorem cover_1641360 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641360 := by
  apply coveredState_split_literal (state := state_1641360) 0
    state_1641361 state_1641414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641361
  · exact cover_1641414
#print axioms cover_1641360

def state_1641314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 40)))
theorem cover_1641314 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641314 := by
  apply coveredState_split_literal (state := state_1641314) 3
    state_1641315 state_1641360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641315
  · exact cover_1641360
#print axioms cover_1641314

def state_1641282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 40)))
theorem cover_1641282 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641282 := by
  apply coveredState_split_literal (state := state_1641282) 1
    state_1641283 state_1641314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641283
  · exact cover_1641314
#print axioms cover_1641282

def state_1641281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 20)))
theorem cover_1641281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641281 := by
  apply coveredState_split_literal (state := state_1641281) 4
    state_1641282 state_1641445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641282
  · exact cover_1641445
#print axioms cover_1641281

def state_1641267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 20)))
theorem cover_1641267 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641267 := by
  apply coveredState_split_literal (state := state_1641267) 2
    state_1641268 state_1641281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641268
  · exact cover_1641281
#print axioms cover_1641267

def state_1641119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 20)))
theorem cover_1641119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641119 := by
  apply coveredState_split_literal (state := state_1641119) 0
    state_1641120 state_1641267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641120
  · exact cover_1641267
#print axioms cover_1641119

def state_1641085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 20)))
theorem cover_1641085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641085 := by
  apply coveredState_split_literal (state := state_1641085) 3
    state_1641086 state_1641119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641086
  · exact cover_1641119
#print axioms cover_1641085
end Mub6.Numerical.CircleFullD0.Forest
