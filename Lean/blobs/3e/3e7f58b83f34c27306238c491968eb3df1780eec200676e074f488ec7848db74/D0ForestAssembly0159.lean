import D0FullInterface
import D0ForestAssembly0153
import D0ForestAssembly0154
import D0ForestAssembly0158
import D0ForestChunk0589
import D0ForestChunk0606
import D0ForestChunk0607
import D0ForestChunk0608
import D0ForestChunk0609
import D0ForestChunk0610
import D0ForestChunk0611
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1334968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 51)))
theorem cover_1334968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334968 := by
  apply coveredState_split_literal (state := state_1334968) 1
    state_1334969 state_1334970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334969
  · exact cover_1334970
#print axioms cover_1334968

def state_1334967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 51)))
theorem cover_1334967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334967 := by
  apply coveredState_split_literal (state := state_1334967) 0
    state_1334968 state_1335087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334968
  · exact cover_1335087
#print axioms cover_1334967

def state_1334917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 25)))
theorem cover_1334917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334917 := by
  apply coveredState_split_literal (state := state_1334917) 4
    state_1334918 state_1334967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334918
  · exact cover_1334967
#print axioms cover_1334917

def state_1334909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 23 else 25)))
theorem cover_1334909 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334909 := by
  apply coveredState_split_literal (state := state_1334909) 3
    state_1334910 state_1334917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334910
  · exact cover_1334917
#print axioms cover_1334909

def state_1334745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 25)))
theorem cover_1334745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334745 := by
  apply coveredState_split_literal (state := state_1334745) 2
    state_1334746 state_1334909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334746
  · exact cover_1334909
#print axioms cover_1334745

def state_1335112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 25)))
theorem cover_1335112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335112 := by
  apply coveredState_split_literal (state := state_1335112) 4
    state_1335113 state_1335114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335113
  · exact cover_1335114
#print axioms cover_1335112

def state_1335110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 31 else (if j.val < 4 then 23 else 25)))
theorem cover_1335110 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335110 := by
  apply coveredState_split_literal (state := state_1335110) 3
    state_1335111 state_1335112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335111
  · exact cover_1335112
#print axioms cover_1335110

def state_1335088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 25)))
theorem cover_1335088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335088 := by
  apply coveredState_split_literal (state := state_1335088) 2
    state_1335089 state_1335110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335089
  · exact cover_1335110
#print axioms cover_1335088

def state_1334744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 25)))
theorem cover_1334744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334744 := by
  apply coveredState_split_literal (state := state_1334744) 1
    state_1334745 state_1335088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334745
  · exact cover_1335088
#print axioms cover_1334744

def state_1334743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 25)))
theorem cover_1334743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334743 := by
  apply coveredState_split_literal (state := state_1334743) 0
    state_1334744 state_1335177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334744
  · exact cover_1335177
#print axioms cover_1334743

def state_1334687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 12)))
theorem cover_1334687 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334687 := by
  apply coveredState_split_literal (state := state_1334687) 4
    state_1334688 state_1334743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334688
  · exact cover_1334743
#print axioms cover_1334687

def state_1334679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 12)))
theorem cover_1334679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334679 := by
  apply coveredState_split_literal (state := state_1334679) 3
    state_1334680 state_1334687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334680
  · exact cover_1334687
#print axioms cover_1334679

def state_1334517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 12)))
theorem cover_1334517 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334517 := by
  apply coveredState_split_literal (state := state_1334517) 2
    state_1334518 state_1334679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334518
  · exact cover_1334679
#print axioms cover_1334517

def state_1334319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 12)))
theorem cover_1334319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334319 := by
  apply coveredState_split_literal (state := state_1334319) 1
    state_1334320 state_1334517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334320
  · exact cover_1334517
#print axioms cover_1334319

def state_1335186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 13)))
theorem cover_1335186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335186 := by
  apply coveredState_split_literal (state := state_1335186) 2
    state_1335187 state_1335202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335187
  · exact cover_1335202
#print axioms cover_1335186

def state_1335184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 13)))
theorem cover_1335184 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335184 := by
  apply coveredState_split_literal (state := state_1335184) 1
    state_1335185 state_1335186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335185
  · exact cover_1335186
#print axioms cover_1335184

def state_1334318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 6)))
theorem cover_1334318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334318 := by
  apply coveredState_split_literal (state := state_1334318) 4
    state_1334319 state_1335184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334319
  · exact cover_1335184
#print axioms cover_1334318

def state_1334302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_1334302 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334302 := by
  apply coveredState_split_literal (state := state_1334302) 3
    state_1334303 state_1334318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334303
  · exact cover_1334318
#print axioms cover_1334302

def state_1330386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_1330386 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330386 := by
  apply coveredState_split_literal (state := state_1330386) 0
    state_1330387 state_1334302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330387
  · exact cover_1334302
#print axioms cover_1330386

def state_1330385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_1330385 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330385 := by
  apply coveredState_split_literal (state := state_1330385) 4
    state_1330386 state_1335253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330386
  · exact cover_1335253
#print axioms cover_1330385

def state_1330373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_1330373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330373 := by
  apply coveredState_split_literal (state := state_1330373) 3
    state_1330374 state_1330385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330374
  · exact cover_1330385
#print axioms cover_1330373

def state_1330009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1330009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330009 := by
  apply coveredState_split_literal (state := state_1330009) 2
    state_1330010 state_1330373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330010
  · exact cover_1330373
#print axioms cover_1330009

def state_1335286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_1335286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335286 := by
  apply coveredState_split_literal (state := state_1335286) 3
    state_1335287 state_1335292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335287
  · exact cover_1335292
#print axioms cover_1335286

def state_1335260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1335260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335260 := by
  apply coveredState_split_literal (state := state_1335260) 2
    state_1335261 state_1335286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335261
  · exact cover_1335286
#print axioms cover_1335260

def state_1330008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1330008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330008 := by
  apply coveredState_split_literal (state := state_1330008) 1
    state_1330009 state_1335260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330009
  · exact cover_1335260
#print axioms cover_1330008

def state_1335353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1335353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335353 := by
  apply coveredState_split_literal (state := state_1335353) 1
    state_1335354 state_1335387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335354
  · exact cover_1335387
#print axioms cover_1335353

def state_1330007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1330007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330007 := by
  apply coveredState_split_literal (state := state_1330007) 0
    state_1330008 state_1335353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330008
  · exact cover_1335353
#print axioms cover_1330007

def state_1327471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1327471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327471 := by
  apply coveredState_split_literal (state := state_1327471) 4
    state_1327472 state_1330007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327472
  · exact cover_1330007
#print axioms cover_1327471

def state_1335431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1335431 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335431 := by
  apply coveredState_split_literal (state := state_1335431) 2
    state_1335432 state_1335477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335432
  · exact cover_1335477
#print axioms cover_1335431

def state_1335540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1335540 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335540 := by
  apply coveredState_split_literal (state := state_1335540) 2
    state_1335541 state_1335574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335541
  · exact cover_1335574
#print axioms cover_1335540

def state_1335430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1335430 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335430 := by
  apply coveredState_split_literal (state := state_1335430) 1
    state_1335431 state_1335540
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335431
  · exact cover_1335540
#print axioms cover_1335430

def state_1335429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1335429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335429 := by
  apply coveredState_split_literal (state := state_1335429) 0
    state_1335430 state_1335621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335430
  · exact cover_1335621
#print axioms cover_1335429
end Mub6.Numerical.CircleFullD0.Forest
