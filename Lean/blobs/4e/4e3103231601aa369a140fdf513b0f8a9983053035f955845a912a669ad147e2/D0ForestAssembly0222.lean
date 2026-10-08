import D0FullInterface
import D0ForestAssembly0220
import D0ForestAssembly0221
import D0ForestChunk0833
import D0ForestChunk0838
import D0ForestChunk0839
import D0ForestChunk0840
import D0ForestChunk0841
import D0ForestChunk0842
import D0ForestChunk0843
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1500632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 14)))
theorem cover_1500632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500632 := by
  apply coveredState_split_literal (state := state_1500632) 4
    state_1500633 state_1500658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500633
  · exact cover_1500658
#print axioms cover_1500632

def state_1500631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 14)))
theorem cover_1500631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500631 := by
  apply coveredState_split_literal (state := state_1500631) 3
    state_1500632 state_1501999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500632
  · exact cover_1501999
#print axioms cover_1500631

def state_1502023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 42 else (if j.val < 4 then 26 else 29)))
theorem cover_1502023 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502023 := by
  apply coveredState_split_literal (state := state_1502023) 3
    state_1502024 state_1502049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502024
  · exact cover_1502049
#print axioms cover_1502023

def state_1502022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 29)))
theorem cover_1502022 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502022 := by
  apply coveredState_split_literal (state := state_1502022) 2
    state_1502023 state_1502112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502023
  · exact cover_1502112
#print axioms cover_1502022

def state_1502021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 29)))
theorem cover_1502021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502021 := by
  apply coveredState_split_literal (state := state_1502021) 1
    state_1502022 state_1502119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502022
  · exact cover_1502119
#print axioms cover_1502021

def state_1502013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 29)))
theorem cover_1502013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502013 := by
  apply coveredState_split_literal (state := state_1502013) 0
    state_1502014 state_1502021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502014
  · exact cover_1502021
#print axioms cover_1502013

def state_1502011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 14)))
theorem cover_1502011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502011 := by
  apply coveredState_split_literal (state := state_1502011) 4
    state_1502012 state_1502013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502012
  · exact cover_1502013
#print axioms cover_1502011

def state_1502178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 14)))
theorem cover_1502178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502178 := by
  apply coveredState_split_literal (state := state_1502178) 4
    state_1502179 state_1502186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502179
  · exact cover_1502186
#print axioms cover_1502178

def state_1502010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 14)))
theorem cover_1502010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502010 := by
  apply coveredState_split_literal (state := state_1502010) 3
    state_1502011 state_1502178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502011
  · exact cover_1502178
#print axioms cover_1502010

def state_1500630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1500630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500630 := by
  apply coveredState_split_literal (state := state_1500630) 2
    state_1500631 state_1502010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500631
  · exact cover_1502010
#print axioms cover_1500630

def state_1499660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1499660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499660 := by
  apply coveredState_split_literal (state := state_1499660) 1
    state_1499661 state_1500630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499661
  · exact cover_1500630
#print axioms cover_1499660

def state_1502269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 57)))
theorem cover_1502269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502269 := by
  apply coveredState_split_literal (state := state_1502269) 1
    state_1502270 state_1502325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502270
  · exact cover_1502325
#print axioms cover_1502269

def state_1502253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 28)))
theorem cover_1502253 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502253 := by
  apply coveredState_split_literal (state := state_1502253) 4
    state_1502254 state_1502269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502254
  · exact cover_1502269
#print axioms cover_1502253

def state_1502252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 28)))
theorem cover_1502252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502252 := by
  apply coveredState_split_literal (state := state_1502252) 3
    state_1502253 state_1502358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502253
  · exact cover_1502358
#print axioms cover_1502252

def state_1502251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 28)))
theorem cover_1502251 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502251 := by
  apply coveredState_split_literal (state := state_1502251) 0
    state_1502252 state_1502395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502252
  · exact cover_1502395
#print axioms cover_1502251

