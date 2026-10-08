import D0FullInterface
import D0ForestAssembly0167
import D0ForestChunk0640
import D0ForestChunk0641
import D0ForestChunk0642
import D0ForestChunk0643
import D0ForestChunk0644
import D0ForestChunk0645
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1342815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 24)))
theorem cover_1342815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342815 := by
  apply coveredState_split_literal (state := state_1342815) 4
    state_1342816 state_1342863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342816
  · exact cover_1342863
#print axioms cover_1342815

def state_1342751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 24)))
theorem cover_1342751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342751 := by
  apply coveredState_split_literal (state := state_1342751) 0
    state_1342752 state_1342815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342752
  · exact cover_1342815
#print axioms cover_1342751

def state_1342886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 48)))
theorem cover_1342886 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342886 := by
  apply coveredState_split_literal (state := state_1342886) 1
    state_1342887 state_1342946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342887
  · exact cover_1342946
#print axioms cover_1342886

def state_1342885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 24)))
theorem cover_1342885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342885 := by
  apply coveredState_split_literal (state := state_1342885) 4
    state_1342886 state_1342965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342886
  · exact cover_1342965
#print axioms cover_1342885

def state_1342987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 50) else (if j.val < 3 then 44 else (if j.val < 4 then 19 else 48)))
theorem cover_1342987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342987 := by
  apply coveredState_split_literal (state := state_1342987) 3
    state_1342988 state_1343031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342988
  · exact cover_1343031
#print axioms cover_1342987

def state_1342986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 50) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 48)))
theorem cover_1342986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342986 := by
  apply coveredState_split_literal (state := state_1342986) 2
    state_1342987 state_1343060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342987
  · exact cover_1343060
#print axioms cover_1342986

def state_1343127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 62 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 39 else 48)))
theorem cover_1343127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343127 := by
  apply coveredState_split_literal (state := state_1343127) 4
    state_1343128 state_1343165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343128
  · exact cover_1343165
#print axioms cover_1343127

def state_1343126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 39 else 48)))
theorem cover_1343126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343126 := by
  apply coveredState_split_literal (state := state_1343126) 0
    state_1343127 state_1343196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343127
  · exact cover_1343196
#print axioms cover_1343126

def state_1343080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 19 else 48)))
theorem cover_1343080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343080 := by
  apply coveredState_split_literal (state := state_1343080) 3
    state_1343081 state_1343126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343081
  · exact cover_1343126
#print axioms cover_1343080

def state_1343235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 45 else (if j.val < 4 then 19 else 48)))
theorem cover_1343235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343235 := by
  apply coveredState_split_literal (state := state_1343235) 3
    state_1343236 state_1343259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343236
  · exact cover_1343259
#print axioms cover_1343235

def state_1343079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 48)))
theorem cover_1343079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343079 := by
  apply coveredState_split_literal (state := state_1343079) 2
    state_1343080 state_1343235
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343080
  · exact cover_1343235
#print axioms cover_1343079

def state_1342985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 48)))
theorem cover_1342985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342985 := by
  apply coveredState_split_literal (state := state_1342985) 1
    state_1342986 state_1343079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342986
  · exact cover_1343079
#print axioms cover_1342985

def state_1343418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 45 else (if j.val < 4 then 39 else 49)))
theorem cover_1343418 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343418 := by
  apply coveredState_split_literal (state := state_1343418) 0
    state_1343419 state_1343452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343419
  · exact cover_1343452
#print axioms cover_1343418

def state_1343406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 45 else (if j.val < 4 then 19 else 49)))
theorem cover_1343406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343406 := by
  apply coveredState_split_literal (state := state_1343406) 3
    state_1343407 state_1343418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343407
  · exact cover_1343418
#print axioms cover_1343406

def state_1343356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 49)))
theorem cover_1343356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343356 := by
  apply coveredState_split_literal (state := state_1343356) 2
    state_1343357 state_1343406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343357
  · exact cover_1343406
#print axioms cover_1343356

