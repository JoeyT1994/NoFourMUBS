import CircleFullInterface
import CircleForestAssembly0154
import CircleForestAssembly0155
import CircleForestAssembly0158
import CircleForestAssembly0161
import CircleForestAssembly0162
import CircleForestAssembly0163
import CircleForestChunk0639
import CircleForestChunk0640
import CircleForestChunk0641
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_392213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_392213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392213 := by
  apply coveredState_split_literal (state := state_392213) 1
    state_392214 state_392343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392214
  · exact cover_392343
#print axioms cover_392213

def state_392212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_392212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392212 := by
  apply coveredState_split_literal (state := state_392212) 4
    state_392213 state_392378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392213
  · exact cover_392378
#print axioms cover_392212

def state_392211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_392211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392211 := by
  apply coveredState_split_literal (state := state_392211) 2
    state_392212 state_392383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392212
  · exact cover_392383
#print axioms cover_392211

def state_390787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_390787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390787 := by
  apply coveredState_split_literal (state := state_390787) 0
    state_390788 state_392211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390788
  · exact cover_392211
#print axioms cover_390787

def state_390786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_390786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390786 := by
  apply coveredState_split_literal (state := state_390786) 4
    state_390787 state_392440
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390787
  · exact cover_392440
#print axioms cover_390786

def state_390538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_390538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390538 := by
  apply coveredState_split_literal (state := state_390538) 3
    state_390539 state_390786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390539
  · exact cover_390786
#print axioms cover_390538

def state_392514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 12)))
theorem cover_392514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392514 := by
  apply coveredState_split_literal (state := state_392514) 1
    state_392515 state_392556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392515
  · exact cover_392556
#print axioms cover_392514

def state_392513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_392513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392513 := by
  apply coveredState_split_literal (state := state_392513) 4
    state_392514 state_392579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392514
  · exact cover_392579
#print axioms cover_392513

def state_392512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_392512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392512 := by
  apply coveredState_split_literal (state := state_392512) 0
    state_392513 state_392582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392513
  · exact cover_392582
#print axioms cover_392512

def state_392511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
theorem cover_392511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392511 := by
  apply coveredState_split_literal (state := state_392511) 4
    state_392512 state_392589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392512
  · exact cover_392589
#print axioms cover_392511

def state_392447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_392447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392447 := by
  apply coveredState_split_literal (state := state_392447) 3
    state_392448 state_392511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392448
  · exact cover_392511
#print axioms cover_392447

def state_390537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_390537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390537 := by
  apply coveredState_split_literal (state := state_390537) 2
    state_390538 state_392447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390538
  · exact cover_392447
#print axioms cover_390537

def state_390119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_390119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390119 := by
  apply coveredState_split_literal (state := state_390119) 1
    state_390120 state_390537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390120
  · exact cover_390537
#print axioms cover_390119

def state_392604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_392604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392604 := by
  apply coveredState_split_literal (state := state_392604) 4
    state_392605 state_392658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392605
  · exact cover_392658
#print axioms cover_392604

def state_392592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_392592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392592 := by
  apply coveredState_split_literal (state := state_392592) 3
    state_392593 state_392604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392593
  · exact cover_392604
#print axioms cover_392592

def state_392591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_392591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392591 := by
  apply coveredState_split_literal (state := state_392591) 2
    state_392592 state_392671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392592
  · exact cover_392671
#print axioms cover_392591

def state_392694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_392694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392694 := by
  apply coveredState_split_literal (state := state_392694) 0
    state_392695 state_392728
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392695
  · exact cover_392728
#print axioms cover_392694

def state_392693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_392693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392693 := by
  apply coveredState_split_literal (state := state_392693) 4
    state_392694 state_392759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392694
  · exact cover_392759
#print axioms cover_392693

def state_392692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_392692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392692 := by
  apply coveredState_split_literal (state := state_392692) 2
    state_392693 state_392762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392693
  · exact cover_392762
#print axioms cover_392692

def state_392691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_392691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392691 := by
  apply coveredState_split_literal (state := state_392691) 4
    state_392692 state_392771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392692
  · exact cover_392771
#print axioms cover_392691

def state_392679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_392679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392679 := by
  apply coveredState_split_literal (state := state_392679) 3
    state_392680 state_392691
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392680
  · exact cover_392691
#print axioms cover_392679

def state_392678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_392678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392678 := by
  apply coveredState_split_literal (state := state_392678) 2
    state_392679 state_392772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392679
  · exact cover_392772
#print axioms cover_392678

def state_392590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_392590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392590 := by
  apply coveredState_split_literal (state := state_392590) 1
    state_392591 state_392678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392591
  · exact cover_392678
#print axioms cover_392590

def state_390118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_390118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390118 := by
  apply coveredState_split_literal (state := state_390118) 0
    state_390119 state_392590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390119
  · exact cover_392590
#print axioms cover_390118

def state_387722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_387722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387722 := by
  apply coveredState_split_literal (state := state_387722) 4
    state_387723 state_390118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387723
  · exact cover_390118
#print axioms cover_387722

def state_387554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_387554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387554 := by
  apply coveredState_split_literal (state := state_387554) 3
    state_387555 state_387722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387555
  · exact cover_387722
#print axioms cover_387554

def state_385294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_385294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385294 := by
  apply coveredState_split_literal (state := state_385294) 2
    state_385295 state_387554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385295
  · exact cover_387554
#print axioms cover_385294

def state_384162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_384162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384162 := by
  apply coveredState_split_literal (state := state_384162) 1
    state_384163 state_385294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384163
  · exact cover_385294
#print axioms cover_384162

def state_371972 : State := rootState
theorem cover_371972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371972 := by
  apply coveredState_split_literal (state := state_371972) 0
    state_371973 state_384162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371973
  · exact cover_384162
#print axioms cover_371972

def state_759612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_759612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759612 := by
  apply coveredState_split_literal (state := state_759612) 2
    state_759613 state_759626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759613
  · exact cover_759626
#print axioms cover_759612

def state_759590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_759590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759590 := by
  apply coveredState_split_literal (state := state_759590) 1
    state_759591 state_759612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759591
  · exact cover_759612
#print axioms cover_759590

def state_759682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_759682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759682 := by
  apply coveredState_split_literal (state := state_759682) 2
    state_759683 state_759714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759683
  · exact cover_759714
#print axioms cover_759682
end Mub6.Numerical.CircleFullPrototype.Forest
