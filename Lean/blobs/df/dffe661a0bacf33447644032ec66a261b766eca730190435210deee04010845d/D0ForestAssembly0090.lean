import D0FullInterface
import D0ForestAssembly0085
import D0ForestAssembly0086
import D0ForestAssembly0089
import D0ForestChunk0343
import D0ForestChunk0363
import D0ForestChunk0364
import D0ForestChunk0365
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1024604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
theorem cover_1024604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024604 := by
  apply coveredState_split_literal (state := state_1024604) 3
    state_1024605 state_1024618
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024605
  · exact cover_1024618
#print axioms cover_1024604

def state_1024598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
theorem cover_1024598 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024598 := by
  apply coveredState_split_literal (state := state_1024598) 0
    state_1024599 state_1024604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024599
  · exact cover_1024604
#print axioms cover_1024598

def state_1024774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 102)))
theorem cover_1024774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024774 := by
  apply coveredState_split_literal (state := state_1024774) 4
    state_1024775 state_1024810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024775
  · exact cover_1024810
#print axioms cover_1024774

def state_1024744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 126) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 102)))
theorem cover_1024744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024744 := by
  apply coveredState_split_literal (state := state_1024744) 0
    state_1024745 state_1024774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024745
  · exact cover_1024774
#print axioms cover_1024744

def state_1024743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 102)))
theorem cover_1024743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024743 := by
  apply coveredState_split_literal (state := state_1024743) 1
    state_1024744 state_1024845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024744
  · exact cover_1024845
#print axioms cover_1024743

def state_1024742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 102)))
theorem cover_1024742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024742 := by
  apply coveredState_split_literal (state := state_1024742) 2
    state_1024743 state_1024856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024743
  · exact cover_1024856
#print axioms cover_1024742

def state_1024741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 51)))
theorem cover_1024741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024741 := by
  apply coveredState_split_literal (state := state_1024741) 4
    state_1024742 state_1024863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024742
  · exact cover_1024863
#print axioms cover_1024741

def state_1024701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
theorem cover_1024701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024701 := by
  apply coveredState_split_literal (state := state_1024701) 3
    state_1024702 state_1024741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024702
  · exact cover_1024741
#print axioms cover_1024701

def state_1024675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
theorem cover_1024675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024675 := by
  apply coveredState_split_literal (state := state_1024675) 0
    state_1024676 state_1024701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024676
  · exact cover_1024701
#print axioms cover_1024675

def state_1024597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
theorem cover_1024597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024597 := by
  apply coveredState_split_literal (state := state_1024597) 1
    state_1024598 state_1024675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024598
  · exact cover_1024675
#print axioms cover_1024597

def state_1024596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 51)))
theorem cover_1024596 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024596 := by
  apply coveredState_split_literal (state := state_1024596) 2
    state_1024597 state_1024920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024597
  · exact cover_1024920
#print axioms cover_1024596

def state_1024508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 25)))
theorem cover_1024508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024508 := by
  apply coveredState_split_literal (state := state_1024508) 4
    state_1024509 state_1024596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024509
  · exact cover_1024596
#print axioms cover_1024508

def state_1024484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
theorem cover_1024484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024484 := by
  apply coveredState_split_literal (state := state_1024484) 3
    state_1024485 state_1024508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024485
  · exact cover_1024508
#print axioms cover_1024484

def state_1024468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
theorem cover_1024468 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024468 := by
  apply coveredState_split_literal (state := state_1024468) 0
    state_1024469 state_1024484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024469
  · exact cover_1024484
#print axioms cover_1024468

def state_1024420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
theorem cover_1024420 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024420 := by
  apply coveredState_split_literal (state := state_1024420) 1
    state_1024421 state_1024468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024421
  · exact cover_1024468
#print axioms cover_1024420

def state_1020452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 25)))
theorem cover_1020452 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020452 := by
  apply coveredState_split_literal (state := state_1020452) 2
    state_1020453 state_1024420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020453
  · exact cover_1024420
#print axioms cover_1020452

def state_1019792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 12)))
theorem cover_1019792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019792 := by
  apply coveredState_split_literal (state := state_1019792) 4
    state_1019793 state_1020452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019793
  · exact cover_1020452
#print axioms cover_1019792

def state_1019752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1019752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019752 := by
  apply coveredState_split_literal (state := state_1019752) 3
    state_1019753 state_1019792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019753
  · exact cover_1019792
#print axioms cover_1019752

def state_1019684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1019684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019684 := by
  apply coveredState_split_literal (state := state_1019684) 0
    state_1019685 state_1019752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019685
  · exact cover_1019752
#print axioms cover_1019684

def state_1019428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1019428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019428 := by
  apply coveredState_split_literal (state := state_1019428) 2
    state_1019429 state_1019684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019429
  · exact cover_1019684
#print axioms cover_1019428

def state_1018716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1018716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018716 := by
  apply coveredState_split_literal (state := state_1018716) 1
    state_1018717 state_1019428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018717
  · exact cover_1019428
#print axioms cover_1018716

def state_1025025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 26)))
theorem cover_1025025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025025 := by
  apply coveredState_split_literal (state := state_1025025) 3
    state_1025026 state_1025053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025026
  · exact cover_1025053
#print axioms cover_1025025

def state_1025023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 26)))
theorem cover_1025023 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025023 := by
  apply coveredState_split_literal (state := state_1025023) 0
    state_1025024 state_1025025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025024
  · exact cover_1025025
#print axioms cover_1025023

def state_1025009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 26)))
theorem cover_1025009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025009 := by
  apply coveredState_split_literal (state := state_1025009) 1
    state_1025010 state_1025023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025010
  · exact cover_1025023
#print axioms cover_1025009

def state_1025096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
theorem cover_1025096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025096 := by
  apply coveredState_split_literal (state := state_1025096) 1
    state_1025097 state_1025104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025097
  · exact cover_1025104
#print axioms cover_1025096

def state_1025008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 26)))
theorem cover_1025008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025008 := by
  apply coveredState_split_literal (state := state_1025008) 2
    state_1025009 state_1025096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025009
  · exact cover_1025096
#print axioms cover_1025008

def state_1025007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 13)))
theorem cover_1025007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025007 := by
  apply coveredState_split_literal (state := state_1025007) 4
    state_1025008 state_1025165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025008
  · exact cover_1025165
#print axioms cover_1025007

def state_1024983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1024983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024983 := by
  apply coveredState_split_literal (state := state_1024983) 3
    state_1024984 state_1025007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024984
  · exact cover_1025007
#print axioms cover_1024983

def state_1024979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1024979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024979 := by
  apply coveredState_split_literal (state := state_1024979) 0
    state_1024980 state_1024983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024980
  · exact cover_1024983
#print axioms cover_1024979

def state_1024949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_1024949 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024949 := by
  apply coveredState_split_literal (state := state_1024949) 2
    state_1024950 state_1024979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024950
  · exact cover_1024979
#print axioms cover_1024949

def state_1024929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_1024929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024929 := by
  apply coveredState_split_literal (state := state_1024929) 1
    state_1024930 state_1024949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024930
  · exact cover_1024949
#print axioms cover_1024929

def state_1018715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_1018715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018715 := by
  apply coveredState_split_literal (state := state_1018715) 4
    state_1018716 state_1024929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018716
  · exact cover_1024929
#print axioms cover_1018715
end Mub6.Numerical.CircleFullD0.Forest
