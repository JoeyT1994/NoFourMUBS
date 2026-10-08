import D0FullInterface
import D0ForestAssembly0023
import D0ForestChunk0050
import D0ForestChunk0051
import D0ForestChunk0052
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2562786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2562786 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562786 := by
  apply coveredState_split_literal (state := state_2562786) 2
    state_2562787 state_2563050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562787
  · exact cover_2563050
#print axioms cover_2562786

def state_2562785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2562785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562785 := by
  apply coveredState_split_literal (state := state_2562785) 1
    state_2562786 state_2570737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562786
  · exact cover_2570737
#print axioms cover_2562785

def state_2562611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2562611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562611 := by
  apply coveredState_split_literal (state := state_2562611) 0
    state_2562612 state_2562785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562612
  · exact cover_2562785
#print axioms cover_2562611

def state_2571937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 24)))
theorem cover_2571937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571937 := by
  apply coveredState_split_literal (state := state_2571937) 2
    state_2571938 state_2572265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571938
  · exact cover_2572265
#print axioms cover_2571937

def state_2571936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_2571936 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571936 := by
  apply coveredState_split_literal (state := state_2571936) 4
    state_2571937 state_2573034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571937
  · exact cover_2573034
#print axioms cover_2571936

def state_2571935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_2571935 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571935 := by
  apply coveredState_split_literal (state := state_2571935) 1
    state_2571936 state_2573047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571936
  · exact cover_2573047
#print axioms cover_2571935

def state_2571934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_2571934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571934 := by
  apply coveredState_split_literal (state := state_2571934) 0
    state_2571935 state_2573062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571935
  · exact cover_2573062
#print axioms cover_2571934

def state_2571933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 12)))
theorem cover_2571933 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571933 := by
  apply coveredState_split_literal (state := state_2571933) 3
    state_2571934 state_2573087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571934
  · exact cover_2573087
#print axioms cover_2571933

def state_2571932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 12)))
theorem cover_2571932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571932 := by
  apply coveredState_split_literal (state := state_2571932) 2
    state_2571933 state_2573284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571933
  · exact cover_2573284
#print axioms cover_2571932

def state_2571931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_2571931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571931 := by
  apply coveredState_split_literal (state := state_2571931) 4
    state_2571932 state_2573505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571932
  · exact cover_2573505
#print axioms cover_2571931

def state_2571930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_2571930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571930 := by
  apply coveredState_split_literal (state := state_2571930) 1
    state_2571931 state_2573516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571931
  · exact cover_2573516
#print axioms cover_2571930

def state_2571538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_2571538 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571538 := by
  apply coveredState_split_literal (state := state_2571538) 0
    state_2571539 state_2571930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571539
  · exact cover_2571930
#print axioms cover_2571538

def state_2571537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
theorem cover_2571537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571537 := by
  apply coveredState_split_literal (state := state_2571537) 4
    state_2571538 state_2573529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571538
  · exact cover_2573529
#print axioms cover_2571537

def state_2571281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_2571281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571281 := by
  apply coveredState_split_literal (state := state_2571281) 3
    state_2571282 state_2571537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571282
  · exact cover_2571537
#print axioms cover_2571281

def state_2570985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2570985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570985 := by
  apply coveredState_split_literal (state := state_2570985) 2
    state_2570986 state_2571281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570986
  · exact cover_2571281
#print axioms cover_2570985

def state_2570984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2570984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570984 := by
  apply coveredState_split_literal (state := state_2570984) 1
    state_2570985 state_2573536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570985
  · exact cover_2573536
#print axioms cover_2570984

def state_2570768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2570768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570768 := by
  apply coveredState_split_literal (state := state_2570768) 0
    state_2570769 state_2570984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570769
  · exact cover_2570984
#print axioms cover_2570768

def state_2562610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_2562610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562610 := by
  apply coveredState_split_literal (state := state_2562610) 4
    state_2562611 state_2570768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562611
  · exact cover_2570768
#print axioms cover_2562610

def state_2562170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2562170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562170 := by
  apply coveredState_split_literal (state := state_2562170) 3
    state_2562171 state_2562610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562171
  · exact cover_2562610
#print axioms cover_2562170

def state_2561482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2561482 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561482 := by
  apply coveredState_split_literal (state := state_2561482) 2
    state_2561483 state_2562170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561483
  · exact cover_2562170
#print axioms cover_2561482

def state_2546292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2546292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546292 := by
  apply coveredState_split_literal (state := state_2546292) 1
    state_2546293 state_2561482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546293
  · exact cover_2561482
#print axioms cover_2546292

