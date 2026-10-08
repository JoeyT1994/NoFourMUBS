import D0FullInterface
import D0ForestAssembly0002
import D0ForestChunk0005
import D0ForestChunk0006
import D0ForestChunk0007
import D0ForestChunk0008
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
def state_982033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 10)))
theorem cover_982033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982033 := by
  apply coveredState_split_literal (state := state_982033) 3
    state_982034 state_982633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982034
  · exact cover_982633
#print axioms cover_982033

def state_982032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 10)))
theorem cover_982032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982032 := by
  apply coveredState_split_literal (state := state_982032) 0
    state_982033 state_989462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982033
  · exact cover_989462
#print axioms cover_982032

def state_982031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
theorem cover_982031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982031 := by
  apply coveredState_split_literal (state := state_982031) 2
    state_982032 state_990407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982032
  · exact cover_990407
#print axioms cover_982031

def state_990680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_990680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990680 := by
  apply coveredState_split_literal (state := state_990680) 3
    state_990681 state_990742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990681
  · exact cover_990742
#print axioms cover_990680

def state_990679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_990679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990679 := by
  apply coveredState_split_literal (state := state_990679) 0
    state_990680 state_991711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990680
  · exact cover_991711
#print axioms cover_990679

def state_990678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_990678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990678 := by
  apply coveredState_split_literal (state := state_990678) 2
    state_990679 state_992300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990679
  · exact cover_992300
#print axioms cover_990678

def state_982030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_982030 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982030 := by
  apply coveredState_split_literal (state := state_982030) 4
    state_982031 state_990678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982031
  · exact cover_990678
#print axioms cover_982030

def state_992441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
theorem cover_992441 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992441 := by
  apply coveredState_split_literal (state := state_992441) 3
    state_992442 state_993449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992442
  · exact cover_993449
#print axioms cover_992441

def state_993472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
theorem cover_993472 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993472 := by
  apply coveredState_split_literal (state := state_993472) 3
    state_993473 state_994494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993473
  · exact cover_994494
#print axioms cover_993472

def state_992440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
theorem cover_992440 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992440 := by
  apply coveredState_split_literal (state := state_992440) 1
    state_992441 state_993472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992441
  · exact cover_993472
#print axioms cover_992440

def state_992439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
theorem cover_992439 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992439 := by
  apply coveredState_split_literal (state := state_992439) 0
    state_992440 state_994497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992440
  · exact cover_994497
#print axioms cover_992439

def state_995725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
theorem cover_995725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995725 := by
  apply coveredState_split_literal (state := state_995725) 3
    state_995726 state_996327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995726
  · exact cover_996327
#print axioms cover_995725

def state_995685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
theorem cover_995685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995685 := by
  apply coveredState_split_literal (state := state_995685) 0
    state_995686 state_995725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995686
  · exact cover_995725
#print axioms cover_995685

def state_995684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 21)))
theorem cover_995684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995684 := by
  apply coveredState_split_literal (state := state_995684) 2
    state_995685 state_997108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995685
  · exact cover_997108
#print axioms cover_995684

def state_995666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 10)))
theorem cover_995666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995666 := by
  apply coveredState_split_literal (state := state_995666) 4
    state_995667 state_995684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995667
  · exact cover_995684
#print axioms cover_995666

def state_995665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_995665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995665 := by
  apply coveredState_split_literal (state := state_995665) 3
    state_995666 state_997113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995666
  · exact cover_997113
#print axioms cover_995665

def state_995097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_995097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995097 := by
  apply coveredState_split_literal (state := state_995097) 1
    state_995098 state_995665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995098
  · exact cover_995665
#print axioms cover_995097

def state_997987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
theorem cover_997987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997987 := by
  apply coveredState_split_literal (state := state_997987) 3
    state_997988 state_998513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997988
  · exact cover_998513
#print axioms cover_997987

def state_997986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
theorem cover_997986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997986 := by
  apply coveredState_split_literal (state := state_997986) 0
    state_997987 state_999294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997987
  · exact cover_999294
#print axioms cover_997986

def state_997985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 21)))
theorem cover_997985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997985 := by
  apply coveredState_split_literal (state := state_997985) 2
    state_997986 state_999327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997986
  · exact cover_999327
#print axioms cover_997985

def state_997973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 10)))
theorem cover_997973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997973 := by
  apply coveredState_split_literal (state := state_997973) 4
    state_997974 state_997985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997974
  · exact cover_997985
