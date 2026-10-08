import D0FullInterface
import D0ForestAssembly0445
import D0ForestChunk1747
import D0ForestChunk1748
import D0ForestChunk1749
import D0ForestChunk1750
import D0ForestChunk1751
import D0ForestChunk1752
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2292521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 47)))
theorem cover_2292521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292521 := by
  apply coveredState_split_literal (state := state_2292521) 0
    state_2292522 state_2292563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292522
  · exact cover_2292563
#print axioms cover_2292521

def state_2292515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 47)))
theorem cover_2292515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292515 := by
  apply coveredState_split_literal (state := state_2292515) 1
    state_2292516 state_2292521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292516
  · exact cover_2292521
#print axioms cover_2292515

def state_2292227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 23)))
theorem cover_2292227 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292227 := by
  apply coveredState_split_literal (state := state_2292227) 4
    state_2292228 state_2292515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292228
  · exact cover_2292515
#print axioms cover_2292227

def state_2292157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 23)))
theorem cover_2292157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292157 := by
  apply coveredState_split_literal (state := state_2292157) 2
    state_2292158 state_2292227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292158
  · exact cover_2292227
#print axioms cover_2292157

def state_2292669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 16 else (if j.val < 4 then 55 else 46)))
theorem cover_2292669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292669 := by
  apply coveredState_split_literal (state := state_2292669) 2
    state_2292670 state_2292727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292670
  · exact cover_2292727
#print axioms cover_2292669

def state_2292631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 46)))
theorem cover_2292631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292631 := by
  apply coveredState_split_literal (state := state_2292631) 3
    state_2292632 state_2292669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292632
  · exact cover_2292669
#print axioms cover_2292631

def state_2292589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 46)))
theorem cover_2292589 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292589 := by
  apply coveredState_split_literal (state := state_2292589) 0
    state_2292590 state_2292631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292590
  · exact cover_2292631
#print axioms cover_2292589

def state_2292802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 33 else (if j.val < 4 then 54 else 92)))
theorem cover_2292802 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292802 := by
  apply coveredState_split_literal (state := state_2292802) 1
    state_2292803 state_2292848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292803
  · exact cover_2292848
#print axioms cover_2292802

def state_2292801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 33 else (if j.val < 4 then 54 else 46)))
theorem cover_2292801 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292801 := by
  apply coveredState_split_literal (state := state_2292801) 4
    state_2292802 state_2292905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292802
  · exact cover_2292905
#print axioms cover_2292801

def state_2292767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 54 else 46)))
theorem cover_2292767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292767 := by
  apply coveredState_split_literal (state := state_2292767) 2
    state_2292768 state_2292801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292768
  · exact cover_2292801
#print axioms cover_2292767

def state_2292975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 33 else (if j.val < 4 then 55 else 92)))
theorem cover_2292975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292975 := by
  apply coveredState_split_literal (state := state_2292975) 1
    state_2292976 state_2293037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292976
  · exact cover_2293037
#print axioms cover_2292975

def state_2292974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 33 else (if j.val < 4 then 55 else 46)))
theorem cover_2292974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292974 := by
  apply coveredState_split_literal (state := state_2292974) 4
    state_2292975 state_2293068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292975
  · exact cover_2293068
#print axioms cover_2292974

def state_2292936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 55 else 46)))
theorem cover_2292936 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292936 := by
  apply coveredState_split_literal (state := state_2292936) 2
    state_2292937 state_2292974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292937
  · exact cover_2292974
#print axioms cover_2292936

def state_2292766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 46)))
theorem cover_2292766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292766 := by
  apply coveredState_split_literal (state := state_2292766) 3
    state_2292767 state_2292936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292767
  · exact cover_2292936
#print axioms cover_2292766

def state_2292740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 46)))
theorem cover_2292740 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292740 := by
  apply coveredState_split_literal (state := state_2292740) 0
    state_2292741 state_2292766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292741
  · exact cover_2292766
#print axioms cover_2292740

def state_2292588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 46)))
theorem cover_2292588 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292588 := by
  apply coveredState_split_literal (state := state_2292588) 1
    state_2292589 state_2292740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292589
  · exact cover_2292740
