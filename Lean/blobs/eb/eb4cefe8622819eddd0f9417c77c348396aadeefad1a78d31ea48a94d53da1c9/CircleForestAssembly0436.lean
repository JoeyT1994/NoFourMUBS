import CircleFullInterface
import CircleForestAssembly0435
import CircleForestChunk1708
import CircleForestChunk1709
import CircleForestChunk1710
import CircleForestChunk1711
import CircleForestChunk1712
import CircleForestChunk1713
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2283143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 88 else 124)))
theorem cover_2283143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283143 := by
  apply coveredState_split_literal (state := state_2283143) 3
    state_2283144 state_2283191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283144
  · exact cover_2283191
#print axioms cover_2283143

def state_2283142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 124)))
theorem cover_2283142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283142 := by
  apply coveredState_split_literal (state := state_2283142) 2
    state_2283143 state_2283310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283143
  · exact cover_2283310
#print axioms cover_2283142

def state_2283379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 173 else 229) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 125)))
theorem cover_2283379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283379 := by
  apply coveredState_split_literal (state := state_2283379) 4
    state_2283380 state_2283417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283380
  · exact cover_2283417
#print axioms cover_2283379

def state_2283355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 173 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 125)))
theorem cover_2283355 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283355 := by
  apply coveredState_split_literal (state := state_2283355) 1
    state_2283356 state_2283379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283356
  · exact cover_2283379
#print axioms cover_2283355

def state_2283331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 125)))
theorem cover_2283331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283331 := by
  apply coveredState_split_literal (state := state_2283331) 0
    state_2283332 state_2283355
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283332
  · exact cover_2283355
#print axioms cover_2283331

def state_2283526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 173 else 229) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 125)))
theorem cover_2283526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283526 := by
  apply coveredState_split_literal (state := state_2283526) 4
    state_2283527 state_2283582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283527
  · exact cover_2283582
#print axioms cover_2283526

def state_2283486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 173 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 125)))
theorem cover_2283486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283486 := by
  apply coveredState_split_literal (state := state_2283486) 1
    state_2283487 state_2283526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283487
  · exact cover_2283526
#print axioms cover_2283486

def state_2283462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 125)))
theorem cover_2283462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283462 := by
  apply coveredState_split_literal (state := state_2283462) 0
    state_2283463 state_2283486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283463
  · exact cover_2283486
#print axioms cover_2283462

def state_2283330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 88 else 125)))
theorem cover_2283330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283330 := by
  apply coveredState_split_literal (state := state_2283330) 3
    state_2283331 state_2283462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283331
  · exact cover_2283462
#print axioms cover_2283330

def state_2283329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 125)))
theorem cover_2283329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283329 := by
  apply coveredState_split_literal (state := state_2283329) 2
    state_2283330 state_2283615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283330
  · exact cover_2283615
#print axioms cover_2283329

def state_2283141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 62)))
theorem cover_2283141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283141 := by
  apply coveredState_split_literal (state := state_2283141) 4
    state_2283142 state_2283329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283142
  · exact cover_2283329
#print axioms cover_2283141

def state_2283701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 115) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 125)))
theorem cover_2283701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283701 := by
  apply coveredState_split_literal (state := state_2283701) 0
    state_2283702 state_2283711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283702
  · exact cover_2283711
#print axioms cover_2283701

def state_2283687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 115) else (if j.val < 3 then 190 else (if j.val < 4 then 88 else 125)))
theorem cover_2283687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283687 := by
  apply coveredState_split_literal (state := state_2283687) 3
    state_2283688 state_2283701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283688
  · exact cover_2283701
#print axioms cover_2283687

def state_2283686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 115) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 125)))
theorem cover_2283686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283686 := by
  apply coveredState_split_literal (state := state_2283686) 2
    state_2283687 state_2283772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283687
  · exact cover_2283772
#print axioms cover_2283686

def state_2283648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 115) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 62)))
theorem cover_2283648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283648 := by
  apply coveredState_split_literal (state := state_2283648) 4
    state_2283649 state_2283686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283649
  · exact cover_2283686
#print axioms cover_2283648