def state_2574123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 9)))
theorem cover_2574123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574123 := by
  apply coveredState_split_literal (state := state_2574123) 1
    state_2574124 state_2574895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574124
  · exact cover_2574895
#print axioms cover_2574123

def state_2574109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 9)))
theorem cover_2574109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574109 := by
  apply coveredState_split_literal (state := state_2574109) 3
    state_2574110 state_2574123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574110
  · exact cover_2574123
#print axioms cover_2574109

def state_2574093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 9)))
theorem cover_2574093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574093 := by
  apply coveredState_split_literal (state := state_2574093) 2
    state_2574094 state_2574109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574094
  · exact cover_2574109
#print axioms cover_2574093

def state_2574067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 9)))
theorem cover_2574067 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574067 := by
  apply coveredState_split_literal (state := state_2574067) 0
    state_2574068 state_2574093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574068
  · exact cover_2574093
#print axioms cover_2574067

def state_2573869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
theorem cover_2573869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573869 := by
  apply coveredState_split_literal (state := state_2573869) 4
    state_2573870 state_2574067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573870
  · exact cover_2574067
#print axioms cover_2573869

def state_2573647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
theorem cover_2573647 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573647 := by
  apply coveredState_split_literal (state := state_2573647) 1
    state_2573648 state_2573869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573648
  · exact cover_2573869
#print axioms cover_2573647

def state_2573635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 4)))
theorem cover_2573635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573635 := by
  apply coveredState_split_literal (state := state_2573635) 3
    state_2573636 state_2573647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573636
  · exact cover_2573647
#print axioms cover_2573635

def state_2573621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_2573621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573621 := by
  apply coveredState_split_literal (state := state_2573621) 2
    state_2573622 state_2573635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573622
  · exact cover_2573635
#print axioms cover_2573621

def state_2573620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_2573620 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573620 := by
  apply coveredState_split_literal (state := state_2573620) 0
    state_2573621 state_2575220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573621
  · exact cover_2575220
#print axioms cover_2573620

def state_2573619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_2573619 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573619 := by
  apply coveredState_split_literal (state := state_2573619) 4
    state_2573620 state_2575611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573620
  · exact cover_2575611
#print axioms cover_2573619

def state_2573609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_2573609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573609 := by
  apply coveredState_split_literal (state := state_2573609) 3
    state_2573610 state_2573619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573610
  · exact cover_2573619
#print axioms cover_2573609

def state_2573597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2573597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573597 := by
  apply coveredState_split_literal (state := state_2573597) 2
    state_2573598 state_2573609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573598
  · exact cover_2573609
#print axioms cover_2573597

def state_2573596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2573596 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573596 := by
  apply coveredState_split_literal (state := state_2573596) 1
    state_2573597 state_2575872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573597
  · exact cover_2575872
#print axioms cover_2573596

def state_2573595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2573595 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573595 := by
  apply coveredState_split_literal (state := state_2573595) 0
    state_2573596 state_2576203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573596
  · exact cover_2576203
#print axioms cover_2573595

def state_2573594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2573594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573594 := by
  apply coveredState_split_literal (state := state_2573594) 4
    state_2573595 state_2576416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573595
  · exact cover_2576416
#print axioms cover_2573594

def state_2576787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 8)))
theorem cover_2576787 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576787 := by
  apply coveredState_split_literal (state := state_2576787) 2
    state_2576788 state_2577315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576788
  · exact cover_2577315
#print axioms cover_2576787

def state_2576737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 8)))
theorem cover_2576737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576737 := by
  apply coveredState_split_literal (state := state_2576737) 0
    state_2576738 state_2576787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576738
  · exact cover_2576787
#print axioms cover_2576737

def state_2578964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
theorem cover_2578964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578964 := by
  apply coveredState_split_literal (state := state_2578964) 4
    state_2578965 state_2579234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578965
  · exact cover_2579234
#print axioms cover_2578964

def state_2578963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
theorem cover_2578963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578963 := by
  apply coveredState_split_literal (state := state_2578963) 1
    state_2578964 state_2580017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578964
  · exact cover_2580017
#print axioms cover_2578963

def state_2578905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
theorem cover_2578905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578905 := by
  apply coveredState_split_literal (state := state_2578905) 0
    state_2578906 state_2578963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578906
  · exact cover_2578963
#print axioms cover_2578905

def state_2578904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 24 else 18)))
theorem cover_2578904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578904 := by
  apply coveredState_split_literal (state := state_2578904) 3
    state_2578905 state_2580356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578905
  · exact cover_2580356
#print axioms cover_2578904

def state_2578520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 18)))
theorem cover_2578520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578520 := by
  apply coveredState_split_literal (state := state_2578520) 2
    state_2578521 state_2578904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578521
  · exact cover_2578904
