import CircleFullInterface
import CircleForestAssembly0097
import CircleForestAssembly0099
import CircleForestChunk0400
import CircleForestChunk0401
import CircleForestChunk0402
import CircleForestChunk0403
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_171557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_171557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171557 := by
  apply coveredState_split_literal (state := state_171557) 3
    state_171558 state_171627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171558
  · exact cover_171627
#print axioms cover_171557

def state_170841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_170841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170841 := by
  apply coveredState_split_literal (state := state_170841) 2
    state_170842 state_171557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170842
  · exact cover_171557
#print axioms cover_170841

def state_169355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_169355 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169355 := by
  apply coveredState_split_literal (state := state_169355) 1
    state_169356 state_170841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169356
  · exact cover_170841
#print axioms cover_169355

def state_171688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 15)))
theorem cover_171688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171688 := by
  apply coveredState_split_literal (state := state_171688) 2
    state_171689 state_171708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171689
  · exact cover_171708
#print axioms cover_171688

def state_171658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_171658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171658 := by
  apply coveredState_split_literal (state := state_171658) 4
    state_171659 state_171688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171659
  · exact cover_171688
#print axioms cover_171658

def state_171652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_171652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171652 := by
  apply coveredState_split_literal (state := state_171652) 1
    state_171653 state_171658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171653
  · exact cover_171658
#print axioms cover_171652

def state_171651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 7)))
theorem cover_171651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171651 := by
  apply coveredState_split_literal (state := state_171651) 3
    state_171652 state_171757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171652
  · exact cover_171757
#print axioms cover_171651

def state_171650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_171650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171650 := by
  apply coveredState_split_literal (state := state_171650) 2
    state_171651 state_171762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171651
  · exact cover_171762
#print axioms cover_171650

def state_171649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_171649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171649 := by
  apply coveredState_split_literal (state := state_171649) 0
    state_171650 state_171823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171650
  · exact cover_171823
#print axioms cover_171649

def state_171643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_171643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171643 := by
  apply coveredState_split_literal (state := state_171643) 4
    state_171644 state_171649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171644
  · exact cover_171649
#print axioms cover_171643

def state_171642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_171642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171642 := by
  apply coveredState_split_literal (state := state_171642) 3
    state_171643 state_171836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171643
  · exact cover_171836
#print axioms cover_171642

def state_171848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 7)))
theorem cover_171848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171848 := by
  apply coveredState_split_literal (state := state_171848) 1
    state_171849 state_171864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171849
  · exact cover_171864
#print axioms cover_171848

def state_171847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
theorem cover_171847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171847 := by
  apply coveredState_split_literal (state := state_171847) 3
    state_171848 state_171913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171848
  · exact cover_171913
#print axioms cover_171847

def state_171846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
theorem cover_171846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171846 := by
  apply coveredState_split_literal (state := state_171846) 0
    state_171847 state_171920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171847
  · exact cover_171920
#print axioms cover_171846

def state_171844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_171844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171844 := by
  apply coveredState_split_literal (state := state_171844) 4
    state_171845 state_171846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171845
  · exact cover_171846
#print axioms cover_171844

def state_171843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_171843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171843 := by
  apply coveredState_split_literal (state := state_171843) 3
    state_171844 state_171931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171844
  · exact cover_171931
#print axioms cover_171843

def state_171641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_171641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171641 := by
  apply coveredState_split_literal (state := state_171641) 2
    state_171642 state_171843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171642
  · exact cover_171843
#print axioms cover_171641

def state_171980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 15)))
theorem cover_171980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171980 := by
  apply coveredState_split_literal (state := state_171980) 3
    state_171981 state_172038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171981
  · exact cover_172038
#print axioms cover_171980

def state_171970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 15)))
theorem cover_171970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171970 := by
  apply coveredState_split_literal (state := state_171970) 2
    state_171971 state_171980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171971
  · exact cover_171980
#print axioms cover_171970

def state_171952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_171952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171952 := by
  apply coveredState_split_literal (state := state_171952) 4
    state_171953 state_171970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171953
  · exact cover_171970
#print axioms cover_171952

def state_171951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 7)))
theorem cover_171951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171951 := by
  apply coveredState_split_literal (state := state_171951) 3
    state_171952 state_172055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171952
  · exact cover_172055
#print axioms cover_171951

def state_171950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_171950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171950 := by
  apply coveredState_split_literal (state := state_171950) 2
    state_171951 state_172058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171951
  · exact cover_172058
#print axioms cover_171950

def state_171949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_171949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171949 := by
  apply coveredState_split_literal (state := state_171949) 1
    state_171950 state_172113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171950
  · exact cover_172113
#print axioms cover_171949

def state_171948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_171948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171948 := by
  apply coveredState_split_literal (state := state_171948) 0
    state_171949 state_172130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171949
  · exact cover_172130
#print axioms cover_171948

def state_171934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_171934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171934 := by
  apply coveredState_split_literal (state := state_171934) 4
    state_171935 state_171948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171935
  · exact cover_171948
#print axioms cover_171934

def state_171933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_171933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171933 := by
  apply coveredState_split_literal (state := state_171933) 3
    state_171934 state_172157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171934
  · exact cover_172157
#print axioms cover_171933

def state_172200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_172200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172200 := by
  apply coveredState_split_literal (state := state_172200) 3
    state_172201 state_172260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172201
  · exact cover_172260
#print axioms cover_172200

def state_171932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_171932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171932 := by
  apply coveredState_split_literal (state := state_171932) 2
    state_171933 state_172200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171933
  · exact cover_172200
#print axioms cover_171932

def state_171640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_171640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171640 := by
  apply coveredState_split_literal (state := state_171640) 1
    state_171641 state_171932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171641
  · exact cover_171932
#print axioms cover_171640

def state_169354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_169354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169354 := by
  apply coveredState_split_literal (state := state_169354) 0
    state_169355 state_171640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169355
  · exact cover_171640
#print axioms cover_169354

def state_169284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_169284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169284 := by
  apply coveredState_split_literal (state := state_169284) 4
    state_169285 state_169354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169285
  · exact cover_169354
#print axioms cover_169284

def state_166000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_166000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166000 := by
  apply coveredState_split_literal (state := state_166000) 3
    state_166001 state_169284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166001
  · exact cover_169284
#print axioms cover_166000
end Mub6.Numerical.CircleFullPrototype.Forest
