import D0FullInterface
import D0ForestAssembly0407
import D0ForestChunk1588
import D0ForestChunk1589
import D0ForestChunk1590
import D0ForestChunk1591
import D0ForestChunk1592
import D0ForestChunk1593
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2254464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 12)))
theorem cover_2254464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254464 := by
  apply coveredState_split_literal (state := state_2254464) 4
    state_2254465 state_2254466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254465
  · exact cover_2254466
#print axioms cover_2254464

def state_2254384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
theorem cover_2254384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254384 := by
  apply coveredState_split_literal (state := state_2254384) 3
    state_2254385 state_2254464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254385
  · exact cover_2254464
#print axioms cover_2254384

def state_2254607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 25)))
theorem cover_2254607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254607 := by
  apply coveredState_split_literal (state := state_2254607) 3
    state_2254608 state_2254611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254608
  · exact cover_2254611
#print axioms cover_2254607

def state_2254606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 25)))
theorem cover_2254606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254606 := by
  apply coveredState_split_literal (state := state_2254606) 0
    state_2254607 state_2254672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254607
  · exact cover_2254672
#print axioms cover_2254606

def state_2254605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 25)))
theorem cover_2254605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254605 := by
  apply coveredState_split_literal (state := state_2254605) 2
    state_2254606 state_2254693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254606
  · exact cover_2254693
#print axioms cover_2254605

def state_2254604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 25)))
theorem cover_2254604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254604 := by
  apply coveredState_split_literal (state := state_2254604) 1
    state_2254605 state_2254744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254605
  · exact cover_2254744
#print axioms cover_2254604

def state_2254574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 12)))
theorem cover_2254574 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254574 := by
  apply coveredState_split_literal (state := state_2254574) 4
    state_2254575 state_2254604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254575
  · exact cover_2254604
#print axioms cover_2254574

def state_2254757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 24)))
theorem cover_2254757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254757 := by
  apply coveredState_split_literal (state := state_2254757) 3
    state_2254758 state_2254813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254758
  · exact cover_2254813
#print axioms cover_2254757

def state_2254756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 24)))
theorem cover_2254756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254756 := by
  apply coveredState_split_literal (state := state_2254756) 0
    state_2254757 state_2254844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254757
  · exact cover_2254844
#print axioms cover_2254756

def state_2254755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 24)))
theorem cover_2254755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254755 := by
  apply coveredState_split_literal (state := state_2254755) 2
    state_2254756 state_2254901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254756
  · exact cover_2254901
#print axioms cover_2254755

def state_2254754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 24)))
theorem cover_2254754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254754 := by
  apply coveredState_split_literal (state := state_2254754) 1
    state_2254755 state_2254904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254755
  · exact cover_2254904
#print axioms cover_2254754

def state_2254979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 50)))
theorem cover_2254979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254979 := by
  apply coveredState_split_literal (state := state_2254979) 2
    state_2254980 state_2255013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254980
  · exact cover_2255013
#print axioms cover_2254979

def state_2254917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 50)))
theorem cover_2254917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254917 := by
  apply coveredState_split_literal (state := state_2254917) 0
    state_2254918 state_2254979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254918
  · exact cover_2254979
#print axioms cover_2254917

def state_2254916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 50)))
theorem cover_2254916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254916 := by
  apply coveredState_split_literal (state := state_2254916) 1
    state_2254917 state_2255044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254917
  · exact cover_2255044
#print axioms cover_2254916

def state_2255065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 41 else (if j.val < 4 then 46 else 51)))
theorem cover_2255065 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255065 := by
  apply coveredState_split_literal (state := state_2255065) 3
    state_2255066 state_2255119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255066
  · exact cover_2255119
#print axioms cover_2255065

def state_2255053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 51)))
theorem cover_2255053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255053 := by
  apply coveredState_split_literal (state := state_2255053) 2
    state_2255054 state_2255065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255054
  · exact cover_2255065
#print axioms cover_2255053

def state_2255052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 51)))
theorem cover_2255052 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255052 := by
  apply coveredState_split_literal (state := state_2255052) 0
    state_2255053 state_2255172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255053
  · exact cover_2255172
#print axioms cover_2255052

def state_2255051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 51)))
theorem cover_2255051 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255051 := by
  apply coveredState_split_literal (state := state_2255051) 1
    state_2255052 state_2255229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255052
  · exact cover_2255229
#print axioms cover_2255051

def state_2254915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 25)))
theorem cover_2254915 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254915 := by
  apply coveredState_split_literal (state := state_2254915) 4
    state_2254916 state_2255051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254916
  · exact cover_2255051
#print axioms cover_2254915

def state_2255248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 50)))
theorem cover_2255248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255248 := by
  apply coveredState_split_literal (state := state_2255248) 0
    state_2255249 state_2255278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255249
  · exact cover_2255278
#print axioms cover_2255248

def state_2255247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 50)))
theorem cover_2255247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255247 := by
  apply coveredState_split_literal (state := state_2255247) 1
    state_2255248 state_2255337
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255248
  · exact cover_2255337
#print axioms cover_2255247

def state_2255346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 51)))
theorem cover_2255346 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255346 := by
  apply coveredState_split_literal (state := state_2255346) 1
    state_2255347 state_2255406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255347
  · exact cover_2255406
#print axioms cover_2255346

def state_2255246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 25)))
theorem cover_2255246 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255246 := by
  apply coveredState_split_literal (state := state_2255246) 4
    state_2255247 state_2255346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255247
  · exact cover_2255346
#print axioms cover_2255246

def state_2254914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 25)))
theorem cover_2254914 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254914 := by
  apply coveredState_split_literal (state := state_2254914) 3
    state_2254915 state_2255246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254915
  · exact cover_2255246
#print axioms cover_2254914

def state_2255415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 25)))
theorem cover_2255415 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255415 := by
  apply coveredState_split_literal (state := state_2255415) 3
    state_2255416 state_2255457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255416
  · exact cover_2255457
#print axioms cover_2255415

def state_2254913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 25)))
theorem cover_2254913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254913 := by
  apply coveredState_split_literal (state := state_2254913) 0
    state_2254914 state_2255415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254914
  · exact cover_2255415
#print axioms cover_2254913

def state_2255500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 25)))
theorem cover_2255500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255500 := by
  apply coveredState_split_literal (state := state_2255500) 0
    state_2255501 state_2255550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255501
  · exact cover_2255550
#print axioms cover_2255500

def state_2254912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 25)))
theorem cover_2254912 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254912 := by
  apply coveredState_split_literal (state := state_2254912) 2
    state_2254913 state_2255500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254913
  · exact cover_2255500
#print axioms cover_2254912

def state_2254911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 25)))
theorem cover_2254911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254911 := by
  apply coveredState_split_literal (state := state_2254911) 1
    state_2254912 state_2255577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254912
  · exact cover_2255577
#print axioms cover_2254911

def state_2254753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 12)))
theorem cover_2254753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254753 := by
  apply coveredState_split_literal (state := state_2254753) 4
    state_2254754 state_2254911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254754
  · exact cover_2254911
#print axioms cover_2254753

def state_2254573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
theorem cover_2254573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254573 := by
  apply coveredState_split_literal (state := state_2254573) 3
    state_2254574 state_2254753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254574
  · exact cover_2254753
#print axioms cover_2254573

def state_2254383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
theorem cover_2254383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254383 := by
  apply coveredState_split_literal (state := state_2254383) 0
    state_2254384 state_2254573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254384
  · exact cover_2254573
#print axioms cover_2254383
end Mub6.Numerical.CircleFullD0.Forest
