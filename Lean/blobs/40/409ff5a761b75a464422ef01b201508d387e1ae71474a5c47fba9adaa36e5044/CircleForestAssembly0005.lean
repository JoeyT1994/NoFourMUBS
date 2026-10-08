import CircleFullInterface
import CircleForestAssembly0004
import CircleForestChunk0020
import CircleForestChunk0021
import CircleForestChunk0022
import CircleForestChunk0023
import CircleForestChunk0024
import CircleForestChunk0025
import CircleForestChunk0026
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_942530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 12)))
theorem cover_942530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942530 := by
  apply coveredState_split_literal (state := state_942530) 4
    state_942531 state_942536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942531
  · exact cover_942536
#print axioms cover_942530

def state_942388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 12)))
theorem cover_942388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942388 := by
  apply coveredState_split_literal (state := state_942388) 2
    state_942389 state_942530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942389
  · exact cover_942530
#print axioms cover_942388

def state_942387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 12)))
theorem cover_942387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942387 := by
  apply coveredState_split_literal (state := state_942387) 0
    state_942388 state_942681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942388
  · exact cover_942681
#print axioms cover_942387

def state_942386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
theorem cover_942386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942386 := by
  apply coveredState_split_literal (state := state_942386) 3
    state_942387 state_942744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942387
  · exact cover_942744
#print axioms cover_942386

def state_942807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 52)))
theorem cover_942807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942807 := by
  apply coveredState_split_literal (state := state_942807) 1
    state_942808 state_942829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942808
  · exact cover_942829
#print axioms cover_942807

def state_942806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 26)))
theorem cover_942806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942806 := by
  apply coveredState_split_literal (state := state_942806) 4
    state_942807 state_942886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942807
  · exact cover_942886
#print axioms cover_942806

def state_942904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 40) else (if j.val < 3 then 99 else (if j.val < 4 then 32 else 52)))
theorem cover_942904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942904 := by
  apply coveredState_split_literal (state := state_942904) 0
    state_942905 state_942964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942905
  · exact cover_942964
#print axioms cover_942904

def state_942896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 40) else (if j.val < 3 then 49 else (if j.val < 4 then 32 else 52)))
theorem cover_942896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942896 := by
  apply coveredState_split_literal (state := state_942896) 2
    state_942897 state_942904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942897
  · exact cover_942904
#print axioms cover_942896

def state_942895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 40) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 52)))
theorem cover_942895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942895 := by
  apply coveredState_split_literal (state := state_942895) 3
    state_942896 state_942969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942896
  · exact cover_942969
#print axioms cover_942895

def state_942981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 49 else (if j.val < 4 then 32 else 52)))
theorem cover_942981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942981 := by
  apply coveredState_split_literal (state := state_942981) 2
    state_942982 state_942999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942982
  · exact cover_942999
#print axioms cover_942981

def state_942980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 52)))
theorem cover_942980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942980 := by
  apply coveredState_split_literal (state := state_942980) 3
    state_942981 state_943060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942981
  · exact cover_943060
#print axioms cover_942980

def state_942894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 52)))
theorem cover_942894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942894 := by
  apply coveredState_split_literal (state := state_942894) 1
    state_942895 state_942980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942895
  · exact cover_942980
#print axioms cover_942894

def state_942893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 26)))
theorem cover_942893 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942893 := by
  apply coveredState_split_literal (state := state_942893) 4
    state_942894 state_943083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942894
  · exact cover_943083
#print axioms cover_942893

def state_942805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 26)))
theorem cover_942805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942805 := by
  apply coveredState_split_literal (state := state_942805) 0
    state_942806 state_942893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942806
  · exact cover_942893
#print axioms cover_942805

def state_942779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 24 else (if j.val < 4 then 16 else 26)))
theorem cover_942779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942779 := by
  apply coveredState_split_literal (state := state_942779) 2
    state_942780 state_942805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942780
  · exact cover_942805
#print axioms cover_942779