#print axioms cover_2292588

def state_2292587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 23)))
theorem cover_2292587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292587 := by
  apply coveredState_split_literal (state := state_2292587) 4
    state_2292588 state_2293081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292588
  · exact cover_2293081
#print axioms cover_2292587

def state_2293244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 108 else 92)))
theorem cover_2293244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293244 := by
  apply coveredState_split_literal (state := state_2293244) 2
    state_2293245 state_2293266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293245
  · exact cover_2293266
#print axioms cover_2293244

def state_2293243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 92)))
theorem cover_2293243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293243 := by
  apply coveredState_split_literal (state := state_2293243) 3
    state_2293244 state_2293321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293244
  · exact cover_2293321
#print axioms cover_2293243

def state_2293401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 68 else (if j.val < 4 then 109 else 92)))
theorem cover_2293401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293401 := by
  apply coveredState_split_literal (state := state_2293401) 4
    state_2293402 state_2293463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293402
  · exact cover_2293463
#print axioms cover_2293401

def state_2293490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 207) else (if j.val < 3 then 69 else (if j.val < 4 then 109 else 184)))
theorem cover_2293490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293490 := by
  apply coveredState_split_literal (state := state_2293490) 3
    state_2293491 state_2293530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293491
  · exact cover_2293530
#print axioms cover_2293490

def state_2293489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 207) else (if j.val < 3 then 69 else (if j.val < 4 then 109 else 184)))
theorem cover_2293489 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293489 := by
  apply coveredState_split_literal (state := state_2293489) 0
    state_2293490 state_2293555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293490
  · exact cover_2293555
#print axioms cover_2293489

def state_2293477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 69 else (if j.val < 4 then 109 else 184)))
theorem cover_2293477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293477 := by
  apply coveredState_split_literal (state := state_2293477) 1
    state_2293478 state_2293489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293478
  · exact cover_2293489
#print axioms cover_2293477

def state_2293476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 69 else (if j.val < 4 then 109 else 92)))
theorem cover_2293476 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293476 := by
  apply coveredState_split_literal (state := state_2293476) 4
    state_2293477 state_2293582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293477
  · exact cover_2293582
#print axioms cover_2293476

def state_2293400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 109 else 92)))
theorem cover_2293400 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293400 := by
  apply coveredState_split_literal (state := state_2293400) 2
    state_2293401 state_2293476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293401
  · exact cover_2293476
#print axioms cover_2293400

def state_2293384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 92)))
theorem cover_2293384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293384 := by
  apply coveredState_split_literal (state := state_2293384) 3
    state_2293385 state_2293400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293385
  · exact cover_2293400
#print axioms cover_2293384

def state_2293242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 92)))
theorem cover_2293242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293242 := by
  apply coveredState_split_literal (state := state_2293242) 0
    state_2293243 state_2293384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293243
  · exact cover_2293384
#print axioms cover_2293242

def state_2293204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 92)))
theorem cover_2293204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293204 := by
  apply coveredState_split_literal (state := state_2293204) 1
    state_2293205 state_2293242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293205
  · exact cover_2293242
#print axioms cover_2293204

def state_2293203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 46)))
theorem cover_2293203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293203 := by
  apply coveredState_split_literal (state := state_2293203) 4
    state_2293204 state_2293607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293204
  · exact cover_2293607
#print axioms cover_2293203

def state_2293686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 103) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 92)))
theorem cover_2293686 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293686 := by
  apply coveredState_split_literal (state := state_2293686) 3
    state_2293687 state_2293744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293687
  · exact cover_2293744
#print axioms cover_2293686

def state_2293685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 103) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 92)))
theorem cover_2293685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293685 := by
  apply coveredState_split_literal (state := state_2293685) 0
    state_2293686 state_2293757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293686
  · exact cover_2293757
#print axioms cover_2293685

def state_2293669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 92)))
theorem cover_2293669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293669 := by
  apply coveredState_split_literal (state := state_2293669) 1
    state_2293670 state_2293685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293670
  · exact cover_2293685
#print axioms cover_2293669
end Mub6.Numerical.CircleFullD0.Forest