#print axioms cover_2578520

def state_2578519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
theorem cover_2578519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578519 := by
  apply coveredState_split_literal (state := state_2578519) 4
    state_2578520 state_2580517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578520
  · exact cover_2580517
#print axioms cover_2578519

def state_2578219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
theorem cover_2578219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578219 := by
  apply coveredState_split_literal (state := state_2578219) 1
    state_2578220 state_2578519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578220
  · exact cover_2578519
#print axioms cover_2578219

def state_2578218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 12 else 9)))
theorem cover_2578218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578218 := by
  apply coveredState_split_literal (state := state_2578218) 3
    state_2578219 state_2580772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578219
  · exact cover_2580772
#print axioms cover_2578218

def state_2578162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 9)))
theorem cover_2578162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578162 := by
  apply coveredState_split_literal (state := state_2578162) 2
    state_2578163 state_2578218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578163
  · exact cover_2578218
#print axioms cover_2578162

def state_2578126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 9)))
theorem cover_2578126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578126 := by
  apply coveredState_split_literal (state := state_2578126) 0
    state_2578127 state_2578162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578127
  · exact cover_2578162
#print axioms cover_2578126

def state_2576736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
theorem cover_2576736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576736 := by
  apply coveredState_split_literal (state := state_2576736) 4
    state_2576737 state_2578126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576737
  · exact cover_2578126
#print axioms cover_2576736

def state_2576704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
theorem cover_2576704 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576704 := by
  apply coveredState_split_literal (state := state_2576704) 1
    state_2576705 state_2576736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576705
  · exact cover_2576736
#print axioms cover_2576704

def state_2576703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
theorem cover_2576703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576703 := by
  apply coveredState_split_literal (state := state_2576703) 3
    state_2576704 state_2580823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576704
  · exact cover_2580823
#print axioms cover_2576703

def state_2576639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2576639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576639 := by
  apply coveredState_split_literal (state := state_2576639) 2
    state_2576640 state_2576703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576640
  · exact cover_2576703
#print axioms cover_2576639

def state_2580881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
theorem cover_2580881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580881 := by
  apply coveredState_split_literal (state := state_2580881) 4
    state_2580882 state_2581241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580882
  · exact cover_2581241
#print axioms cover_2580881

def state_2580867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
theorem cover_2580867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580867 := by
  apply coveredState_split_literal (state := state_2580867) 1
    state_2580868 state_2580881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580868
  · exact cover_2580881
#print axioms cover_2580867

def state_2580866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
theorem cover_2580866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580866 := by
  apply coveredState_split_literal (state := state_2580866) 3
    state_2580867 state_2582122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580867
  · exact cover_2582122
#print axioms cover_2580866

def state_2580856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2580856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580856 := by
  apply coveredState_split_literal (state := state_2580856) 2
    state_2580857 state_2580866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580857
  · exact cover_2580866
#print axioms cover_2580856

def state_2576638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2576638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576638 := by
  apply coveredState_split_literal (state := state_2576638) 0
    state_2576639 state_2580856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576639
  · exact cover_2580856
#print axioms cover_2576638

def state_2576637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_2576637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576637 := by
  apply coveredState_split_literal (state := state_2576637) 4
    state_2576638 state_2582133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576638
  · exact cover_2582133
#print axioms cover_2576637

def state_2576636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2576636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576636 := by
  apply coveredState_split_literal (state := state_2576636) 3
    state_2576637 state_2582260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576637
  · exact cover_2582260
#print axioms cover_2576636

def state_2576618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2576618 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576618 := by
  apply coveredState_split_literal (state := state_2576618) 2
    state_2576619 state_2576636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576619
  · exact cover_2576636
#print axioms cover_2576618

def state_2582961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
theorem cover_2582961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582961 := by
  apply coveredState_split_literal (state := state_2582961) 4
    state_2582962 state_2583925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582962
  · exact cover_2583925
#print axioms cover_2582961

def state_2582960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
theorem cover_2582960 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582960 := by
  apply coveredState_split_literal (state := state_2582960) 3
    state_2582961 state_2584318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582961
  · exact cover_2584318
#print axioms cover_2582960

def state_2582928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2582928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582928 := by
  apply coveredState_split_literal (state := state_2582928) 2
    state_2582929 state_2582960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582929
  · exact cover_2582960
#print axioms cover_2582928

def state_2582927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2582927 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582927 := by
  apply coveredState_split_literal (state := state_2582927) 1
    state_2582928 state_2584371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582928
  · exact cover_2584371
#print axioms cover_2582927
end Mub6.Numerical.CircleFullD0.Forest
