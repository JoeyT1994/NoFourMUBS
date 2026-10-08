import D0FullInterface
import D0ForestAssembly0150
import D0ForestChunk0577
import D0ForestChunk0578
import D0ForestChunk0579
import D0ForestChunk0580
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1326000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1326000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326000 := by
  apply coveredState_split_literal (state := state_1326000) 4
    state_1326001 state_1327122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326001
  · exact cover_1327122
#print axioms cover_1326000

def state_1327363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1327363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327363 := by
  apply coveredState_split_literal (state := state_1327363) 4
    state_1327364 state_1327417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327364
  · exact cover_1327417
#print axioms cover_1327363

def state_1325999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1325999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325999 := by
  apply coveredState_split_literal (state := state_1325999) 3
    state_1326000 state_1327363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326000
  · exact cover_1327363
#print axioms cover_1325999

def state_1327491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
theorem cover_1327491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327491 := by
  apply coveredState_split_literal (state := state_1327491) 2
    state_1327492 state_1327549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327492
  · exact cover_1327549
#print axioms cover_1327491

def state_1327490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
theorem cover_1327490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327490 := by
  apply coveredState_split_literal (state := state_1327490) 0
    state_1327491 state_1327562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327491
  · exact cover_1327562
#print axioms cover_1327490

def state_1327476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_1327476 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327476 := by
  apply coveredState_split_literal (state := state_1327476) 4
    state_1327477 state_1327490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327477
  · exact cover_1327490
#print axioms cover_1327476

def state_1327635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
theorem cover_1327635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327635 := by
  apply coveredState_split_literal (state := state_1327635) 4
    state_1327636 state_1327663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327636
  · exact cover_1327663
#print axioms cover_1327635

def state_1327707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 22)))
theorem cover_1327707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327707 := by
  apply coveredState_split_literal (state := state_1327707) 2
    state_1327708 state_1327729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327708
  · exact cover_1327729
#print axioms cover_1327707

def state_1327875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 46)))
theorem cover_1327875 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327875 := by
  apply coveredState_split_literal (state := state_1327875) 1
    state_1327876 state_1327935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327876
  · exact cover_1327935
#print axioms cover_1327875

def state_1327865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 43 else 46)))
theorem cover_1327865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327865 := by
  apply coveredState_split_literal (state := state_1327865) 2
    state_1327866 state_1327875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327866
  · exact cover_1327875
#print axioms cover_1327865

def state_1327843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 46)))
theorem cover_1327843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327843 := by
  apply coveredState_split_literal (state := state_1327843) 3
    state_1327844 state_1327865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327844
  · exact cover_1327865
#print axioms cover_1327843

def state_1327842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 46)))
theorem cover_1327842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327842 := by
  apply coveredState_split_literal (state := state_1327842) 0
    state_1327843 state_1327944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327843
  · exact cover_1327944
#print axioms cover_1327842

def state_1327977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 47)))
theorem cover_1327977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327977 := by
  apply coveredState_split_literal (state := state_1327977) 0
    state_1327978 state_1328029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327978
  · exact cover_1328029
#print axioms cover_1327977

def state_1327841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 23)))
theorem cover_1327841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327841 := by
  apply coveredState_split_literal (state := state_1327841) 4
    state_1327842 state_1327977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327842
  · exact cover_1327977
#print axioms cover_1327841

def state_1327840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 23)))
theorem cover_1327840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327840 := by
  apply coveredState_split_literal (state := state_1327840) 1
    state_1327841 state_1328052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327841
  · exact cover_1328052
#print axioms cover_1327840

def state_1327830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 23)))
theorem cover_1327830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327830 := by
  apply coveredState_split_literal (state := state_1327830) 3
    state_1327831 state_1327840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327831
  · exact cover_1327840
#print axioms cover_1327830

def state_1327776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 23)))
theorem cover_1327776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327776 := by
  apply coveredState_split_literal (state := state_1327776) 2
    state_1327777 state_1327830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327777
  · exact cover_1327830
#print axioms cover_1327776

def state_1327706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
theorem cover_1327706 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327706 := by
  apply coveredState_split_literal (state := state_1327706) 4
    state_1327707 state_1327776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327707
  · exact cover_1327776
#print axioms cover_1327706

def state_1327634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
theorem cover_1327634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327634 := by
  apply coveredState_split_literal (state := state_1327634) 0
    state_1327635 state_1327706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327635
  · exact cover_1327706
#print axioms cover_1327634

def state_1327633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
theorem cover_1327633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327633 := by
  apply coveredState_split_literal (state := state_1327633) 1
    state_1327634 state_1328067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327634
  · exact cover_1328067
#print axioms cover_1327633

def state_1327609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 5)))
theorem cover_1327609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327609 := by
  apply coveredState_split_literal (state := state_1327609) 4
    state_1327610 state_1327633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327610
  · exact cover_1327633
#print axioms cover_1327609

def state_1328186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 46)))
theorem cover_1328186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328186 := by
  apply coveredState_split_literal (state := state_1328186) 3
    state_1328187 state_1328250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328187
  · exact cover_1328250
#print axioms cover_1328186

def state_1328140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 46)))
theorem cover_1328140 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328140 := by
  apply coveredState_split_literal (state := state_1328140) 0
    state_1328141 state_1328186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328141
  · exact cover_1328186
#print axioms cover_1328140

def state_1328255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 47)))
theorem cover_1328255 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328255 := by
  apply coveredState_split_literal (state := state_1328255) 0
    state_1328256 state_1328271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328256
  · exact cover_1328271
#print axioms cover_1328255

def state_1328139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 23)))
theorem cover_1328139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328139 := by
  apply coveredState_split_literal (state := state_1328139) 4
    state_1328140 state_1328255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328140
  · exact cover_1328255
#print axioms cover_1328139

def state_1328138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 23)))
theorem cover_1328138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328138 := by
  apply coveredState_split_literal (state := state_1328138) 1
    state_1328139 state_1328322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328139
  · exact cover_1328322
#print axioms cover_1328138

def state_1328136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 22 else 23)))
theorem cover_1328136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328136 := by
  apply coveredState_split_literal (state := state_1328136) 2
    state_1328137 state_1328138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328137
  · exact cover_1328138
#print axioms cover_1328136

def state_1328086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 22 else 11)))
theorem cover_1328086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328086 := by
  apply coveredState_split_literal (state := state_1328086) 4
    state_1328087 state_1328136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328087
  · exact cover_1328136
#print axioms cover_1328086

def state_1328085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 11)))
theorem cover_1328085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328085 := by
  apply coveredState_split_literal (state := state_1328085) 3
    state_1328086 state_1328323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328086
  · exact cover_1328323
#print axioms cover_1328085

def state_1328083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 11)))
theorem cover_1328083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328083 := by
  apply coveredState_split_literal (state := state_1328083) 0
    state_1328084 state_1328085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328084
  · exact cover_1328085
#print axioms cover_1328083

def state_1328082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 11)))
theorem cover_1328082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328082 := by
  apply coveredState_split_literal (state := state_1328082) 1
    state_1328083 state_1328324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328083
  · exact cover_1328324
#print axioms cover_1328082

def state_1328080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 5)))
theorem cover_1328080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328080 := by
  apply coveredState_split_literal (state := state_1328080) 4
    state_1328081 state_1328082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328081
  · exact cover_1328082
#print axioms cover_1328080
end Mub6.Numerical.CircleFullD0.Forest
