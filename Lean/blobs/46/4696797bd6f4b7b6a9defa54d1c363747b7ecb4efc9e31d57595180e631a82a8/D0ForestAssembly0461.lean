import D0FullInterface
import D0ForestAssembly0455
import D0ForestAssembly0457
import D0ForestAssembly0458
import D0ForestAssembly0460
import D0ForestChunk1735
import D0ForestChunk1792
import D0ForestChunk1807
import D0ForestChunk1809
import D0ForestChunk1810
import D0ForestChunk1811
import D0ForestChunk1812
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2306893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
theorem cover_2306893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306893 := by
  apply coveredState_split_literal (state := state_2306893) 3
    state_2306894 state_2306917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306894
  · exact cover_2306917
#print axioms cover_2306893

def state_2307458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 23)))
theorem cover_2307458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307458 := by
  apply coveredState_split_literal (state := state_2307458) 4
    state_2307459 state_2307510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307459
  · exact cover_2307510
#print axioms cover_2307458

def state_2307432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 23)))
theorem cover_2307432 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307432 := by
  apply coveredState_split_literal (state := state_2307432) 2
    state_2307433 state_2307458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307433
  · exact cover_2307458
#print axioms cover_2307432

def state_2307428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
theorem cover_2307428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307428 := by
  apply coveredState_split_literal (state := state_2307428) 3
    state_2307429 state_2307432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307429
  · exact cover_2307432
#print axioms cover_2307428

def state_2306892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
theorem cover_2306892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306892 := by
  apply coveredState_split_literal (state := state_2306892) 1
    state_2306893 state_2307428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306893
  · exact cover_2307428
#print axioms cover_2306892

def state_2304550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_2304550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304550 := by
  apply coveredState_split_literal (state := state_2304550) 4
    state_2304551 state_2306892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304551
  · exact cover_2306892
#print axioms cover_2304550

def state_2304549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_2304549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304549 := by
  apply coveredState_split_literal (state := state_2304549) 0
    state_2304550 state_2307523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304550
  · exact cover_2307523
#print axioms cover_2304549

def state_2303371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_2303371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303371 := by
  apply coveredState_split_literal (state := state_2303371) 2
    state_2303372 state_2304549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303372
  · exact cover_2304549
#print axioms cover_2303371

def state_2303289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_2303289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303289 := by
  apply coveredState_split_literal (state := state_2303289) 4
    state_2303290 state_2303371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303290
  · exact cover_2303371
#print axioms cover_2303289

def state_2303271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2303271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303271 := by
  apply coveredState_split_literal (state := state_2303271) 3
    state_2303272 state_2303289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303272
  · exact cover_2303289
#print axioms cover_2303271

def state_2302151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2302151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302151 := by
  apply coveredState_split_literal (state := state_2302151) 1
    state_2302152 state_2303271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302152
  · exact cover_2303271
#print axioms cover_2302151

def state_2289803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2289803 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289803 := by
  apply coveredState_split_literal (state := state_2289803) 0
    state_2289804 state_2302151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289804
  · exact cover_2302151
#print axioms cover_2289803

def state_2289769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_2289769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289769 := by
  apply coveredState_split_literal (state := state_2289769) 4
    state_2289770 state_2289803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289770
  · exact cover_2289803
#print axioms cover_2289769

def state_2307648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
theorem cover_2307648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307648 := by
  apply coveredState_split_literal (state := state_2307648) 4
    state_2307649 state_2307674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307649
  · exact cover_2307674
#print axioms cover_2307648

def state_2307638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
theorem cover_2307638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307638 := by
  apply coveredState_split_literal (state := state_2307638) 1
    state_2307639 state_2307648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307639
  · exact cover_2307648
#print axioms cover_2307638

def state_2307637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 11)))
theorem cover_2307637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307637 := by
  apply coveredState_split_literal (state := state_2307637) 3
    state_2307638 state_2307731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307638
  · exact cover_2307731
#print axioms cover_2307637

def state_2307636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_2307636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307636 := by
  apply coveredState_split_literal (state := state_2307636) 2
    state_2307637 state_2307732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307637
  · exact cover_2307732
#print axioms cover_2307636

def state_2307612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_2307612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307612 := by
  apply coveredState_split_literal (state := state_2307612) 4
    state_2307613 state_2307636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307613
  · exact cover_2307636
#print axioms cover_2307612

def state_2307862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
theorem cover_2307862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307862 := by
  apply coveredState_split_literal (state := state_2307862) 2
    state_2307863 state_2307906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307863
  · exact cover_2307906
#print axioms cover_2307862

def state_2307861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
theorem cover_2307861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307861 := by
  apply coveredState_split_literal (state := state_2307861) 1
    state_2307862 state_2307935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307862
  · exact cover_2307935
#print axioms cover_2307861

def state_2307853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
theorem cover_2307853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307853 := by
  apply coveredState_split_literal (state := state_2307853) 0
    state_2307854 state_2307861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307854
  · exact cover_2307861
#print axioms cover_2307853

def state_2307852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_2307852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307852 := by
  apply coveredState_split_literal (state := state_2307852) 4
    state_2307853 state_2307978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307853
  · exact cover_2307978
#print axioms cover_2307852

def state_2307851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 11)))
theorem cover_2307851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307851 := by
  apply coveredState_split_literal (state := state_2307851) 3
    state_2307852 state_2308003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307852
  · exact cover_2308003
#print axioms cover_2307851

def state_2307817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_2307817 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307817 := by
  apply coveredState_split_literal (state := state_2307817) 2
    state_2307818 state_2307851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307818
  · exact cover_2307851
#print axioms cover_2307817

def state_2307753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_2307753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307753 := by
  apply coveredState_split_literal (state := state_2307753) 4
    state_2307754 state_2307817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307754
  · exact cover_2307817
#print axioms cover_2307753

def state_2307611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_2307611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307611 := by
  apply coveredState_split_literal (state := state_2307611) 1
    state_2307612 state_2307753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307612
  · exact cover_2307753
#print axioms cover_2307611

def state_2308080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 22)))
theorem cover_2308080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308080 := by
  apply coveredState_split_literal (state := state_2308080) 1
    state_2308081 state_2308106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308081
  · exact cover_2308106
#print axioms cover_2308080

def state_2308079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 22)))
theorem cover_2308079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308079 := by
  apply coveredState_split_literal (state := state_2308079) 0
    state_2308080 state_2308165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308080
  · exact cover_2308165
#print axioms cover_2308079

def state_2308181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 22)))
theorem cover_2308181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308181 := by
  apply coveredState_split_literal (state := state_2308181) 4
    state_2308182 state_2308189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308182
  · exact cover_2308189
#print axioms cover_2308181

def state_2308177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 22)))
theorem cover_2308177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308177 := by
  apply coveredState_split_literal (state := state_2308177) 1
    state_2308178 state_2308181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308178
  · exact cover_2308181
#print axioms cover_2308177

def state_2308176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 22)))
theorem cover_2308176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308176 := by
  apply coveredState_split_literal (state := state_2308176) 0
    state_2308177 state_2308248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308177
  · exact cover_2308248
#print axioms cover_2308176

def state_2308078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 22)))
theorem cover_2308078 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308078 := by
  apply coveredState_split_literal (state := state_2308078) 2
    state_2308079 state_2308176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308079
  · exact cover_2308176
#print axioms cover_2308078
end Mub6.Numerical.CircleFullD0.Forest
