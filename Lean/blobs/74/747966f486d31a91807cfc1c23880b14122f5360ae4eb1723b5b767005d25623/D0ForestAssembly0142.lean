import D0FullInterface
import D0ForestChunk0549
import D0ForestChunk0550
import D0ForestChunk0551
import D0ForestChunk0552
import D0ForestChunk0553
import D0ForestChunk0554
import D0ForestChunk0555
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1320588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1320588 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320588 := by
  apply coveredState_split_literal (state := state_1320588) 2
    state_1320589 state_1320644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320589
  · exact cover_1320644
#print axioms cover_1320588

def state_1320736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
theorem cover_1320736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320736 := by
  apply coveredState_split_literal (state := state_1320736) 4
    state_1320737 state_1320778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320737
  · exact cover_1320778
#print axioms cover_1320736

def state_1320856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 5)))
theorem cover_1320856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320856 := by
  apply coveredState_split_literal (state := state_1320856) 4
    state_1320857 state_1320902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320857
  · exact cover_1320902
#print axioms cover_1320856

def state_1320855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_1320855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320855 := by
  apply coveredState_split_literal (state := state_1320855) 3
    state_1320856 state_1320927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320856
  · exact cover_1320927
#print axioms cover_1320855

def state_1320841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_1320841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320841 := by
  apply coveredState_split_literal (state := state_1320841) 4
    state_1320842 state_1320855
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320842
  · exact cover_1320855
#print axioms cover_1320841

def state_1320735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_1320735 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320735 := by
  apply coveredState_split_literal (state := state_1320735) 3
    state_1320736 state_1320841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320736
  · exact cover_1320841
#print axioms cover_1320735

def state_1320681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1320681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320681 := by
  apply coveredState_split_literal (state := state_1320681) 2
    state_1320682 state_1320735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320682
  · exact cover_1320735
#print axioms cover_1320681

def state_1320587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1320587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320587 := by
  apply coveredState_split_literal (state := state_1320587) 1
    state_1320588 state_1320681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320588
  · exact cover_1320681
#print axioms cover_1320587

def state_1320963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_1320963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320963 := by
  apply coveredState_split_literal (state := state_1320963) 3
    state_1320964 state_1320997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320964
  · exact cover_1320997
#print axioms cover_1320963

def state_1320945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1320945 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320945 := by
  apply coveredState_split_literal (state := state_1320945) 2
    state_1320946 state_1320963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320946
  · exact cover_1320963
#print axioms cover_1320945

def state_1321104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_1321104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321104 := by
  apply coveredState_split_literal (state := state_1321104) 4
    state_1321105 state_1321152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321105
  · exact cover_1321152
#print axioms cover_1321104

def state_1321103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_1321103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321103 := by
  apply coveredState_split_literal (state := state_1321103) 0
    state_1321104 state_1321179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321104
  · exact cover_1321179
#print axioms cover_1321103

def state_1321089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
theorem cover_1321089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321089 := by
  apply coveredState_split_literal (state := state_1321089) 4
    state_1321090 state_1321103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321090
  · exact cover_1321103
#print axioms cover_1321089

def state_1321246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_1321246 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321246 := by
  apply coveredState_split_literal (state := state_1321246) 2
    state_1321247 state_1321286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321247
  · exact cover_1321286
#print axioms cover_1321246

def state_1321412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
theorem cover_1321412 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321412 := by
  apply coveredState_split_literal (state := state_1321412) 3
    state_1321413 state_1321456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321413
  · exact cover_1321456
#print axioms cover_1321412

def state_1321696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 62) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 43)))
theorem cover_1321696 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321696 := by
  apply coveredState_split_literal (state := state_1321696) 2
    state_1321697 state_1321746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321697
  · exact cover_1321746
#print axioms cover_1321696

def state_1321833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 63) else (if j.val < 3 then 63 else (if j.val < 4 then 87 else 43)))
theorem cover_1321833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321833 := by
  apply coveredState_split_literal (state := state_1321833) 4
    state_1321834 state_1321845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321834
  · exact cover_1321845
#print axioms cover_1321833

def state_1321821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 63) else (if j.val < 3 then 63 else (if j.val < 4 then 43 else 43)))
theorem cover_1321821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321821 := by
  apply coveredState_split_literal (state := state_1321821) 3
    state_1321822 state_1321833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321822
  · exact cover_1321833
#print axioms cover_1321821

def state_1321791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 63) else (if j.val < 3 then 63 else (if j.val < 4 then 43 else 43)))
theorem cover_1321791 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321791 := by
  apply coveredState_split_literal (state := state_1321791) 0
    state_1321792 state_1321821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321792
  · exact cover_1321821
#print axioms cover_1321791

def state_1321769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 63) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 43)))
theorem cover_1321769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321769 := by
  apply coveredState_split_literal (state := state_1321769) 2
    state_1321770 state_1321791
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321770
  · exact cover_1321791
#print axioms cover_1321769

def state_1321695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 43)))
theorem cover_1321695 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321695 := by
  apply coveredState_split_literal (state := state_1321695) 1
    state_1321696 state_1321769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321696
  · exact cover_1321769
#print axioms cover_1321695

def state_1321683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 21)))
theorem cover_1321683 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321683 := by
  apply coveredState_split_literal (state := state_1321683) 4
    state_1321684 state_1321695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321684
  · exact cover_1321695
#print axioms cover_1321683

def state_1321665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 21)))
theorem cover_1321665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321665 := by
  apply coveredState_split_literal (state := state_1321665) 3
    state_1321666 state_1321683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321666
  · exact cover_1321683
#print axioms cover_1321665

def state_1321621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 21)))
theorem cover_1321621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321621 := by
  apply coveredState_split_literal (state := state_1321621) 0
    state_1321622 state_1321665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321622
  · exact cover_1321665
#print axioms cover_1321621

def state_1321591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 21)))
theorem cover_1321591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321591 := by
  apply coveredState_split_literal (state := state_1321591) 2
    state_1321592 state_1321621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321592
  · exact cover_1321621
#print axioms cover_1321591

def state_1321529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 21)))
theorem cover_1321529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321529 := by
  apply coveredState_split_literal (state := state_1321529) 1
    state_1321530 state_1321591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321530
  · exact cover_1321591
#print axioms cover_1321529

def state_1321511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 10)))
theorem cover_1321511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321511 := by
  apply coveredState_split_literal (state := state_1321511) 4
    state_1321512 state_1321529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321512
  · exact cover_1321529
#print axioms cover_1321511

def state_1321483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
theorem cover_1321483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321483 := by
  apply coveredState_split_literal (state := state_1321483) 3
    state_1321484 state_1321511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321484
  · exact cover_1321511
#print axioms cover_1321483

def state_1321411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
theorem cover_1321411 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321411 := by
  apply coveredState_split_literal (state := state_1321411) 0
    state_1321412 state_1321483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321412
  · exact cover_1321483
#print axioms cover_1321411

def state_1321349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_1321349 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321349 := by
  apply coveredState_split_literal (state := state_1321349) 2
    state_1321350 state_1321411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321350
  · exact cover_1321411
#print axioms cover_1321349

def state_1321245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_1321245 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321245 := by
  apply coveredState_split_literal (state := state_1321245) 1
    state_1321246 state_1321349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321246
  · exact cover_1321349
#print axioms cover_1321245

def state_1322030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 63) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 44)))
theorem cover_1322030 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322030 := by
  apply coveredState_split_literal (state := state_1322030) 2
    state_1322031 state_1322046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322031
  · exact cover_1322046
#print axioms cover_1322030
end Mub6.Numerical.CircleFullD0.Forest
