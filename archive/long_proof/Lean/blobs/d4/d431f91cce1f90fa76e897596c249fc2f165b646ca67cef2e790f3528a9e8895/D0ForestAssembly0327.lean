import D0FullInterface
import D0ForestAssembly0325
import D0ForestAssembly0326
import D0ForestChunk1268
import D0ForestChunk1269
import D0ForestChunk1270
import D0ForestChunk1271
import D0ForestChunk1272
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1604763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 50)))
theorem cover_1604763 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604763 := by
  apply coveredState_split_literal (state := state_1604763) 4
    state_1604764 state_1604815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604764
  · exact cover_1604815
#print axioms cover_1604763

def state_1604856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 42) else (if j.val < 3 then 105 else (if j.val < 4 then 59 else 100)))
theorem cover_1604856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604856 := by
  apply coveredState_split_literal (state := state_1604856) 1
    state_1604857 state_1604908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604857
  · exact cover_1604908
#print axioms cover_1604856

def state_1604830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 100)))
theorem cover_1604830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604830 := by
  apply coveredState_split_literal (state := state_1604830) 2
    state_1604831 state_1604856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604831
  · exact cover_1604856
#print axioms cover_1604830

def state_1604962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 119 else 100)))
theorem cover_1604962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604962 := by
  apply coveredState_split_literal (state := state_1604962) 4
    state_1604963 state_1605022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604963
  · exact cover_1605022
#print axioms cover_1604962

def state_1604946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 59 else 100)))
theorem cover_1604946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604946 := by
  apply coveredState_split_literal (state := state_1604946) 3
    state_1604947 state_1604962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604947
  · exact cover_1604962
#print axioms cover_1604946

def state_1604945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 42) else (if j.val < 3 then 105 else (if j.val < 4 then 59 else 100)))
theorem cover_1604945 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604945 := by
  apply coveredState_split_literal (state := state_1604945) 1
    state_1604946 state_1605041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604946
  · exact cover_1605041
#print axioms cover_1604945

def state_1604931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 100)))
theorem cover_1604931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604931 := by
  apply coveredState_split_literal (state := state_1604931) 2
    state_1604932 state_1604945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604932
  · exact cover_1604945
#print axioms cover_1604931

def state_1604829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 100)))
theorem cover_1604829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604829 := by
  apply coveredState_split_literal (state := state_1604829) 0
    state_1604830 state_1604931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604830
  · exact cover_1604931
#print axioms cover_1604829

def state_1604828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 50)))
theorem cover_1604828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604828 := by
  apply coveredState_split_literal (state := state_1604828) 4
    state_1604829 state_1605064
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604829
  · exact cover_1605064
#print axioms cover_1604828

def state_1604762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 29 else 50)))
theorem cover_1604762 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604762 := by
  apply coveredState_split_literal (state := state_1604762) 3
    state_1604763 state_1604828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604763
  · exact cover_1604828
#print axioms cover_1604762

def state_1605122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 100)))
theorem cover_1605122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605122 := by
  apply coveredState_split_literal (state := state_1605122) 0
    state_1605123 state_1605152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605123
  · exact cover_1605152
#print axioms cover_1605122

def state_1605121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 50)))
theorem cover_1605121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605121 := by
  apply coveredState_split_literal (state := state_1605121) 4
    state_1605122 state_1605213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605122
  · exact cover_1605213
#print axioms cover_1605121

def state_1605091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 29 else 50)))
theorem cover_1605091 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605091 := by
  apply coveredState_split_literal (state := state_1605091) 3
    state_1605092 state_1605121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605092
  · exact cover_1605121
#print axioms cover_1605091

def state_1604761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 50)))
theorem cover_1604761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604761 := by
  apply coveredState_split_literal (state := state_1604761) 2
    state_1604762 state_1605091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604762
  · exact cover_1605091
#print axioms cover_1604761

def state_1605302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 50)))
theorem cover_1605302 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605302 := by
  apply coveredState_split_literal (state := state_1605302) 4
    state_1605303 state_1605364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605303
  · exact cover_1605364