def state_2283140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 62)))
theorem cover_2283140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283140 := by
  apply coveredState_split_literal (state := state_2283140) 1
    state_2283141 state_2283648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283141
  · exact cover_2283648
#print axioms cover_2283140

def state_2283847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 229) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 251)))
theorem cover_2283847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283847 := by
  apply coveredState_split_literal (state := state_2283847) 2
    state_2283848 state_2283877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283848
  · exact cover_2283877
#print axioms cover_2283847

def state_2283833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 229) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 125)))
theorem cover_2283833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283833 := by
  apply coveredState_split_literal (state := state_2283833) 4
    state_2283834 state_2283847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283834
  · exact cover_2283847
#print axioms cover_2283833

def state_2283825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 125)))
theorem cover_2283825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283825 := by
  apply coveredState_split_literal (state := state_2283825) 1
    state_2283826 state_2283833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283826
  · exact cover_2283833
#print axioms cover_2283825

def state_2283824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 125)))
theorem cover_2283824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283824 := by
  apply coveredState_split_literal (state := state_2283824) 0
    state_2283825 state_2283920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283825
  · exact cover_2283920
#print axioms cover_2283824

def state_2283956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 229) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 125)))
theorem cover_2283956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283956 := by
  apply coveredState_split_literal (state := state_2283956) 4
    state_2283957 state_2283986
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283957
  · exact cover_2283986
#print axioms cover_2283956

def state_2283942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 125)))
theorem cover_2283942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283942 := by
  apply coveredState_split_literal (state := state_2283942) 1
    state_2283943 state_2283956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283943
  · exact cover_2283956
#print axioms cover_2283942

def state_2283941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 125)))
theorem cover_2283941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283941 := by
  apply coveredState_split_literal (state := state_2283941) 0
    state_2283942 state_2284041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283942
  · exact cover_2284041
#print axioms cover_2283941

def state_2283823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 88 else 125)))
theorem cover_2283823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283823 := by
  apply coveredState_split_literal (state := state_2283823) 3
    state_2283824 state_2283941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283824
  · exact cover_2283941
#print axioms cover_2283823

def state_2283822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 125)))
theorem cover_2283822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283822 := by
  apply coveredState_split_literal (state := state_2283822) 2
    state_2283823 state_2284054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283823
  · exact cover_2284054
#print axioms cover_2283822

def state_2283796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 62)))
theorem cover_2283796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283796 := by
  apply coveredState_split_literal (state := state_2283796) 4
    state_2283797 state_2283822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283797
  · exact cover_2283822
#print axioms cover_2283796

def state_2284156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 125)))
theorem cover_2284156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284156 := by
  apply coveredState_split_literal (state := state_2284156) 0
    state_2284157 state_2284220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284157
  · exact cover_2284220
#print axioms cover_2284156

def state_2284118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 190 else (if j.val < 4 then 88 else 125)))
theorem cover_2284118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284118 := by
  apply coveredState_split_literal (state := state_2284118) 3
    state_2284119 state_2284156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284119
  · exact cover_2284156
#print axioms cover_2284118

def state_2284242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 191 else (if j.val < 4 then 176 else 125)))
theorem cover_2284242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284242 := by
  apply coveredState_split_literal (state := state_2284242) 0
    state_2284243 state_2284292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284243
  · exact cover_2284292
#print axioms cover_2284242

def state_2284319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 230) else (if j.val < 3 then 191 else (if j.val < 4 then 177 else 125)))
theorem cover_2284319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284319 := by
  apply coveredState_split_literal (state := state_2284319) 4
    state_2284320 state_2284329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284320
  · exact cover_2284329
#print axioms cover_2284319

def state_2284318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 115) else (if j.val < 3 then 191 else (if j.val < 4 then 177 else 125)))
theorem cover_2284318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284318 := by
  apply coveredState_split_literal (state := state_2284318) 1
    state_2284319 state_2284388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284319
  · exact cover_2284388
#print axioms cover_2284318

def state_2284317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 191 else (if j.val < 4 then 177 else 125)))
theorem cover_2284317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284317 := by
  apply coveredState_split_literal (state := state_2284317) 0
    state_2284318 state_2284395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284318
  · exact cover_2284395
#print axioms cover_2284317
end Mub6.Numerical.CircleFullD0.Forest
