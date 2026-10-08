import D0FullInterface
import D0ForestAssembly0400
import D0ForestChunk1551
import D0ForestChunk1559
import D0ForestChunk1562
import D0ForestChunk1563
import D0ForestChunk1564
import D0ForestChunk1565
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2247779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 12)))
theorem cover_2247779 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247779 := by
  apply coveredState_split_literal (state := state_2247779) 4
    state_2247780 state_2248255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247780
  · exact cover_2248255
#print axioms cover_2247779

def state_2247769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
theorem cover_2247769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247769 := by
  apply coveredState_split_literal (state := state_2247769) 3
    state_2247770 state_2247779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247770
  · exact cover_2247779
#print axioms cover_2247769

def state_2247759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
theorem cover_2247759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247759 := by
  apply coveredState_split_literal (state := state_2247759) 2
    state_2247760 state_2247769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247760
  · exact cover_2247769
#print axioms cover_2247759

def state_2247737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
theorem cover_2247737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247737 := by
  apply coveredState_split_literal (state := state_2247737) 0
    state_2247738 state_2247759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247738
  · exact cover_2247759
#print axioms cover_2247737

def state_2247736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 6)))
theorem cover_2247736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247736 := by
  apply coveredState_split_literal (state := state_2247736) 4
    state_2247737 state_2248314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247737
  · exact cover_2248314
#print axioms cover_2247736

def state_2247722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_2247722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247722 := by
  apply coveredState_split_literal (state := state_2247722) 3
    state_2247723 state_2247736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247723
  · exact cover_2247736
#print axioms cover_2247722

def state_2245838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_2245838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245838 := by
  apply coveredState_split_literal (state := state_2245838) 1
    state_2245839 state_2247722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245839
  · exact cover_2247722
#print axioms cover_2245838

def state_2245837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_2245837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245837 := by
  apply coveredState_split_literal (state := state_2245837) 4
    state_2245838 state_2248341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245838
  · exact cover_2248341
#print axioms cover_2245837

def state_2245821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_2245821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245821 := by
  apply coveredState_split_literal (state := state_2245821) 3
    state_2245822 state_2245837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245822
  · exact cover_2245837
#print axioms cover_2245821

def state_2248349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
theorem cover_2248349 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248349 := by
  apply coveredState_split_literal (state := state_2248349) 4
    state_2248350 state_2248383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248350
  · exact cover_2248383
#print axioms cover_2248349

def state_2248471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 13)))
theorem cover_2248471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248471 := by
  apply coveredState_split_literal (state := state_2248471) 1
    state_2248472 state_2248489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248472
  · exact cover_2248489
#print axioms cover_2248471

def state_2248470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 13)))
theorem cover_2248470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248470 := by
  apply coveredState_split_literal (state := state_2248470) 0
    state_2248471 state_2248544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248471
  · exact cover_2248544
#print axioms cover_2248470

def state_2248448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 6)))
theorem cover_2248448 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248448 := by
  apply coveredState_split_literal (state := state_2248448) 4
    state_2248449 state_2248470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248449
  · exact cover_2248470
#print axioms cover_2248448

def state_2248621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 25)))
theorem cover_2248621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248621 := by
  apply coveredState_split_literal (state := state_2248621) 1
    state_2248622 state_2248635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248622
  · exact cover_2248635
#print axioms cover_2248621

def state_2248607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 25)))
theorem cover_2248607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248607 := by
  apply coveredState_split_literal (state := state_2248607) 0
    state_2248608 state_2248621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248608
  · exact cover_2248621
#print axioms cover_2248607

def state_2248606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 25)))
theorem cover_2248606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248606 := by
  apply coveredState_split_literal (state := state_2248606) 2
    state_2248607 state_2248698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248607
  · exact cover_2248698
#print axioms cover_2248606

def state_2248602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 12)))
theorem cover_2248602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248602 := by
  apply coveredState_split_literal (state := state_2248602) 4
    state_2248603 state_2248606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248603
  · exact cover_2248606
#print axioms cover_2248602

def state_2248725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 25)))
theorem cover_2248725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248725 := by
  apply coveredState_split_literal (state := state_2248725) 1
    state_2248726 state_2248731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248726
  · exact cover_2248731
#print axioms cover_2248725

def state_2248724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 25)))
theorem cover_2248724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248724 := by
  apply coveredState_split_literal (state := state_2248724) 3
    state_2248725 state_2248790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248725
  · exact cover_2248790
#print axioms cover_2248724

def state_2248708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 25)))
theorem cover_2248708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248708 := by
  apply coveredState_split_literal (state := state_2248708) 0
    state_2248709 state_2248724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248709
  · exact cover_2248724
#print axioms cover_2248708

def state_2248707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 25)))
theorem cover_2248707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248707 := by
  apply coveredState_split_literal (state := state_2248707) 2
    state_2248708 state_2248831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248708
  · exact cover_2248831
#print axioms cover_2248707

def state_2248699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 12)))
theorem cover_2248699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248699 := by
  apply coveredState_split_literal (state := state_2248699) 4
    state_2248700 state_2248707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248700
  · exact cover_2248707
#print axioms cover_2248699

def state_2248601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
theorem cover_2248601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248601 := by
  apply coveredState_split_literal (state := state_2248601) 3
    state_2248602 state_2248699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248602
  · exact cover_2248699
#print axioms cover_2248601

def state_2248583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
theorem cover_2248583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248583 := by
  apply coveredState_split_literal (state := state_2248583) 1
    state_2248584 state_2248601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248584
  · exact cover_2248601
#print axioms cover_2248583

def state_2248891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 45 else 25)))
theorem cover_2248891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248891 := by
  apply coveredState_split_literal (state := state_2248891) 4
    state_2248892 state_2248919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248892
  · exact cover_2248919
#print axioms cover_2248891

def state_2248881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 25)))
theorem cover_2248881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248881 := by
  apply coveredState_split_literal (state := state_2248881) 3
    state_2248882 state_2248891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248882
  · exact cover_2248891
#print axioms cover_2248881

def state_2248867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 25)))
theorem cover_2248867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248867 := by
  apply coveredState_split_literal (state := state_2248867) 1
    state_2248868 state_2248881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248868
  · exact cover_2248881
#print axioms cover_2248867

def state_2248866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 25)))
theorem cover_2248866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248866 := by
  apply coveredState_split_literal (state := state_2248866) 0
    state_2248867 state_2248956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248867
  · exact cover_2248956
#print axioms cover_2248866

def state_2248865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 25)))
theorem cover_2248865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248865 := by
  apply coveredState_split_literal (state := state_2248865) 2
    state_2248866 state_2248963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248866
  · exact cover_2248963
#print axioms cover_2248865

def state_2248847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 12)))
theorem cover_2248847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248847 := by
  apply coveredState_split_literal (state := state_2248847) 4
    state_2248848 state_2248865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248848
  · exact cover_2248865
#print axioms cover_2248847

def state_2248975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 24)))
theorem cover_2248975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248975 := by
  apply coveredState_split_literal (state := state_2248975) 3
    state_2248976 state_2249031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248976
  · exact cover_2249031
#print axioms cover_2248975

def state_2248974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 24)))
theorem cover_2248974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248974 := by
  apply coveredState_split_literal (state := state_2248974) 0
    state_2248975 state_2249052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248975
  · exact cover_2249052
#print axioms cover_2248974
end Mub6.Numerical.CircleFullD0.Forest