def state_1502468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 41) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 58)))
theorem cover_1502468 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502468 := by
  apply coveredState_split_literal (state := state_1502468) 3
    state_1502469 state_1502530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502469
  · exact cover_1502530
#print axioms cover_1502468

def state_1502467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 41) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 58)))
theorem cover_1502467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502467 := by
  apply coveredState_split_literal (state := state_1502467) 0
    state_1502468 state_1502577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502468
  · exact cover_1502577
#print axioms cover_1502467

def state_1502447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 41) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 58)))
theorem cover_1502447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502447 := by
  apply coveredState_split_literal (state := state_1502447) 2
    state_1502448 state_1502467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502448
  · exact cover_1502467
#print axioms cover_1502447

def state_1502425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 58)))
theorem cover_1502425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502425 := by
  apply coveredState_split_literal (state := state_1502425) 1
    state_1502426 state_1502447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502426
  · exact cover_1502447
#print axioms cover_1502425

def state_1502424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 29)))
theorem cover_1502424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502424 := by
  apply coveredState_split_literal (state := state_1502424) 4
    state_1502425 state_1502602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502425
  · exact cover_1502602
#print axioms cover_1502424

def state_1502423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
theorem cover_1502423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502423 := by
  apply coveredState_split_literal (state := state_1502423) 3
    state_1502424 state_1502627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502424
  · exact cover_1502627
#print axioms cover_1502423

def state_1502422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
theorem cover_1502422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502422 := by
  apply coveredState_split_literal (state := state_1502422) 0
    state_1502423 state_1502686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502423
  · exact cover_1502686
#print axioms cover_1502422

def state_1502250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 14)))
theorem cover_1502250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502250 := by
  apply coveredState_split_literal (state := state_1502250) 4
    state_1502251 state_1502422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502251
  · exact cover_1502422
#print axioms cover_1502250

def state_1502249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 14)))
theorem cover_1502249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502249 := by
  apply coveredState_split_literal (state := state_1502249) 3
    state_1502250 state_1502699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502250
  · exact cover_1502699
#print axioms cover_1502249

def state_1502763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 29)))
theorem cover_1502763 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502763 := by
  apply coveredState_split_literal (state := state_1502763) 0
    state_1502764 state_1502827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502764
  · exact cover_1502827
#print axioms cover_1502763

def state_1502731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 14)))
theorem cover_1502731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502731 := by
  apply coveredState_split_literal (state := state_1502731) 4
    state_1502732 state_1502763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502732
  · exact cover_1502763
#print axioms cover_1502731

def state_1502850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 14)))
theorem cover_1502850 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502850 := by
  apply coveredState_split_literal (state := state_1502850) 4
    state_1502851 state_1502876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502851
  · exact cover_1502876
#print axioms cover_1502850

def state_1502730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 14)))
theorem cover_1502730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502730 := by
  apply coveredState_split_literal (state := state_1502730) 3
    state_1502731 state_1502850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502731
  · exact cover_1502850
#print axioms cover_1502730

def state_1502248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1502248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502248 := by
  apply coveredState_split_literal (state := state_1502248) 2
    state_1502249 state_1502730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502249
  · exact cover_1502730
#print axioms cover_1502248

def state_1502950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 58)))
theorem cover_1502950 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502950 := by
  apply coveredState_split_literal (state := state_1502950) 3
    state_1502951 state_1503006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502951
  · exact cover_1503006
#print axioms cover_1502950

def state_1502949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 58)))
theorem cover_1502949 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502949 := by
  apply coveredState_split_literal (state := state_1502949) 0
    state_1502950 state_1503021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502950
  · exact cover_1503021
#print axioms cover_1502949

def state_1502937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 58)))
theorem cover_1502937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502937 := by
  apply coveredState_split_literal (state := state_1502937) 2
    state_1502938 state_1502949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502938
  · exact cover_1502949
#print axioms cover_1502937
end Mub6.Numerical.CircleFullD0.Forest