#print axioms cover_1605302

def state_1605260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 29 else 50)))
theorem cover_1605260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605260 := by
  apply coveredState_split_literal (state := state_1605260) 3
    state_1605261 state_1605302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605261
  · exact cover_1605302
#print axioms cover_1605260

def state_1605246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 50)))
theorem cover_1605246 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605246 := by
  apply coveredState_split_literal (state := state_1605246) 2
    state_1605247 state_1605260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605247
  · exact cover_1605260
#print axioms cover_1605246

def state_1604760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 50)))
theorem cover_1604760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604760 := by
  apply coveredState_split_literal (state := state_1604760) 1
    state_1604761 state_1605246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604761
  · exact cover_1605246
#print axioms cover_1604760

def state_1604676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 50)))
theorem cover_1604676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604676 := by
  apply coveredState_split_literal (state := state_1604676) 0
    state_1604677 state_1604760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604677
  · exact cover_1604760
#print axioms cover_1604676

def state_1604675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 25)))
theorem cover_1604675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604675 := by
  apply coveredState_split_literal (state := state_1604675) 4
    state_1604676 state_1605375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604676
  · exact cover_1605375
#print axioms cover_1604675

def state_1604579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 25)))
theorem cover_1604579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604579 := by
  apply coveredState_split_literal (state := state_1604579) 3
    state_1604580 state_1604675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604580
  · exact cover_1604675
#print axioms cover_1604579

def state_1605432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 25)))
theorem cover_1605432 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605432 := by
  apply coveredState_split_literal (state := state_1605432) 3
    state_1605433 state_1605442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605433
  · exact cover_1605442
#print axioms cover_1605432

def state_1604578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
theorem cover_1604578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604578 := by
  apply coveredState_split_literal (state := state_1604578) 2
    state_1604579 state_1605432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604579
  · exact cover_1605432
#print axioms cover_1604578

def state_1603070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
theorem cover_1603070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603070 := by
  apply coveredState_split_literal (state := state_1603070) 1
    state_1603071 state_1604578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603071
  · exact cover_1604578
#print axioms cover_1603070

def state_1602964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
theorem cover_1602964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602964 := by
  apply coveredState_split_literal (state := state_1602964) 0
    state_1602965 state_1603070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602965
  · exact cover_1603070
#print axioms cover_1602964

def state_1601398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_1601398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601398 := by
  apply coveredState_split_literal (state := state_1601398) 4
    state_1601399 state_1602964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601399
  · exact cover_1602964
#print axioms cover_1601398

def state_1605664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 60 else 99)))
theorem cover_1605664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605664 := by
  apply coveredState_split_literal (state := state_1605664) 1
    state_1605665 state_1605722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605665
  · exact cover_1605722
#print axioms cover_1605664

def state_1605663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 99)))
theorem cover_1605663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605663 := by
  apply coveredState_split_literal (state := state_1605663) 2
    state_1605664 state_1605761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605664
  · exact cover_1605761
#print axioms cover_1605663

def state_1605621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 99)))
theorem cover_1605621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605621 := by
  apply coveredState_split_literal (state := state_1605621) 0
    state_1605622 state_1605663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605622
  · exact cover_1605663
#print axioms cover_1605621

def state_1605585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 49)))
theorem cover_1605585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605585 := by
  apply coveredState_split_literal (state := state_1605585) 4
    state_1605586 state_1605621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605586
  · exact cover_1605621
#print axioms cover_1605585

def state_1605839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 122 else 99)))
theorem cover_1605839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605839 := by
  apply coveredState_split_literal (state := state_1605839) 4
    state_1605840 state_1605847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605840
  · exact cover_1605847
#print axioms cover_1605839

def state_1605838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 99)))
theorem cover_1605838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605838 := by
  apply coveredState_split_literal (state := state_1605838) 3
    state_1605839 state_1605910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605839
  · exact cover_1605910
#print axioms cover_1605838
end Mub6.Numerical.CircleFullD0.Forest
