import CircleFullInterface
import CircleForestAssembly0501
import CircleForestChunk1973
import CircleForestChunk1974
import CircleForestChunk1975
import CircleForestChunk1976
import CircleForestChunk1977
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2553876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_2553876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553876 := by
  apply coveredState_split_literal (state := state_2553876) 4
    state_2553877 state_2554154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553877
  · exact cover_2554154
#print axioms cover_2553876

def state_2553786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_2553786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553786 := by
  apply coveredState_split_literal (state := state_2553786) 1
    state_2553787 state_2553876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553787
  · exact cover_2553876
#print axioms cover_2553786

def state_2554229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 24)))
theorem cover_2554229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554229 := by
  apply coveredState_split_literal (state := state_2554229) 3
    state_2554230 state_2554287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554230
  · exact cover_2554287
#print axioms cover_2554229

def state_2554227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_2554227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554227 := by
  apply coveredState_split_literal (state := state_2554227) 2
    state_2554228 state_2554229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554228
  · exact cover_2554229
#print axioms cover_2554227

def state_2554189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_2554189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554189 := by
  apply coveredState_split_literal (state := state_2554189) 0
    state_2554190 state_2554227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554190
  · exact cover_2554227
#print axioms cover_2554189

def state_2554356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 25)))
theorem cover_2554356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554356 := by
  apply coveredState_split_literal (state := state_2554356) 3
    state_2554357 state_2554368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554357
  · exact cover_2554368
#print axioms cover_2554356

def state_2554334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_2554334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554334 := by
  apply coveredState_split_literal (state := state_2554334) 2
    state_2554335 state_2554356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554335
  · exact cover_2554356
#print axioms cover_2554334

def state_2554322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_2554322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554322 := by
  apply coveredState_split_literal (state := state_2554322) 0
    state_2554323 state_2554334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554323
  · exact cover_2554334
#print axioms cover_2554322

def state_2554188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_2554188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554188 := by
  apply coveredState_split_literal (state := state_2554188) 4
    state_2554189 state_2554322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554189
  · exact cover_2554322
#print axioms cover_2554188

def state_2554532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 55 else (if j.val < 4 then 30 else 49)))
theorem cover_2554532 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554532 := by
  apply coveredState_split_literal (state := state_2554532) 3
    state_2554533 state_2554558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554533
  · exact cover_2554558
#print axioms cover_2554532

def state_2554530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 49)))
theorem cover_2554530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554530 := by
  apply coveredState_split_literal (state := state_2554530) 2
    state_2554531 state_2554532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554531
  · exact cover_2554532
#print axioms cover_2554530

def state_2554504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 49)))
theorem cover_2554504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554504 := by
  apply coveredState_split_literal (state := state_2554504) 0
    state_2554505 state_2554530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554505
  · exact cover_2554530
#print axioms cover_2554504

def state_2554474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 24)))
theorem cover_2554474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554474 := by
  apply coveredState_split_literal (state := state_2554474) 4
    state_2554475 state_2554504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554475
  · exact cover_2554504
#print axioms cover_2554474

def state_2554607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 24)))
theorem cover_2554607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554607 := by
  apply coveredState_split_literal (state := state_2554607) 4
    state_2554608 state_2554617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554608
  · exact cover_2554617
#print axioms cover_2554607

def state_2554473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 24)))
theorem cover_2554473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554473 := by
  apply coveredState_split_literal (state := state_2554473) 1
    state_2554474 state_2554607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554474
  · exact cover_2554607
#print axioms cover_2554473

def state_2554680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 24)))
theorem cover_2554680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554680 := by
  apply coveredState_split_literal (state := state_2554680) 1
    state_2554681 state_2554744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554681
  · exact cover_2554744
#print axioms cover_2554680

def state_2554472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 24)))
theorem cover_2554472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554472 := by
  apply coveredState_split_literal (state := state_2554472) 3
    state_2554473 state_2554680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554473
  · exact cover_2554680
#print axioms cover_2554472

def state_2554470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_2554470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554470 := by
  apply coveredState_split_literal (state := state_2554470) 2
    state_2554471 state_2554472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554471
  · exact cover_2554472
#print axioms cover_2554470

def state_2554422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_2554422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554422 := by
  apply coveredState_split_literal (state := state_2554422) 0
    state_2554423 state_2554470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554423
  · exact cover_2554470
#print axioms cover_2554422

def state_2554840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 25)))
theorem cover_2554840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554840 := by
  apply coveredState_split_literal (state := state_2554840) 1
    state_2554841 state_2554874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554841
  · exact cover_2554874
#print axioms cover_2554840

def state_2555015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 55 else (if j.val < 4 then 63 else 50)))
theorem cover_2555015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555015 := by
  apply coveredState_split_literal (state := state_2555015) 1
    state_2555016 state_2555055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555016
  · exact cover_2555055
#print axioms cover_2555015

def state_2554959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 55 else (if j.val < 4 then 31 else 50)))
theorem cover_2554959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554959 := by
  apply coveredState_split_literal (state := state_2554959) 3
    state_2554960 state_2555015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554960
  · exact cover_2555015
#print axioms cover_2554959

def state_2554939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 50)))
theorem cover_2554939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554939 := by
  apply coveredState_split_literal (state := state_2554939) 2
    state_2554940 state_2554959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554940
  · exact cover_2554959
#print axioms cover_2554939

def state_2554911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 50)))
theorem cover_2554911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554911 := by
  apply coveredState_split_literal (state := state_2554911) 0
    state_2554912 state_2554939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554912
  · exact cover_2554939
#print axioms cover_2554911

def state_2554910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 25)))
theorem cover_2554910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554910 := by
  apply coveredState_split_literal (state := state_2554910) 4
    state_2554911 state_2555092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554911
  · exact cover_2555092
#print axioms cover_2554910

def state_2554909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 25)))
theorem cover_2554909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554909 := by
  apply coveredState_split_literal (state := state_2554909) 1
    state_2554910 state_2555119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554910
  · exact cover_2555119
#print axioms cover_2554909

def state_2554839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 25)))
theorem cover_2554839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554839 := by
  apply coveredState_split_literal (state := state_2554839) 3
    state_2554840 state_2554909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554840
  · exact cover_2554909
#print axioms cover_2554839

def state_2554803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_2554803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554803 := by
  apply coveredState_split_literal (state := state_2554803) 2
    state_2554804 state_2554839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554804
  · exact cover_2554839
#print axioms cover_2554803

def state_2554765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_2554765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554765 := by
  apply coveredState_split_literal (state := state_2554765) 0
    state_2554766 state_2554803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554766
  · exact cover_2554803
#print axioms cover_2554765

def state_2554421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_2554421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554421 := by
  apply coveredState_split_literal (state := state_2554421) 4
    state_2554422 state_2554765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554422
  · exact cover_2554765
#print axioms cover_2554421

def state_2554187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_2554187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554187 := by
  apply coveredState_split_literal (state := state_2554187) 1
    state_2554188 state_2554421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554188
  · exact cover_2554421
#print axioms cover_2554187

def state_2553785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_2553785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553785 := by
  apply coveredState_split_literal (state := state_2553785) 3
    state_2553786 state_2554187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553786
  · exact cover_2554187
#print axioms cover_2553785
end Mub6.Numerical.CircleFullD0.Forest