#print axioms cover_997973

def state_997972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_997972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997972 := by
  apply coveredState_split_literal (state := state_997972) 3
    state_997973 state_999352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997973
  · exact cover_999352
#print axioms cover_997972

def state_997590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_997590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997590 := by
  apply coveredState_split_literal (state := state_997590) 1
    state_997591 state_997972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997591
  · exact cover_997972
#print axioms cover_997590

def state_995096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_995096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995096 := by
  apply coveredState_split_literal (state := state_995096) 0
    state_995097 state_997590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995097
  · exact cover_997590
#print axioms cover_995096

def state_992438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 10)))
theorem cover_992438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992438 := by
  apply coveredState_split_literal (state := state_992438) 2
    state_992439 state_995096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992439
  · exact cover_995096
#print axioms cover_992438

def state_1000172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_1000172 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000172 := by
  apply coveredState_split_literal (state := state_1000172) 0
    state_1000173 state_1000918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000173
  · exact cover_1000918
#print axioms cover_1000172

def state_1001733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_1001733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001733 := by
  apply coveredState_split_literal (state := state_1001733) 3
    state_1001734 state_1002627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001734
  · exact cover_1002627
#print axioms cover_1001733

def state_1001701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_1001701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001701 := by
  apply coveredState_split_literal (state := state_1001701) 1
    state_1001702 state_1001733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001702
  · exact cover_1001733
#print axioms cover_1001701

def state_1001700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_1001700 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001700 := by
  apply coveredState_split_literal (state := state_1001700) 4
    state_1001701 state_1002774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001701
  · exact cover_1002774
#print axioms cover_1001700

def state_1002830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 44)))
theorem cover_1002830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002830 := by
  apply coveredState_split_literal (state := state_1002830) 1
    state_1002831 state_1002912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002831
  · exact cover_1002912
#print axioms cover_1002830

def state_1002829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 44)))
theorem cover_1002829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002829 := by
  apply coveredState_split_literal (state := state_1002829) 2
    state_1002830 state_1003899
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002830
  · exact cover_1003899
#print axioms cover_1002829

def state_1002828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 44)))
theorem cover_1002828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002828 := by
  apply coveredState_split_literal (state := state_1002828) 3
    state_1002829 state_1003922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002829
  · exact cover_1003922
#print axioms cover_1002828

def state_1002827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
theorem cover_1002827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002827 := by
  apply coveredState_split_literal (state := state_1002827) 4
    state_1002828 state_1004859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002828
  · exact cover_1004859
#print axioms cover_1002827

def state_1002826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
theorem cover_1002826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002826 := by
  apply coveredState_split_literal (state := state_1002826) 0
    state_1002827 state_1005152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002827
  · exact cover_1005152
#print axioms cover_1002826

def state_1002825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 22)))
theorem cover_1002825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002825 := by
  apply coveredState_split_literal (state := state_1002825) 2
    state_1002826 state_1005173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002826
  · exact cover_1005173
#print axioms cover_1002825

def state_1002824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_1002824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002824 := by
  apply coveredState_split_literal (state := state_1002824) 3
    state_1002825 state_1005188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002825
  · exact cover_1005188
#print axioms cover_1002824

def state_1002796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_1002796 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002796 := by
  apply coveredState_split_literal (state := state_1002796) 1
    state_1002797 state_1002824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002797
  · exact cover_1002824
#print axioms cover_1002796

def state_1002795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_1002795 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002795 := by
  apply coveredState_split_literal (state := state_1002795) 4
    state_1002796 state_1005743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002796
  · exact cover_1005743
#print axioms cover_1002795

def state_1001699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_1001699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001699 := by
  apply coveredState_split_literal (state := state_1001699) 0
    state_1001700 state_1002795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001700
  · exact cover_1002795
#print axioms cover_1001699

def state_1000171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_1000171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000171 := by
  apply coveredState_split_literal (state := state_1000171) 2
    state_1000172 state_1001699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000172
  · exact cover_1001699
#print axioms cover_1000171

def state_992437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_992437 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992437 := by
  apply coveredState_split_literal (state := state_992437) 4
    state_992438 state_1000171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992438
  · exact cover_1000171
#print axioms cover_992437

def state_982029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_982029 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982029 := by
  apply coveredState_split_literal (state := state_982029) 3
    state_982030 state_992437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982030
  · exact cover_992437
#print axioms cover_982029

