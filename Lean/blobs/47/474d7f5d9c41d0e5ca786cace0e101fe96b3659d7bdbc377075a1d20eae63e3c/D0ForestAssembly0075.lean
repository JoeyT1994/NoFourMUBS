import D0FullInterface
import D0ForestAssembly0074
import D0ForestChunk0298
import D0ForestChunk0299
import D0ForestChunk0300
import D0ForestChunk0301
import D0ForestChunk0302
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1009300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 46)))
theorem cover_1009300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009300 := by
  apply coveredState_split_literal (state := state_1009300) 3
    state_1009301 state_1009340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009301
  · exact cover_1009340
#print axioms cover_1009300

def state_1009299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 23)))
theorem cover_1009299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009299 := by
  apply coveredState_split_literal (state := state_1009299) 4
    state_1009300 state_1009467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009300
  · exact cover_1009467
#print axioms cover_1009299

def state_1009298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 23)))
theorem cover_1009298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009298 := by
  apply coveredState_split_literal (state := state_1009298) 0
    state_1009299 state_1009530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009299
  · exact cover_1009530
#print axioms cover_1009298

def state_1009290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_1009290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009290 := by
  apply coveredState_split_literal (state := state_1009290) 2
    state_1009291 state_1009298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009291
  · exact cover_1009298
#print axioms cover_1009290

def state_1009564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 47)))
theorem cover_1009564 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009564 := by
  apply coveredState_split_literal (state := state_1009564) 3
    state_1009565 state_1009592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009565
  · exact cover_1009592
#print axioms cover_1009564

def state_1009554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 23)))
theorem cover_1009554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009554 := by
  apply coveredState_split_literal (state := state_1009554) 4
    state_1009555 state_1009564
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009555
  · exact cover_1009564
#print axioms cover_1009554

def state_1009553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 23)))
theorem cover_1009553 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009553 := by
  apply coveredState_split_literal (state := state_1009553) 0
    state_1009554 state_1009643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009554
  · exact cover_1009643
#print axioms cover_1009553

def state_1009545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_1009545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009545 := by
  apply coveredState_split_literal (state := state_1009545) 2
    state_1009546 state_1009553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009546
  · exact cover_1009553
#print axioms cover_1009545

def state_1009289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_1009289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009289 := by
  apply coveredState_split_literal (state := state_1009289) 1
    state_1009290 state_1009545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009290
  · exact cover_1009545
#print axioms cover_1009289

def state_1009115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 11)))
theorem cover_1009115 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009115 := by
  apply coveredState_split_literal (state := state_1009115) 4
    state_1009116 state_1009289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009116
  · exact cover_1009289
#print axioms cover_1009115

def state_1009055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_1009055 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009055 := by
  apply coveredState_split_literal (state := state_1009055) 3
    state_1009056 state_1009115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009056
  · exact cover_1009115
#print axioms cover_1009055

def state_1008697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_1008697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008697 := by
  apply coveredState_split_literal (state := state_1008697) 0
    state_1008698 state_1009055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008698
  · exact cover_1009055
#print axioms cover_1008697

def state_1009653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
theorem cover_1009653 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009653 := by
  apply coveredState_split_literal (state := state_1009653) 3
    state_1009654 state_1009659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009654
  · exact cover_1009659
#print axioms cover_1009653

def state_1009738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 22)))
theorem cover_1009738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009738 := by
  apply coveredState_split_literal (state := state_1009738) 3
    state_1009739 state_1009748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009739
  · exact cover_1009748
#print axioms cover_1009738

def state_1009737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 22)))
theorem cover_1009737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009737 := by
  apply coveredState_split_literal (state := state_1009737) 0
    state_1009738 state_1009807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009738
  · exact cover_1009807
#print axioms cover_1009737

def state_1009736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 22)))
theorem cover_1009736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009736 := by
  apply coveredState_split_literal (state := state_1009736) 2
    state_1009737 state_1009818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009737
  · exact cover_1009818
#print axioms cover_1009736

def state_1009735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 22)))
theorem cover_1009735 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009735 := by
  apply coveredState_split_literal (state := state_1009735) 1
    state_1009736 state_1009821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009736
  · exact cover_1009821
#print axioms cover_1009735

def state_1009834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 46)))
theorem cover_1009834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009834 := by
  apply coveredState_split_literal (state := state_1009834) 1
    state_1009835 state_1009854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009835
  · exact cover_1009854
#print axioms cover_1009834

def state_1009830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 46)))
theorem cover_1009830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009830 := by
  apply coveredState_split_literal (state := state_1009830) 3
    state_1009831 state_1009834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009831
  · exact cover_1009834
#print axioms cover_1009830

def state_1009829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 23)))
theorem cover_1009829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009829 := by
  apply coveredState_split_literal (state := state_1009829) 4
    state_1009830 state_1009907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009830
  · exact cover_1009907
#print axioms cover_1009829

def state_1009828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 23)))
theorem cover_1009828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009828 := by
  apply coveredState_split_literal (state := state_1009828) 0
    state_1009829 state_1009970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009829
  · exact cover_1009970
#print axioms cover_1009828

def state_1009827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 23)))
theorem cover_1009827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009827 := by
  apply coveredState_split_literal (state := state_1009827) 2
    state_1009828 state_1009983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009828
  · exact cover_1009983
#print axioms cover_1009827

def state_1009999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 58) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 47)))
theorem cover_1009999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009999 := by
  apply coveredState_split_literal (state := state_1009999) 2
    state_1010000 state_1010055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010000
  · exact cover_1010055
#print axioms cover_1009999

def state_1009998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 47)))
theorem cover_1009998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009998 := by
  apply coveredState_split_literal (state := state_1009998) 1
    state_1009999 state_1010064
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009999
  · exact cover_1010064
#print axioms cover_1009998

def state_1009996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 47)))
theorem cover_1009996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009996 := by
  apply coveredState_split_literal (state := state_1009996) 3
    state_1009997 state_1009998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009997
  · exact cover_1009998
#print axioms cover_1009996

def state_1009986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 23)))
theorem cover_1009986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009986 := by
  apply coveredState_split_literal (state := state_1009986) 4
    state_1009987 state_1009996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009987
  · exact cover_1009996
#print axioms cover_1009986

def state_1009985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 23)))
theorem cover_1009985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009985 := by
  apply coveredState_split_literal (state := state_1009985) 0
    state_1009986 state_1010071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009986
  · exact cover_1010071
#print axioms cover_1009985

def state_1009984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 23)))
theorem cover_1009984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009984 := by
  apply coveredState_split_literal (state := state_1009984) 2
    state_1009985 state_1010088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009985
  · exact cover_1010088
#print axioms cover_1009984

def state_1009826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 23)))
theorem cover_1009826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009826 := by
  apply coveredState_split_literal (state := state_1009826) 1
    state_1009827 state_1009984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009827
  · exact cover_1009984
#print axioms cover_1009826

def state_1009734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 11)))
theorem cover_1009734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009734 := by
  apply coveredState_split_literal (state := state_1009734) 4
    state_1009735 state_1009826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009735
  · exact cover_1009826
#print axioms cover_1009734

def state_1009722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
theorem cover_1009722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009722 := by
  apply coveredState_split_literal (state := state_1009722) 3
    state_1009723 state_1009734
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009723
  · exact cover_1009734
#print axioms cover_1009722

def state_1009652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
theorem cover_1009652 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009652 := by
  apply coveredState_split_literal (state := state_1009652) 0
    state_1009653 state_1009722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009653
  · exact cover_1009722
#print axioms cover_1009652
end Mub6.Numerical.CircleFullD0.Forest
