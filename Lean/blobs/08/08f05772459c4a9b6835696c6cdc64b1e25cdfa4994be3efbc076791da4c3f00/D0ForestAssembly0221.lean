import D0FullInterface
import D0ForestAssembly0220
import D0ForestChunk0833
import D0ForestChunk0834
import D0ForestChunk0835
import D0ForestChunk0836
import D0ForestChunk0837
import D0ForestChunk0838
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1501199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 119)))
theorem cover_1501199 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501199 := by
  apply coveredState_split_literal (state := state_1501199) 2
    state_1501200 state_1501267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501200
  · exact cover_1501267
#print axioms cover_1501199

def state_1501041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 59)))
theorem cover_1501041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501041 := by
  apply coveredState_split_literal (state := state_1501041) 4
    state_1501042 state_1501199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501042
  · exact cover_1501199
#print axioms cover_1501041

def state_1501017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 59)))
theorem cover_1501017 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501017 := by
  apply coveredState_split_literal (state := state_1501017) 1
    state_1501018 state_1501041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501018
  · exact cover_1501041
#print axioms cover_1501017

def state_1501299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 118)))
theorem cover_1501299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501299 := by
  apply coveredState_split_literal (state := state_1501299) 2
    state_1501300 state_1501327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501300
  · exact cover_1501327
#print axioms cover_1501299

def state_1501298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 59)))
theorem cover_1501298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501298 := by
  apply coveredState_split_literal (state := state_1501298) 4
    state_1501299 state_1501370
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501299
  · exact cover_1501370
#print axioms cover_1501298

def state_1501268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 59)))
theorem cover_1501268 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501268 := by
  apply coveredState_split_literal (state := state_1501268) 1
    state_1501269 state_1501298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501269
  · exact cover_1501298
#print axioms cover_1501268

def state_1501016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 59)))
theorem cover_1501016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501016 := by
  apply coveredState_split_literal (state := state_1501016) 3
    state_1501017 state_1501268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501017
  · exact cover_1501268
#print axioms cover_1501016

def state_1500996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 59)))
theorem cover_1500996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500996 := by
  apply coveredState_split_literal (state := state_1500996) 0
    state_1500997 state_1501016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500997
  · exact cover_1501016
#print axioms cover_1500996

def state_1500902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 59)))
theorem cover_1500902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500902 := by
  apply coveredState_split_literal (state := state_1500902) 2
    state_1500903 state_1500996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500903
  · exact cover_1500996
#print axioms cover_1500902

def state_1500694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 29)))
theorem cover_1500694 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500694 := by
  apply coveredState_split_literal (state := state_1500694) 4
    state_1500695 state_1500902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500695
  · exact cover_1500902
#print axioms cover_1500694

def state_1501397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 29)))
theorem cover_1501397 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501397 := by
  apply coveredState_split_literal (state := state_1501397) 4
    state_1501398 state_1501429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501398
  · exact cover_1501429
#print axioms cover_1501397

def state_1500693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
theorem cover_1500693 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500693 := by
  apply coveredState_split_literal (state := state_1500693) 3
    state_1500694 state_1501397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500694
  · exact cover_1501397
#print axioms cover_1500693

def state_1501521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 59)))
theorem cover_1501521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501521 := by
  apply coveredState_split_literal (state := state_1501521) 3
    state_1501522 state_1501581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501522
  · exact cover_1501581
#print axioms cover_1501521

def state_1501520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 59)))
theorem cover_1501520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501520 := by
  apply coveredState_split_literal (state := state_1501520) 1
    state_1501521 state_1501586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501521
  · exact cover_1501586
#print axioms cover_1501520

def state_1501496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 59)))
theorem cover_1501496 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501496 := by
  apply coveredState_split_literal (state := state_1501496) 0
    state_1501497 state_1501520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501497
  · exact cover_1501520
#print axioms cover_1501496