def state_981483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_981483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981483 := by
  apply coveredState_split_literal (state := state_981483) 1
    state_981484 state_982029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981484
  · exact cover_982029
#print axioms cover_981483

def state_981135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_981135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981135 := by
  apply coveredState_split_literal (state := state_981135) 0
    state_981136 state_981483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981136
  · exact cover_981483
#print axioms cover_981135

def state_980305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_980305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980305 := by
  apply coveredState_split_literal (state := state_980305) 4
    state_980306 state_981135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980306
  · exact cover_981135
#print axioms cover_980305

def state_980304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_980304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980304 := by
  apply coveredState_split_literal (state := state_980304) 3
    state_980305 state_1005784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980305
  · exact cover_1005784
#print axioms cover_980304

def state_1007176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 5)))
theorem cover_1007176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007176 := by
  apply coveredState_split_literal (state := state_1007176) 4
    state_1007177 state_1008148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007177
  · exact cover_1008148
#print axioms cover_1007176

def state_1007175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1007175 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007175 := by
  apply coveredState_split_literal (state := state_1007175) 2
    state_1007176 state_1008511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007176
  · exact cover_1008511
#print axioms cover_1007175

def state_1007151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1007151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007151 := by
  apply coveredState_split_literal (state := state_1007151) 1
    state_1007152 state_1007175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007152
  · exact cover_1007175
#print axioms cover_1007151

def state_1007081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1007081 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007081 := by
  apply coveredState_split_literal (state := state_1007081) 0
    state_1007082 state_1007151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007082
  · exact cover_1007151
#print axioms cover_1007081

def state_1007021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_1007021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007021 := by
  apply coveredState_split_literal (state := state_1007021) 4
    state_1007022 state_1007081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007022
  · exact cover_1007081
#print axioms cover_1007021

def state_1006799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_1006799 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006799 := by
  apply coveredState_split_literal (state := state_1006799) 3
    state_1006800 state_1007021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006800
  · exact cover_1007021
#print axioms cover_1006799

def state_980303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_980303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980303 := by
  apply coveredState_split_literal (state := state_980303) 2
    state_980304 state_1006799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980304
  · exact cover_1006799
#print axioms cover_980303

def state_1008696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_1008696 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008696 := by
  apply coveredState_split_literal (state := state_1008696) 2
    state_1008697 state_1009652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008697
  · exact cover_1009652
#print axioms cover_1008696

def state_1008695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_1008695 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008695 := by
  apply coveredState_split_literal (state := state_1008695) 1
    state_1008696 state_1010093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008696
  · exact cover_1010093
#print axioms cover_1008695

def state_1008625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_1008625 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008625 := by
  apply coveredState_split_literal (state := state_1008625) 4
    state_1008626 state_1008695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008626
  · exact cover_1008695
#print axioms cover_1008625

def state_1010870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_1010870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010870 := by
  apply coveredState_split_literal (state := state_1010870) 3
    state_1010871 state_1011640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010871
  · exact cover_1011640
#print axioms cover_1010870

def state_1010869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_1010869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010869 := by
  apply coveredState_split_literal (state := state_1010869) 4
    state_1010870 state_1012021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010870
  · exact cover_1012021
#print axioms cover_1010869

def state_1010663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_1010663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010663 := by
  apply coveredState_split_literal (state := state_1010663) 0
    state_1010664 state_1010869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010664
  · exact cover_1010869
#print axioms cover_1010663

def state_1010265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_1010265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010265 := by
  apply coveredState_split_literal (state := state_1010265) 2
    state_1010266 state_1010663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010266
  · exact cover_1010663
#print axioms cover_1010265

def state_1010264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_1010264 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010264 := by
  apply coveredState_split_literal (state := state_1010264) 1
    state_1010265 state_1012910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010265
  · exact cover_1012910
#print axioms cover_1010264

def state_1010126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_1010126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010126 := by
  apply coveredState_split_literal (state := state_1010126) 4
    state_1010127 state_1010264
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010127
  · exact cover_1010264
#print axioms cover_1010126

def state_1008624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1008624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008624 := by
  apply coveredState_split_literal (state := state_1008624) 3
    state_1008625 state_1010126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008625
  · exact cover_1010126
#print axioms cover_1008624

def state_1008556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1008556 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008556 := by
  apply coveredState_split_literal (state := state_1008556) 0
    state_1008557 state_1008624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008557
  · exact cover_1008624
#print axioms cover_1008556
end Mub6.Numerical.CircleFullD0.Forest