def state_942778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 26)))
theorem cover_942778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942778 := by
  apply coveredState_split_literal (state := state_942778) 3
    state_942779 state_943126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942779
  · exact cover_943126
#print axioms cover_942778

def state_942777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 13)))
theorem cover_942777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942777 := by
  apply coveredState_split_literal (state := state_942777) 4
    state_942778 state_943151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942778
  · exact cover_943151
#print axioms cover_942777

def state_943208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 26)))
theorem cover_943208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943208 := by
  apply coveredState_split_literal (state := state_943208) 1
    state_943209 state_943266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943209
  · exact cover_943266
#print axioms cover_943208

def state_943186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 26)))
theorem cover_943186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943186 := by
  apply coveredState_split_literal (state := state_943186) 0
    state_943187 state_943208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943187
  · exact cover_943208
#print axioms cover_943186

def state_943162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 16 else 26)))
theorem cover_943162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943162 := by
  apply coveredState_split_literal (state := state_943162) 2
    state_943163 state_943186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943163
  · exact cover_943186
#print axioms cover_943162

def state_943161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 26)))
theorem cover_943161 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943161 := by
  apply coveredState_split_literal (state := state_943161) 3
    state_943162 state_943277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943162
  · exact cover_943277
#print axioms cover_943161

def state_943160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 13)))
theorem cover_943160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943160 := by
  apply coveredState_split_literal (state := state_943160) 4
    state_943161 state_943316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943161
  · exact cover_943316
#print axioms cover_943160

def state_942776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 13)))
theorem cover_942776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942776 := by
  apply coveredState_split_literal (state := state_942776) 1
    state_942777 state_943160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942777
  · exact cover_943160
#print axioms cover_942776

def state_943377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 52)))
theorem cover_943377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943377 := by
  apply coveredState_split_literal (state := state_943377) 1
    state_943378 state_943405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943378
  · exact cover_943405
#print axioms cover_943377

def state_943376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 26)))
theorem cover_943376 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943376 := by
  apply coveredState_split_literal (state := state_943376) 4
    state_943377 state_943468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943377
  · exact cover_943468
#print axioms cover_943376

def state_943375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 26)))
theorem cover_943375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943375 := by
  apply coveredState_split_literal (state := state_943375) 2
    state_943376 state_943477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943376
  · exact cover_943477
#print axioms cover_943375

def state_943494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 40) else (if j.val < 3 then 50 else (if j.val < 4 then 32 else 52)))
theorem cover_943494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943494 := by
  apply coveredState_split_literal (state := state_943494) 0
    state_943495 state_943556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943495
  · exact cover_943556
#print axioms cover_943494

def state_943569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 40) else (if j.val < 3 then 50 else (if j.val < 4 then 33 else 52)))
theorem cover_943569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943569 := by
  apply coveredState_split_literal (state := state_943569) 0
    state_943570 state_943629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943570
  · exact cover_943629
#print axioms cover_943569

def state_943493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 40) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 52)))
theorem cover_943493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943493 := by
  apply coveredState_split_literal (state := state_943493) 3
    state_943494 state_943569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943494
  · exact cover_943569
#print axioms cover_943493

def state_943641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 50 else (if j.val < 4 then 32 else 52)))
theorem cover_943641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943641 := by
  apply coveredState_split_literal (state := state_943641) 0
    state_943642 state_943701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943642
  · exact cover_943701
#print axioms cover_943641

def state_943722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 41) else (if j.val < 3 then 100 else (if j.val < 4 then 33 else 52)))
theorem cover_943722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943722 := by
  apply coveredState_split_literal (state := state_943722) 4
    state_943723 state_943742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943723
  · exact cover_943742
#print axioms cover_943722

def state_943811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 41) else (if j.val < 3 then 101 else (if j.val < 4 then 33 else 105)))
theorem cover_943811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943811 := by
  apply coveredState_split_literal (state := state_943811) 1
    state_943812 state_943849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943812
  · exact cover_943849
#print axioms cover_943811
end Mub6.Numerical.CircleFullD0.Forest
