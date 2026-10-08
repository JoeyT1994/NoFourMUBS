import D0FullInterface
import D0ForestAssembly0094
import D0ForestChunk0379
import D0ForestChunk0380
import D0ForestChunk0381
import D0ForestChunk0382
import D0ForestChunk0383
import D0ForestChunk0384
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1028623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 14)))
theorem cover_1028623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028623 := by
  apply coveredState_split_literal (state := state_1028623) 4
    state_1028624 state_1028645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028624
  · exact cover_1028645
#print axioms cover_1028623

def state_1028605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 14)))
theorem cover_1028605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028605 := by
  apply coveredState_split_literal (state := state_1028605) 2
    state_1028606 state_1028623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028606
  · exact cover_1028623
#print axioms cover_1028605

def state_1028604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 14)))
theorem cover_1028604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028604 := by
  apply coveredState_split_literal (state := state_1028604) 1
    state_1028605 state_1028794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028605
  · exact cover_1028794
#print axioms cover_1028604

def state_1028534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 14)))
theorem cover_1028534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028534 := by
  apply coveredState_split_literal (state := state_1028534) 0
    state_1028535 state_1028604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028535
  · exact cover_1028604
#print axioms cover_1028534

def state_1028873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 30)))
theorem cover_1028873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028873 := by
  apply coveredState_split_literal (state := state_1028873) 0
    state_1028874 state_1028925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028874
  · exact cover_1028925
#print axioms cover_1028873

def state_1028872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 15)))
theorem cover_1028872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028872 := by
  apply coveredState_split_literal (state := state_1028872) 4
    state_1028873 state_1028958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028873
  · exact cover_1028958
#print axioms cover_1028872

def state_1028864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 15)))
theorem cover_1028864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028864 := by
  apply coveredState_split_literal (state := state_1028864) 3
    state_1028865 state_1028872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028865
  · exact cover_1028872
#print axioms cover_1028864

def state_1028840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 15)))
theorem cover_1028840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028840 := by
  apply coveredState_split_literal (state := state_1028840) 2
    state_1028841 state_1028864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028841
  · exact cover_1028864
#print axioms cover_1028840

def state_1029007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 15)))
theorem cover_1029007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029007 := by
  apply coveredState_split_literal (state := state_1029007) 4
    state_1029008 state_1029049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029008
  · exact cover_1029049
#print axioms cover_1029007

def state_1029001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 15)))
theorem cover_1029001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029001 := by
  apply coveredState_split_literal (state := state_1029001) 3
    state_1029002 state_1029007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029002
  · exact cover_1029007
#print axioms cover_1029001

def state_1028977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 15)))
theorem cover_1028977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028977 := by
  apply coveredState_split_literal (state := state_1028977) 2
    state_1028978 state_1029001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028978
  · exact cover_1029001
#print axioms cover_1028977

def state_1028839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 15)))
theorem cover_1028839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028839 := by
  apply coveredState_split_literal (state := state_1028839) 1
    state_1028840 state_1028977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028840
  · exact cover_1028977
#print axioms cover_1028839

def state_1028823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 15)))
theorem cover_1028823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028823 := by
  apply coveredState_split_literal (state := state_1028823) 0
    state_1028824 state_1028839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028824
  · exact cover_1028839
#print axioms cover_1028823

def state_1028533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 7)))
theorem cover_1028533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028533 := by
  apply coveredState_split_literal (state := state_1028533) 4
    state_1028534 state_1028823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028534
  · exact cover_1028823
#print axioms cover_1028533

def state_1029190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 48) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 59)))
theorem cover_1029190 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029190 := by
  apply coveredState_split_literal (state := state_1029190) 1
    state_1029191 state_1029220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029191
  · exact cover_1029220
#print axioms cover_1029190

def state_1029148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 48) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 29)))
theorem cover_1029148 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029148 := by
  apply coveredState_split_literal (state := state_1029148) 4
    state_1029149 state_1029190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029149
  · exact cover_1029190