def state_1343300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 49)))
theorem cover_1343300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343300 := by
  apply coveredState_split_literal (state := state_1343300) 1
    state_1343301 state_1343356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343301
  · exact cover_1343356
#print axioms cover_1343300

def state_1342984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 24)))
theorem cover_1342984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342984 := by
  apply coveredState_split_literal (state := state_1342984) 4
    state_1342985 state_1343300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342985
  · exact cover_1343300
#print axioms cover_1342984

def state_1342884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 24)))
theorem cover_1342884 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342884 := by
  apply coveredState_split_literal (state := state_1342884) 0
    state_1342885 state_1342984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342885
  · exact cover_1342984
#print axioms cover_1342884

def state_1342750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 24)))
theorem cover_1342750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342750 := by
  apply coveredState_split_literal (state := state_1342750) 3
    state_1342751 state_1342884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342751
  · exact cover_1342884
#print axioms cover_1342750

def state_1343509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 25)))
theorem cover_1343509 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343509 := by
  apply coveredState_split_literal (state := state_1343509) 3
    state_1343510 state_1343527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343510
  · exact cover_1343527
#print axioms cover_1343509

def state_1342749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 12)))
theorem cover_1342749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342749 := by
  apply coveredState_split_literal (state := state_1342749) 4
    state_1342750 state_1343509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342750
  · exact cover_1343509
#print axioms cover_1342749

def state_1342748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 12)))
theorem cover_1342748 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342748 := by
  apply coveredState_split_literal (state := state_1342748) 2
    state_1342749 state_1343576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342749
  · exact cover_1343576
#print axioms cover_1342748

def state_1342638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 12)))
theorem cover_1342638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342638 := by
  apply coveredState_split_literal (state := state_1342638) 1
    state_1342639 state_1342748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342639
  · exact cover_1342748
#print axioms cover_1342638

def state_1342586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 12)))
theorem cover_1342586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342586 := by
  apply coveredState_split_literal (state := state_1342586) 3
    state_1342587 state_1342638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342587
  · exact cover_1342638
#print axioms cover_1342586

def state_1342524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 12)))
theorem cover_1342524 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342524 := by
  apply coveredState_split_literal (state := state_1342524) 0
    state_1342525 state_1342586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342525
  · exact cover_1342586
#print axioms cover_1342524

def state_1342523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 6)))
theorem cover_1342523 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342523 := by
  apply coveredState_split_literal (state := state_1342523) 4
    state_1342524 state_1343633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342524
  · exact cover_1343633
#print axioms cover_1342523

def state_1342393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
theorem cover_1342393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342393 := by
  apply coveredState_split_literal (state := state_1342393) 2
    state_1342394 state_1342523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342394
  · exact cover_1342523
#print axioms cover_1342393

def state_1343668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 12)))
theorem cover_1343668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343668 := by
  apply coveredState_split_literal (state := state_1343668) 4
    state_1343669 state_1343724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343669
  · exact cover_1343724
#print axioms cover_1343668

def state_1343667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 12)))
theorem cover_1343667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343667 := by
  apply coveredState_split_literal (state := state_1343667) 2
    state_1343668 state_1343733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343668
  · exact cover_1343733
#print axioms cover_1343667

def state_1343665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 12)))
theorem cover_1343665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343665 := by
  apply coveredState_split_literal (state := state_1343665) 3
    state_1343666 state_1343667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343666
  · exact cover_1343667
#print axioms cover_1343665

def state_1343659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 12)))
theorem cover_1343659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343659 := by
  apply coveredState_split_literal (state := state_1343659) 0
    state_1343660 state_1343665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343660
  · exact cover_1343665
#print axioms cover_1343659

def state_1343658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 6)))
theorem cover_1343658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343658 := by
  apply coveredState_split_literal (state := state_1343658) 4
    state_1343659 state_1343742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343659
  · exact cover_1343742
#print axioms cover_1343658
end Mub6.Numerical.CircleFullD0.Forest
