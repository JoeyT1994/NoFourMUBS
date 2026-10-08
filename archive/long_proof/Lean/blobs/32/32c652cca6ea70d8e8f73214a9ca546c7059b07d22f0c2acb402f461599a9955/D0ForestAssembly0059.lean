import D0FullInterface
import D0ForestAssembly0058
import D0ForestChunk0238
import D0ForestChunk0239
import D0ForestChunk0240
import D0ForestChunk0241
import D0ForestChunk0242
import D0ForestChunk0243
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_994498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
theorem cover_994498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994498 := by
  apply coveredState_split_literal (state := state_994498) 3
    state_994499 state_994700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994499
  · exact cover_994700
#print axioms cover_994498

def state_994788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 86)))
theorem cover_994788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994788 := by
  apply coveredState_split_literal (state := state_994788) 1
    state_994789 state_994846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994789
  · exact cover_994846
#print axioms cover_994788

def state_994787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 43)))
theorem cover_994787 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994787 := by
  apply coveredState_split_literal (state := state_994787) 4
    state_994788 state_994857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994788
  · exact cover_994857
#print axioms cover_994787

def state_994904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 43)))
theorem cover_994904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994904 := by
  apply coveredState_split_literal (state := state_994904) 4
    state_994905 state_994940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994905
  · exact cover_994940
#print axioms cover_994904

def state_994786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 43)))
theorem cover_994786 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994786 := by
  apply coveredState_split_literal (state := state_994786) 3
    state_994787 state_994904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994787
  · exact cover_994904
#print axioms cover_994786

def state_994785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 43)))
theorem cover_994785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994785 := by
  apply coveredState_split_literal (state := state_994785) 0
    state_994786 state_994985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994786
  · exact cover_994985
#print axioms cover_994785

def state_994751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 43)))
theorem cover_994751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994751 := by
  apply coveredState_split_literal (state := state_994751) 2
    state_994752 state_994785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994752
  · exact cover_994785
#print axioms cover_994751

def state_994750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 43)))
theorem cover_994750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994750 := by
  apply coveredState_split_literal (state := state_994750) 1
    state_994751 state_995014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994751
  · exact cover_995014
#print axioms cover_994750

def state_994726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 21)))
theorem cover_994726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994726 := by
  apply coveredState_split_literal (state := state_994726) 4
    state_994727 state_994750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994727
  · exact cover_994750
#print axioms cover_994726

def state_994725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 21)))
theorem cover_994725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994725 := by
  apply coveredState_split_literal (state := state_994725) 3
    state_994726 state_995045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994726
  · exact cover_995045
#print axioms cover_994725

def state_994724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 21)))
theorem cover_994724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994724 := by
  apply coveredState_split_literal (state := state_994724) 0
    state_994725 state_995068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994725
  · exact cover_995068
#print axioms cover_994724

def state_994712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 21)))
theorem cover_994712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994712 := by
  apply coveredState_split_literal (state := state_994712) 2
    state_994713 state_994724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994713
  · exact cover_994724
#print axioms cover_994712

def state_994710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 10)))
theorem cover_994710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994710 := by
  apply coveredState_split_literal (state := state_994710) 4
    state_994711 state_994712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994711
  · exact cover_994712
#print axioms cover_994710

def state_994709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
theorem cover_994709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994709 := by
  apply coveredState_split_literal (state := state_994709) 3
    state_994710 state_995083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994710
  · exact cover_995083
#print axioms cover_994709

def state_994497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
theorem cover_994497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994497 := by
  apply coveredState_split_literal (state := state_994497) 1
    state_994498 state_994709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994498
  · exact cover_994709
#print axioms cover_994497

def state_992439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
theorem cover_992439 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992439 := by
  apply coveredState_split_literal (state := state_992439) 0
    state_992440 state_994497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992440
  · exact cover_994497
#print axioms cover_992439

def state_995101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 20)))
theorem cover_995101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995101 := by
  apply coveredState_split_literal (state := state_995101) 0
    state_995102 state_995119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995102
  · exact cover_995119
#print axioms cover_995101

def state_995100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 20)))
theorem cover_995100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995100 := by
  apply coveredState_split_literal (state := state_995100) 2
    state_995101 state_995182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995101
  · exact cover_995182
#print axioms cover_995100

def state_995254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 42)))
theorem cover_995254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995254 := by
  apply coveredState_split_literal (state := state_995254) 2
    state_995255 state_995316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995255
  · exact cover_995316
#print axioms cover_995254

def state_995253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 21)))
theorem cover_995253 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995253 := by
  apply coveredState_split_literal (state := state_995253) 4
    state_995254 state_995321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995254
  · exact cover_995321
#print axioms cover_995253

def state_995362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 21)))
theorem cover_995362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995362 := by
  apply coveredState_split_literal (state := state_995362) 4
    state_995363 state_995420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995363
  · exact cover_995420
#print axioms cover_995362

def state_995252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
theorem cover_995252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995252 := by
  apply coveredState_split_literal (state := state_995252) 3
    state_995253 state_995362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995253
  · exact cover_995362
#print axioms cover_995252

def state_995238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
theorem cover_995238 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995238 := by
  apply coveredState_split_literal (state := state_995238) 1
    state_995239 state_995252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995239
  · exact cover_995252
#print axioms cover_995238

def state_995194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
theorem cover_995194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995194 := by
  apply coveredState_split_literal (state := state_995194) 0
    state_995195 state_995238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995195
  · exact cover_995238
#print axioms cover_995194

def state_995193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 21)))
theorem cover_995193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995193 := by
  apply coveredState_split_literal (state := state_995193) 2
    state_995194 state_995455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995194
  · exact cover_995455
#print axioms cover_995193

def state_995099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 10)))
theorem cover_995099 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995099 := by
  apply coveredState_split_literal (state := state_995099) 4
    state_995100 state_995193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995100
  · exact cover_995193
#print axioms cover_995099

def state_995471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 20)))
theorem cover_995471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995471 := by
  apply coveredState_split_literal (state := state_995471) 2
    state_995472 state_995521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995472
  · exact cover_995521
#print axioms cover_995471

def state_995547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 21)))
theorem cover_995547 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995547 := by
  apply coveredState_split_literal (state := state_995547) 0
    state_995548 state_995571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995548
  · exact cover_995571
#print axioms cover_995547

def state_995546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 21)))
theorem cover_995546 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995546 := by
  apply coveredState_split_literal (state := state_995546) 2
    state_995547 state_995634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995547
  · exact cover_995634
#print axioms cover_995546

def state_995470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 10)))
theorem cover_995470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995470 := by
  apply coveredState_split_literal (state := state_995470) 4
    state_995471 state_995546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995471
  · exact cover_995546
#print axioms cover_995470

def state_995098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_995098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995098 := by
  apply coveredState_split_literal (state := state_995098) 3
    state_995099 state_995470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995099
  · exact cover_995470
#print axioms cover_995098

def state_995861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 86)))
theorem cover_995861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995861 := by
  apply coveredState_split_literal (state := state_995861) 3
    state_995862 state_995873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995862
  · exact cover_995873
#print axioms cover_995861
end Mub6.Numerical.CircleFullD0.Forest
