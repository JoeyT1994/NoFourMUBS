import D0FullInterface
import D0ForestAssembly0505
import D0ForestAssembly0506
import D0ForestChunk1993
import D0ForestChunk1994
import D0ForestChunk1995
import D0ForestChunk1996
import D0ForestChunk1997
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2559005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 48)))
theorem cover_2559005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559005 := by
  apply coveredState_split_literal (state := state_2559005) 4
    state_2559006 state_2559031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559006
  · exact cover_2559031
#print axioms cover_2559005

def state_2559163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 97)))
theorem cover_2559163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559163 := by
  apply coveredState_split_literal (state := state_2559163) 2
    state_2559164 state_2559209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559164
  · exact cover_2559209
#print axioms cover_2559163

def state_2559162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 97)))
theorem cover_2559162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559162 := by
  apply coveredState_split_literal (state := state_2559162) 0
    state_2559163 state_2559240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559163
  · exact cover_2559240
#print axioms cover_2559162

def state_2559146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 48)))
theorem cover_2559146 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559146 := by
  apply coveredState_split_literal (state := state_2559146) 4
    state_2559147 state_2559162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559147
  · exact cover_2559162
#print axioms cover_2559146

def state_2559004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 48)))
theorem cover_2559004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559004 := by
  apply coveredState_split_literal (state := state_2559004) 1
    state_2559005 state_2559146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559005
  · exact cover_2559146
#print axioms cover_2559004

def state_2558220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 48)))
theorem cover_2558220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558220 := by
  apply coveredState_split_literal (state := state_2558220) 3
    state_2558221 state_2559004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558221
  · exact cover_2559004
#print axioms cover_2558220

def state_2557878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_2557878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557878 := by
  apply coveredState_split_literal (state := state_2557878) 2
    state_2557879 state_2558220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557879
  · exact cover_2558220
#print axioms cover_2557878

def state_2557877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_2557877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557877 := by
  apply coveredState_split_literal (state := state_2557877) 0
    state_2557878 state_2559279
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557878
  · exact cover_2559279
#print axioms cover_2557877

def state_2559359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 98)))
theorem cover_2559359 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559359 := by
  apply coveredState_split_literal (state := state_2559359) 2
    state_2559360 state_2559377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559360
  · exact cover_2559377
#print axioms cover_2559359

def state_2559358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 98)))
theorem cover_2559358 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559358 := by
  apply coveredState_split_literal (state := state_2559358) 0
    state_2559359 state_2559434
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559359
  · exact cover_2559434
#print axioms cover_2559358

def state_2559357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 49)))
theorem cover_2559357 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559357 := by
  apply coveredState_split_literal (state := state_2559357) 4
    state_2559358 state_2559439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559358
  · exact cover_2559439
#print axioms cover_2559357

def state_2559356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 49)))
theorem cover_2559356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559356 := by
  apply coveredState_split_literal (state := state_2559356) 1
    state_2559357 state_2559450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559357
  · exact cover_2559450
#print axioms cover_2559356

def state_2559338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 49)))
theorem cover_2559338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559338 := by
  apply coveredState_split_literal (state := state_2559338) 3
    state_2559339 state_2559356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559339
  · exact cover_2559356
#print axioms cover_2559338

def state_2559519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 49)))
theorem cover_2559519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559519 := by
  apply coveredState_split_literal (state := state_2559519) 1
    state_2559520 state_2559565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559520
  · exact cover_2559565
#print axioms cover_2559519

def state_2559483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 49)))
theorem cover_2559483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559483 := by
  apply coveredState_split_literal (state := state_2559483) 3
    state_2559484 state_2559519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559484
  · exact cover_2559519
#print axioms cover_2559483

def state_2559337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
theorem cover_2559337 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559337 := by
  apply coveredState_split_literal (state := state_2559337) 2
    state_2559338 state_2559483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559338
  · exact cover_2559483
#print axioms cover_2559337

def state_2559336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
theorem cover_2559336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559336 := by
  apply coveredState_split_literal (state := state_2559336) 0
    state_2559337 state_2559628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559337
  · exact cover_2559628
#print axioms cover_2559336

def state_2557876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_2557876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557876 := by
  apply coveredState_split_literal (state := state_2557876) 4
    state_2557877 state_2559336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557877
  · exact cover_2559336
#print axioms cover_2557876

def state_2557634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_2557634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557634 := by
  apply coveredState_split_literal (state := state_2557634) 1
    state_2557635 state_2557876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557635
  · exact cover_2557876
#print axioms cover_2557634

def state_2557384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 24)))
theorem cover_2557384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557384 := by
  apply coveredState_split_literal (state := state_2557384) 3
    state_2557385 state_2557634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557385
  · exact cover_2557634
#print axioms cover_2557384

def state_2559648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 24)))
theorem cover_2559648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559648 := by
  apply coveredState_split_literal (state := state_2559648) 4
    state_2559649 state_2559702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559649
  · exact cover_2559702
#print axioms cover_2559648

def state_2559638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 24)))
theorem cover_2559638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559638 := by
  apply coveredState_split_literal (state := state_2559638) 1
    state_2559639 state_2559648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559639
  · exact cover_2559648
#print axioms cover_2559638

def state_2559773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 48)))
theorem cover_2559773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559773 := by
  apply coveredState_split_literal (state := state_2559773) 4
    state_2559774 state_2559825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559774
  · exact cover_2559825
#print axioms cover_2559773

def state_2559751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 48)))
theorem cover_2559751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559751 := by
  apply coveredState_split_literal (state := state_2559751) 1
    state_2559752 state_2559773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559752
  · exact cover_2559773
#print axioms cover_2559751

def state_2559750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 58 else (if j.val < 4 then 29 else 48)))
theorem cover_2559750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559750 := by
  apply coveredState_split_literal (state := state_2559750) 3
    state_2559751 state_2559848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559751
  · exact cover_2559848
#print axioms cover_2559750

def state_2559749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 48)))
theorem cover_2559749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559749 := by
  apply coveredState_split_literal (state := state_2559749) 2
    state_2559750 state_2559883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559750
  · exact cover_2559883
#print axioms cover_2559749

def state_2559748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 48)))
theorem cover_2559748 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559748 := by
  apply coveredState_split_literal (state := state_2559748) 0
    state_2559749 state_2559886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559749
  · exact cover_2559886
#print axioms cover_2559748

def state_2559747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 24)))
theorem cover_2559747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559747 := by
  apply coveredState_split_literal (state := state_2559747) 4
    state_2559748 state_2559909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559748
  · exact cover_2559909
#print axioms cover_2559747

def state_2559715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 24)))
theorem cover_2559715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559715 := by
  apply coveredState_split_literal (state := state_2559715) 1
    state_2559716 state_2559747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559716
  · exact cover_2559747
#print axioms cover_2559715

def state_2559637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 24)))
theorem cover_2559637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559637 := by
  apply coveredState_split_literal (state := state_2559637) 3
    state_2559638 state_2559715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559638
  · exact cover_2559715
#print axioms cover_2559637

def state_2557383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 24)))
theorem cover_2557383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557383 := by
  apply coveredState_split_literal (state := state_2557383) 2
    state_2557384 state_2559637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557384
  · exact cover_2559637
#print axioms cover_2557383

def state_2557382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_2557382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557382 := by
  apply coveredState_split_literal (state := state_2557382) 4
    state_2557383 state_2559932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557383
  · exact cover_2559932
#print axioms cover_2557382
end Mub6.Numerical.CircleFullD0.Forest
