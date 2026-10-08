import CircleFullInterface
import CircleForestAssembly0497
import CircleForestAssembly0498
import CircleForestAssembly0499
import CircleForestAssembly0500
import CircleForestChunk1955
import CircleForestChunk1962
import CircleForestChunk1967
import CircleForestChunk1969
import CircleForestChunk1970
import CircleForestChunk1971
import CircleForestChunk1972
import CircleForestChunk1973
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2552627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 11)))
theorem cover_2552627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552627 := by
  apply coveredState_split_literal (state := state_2552627) 3
    state_2552628 state_2553199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552628
  · exact cover_2553199
#print axioms cover_2552627

def state_2552626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_2552626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552626 := by
  apply coveredState_split_literal (state := state_2552626) 2
    state_2552627 state_2553226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552627
  · exact cover_2553226
#print axioms cover_2552626

def state_2552624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_2552624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552624 := by
  apply coveredState_split_literal (state := state_2552624) 4
    state_2552625 state_2552626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552625
  · exact cover_2552626
#print axioms cover_2552624

def state_2552622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_2552622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552622 := by
  apply coveredState_split_literal (state := state_2552622) 1
    state_2552623 state_2552624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552623
  · exact cover_2552624
#print axioms cover_2552622

def state_2551598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_2551598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551598 := by
  apply coveredState_split_literal (state := state_2551598) 0
    state_2551599 state_2552622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551599
  · exact cover_2552622
#print axioms cover_2551598

def state_2551596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_2551596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551596 := by
  apply coveredState_split_literal (state := state_2551596) 4
    state_2551597 state_2551598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551597
  · exact cover_2551598
#print axioms cover_2551596

def state_2551024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_2551024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551024 := by
  apply coveredState_split_literal (state := state_2551024) 3
    state_2551025 state_2551596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551025
  · exact cover_2551596
#print axioms cover_2551024

def state_2549818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2549818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549818 := by
  apply coveredState_split_literal (state := state_2549818) 2
    state_2549819 state_2551024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549819
  · exact cover_2551024
#print axioms cover_2549818

def state_2549792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2549792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549792 := by
  apply coveredState_split_literal (state := state_2549792) 1
    state_2549793 state_2549818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549793
  · exact cover_2549818
#print axioms cover_2549792

def state_2549256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2549256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549256 := by
  apply coveredState_split_literal (state := state_2549256) 0
    state_2549257 state_2549792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549257
  · exact cover_2549792
#print axioms cover_2549256

def state_2553322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_2553322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553322 := by
  apply coveredState_split_literal (state := state_2553322) 2
    state_2553323 state_2553376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553323
  · exact cover_2553376
#print axioms cover_2553322

def state_2553288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_2553288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553288 := by
  apply coveredState_split_literal (state := state_2553288) 1
    state_2553289 state_2553322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553289
  · exact cover_2553322
#print axioms cover_2553288

def state_2553287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_2553287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553287 := by
  apply coveredState_split_literal (state := state_2553287) 4
    state_2553288 state_2553405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553288
  · exact cover_2553405
#print axioms cover_2553287

def state_2553271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_2553271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553271 := by
  apply coveredState_split_literal (state := state_2553271) 3
    state_2553272 state_2553287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553272
  · exact cover_2553287
#print axioms cover_2553271

def state_2553270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2553270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553270 := by
  apply coveredState_split_literal (state := state_2553270) 2
    state_2553271 state_2553408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553271
  · exact cover_2553408
#print axioms cover_2553270

def state_2553260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2553260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553260 := by
  apply coveredState_split_literal (state := state_2553260) 1
    state_2553261 state_2553270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553261
  · exact cover_2553270
#print axioms cover_2553260

def state_2553511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_2553511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553511 := by
  apply coveredState_split_literal (state := state_2553511) 2
    state_2553512 state_2553525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553512
  · exact cover_2553525
#print axioms cover_2553511

def state_2553493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_2553493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553493 := by
  apply coveredState_split_literal (state := state_2553493) 1
    state_2553494 state_2553511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553494
  · exact cover_2553511
#print axioms cover_2553493

def state_2553492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_2553492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553492 := by
  apply coveredState_split_literal (state := state_2553492) 0
    state_2553493 state_2553586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553493
  · exact cover_2553586
#print axioms cover_2553492

def state_2553491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_2553491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553491 := by
  apply coveredState_split_literal (state := state_2553491) 4
    state_2553492 state_2553629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553492
  · exact cover_2553629
#print axioms cover_2553491

def state_2553633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_2553633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553633 := by
  apply coveredState_split_literal (state := state_2553633) 2
    state_2553634 state_2553659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553634
  · exact cover_2553659
#print axioms cover_2553633

def state_2553715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_2553715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553715 := by
  apply coveredState_split_literal (state := state_2553715) 4
    state_2553716 state_2553777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553716
  · exact cover_2553777
#print axioms cover_2553715

def state_2553802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_2553802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553802 := by
  apply coveredState_split_literal (state := state_2553802) 2
    state_2553803 state_2553814
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553803
  · exact cover_2553814
#print axioms cover_2553802

def state_2553788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_2553788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553788 := by
  apply coveredState_split_literal (state := state_2553788) 0
    state_2553789 state_2553802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553789
  · exact cover_2553802
#print axioms cover_2553788

def state_2553787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_2553787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553787 := by
  apply coveredState_split_literal (state := state_2553787) 4
    state_2553788 state_2553869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553788
  · exact cover_2553869
#print axioms cover_2553787

def state_2553930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 28 else 24)))
theorem cover_2553930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553930 := by
  apply coveredState_split_literal (state := state_2553930) 1
    state_2553931 state_2553970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553931
  · exact cover_2553970
#print axioms cover_2553930

def state_2554002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 24)))
theorem cover_2554002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554002 := by
  apply coveredState_split_literal (state := state_2554002) 4
    state_2554003 state_2554054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554003
  · exact cover_2554054
#print axioms cover_2554002

def state_2554083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 24)))
theorem cover_2554083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554083 := by
  apply coveredState_split_literal (state := state_2554083) 4
    state_2554084 state_2554117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554084
  · exact cover_2554117
#print axioms cover_2554083

def state_2554001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 24)))
theorem cover_2554001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554001 := by
  apply coveredState_split_literal (state := state_2554001) 1
    state_2554002 state_2554083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2554002
  · exact cover_2554083
#print axioms cover_2554001

def state_2553929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 24)))
theorem cover_2553929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553929 := by
  apply coveredState_split_literal (state := state_2553929) 3
    state_2553930 state_2554001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553930
  · exact cover_2554001
#print axioms cover_2553929

def state_2553921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_2553921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553921 := by
  apply coveredState_split_literal (state := state_2553921) 2
    state_2553922 state_2553929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553922
  · exact cover_2553929
#print axioms cover_2553921

def state_2553877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_2553877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553877 := by
  apply coveredState_split_literal (state := state_2553877) 0
    state_2553878 state_2553921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553878
  · exact cover_2553921
#print axioms cover_2553877
end Mub6.Numerical.CircleFullD0.Forest
