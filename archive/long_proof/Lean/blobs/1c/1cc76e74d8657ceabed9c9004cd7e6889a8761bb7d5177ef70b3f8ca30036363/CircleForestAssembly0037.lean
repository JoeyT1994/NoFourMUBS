import CircleFullInterface
import CircleForestAssembly0036
import CircleForestChunk0146
import CircleForestChunk0148
import CircleForestChunk0149
import CircleForestChunk0150
import CircleForestChunk0151
import CircleForestChunk0152
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_973095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 57 else (if j.val < 4 then 20 else 27)))
theorem cover_973095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973095 := by
  apply coveredState_split_literal (state := state_973095) 3
    state_973096 state_973159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973096
  · exact cover_973159
#print axioms cover_973095

def state_973081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 27)))
theorem cover_973081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973081 := by
  apply coveredState_split_literal (state := state_973081) 2
    state_973082 state_973095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973082
  · exact cover_973095
#print axioms cover_973081

def state_973049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 27)))
theorem cover_973049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973049 := by
  apply coveredState_split_literal (state := state_973049) 1
    state_973050 state_973081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973050
  · exact cover_973081
#print axioms cover_973049

def state_973166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 27)))
theorem cover_973166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973166 := by
  apply coveredState_split_literal (state := state_973166) 1
    state_973167 state_973180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973167
  · exact cover_973180
#print axioms cover_973166

def state_973048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 27)))
theorem cover_973048 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973048 := by
  apply coveredState_split_literal (state := state_973048) 0
    state_973049 state_973166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973049
  · exact cover_973166
#print axioms cover_973048

def state_973294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 58 else (if j.val < 4 then 40 else 55)))
theorem cover_973294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973294 := by
  apply coveredState_split_literal (state := state_973294) 0
    state_973295 state_973326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973295
  · exact cover_973326
#print axioms cover_973294

def state_973290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 58 else (if j.val < 4 then 40 else 27)))
theorem cover_973290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973290 := by
  apply coveredState_split_literal (state := state_973290) 4
    state_973291 state_973294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973291
  · exact cover_973294
#print axioms cover_973290

def state_973289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 58 else (if j.val < 4 then 20 else 27)))
theorem cover_973289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973289 := by
  apply coveredState_split_literal (state := state_973289) 3
    state_973290 state_973377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973290
  · exact cover_973377
#print axioms cover_973289

def state_973288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 27)))
theorem cover_973288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973288 := by
  apply coveredState_split_literal (state := state_973288) 2
    state_973289 state_973408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973289
  · exact cover_973408
#print axioms cover_973288

def state_973234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 27)))
theorem cover_973234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973234 := by
  apply coveredState_split_literal (state := state_973234) 1
    state_973235 state_973288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973235
  · exact cover_973288
#print axioms cover_973234

def state_973463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 27)))
theorem cover_973463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973463 := by
  apply coveredState_split_literal (state := state_973463) 1
    state_973464 state_973481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973464
  · exact cover_973481
#print axioms cover_973463

def state_973233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 27)))
theorem cover_973233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973233 := by
  apply coveredState_split_literal (state := state_973233) 0
    state_973234 state_973463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973234
  · exact cover_973463
#print axioms cover_973233

def state_973047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 27)))
theorem cover_973047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973047 := by
  apply coveredState_split_literal (state := state_973047) 2
    state_973048 state_973233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973048
  · exact cover_973233
#print axioms cover_973047

def state_973035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 13)))
theorem cover_973035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973035 := by
  apply coveredState_split_literal (state := state_973035) 4
    state_973036 state_973047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973036
  · exact cover_973047
#print axioms cover_973035

def state_973034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 13)))
theorem cover_973034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973034 := by
  apply coveredState_split_literal (state := state_973034) 3
    state_973035 state_973544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973035
  · exact cover_973544
#print axioms cover_973034

def state_972982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 13)))
theorem cover_972982 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972982 := by
  apply coveredState_split_literal (state := state_972982) 1
    state_972983 state_973034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972983
  · exact cover_973034
#print axioms cover_972982

def state_972752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 13)))
theorem cover_972752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972752 := by
  apply coveredState_split_literal (state := state_972752) 0
    state_972753 state_972982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972753
  · exact cover_972982
#print axioms cover_972752

def state_973657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 27)))
theorem cover_973657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973657 := by
  apply coveredState_split_literal (state := state_973657) 0
    state_973658 state_973705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973658
  · exact cover_973705
#print axioms cover_973657

def state_973656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 27)))
theorem cover_973656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973656 := by
  apply coveredState_split_literal (state := state_973656) 2
    state_973657 state_973726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973657
  · exact cover_973726
#print axioms cover_973656

def state_973650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 13)))
theorem cover_973650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973650 := by
  apply coveredState_split_literal (state := state_973650) 4
    state_973651 state_973656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973651
  · exact cover_973656
#print axioms cover_973650

def state_973649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 13)))
theorem cover_973649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973649 := by
  apply coveredState_split_literal (state := state_973649) 3
    state_973650 state_973731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973650
  · exact cover_973731
#print axioms cover_973649

def state_973631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 13)))
theorem cover_973631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973631 := by
  apply coveredState_split_literal (state := state_973631) 1
    state_973632 state_973649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973632
  · exact cover_973649
#print axioms cover_973631

def state_973583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 13)))
theorem cover_973583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973583 := by
  apply coveredState_split_literal (state := state_973583) 0
    state_973584 state_973631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973584
  · exact cover_973631
#print axioms cover_973583

def state_972751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 13)))
theorem cover_972751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972751 := by
  apply coveredState_split_literal (state := state_972751) 2
    state_972752 state_973583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972752
  · exact cover_973583
#print axioms cover_972751

def state_972737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 6)))
theorem cover_972737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972737 := by
  apply coveredState_split_literal (state := state_972737) 4
    state_972738 state_972751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972738
  · exact cover_972751
#print axioms cover_972737

def state_972736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_972736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972736 := by
  apply coveredState_split_literal (state := state_972736) 3
    state_972737 state_973760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972737
  · exact cover_973760
#print axioms cover_972736

def state_973858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 57 else (if j.val < 4 then 20 else 27)))
theorem cover_973858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973858 := by
  apply coveredState_split_literal (state := state_973858) 3
    state_973859 state_973922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973859
  · exact cover_973922
#print axioms cover_973858

def state_973830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 27)))
theorem cover_973830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973830 := by
  apply coveredState_split_literal (state := state_973830) 2
    state_973831 state_973858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973831
  · exact cover_973858
#print axioms cover_973830

def state_973829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 27)))
theorem cover_973829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973829 := by
  apply coveredState_split_literal (state := state_973829) 1
    state_973830 state_973933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973830
  · exact cover_973933
#print axioms cover_973829

def state_973828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 27)))
theorem cover_973828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973828 := by
  apply coveredState_split_literal (state := state_973828) 0
    state_973829 state_973944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973829
  · exact cover_973944
#print axioms cover_973828

def state_973961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 27)))
theorem cover_973961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973961 := by
  apply coveredState_split_literal (state := state_973961) 2
    state_973962 state_974011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973962
  · exact cover_974011
#print axioms cover_973961

def state_973960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 27)))
theorem cover_973960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973960 := by
  apply coveredState_split_literal (state := state_973960) 1
    state_973961 state_974032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973961
  · exact cover_974032
#print axioms cover_973960
end Mub6.Numerical.CircleFullD0.Forest
