import D0FullInterface
import D0ForestAssembly0296
import D0ForestChunk1138
import D0ForestChunk1140
import D0ForestChunk1141
import D0ForestChunk1142
import D0ForestChunk1143
import D0ForestChunk1144
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1574189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 11)))
theorem cover_1574189 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574189 := by
  apply coveredState_split_literal (state := state_1574189) 3
    state_1574190 state_1574225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574190
  · exact cover_1574225
#print axioms cover_1574189

def state_1574185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
theorem cover_1574185 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574185 := by
  apply coveredState_split_literal (state := state_1574185) 4
    state_1574186 state_1574189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574186
  · exact cover_1574189
#print axioms cover_1574185

def state_1574137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1574137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574137 := by
  apply coveredState_split_literal (state := state_1574137) 2
    state_1574138 state_1574185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574138
  · exact cover_1574185
#print axioms cover_1574137

def state_1574300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 11)))
theorem cover_1574300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574300 := by
  apply coveredState_split_literal (state := state_1574300) 3
    state_1574301 state_1574358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574301
  · exact cover_1574358
#print axioms cover_1574300

def state_1574298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
theorem cover_1574298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574298 := by
  apply coveredState_split_literal (state := state_1574298) 4
    state_1574299 state_1574300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574299
  · exact cover_1574300
#print axioms cover_1574298

def state_1574292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1574292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574292 := by
  apply coveredState_split_literal (state := state_1574292) 2
    state_1574293 state_1574298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574293
  · exact cover_1574298
#print axioms cover_1574292

def state_1574136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1574136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574136 := by
  apply coveredState_split_literal (state := state_1574136) 1
    state_1574137 state_1574292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574137
  · exact cover_1574292
#print axioms cover_1574136

def state_1573790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1573790 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573790 := by
  apply coveredState_split_literal (state := state_1573790) 0
    state_1573791 state_1574136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573791
  · exact cover_1574136
#print axioms cover_1573790

def state_1573784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_1573784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573784 := by
  apply coveredState_split_literal (state := state_1573784) 4
    state_1573785 state_1573790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573785
  · exact cover_1573790
#print axioms cover_1573784

def state_1573478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1573478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573478 := by
  apply coveredState_split_literal (state := state_1573478) 3
    state_1573479 state_1573784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573479
  · exact cover_1573784
#print axioms cover_1573478

def state_1574406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
theorem cover_1574406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574406 := by
  apply coveredState_split_literal (state := state_1574406) 1
    state_1574407 state_1574412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574407
  · exact cover_1574412
#print axioms cover_1574406

def state_1574396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 4)))
theorem cover_1574396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574396 := by
  apply coveredState_split_literal (state := state_1574396) 4
    state_1574397 state_1574406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574397
  · exact cover_1574406
#print axioms cover_1574396

def state_1574395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
theorem cover_1574395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574395 := by
  apply coveredState_split_literal (state := state_1574395) 2
    state_1574396 state_1574471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574396
  · exact cover_1574471
#print axioms cover_1574395

def state_1574394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1574394 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574394 := by
  apply coveredState_split_literal (state := state_1574394) 3
    state_1574395 state_1574494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574395
  · exact cover_1574494
#print axioms cover_1574394

def state_1574392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1574392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574392 := by
  apply coveredState_split_literal (state := state_1574392) 1
    state_1574393 state_1574394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574393
  · exact cover_1574394
#print axioms cover_1574392

def state_1574499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1574499 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574499 := by
  apply coveredState_split_literal (state := state_1574499) 3
    state_1574500 state_1574543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574500
  · exact cover_1574543
#print axioms cover_1574499

def state_1574495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1574495 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574495 := by
  apply coveredState_split_literal (state := state_1574495) 1
    state_1574496 state_1574499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574496
  · exact cover_1574499
#print axioms cover_1574495

def state_1574391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1574391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574391 := by
  apply coveredState_split_literal (state := state_1574391) 0
    state_1574392 state_1574495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574392
  · exact cover_1574495
#print axioms cover_1574391

def state_1574582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 5)))
theorem cover_1574582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574582 := by
  apply coveredState_split_literal (state := state_1574582) 4
    state_1574583 state_1574646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574583
  · exact cover_1574646
#print axioms cover_1574582

def state_1574651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1574651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574651 := by
  apply coveredState_split_literal (state := state_1574651) 0
    state_1574652 state_1574663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574652
  · exact cover_1574663
#print axioms cover_1574651

def state_1574649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1574649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574649 := by
  apply coveredState_split_literal (state := state_1574649) 1
    state_1574650 state_1574651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574650
  · exact cover_1574651
#print axioms cover_1574649

def state_1574648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 10)))
theorem cover_1574648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574648 := by
  apply coveredState_split_literal (state := state_1574648) 2
    state_1574649 state_1574720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574649
  · exact cover_1574720
#print axioms cover_1574648

def state_1574779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 22)))
theorem cover_1574779 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574779 := by
  apply coveredState_split_literal (state := state_1574779) 2
    state_1574780 state_1574831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574780
  · exact cover_1574831
#print axioms cover_1574779

def state_1574771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 22)))
theorem cover_1574771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574771 := by
  apply coveredState_split_literal (state := state_1574771) 3
    state_1574772 state_1574779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574772
  · exact cover_1574779
#print axioms cover_1574771

def state_1574761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 22)))
theorem cover_1574761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574761 := by
  apply coveredState_split_literal (state := state_1574761) 0
    state_1574762 state_1574771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574762
  · exact cover_1574771
#print axioms cover_1574761

def state_1574760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
theorem cover_1574760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574760 := by
  apply coveredState_split_literal (state := state_1574760) 4
    state_1574761 state_1574868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574761
  · exact cover_1574868
#print axioms cover_1574760

def state_1574738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
theorem cover_1574738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574738 := by
  apply coveredState_split_literal (state := state_1574738) 1
    state_1574739 state_1574760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574739
  · exact cover_1574760
#print axioms cover_1574738

def state_1574737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 11)))
theorem cover_1574737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574737 := by
  apply coveredState_split_literal (state := state_1574737) 2
    state_1574738 state_1574899
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574738
  · exact cover_1574899
#print axioms cover_1574737

def state_1574647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 5)))
theorem cover_1574647 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574647 := by
  apply coveredState_split_literal (state := state_1574647) 4
    state_1574648 state_1574737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574648
  · exact cover_1574737
#print axioms cover_1574647

def state_1574581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1574581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574581 := by
  apply coveredState_split_literal (state := state_1574581) 3
    state_1574582 state_1574647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574582
  · exact cover_1574647
#print axioms cover_1574581

def state_1574571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1574571 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574571 := by
  apply coveredState_split_literal (state := state_1574571) 1
    state_1574572 state_1574581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574572
  · exact cover_1574581
#print axioms cover_1574571

def state_1575015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1575015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575015 := by
  apply coveredState_split_literal (state := state_1575015) 0
    state_1575016 state_1575073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575016
  · exact cover_1575073
#print axioms cover_1575015
end Mub6.Numerical.CircleFullD0.Forest
