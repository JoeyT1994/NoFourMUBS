import D0FullInterface
import D0ForestAssembly0309
import D0ForestChunk1193
import D0ForestChunk1194
import D0ForestChunk1195
import D0ForestChunk1196
import D0ForestChunk1197
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1576117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1576117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576117 := by
  apply coveredState_split_literal (state := state_1576117) 3
    state_1576118 state_1586555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576118
  · exact cover_1586555
#print axioms cover_1576117

def state_1576116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1576116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576116 := by
  apply coveredState_split_literal (state := state_1576116) 2
    state_1576117 state_1586810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576117
  · exact cover_1586810
#print axioms cover_1576116

def state_1586848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 6)))
theorem cover_1586848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586848 := by
  apply coveredState_split_literal (state := state_1586848) 4
    state_1586849 state_1586902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586849
  · exact cover_1586902
#print axioms cover_1586848

def state_1586826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 6)))
theorem cover_1586826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586826 := by
  apply coveredState_split_literal (state := state_1586826) 3
    state_1586827 state_1586848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586827
  · exact cover_1586848
#print axioms cover_1586826

def state_1586825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_1586825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586825 := by
  apply coveredState_split_literal (state := state_1586825) 2
    state_1586826 state_1586923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586826
  · exact cover_1586923
#print axioms cover_1586825

def state_1586824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_1586824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586824 := by
  apply coveredState_split_literal (state := state_1586824) 1
    state_1586825 state_1586958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586825
  · exact cover_1586958
#print axioms cover_1586824

def state_1586823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_1586823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586823 := by
  apply coveredState_split_literal (state := state_1586823) 4
    state_1586824 state_1586983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586824
  · exact cover_1586983
#print axioms cover_1586823

def state_1587002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1587002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587002 := by
  apply coveredState_split_literal (state := state_1587002) 2
    state_1587003 state_1587050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587003
  · exact cover_1587050
#print axioms cover_1587002

def state_1587001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1587001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587001 := by
  apply coveredState_split_literal (state := state_1587001) 1
    state_1587002 state_1587087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587002
  · exact cover_1587087
#print axioms cover_1587001

def state_1587000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_1587000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587000 := by
  apply coveredState_split_literal (state := state_1587000) 4
    state_1587001 state_1587102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587001
  · exact cover_1587102
#print axioms cover_1587000

def state_1586822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1586822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586822 := by
  apply coveredState_split_literal (state := state_1586822) 3
    state_1586823 state_1587000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586823
  · exact cover_1587000
#print axioms cover_1586822

def state_1586821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1586821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586821 := by
  apply coveredState_split_literal (state := state_1586821) 2
    state_1586822 state_1587109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586822
  · exact cover_1587109
#print axioms cover_1586821

def state_1576115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1576115 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576115 := by
  apply coveredState_split_literal (state := state_1576115) 1
    state_1576116 state_1586821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576116
  · exact cover_1586821
#print axioms cover_1576115

def state_1587163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 13)))
theorem cover_1587163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587163 := by
  apply coveredState_split_literal (state := state_1587163) 1
    state_1587164 state_1587223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587164
  · exact cover_1587223
#print axioms cover_1587163

def state_1587133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 6)))
theorem cover_1587133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587133 := by
  apply coveredState_split_literal (state := state_1587133) 4
    state_1587134 state_1587163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587134
  · exact cover_1587163
#print axioms cover_1587133

def state_1587319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
theorem cover_1587319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587319 := by
  apply coveredState_split_literal (state := state_1587319) 2
    state_1587320 state_1587355
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587320
  · exact cover_1587355
#print axioms cover_1587319

def state_1587279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
theorem cover_1587279 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587279 := by
  apply coveredState_split_literal (state := state_1587279) 1
    state_1587280 state_1587319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587280
  · exact cover_1587319
#print axioms cover_1587279

def state_1587482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 51)))
theorem cover_1587482 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587482 := by
  apply coveredState_split_literal (state := state_1587482) 3
    state_1587483 state_1587546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587483
  · exact cover_1587546
#print axioms cover_1587482

def state_1587481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 51)))
theorem cover_1587481 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587481 := by
  apply coveredState_split_literal (state := state_1587481) 0
    state_1587482 state_1587549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587482
  · exact cover_1587549
#print axioms cover_1587481

def state_1587453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 25)))
theorem cover_1587453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587453 := by
  apply coveredState_split_literal (state := state_1587453) 4
    state_1587454 state_1587481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587454
  · exact cover_1587481
#print axioms cover_1587453

def state_1587623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 54 else 51)))
theorem cover_1587623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587623 := by
  apply coveredState_split_literal (state := state_1587623) 4
    state_1587624 state_1587673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587624
  · exact cover_1587673
#print axioms cover_1587623

def state_1587622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 35) else (if j.val < 3 then 49 else (if j.val < 4 then 54 else 51)))
theorem cover_1587622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587622 := by
  apply coveredState_split_literal (state := state_1587622) 2
    state_1587623 state_1587718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587623
  · exact cover_1587718
#print axioms cover_1587622

def state_1587606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 54 else 51)))
theorem cover_1587606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587606 := by
  apply coveredState_split_literal (state := state_1587606) 1
    state_1587607 state_1587622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587607
  · exact cover_1587622
#print axioms cover_1587606

def state_1587605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
theorem cover_1587605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587605 := by
  apply coveredState_split_literal (state := state_1587605) 3
    state_1587606 state_1587745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587606
  · exact cover_1587745
#print axioms cover_1587605

def state_1587604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
theorem cover_1587604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587604 := by
  apply coveredState_split_literal (state := state_1587604) 0
    state_1587605 state_1587792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587605
  · exact cover_1587792
#print axioms cover_1587604

def state_1587560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 25)))
theorem cover_1587560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587560 := by
  apply coveredState_split_literal (state := state_1587560) 4
    state_1587561 state_1587604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587561
  · exact cover_1587604
#print axioms cover_1587560

def state_1587452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 25)))
theorem cover_1587452 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587452 := by
  apply coveredState_split_literal (state := state_1587452) 2
    state_1587453 state_1587560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587453
  · exact cover_1587560
#print axioms cover_1587452

def state_1587412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 25)))
theorem cover_1587412 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587412 := by
  apply coveredState_split_literal (state := state_1587412) 1
    state_1587413 state_1587452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587413
  · exact cover_1587452
#print axioms cover_1587412

def state_1587278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 25)))
theorem cover_1587278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587278 := by
  apply coveredState_split_literal (state := state_1587278) 3
    state_1587279 state_1587412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587279
  · exact cover_1587412
#print axioms cover_1587278

def state_1587277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 25)))
theorem cover_1587277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587277 := by
  apply coveredState_split_literal (state := state_1587277) 0
    state_1587278 state_1587813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587278
  · exact cover_1587813
#print axioms cover_1587277

def state_1587243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 12)))
theorem cover_1587243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587243 := by
  apply coveredState_split_literal (state := state_1587243) 4
    state_1587244 state_1587277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587244
  · exact cover_1587277
#print axioms cover_1587243

def state_1587242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_1587242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587242 := by
  apply coveredState_split_literal (state := state_1587242) 2
    state_1587243 state_1587828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587243
  · exact cover_1587828
#print axioms cover_1587242
end Mub6.Numerical.CircleFullD0.Forest