def state_1501672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 172) else (if j.val < 3 then 82 else (if j.val < 4 then 208 else 119)))
theorem cover_1501672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501672 := by
  apply coveredState_split_literal (state := state_1501672) 4
    state_1501673 state_1501726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501673
  · exact cover_1501726
#print axioms cover_1501672

def state_1501671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 208 else 119)))
theorem cover_1501671 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501671 := by
  apply coveredState_split_literal (state := state_1501671) 1
    state_1501672 state_1501743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501672
  · exact cover_1501743
#print axioms cover_1501671

def state_1501670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 119)))
theorem cover_1501670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501670 := by
  apply coveredState_split_literal (state := state_1501670) 3
    state_1501671 state_1501744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501671
  · exact cover_1501744
#print axioms cover_1501670

def state_1501652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 119)))
theorem cover_1501652 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501652 := by
  apply coveredState_split_literal (state := state_1501652) 0
    state_1501653 state_1501670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501653
  · exact cover_1501670
#print axioms cover_1501652

def state_1501651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 119)))
theorem cover_1501651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501651 := by
  apply coveredState_split_literal (state := state_1501651) 2
    state_1501652 state_1501793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501652
  · exact cover_1501793
#print axioms cover_1501651

def state_1501625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 59)))
theorem cover_1501625 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501625 := by
  apply coveredState_split_literal (state := state_1501625) 4
    state_1501626 state_1501651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501626
  · exact cover_1501651
#print axioms cover_1501625

def state_1501848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 119)))
theorem cover_1501848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501848 := by
  apply coveredState_split_literal (state := state_1501848) 0
    state_1501849 state_1501862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501849
  · exact cover_1501862
#print axioms cover_1501848

def state_1501826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 119)))
theorem cover_1501826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501826 := by
  apply coveredState_split_literal (state := state_1501826) 2
    state_1501827 state_1501848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501827
  · exact cover_1501848
#print axioms cover_1501826

def state_1501806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 59)))
theorem cover_1501806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501806 := by
  apply coveredState_split_literal (state := state_1501806) 4
    state_1501807 state_1501826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501807
  · exact cover_1501826
#print axioms cover_1501806

def state_1501624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 59)))
theorem cover_1501624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501624 := by
  apply coveredState_split_literal (state := state_1501624) 3
    state_1501625 state_1501806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501625
  · exact cover_1501806
#print axioms cover_1501624

def state_1501623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 59)))
theorem cover_1501623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501623 := by
  apply coveredState_split_literal (state := state_1501623) 1
    state_1501624 state_1501913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501624
  · exact cover_1501913
#print axioms cover_1501623

def state_1501613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 59)))
theorem cover_1501613 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501613 := by
  apply coveredState_split_literal (state := state_1501613) 0
    state_1501614 state_1501623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501614
  · exact cover_1501623
#print axioms cover_1501613

def state_1501495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 59)))
theorem cover_1501495 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501495 := by
  apply coveredState_split_literal (state := state_1501495) 2
    state_1501496 state_1501613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501496
  · exact cover_1501613
#print axioms cover_1501495

def state_1501475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 29)))
theorem cover_1501475 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501475 := by
  apply coveredState_split_literal (state := state_1501475) 4
    state_1501476 state_1501495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501476
  · exact cover_1501495
#print axioms cover_1501475

def state_1501474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
theorem cover_1501474 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501474 := by
  apply coveredState_split_literal (state := state_1501474) 3
    state_1501475 state_1501946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501475
  · exact cover_1501946
#print axioms cover_1501474

def state_1500692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
theorem cover_1500692 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500692 := by
  apply coveredState_split_literal (state := state_1500692) 1
    state_1500693 state_1501474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500693
  · exact cover_1501474
#print axioms cover_1500692

def state_1500658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
theorem cover_1500658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500658 := by
  apply coveredState_split_literal (state := state_1500658) 0
    state_1500659 state_1500692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500659
  · exact cover_1500692
#print axioms cover_1500658
end Mub6.Numerical.CircleFullD0.Forest