#print axioms cover_1029148

def state_1029147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 48) else (if j.val < 3 then 51 else (if j.val < 4 then 18 else 29)))
theorem cover_1029147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029147 := by
  apply coveredState_split_literal (state := state_1029147) 3
    state_1029148 state_1029277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029148
  · exact cover_1029277
#print axioms cover_1029147

def state_1029127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 48) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 29)))
theorem cover_1029127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029127 := by
  apply coveredState_split_literal (state := state_1029127) 2
    state_1029128 state_1029147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029128
  · exact cover_1029147
#print axioms cover_1029127

def state_1029126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 29)))
theorem cover_1029126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029126 := by
  apply coveredState_split_literal (state := state_1029126) 1
    state_1029127 state_1029294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029127
  · exact cover_1029294
#print axioms cover_1029126

def state_1029340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 48) else (if j.val < 3 then 51 else (if j.val < 4 then 18 else 29)))
theorem cover_1029340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029340 := by
  apply coveredState_split_literal (state := state_1029340) 3
    state_1029341 state_1029384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029341
  · exact cover_1029384
#print axioms cover_1029340

def state_1029338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 48) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 29)))
theorem cover_1029338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029338 := by
  apply coveredState_split_literal (state := state_1029338) 2
    state_1029339 state_1029340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029339
  · exact cover_1029340
#print axioms cover_1029338

def state_1029337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 29)))
theorem cover_1029337 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029337 := by
  apply coveredState_split_literal (state := state_1029337) 1
    state_1029338 state_1029405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029338
  · exact cover_1029405
#print axioms cover_1029337

def state_1029125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 29)))
theorem cover_1029125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029125 := by
  apply coveredState_split_literal (state := state_1029125) 0
    state_1029126 state_1029337
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029126
  · exact cover_1029337
#print axioms cover_1029125

def state_1029115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 14)))
theorem cover_1029115 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029115 := by
  apply coveredState_split_literal (state := state_1029115) 4
    state_1029116 state_1029125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029116
  · exact cover_1029125
#print axioms cover_1029115

def state_1029114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 14)))
theorem cover_1029114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029114 := by
  apply coveredState_split_literal (state := state_1029114) 3
    state_1029115 state_1029454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029115
  · exact cover_1029454
#print axioms cover_1029114

def state_1029104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 14)))
theorem cover_1029104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029104 := by
  apply coveredState_split_literal (state := state_1029104) 2
    state_1029105 state_1029114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029105
  · exact cover_1029114
#print axioms cover_1029104

def state_1029103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 14)))
theorem cover_1029103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029103 := by
  apply coveredState_split_literal (state := state_1029103) 1
    state_1029104 state_1029463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029104
  · exact cover_1029463
#print axioms cover_1029103

def state_1029083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 14)))
theorem cover_1029083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029083 := by
  apply coveredState_split_literal (state := state_1029083) 0
    state_1029084 state_1029103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029084
  · exact cover_1029103
#print axioms cover_1029083

def state_1029642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 60)))
theorem cover_1029642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029642 := by
  apply coveredState_split_literal (state := state_1029642) 1
    state_1029643 state_1029696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029643
  · exact cover_1029696
#print axioms cover_1029642

def state_1029632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 60)))
theorem cover_1029632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029632 := by
  apply coveredState_split_literal (state := state_1029632) 0
    state_1029633 state_1029642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029633
  · exact cover_1029642
#print axioms cover_1029632

def state_1029631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 30)))
theorem cover_1029631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029631 := by
  apply coveredState_split_literal (state := state_1029631) 4
    state_1029632 state_1029735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029632
  · exact cover_1029735
#print axioms cover_1029631

def state_1029630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 18 else 30)))
theorem cover_1029630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029630 := by
  apply coveredState_split_literal (state := state_1029630) 3
    state_1029631 state_1029748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029631
  · exact cover_1029748
#print axioms cover_1029630
end Mub6.Numerical.CircleFullD0.Forest
