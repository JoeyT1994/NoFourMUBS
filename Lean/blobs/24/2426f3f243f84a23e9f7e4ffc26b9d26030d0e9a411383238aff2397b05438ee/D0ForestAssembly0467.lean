import D0FullInterface
import D0ForestAssembly0461
import D0ForestAssembly0462
import D0ForestAssembly0463
import D0ForestAssembly0466
import D0ForestChunk1810
import D0ForestChunk1834
import D0ForestChunk1835
import D0ForestChunk1836
import D0ForestChunk1837
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2309623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_2309623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309623 := by
  apply coveredState_split_literal (state := state_2309623) 0
    state_2309624 state_2312763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309624
  · exact cover_2312763
#print axioms cover_2309623

def state_2313331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 22)))
theorem cover_2313331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313331 := by
  apply coveredState_split_literal (state := state_2313331) 1
    state_2313332 state_2313369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313332
  · exact cover_2313369
#print axioms cover_2313331

def state_2313330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 11)))
theorem cover_2313330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313330 := by
  apply coveredState_split_literal (state := state_2313330) 4
    state_2313331 state_2313420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313331
  · exact cover_2313420
#print axioms cover_2313330

def state_2313290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 11)))
theorem cover_2313290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313290 := by
  apply coveredState_split_literal (state := state_2313290) 0
    state_2313291 state_2313330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313291
  · exact cover_2313330
#print axioms cover_2313290

def state_2309622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 11)))
theorem cover_2309622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309622 := by
  apply coveredState_split_literal (state := state_2309622) 3
    state_2309623 state_2313290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309623
  · exact cover_2313290
#print axioms cover_2309622

def state_2309116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_2309116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309116 := by
  apply coveredState_split_literal (state := state_2309116) 2
    state_2309117 state_2309622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309117
  · exact cover_2309622
#print axioms cover_2309116

def state_2308754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_2308754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308754 := by
  apply coveredState_split_literal (state := state_2308754) 4
    state_2308755 state_2309116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308755
  · exact cover_2309116
#print axioms cover_2308754

def state_2308010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_2308010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308010 := by
  apply coveredState_split_literal (state := state_2308010) 1
    state_2308011 state_2308754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308011
  · exact cover_2308754
#print axioms cover_2308010

def state_2307610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_2307610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307610 := by
  apply coveredState_split_literal (state := state_2307610) 0
    state_2307611 state_2308010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307611
  · exact cover_2308010
#print axioms cover_2307610

def state_2307550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_2307550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307550 := by
  apply coveredState_split_literal (state := state_2307550) 4
    state_2307551 state_2307610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307551
  · exact cover_2307610
#print axioms cover_2307550

def state_2289768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_2289768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289768 := by
  apply coveredState_split_literal (state := state_2289768) 3
    state_2289769 state_2307550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289769
  · exact cover_2307550
#print axioms cover_2289768

def state_2313591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 22)))
theorem cover_2313591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313591 := by
  apply coveredState_split_literal (state := state_2313591) 1
    state_2313592 state_2313625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313592
  · exact cover_2313625
#print axioms cover_2313591

def state_2313579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 22)))
theorem cover_2313579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313579 := by
  apply coveredState_split_literal (state := state_2313579) 0
    state_2313580 state_2313591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313580
  · exact cover_2313591
#print axioms cover_2313579

def state_2313578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 11)))
theorem cover_2313578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313578 := by
  apply coveredState_split_literal (state := state_2313578) 4
    state_2313579 state_2313656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313579
  · exact cover_2313656
#print axioms cover_2313578

def state_2313554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 5)))
theorem cover_2313554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313554 := by
  apply coveredState_split_literal (state := state_2313554) 4
    state_2313555 state_2313578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313555
  · exact cover_2313578
#print axioms cover_2313554

def state_2313508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
theorem cover_2313508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313508 := by
  apply coveredState_split_literal (state := state_2313508) 3
    state_2313509 state_2313554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313509
  · exact cover_2313554
#print axioms cover_2313508

def state_2313507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_2313507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313507 := by
  apply coveredState_split_literal (state := state_2313507) 2
    state_2313508 state_2313701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313508
  · exact cover_2313701
#print axioms cover_2313507

def state_2313479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_2313479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313479 := by
  apply coveredState_split_literal (state := state_2313479) 1
    state_2313480 state_2313507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313480
  · exact cover_2313507
#print axioms cover_2313479

def state_2313767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 22)))
theorem cover_2313767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313767 := by
  apply coveredState_split_literal (state := state_2313767) 2
    state_2313768 state_2313831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313768
  · exact cover_2313831
#print axioms cover_2313767

def state_2313757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 22)))
theorem cover_2313757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313757 := by
  apply coveredState_split_literal (state := state_2313757) 1
    state_2313758 state_2313767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313758
  · exact cover_2313767
#print axioms cover_2313757

def state_2313756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 11)))
theorem cover_2313756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313756 := by
  apply coveredState_split_literal (state := state_2313756) 4
    state_2313757 state_2313838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313757
  · exact cover_2313838
#print axioms cover_2313756

def state_2313755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 11)))
theorem cover_2313755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313755 := by
  apply coveredState_split_literal (state := state_2313755) 0
    state_2313756 state_2313859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313756
  · exact cover_2313859
#print axioms cover_2313755

def state_2313733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 5)))
theorem cover_2313733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313733 := by
  apply coveredState_split_literal (state := state_2313733) 4
    state_2313734 state_2313755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313734
  · exact cover_2313755
#print axioms cover_2313733

def state_2313723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
theorem cover_2313723 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313723 := by
  apply coveredState_split_literal (state := state_2313723) 3
    state_2313724 state_2313733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313724
  · exact cover_2313733
#print axioms cover_2313723

def state_2313722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_2313722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313722 := by
  apply coveredState_split_literal (state := state_2313722) 2
    state_2313723 state_2313872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313723
  · exact cover_2313872
#print axioms cover_2313722

def state_2313714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_2313714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313714 := by
  apply coveredState_split_literal (state := state_2313714) 1
    state_2313715 state_2313722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313715
  · exact cover_2313722
#print axioms cover_2313714

def state_2313478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_2313478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313478 := by
  apply coveredState_split_literal (state := state_2313478) 0
    state_2313479 state_2313714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313479
  · exact cover_2313714
#print axioms cover_2313478

def state_2313454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_2313454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313454 := by
  apply coveredState_split_literal (state := state_2313454) 4
    state_2313455 state_2313478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313455
  · exact cover_2313478
#print axioms cover_2313454

def state_2313947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 4)))
theorem cover_2313947 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313947 := by
  apply coveredState_split_literal (state := state_2313947) 3
    state_2313948 state_2313989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313948
  · exact cover_2313989
#print axioms cover_2313947

def state_2313946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_2313946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313946 := by
  apply coveredState_split_literal (state := state_2313946) 2
    state_2313947 state_2314022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313947
  · exact cover_2314022
#print axioms cover_2313946

def state_2313920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_2313920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313920 := by
  apply coveredState_split_literal (state := state_2313920) 1
    state_2313921 state_2313946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313921
  · exact cover_2313946
#print axioms cover_2313920

def state_2313878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_2313878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313878 := by
  apply coveredState_split_literal (state := state_2313878) 0
    state_2313879 state_2313920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313879
  · exact cover_2313920
#print axioms cover_2313878
end Mub6.Numerical.CircleFullD0.Forest
