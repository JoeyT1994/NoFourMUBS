import D0FullInterface
import D0ForestAssembly0440
import D0ForestChunk1726
import D0ForestChunk1727
import D0ForestChunk1728
import D0ForestChunk1729
import D0ForestChunk1730
import D0ForestChunk1731
import D0ForestChunk1732
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2288149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 94)))
theorem cover_2288149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288149 := by
  apply coveredState_split_literal (state := state_2288149) 1
    state_2288150 state_2288151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288150
  · exact cover_2288151
#print axioms cover_2288149

def state_2288288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 75 else (if j.val < 4 then 97 else 95)))
theorem cover_2288288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288288 := by
  apply coveredState_split_literal (state := state_2288288) 4
    state_2288289 state_2288344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288289
  · exact cover_2288344
#print axioms cover_2288288

def state_2288242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 95)))
theorem cover_2288242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288242 := by
  apply coveredState_split_literal (state := state_2288242) 2
    state_2288243 state_2288288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288243
  · exact cover_2288288
#print axioms cover_2288242

def state_2288224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 95)))
theorem cover_2288224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288224 := by
  apply coveredState_split_literal (state := state_2288224) 0
    state_2288225 state_2288242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288225
  · exact cover_2288242
#print axioms cover_2288224

def state_2288222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 95)))
theorem cover_2288222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288222 := by
  apply coveredState_split_literal (state := state_2288222) 1
    state_2288223 state_2288224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288223
  · exact cover_2288224
#print axioms cover_2288222

def state_2288148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 47)))
theorem cover_2288148 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288148 := by
  apply coveredState_split_literal (state := state_2288148) 4
    state_2288149 state_2288222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288149
  · exact cover_2288222
#print axioms cover_2288148

def state_2287942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 48 else 47)))
theorem cover_2287942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287942 := by
  apply coveredState_split_literal (state := state_2287942) 3
    state_2287943 state_2288148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287943
  · exact cover_2288148
#print axioms cover_2287942

def state_2287874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 47)))
theorem cover_2287874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287874 := by
  apply coveredState_split_literal (state := state_2287874) 2
    state_2287875 state_2287942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287875
  · exact cover_2287942
#print axioms cover_2287874

def state_2288432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 94)))
theorem cover_2288432 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288432 := by
  apply coveredState_split_literal (state := state_2288432) 0
    state_2288433 state_2288494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288433
  · exact cover_2288494
#print axioms cover_2288432

def state_2288426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 94)))
theorem cover_2288426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288426 := by
  apply coveredState_split_literal (state := state_2288426) 1
    state_2288427 state_2288432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288427
  · exact cover_2288432
#print axioms cover_2288426

def state_2288425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 47)))
theorem cover_2288425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288425 := by
  apply coveredState_split_literal (state := state_2288425) 4
    state_2288426 state_2288497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288426
  · exact cover_2288497
#print axioms cover_2288425

def state_2288397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 48 else 47)))
theorem cover_2288397 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288397 := by
  apply coveredState_split_literal (state := state_2288397) 3
    state_2288398 state_2288425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288398
  · exact cover_2288425
#print axioms cover_2288397

def state_2288381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 47)))
theorem cover_2288381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288381 := by
  apply coveredState_split_literal (state := state_2288381) 2
    state_2288382 state_2288397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288382
  · exact cover_2288397
#print axioms cover_2288381

def state_2287873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 47)))
theorem cover_2287873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287873 := by
  apply coveredState_split_literal (state := state_2287873) 0
    state_2287874 state_2288381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287874
  · exact cover_2288381
#print axioms cover_2287873

def state_2287859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 47)))
theorem cover_2287859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287859 := by
  apply coveredState_split_literal (state := state_2287859) 1
    state_2287860 state_2287873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287860
  · exact cover_2287873
#print axioms cover_2287859

def state_2287735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 23)))
theorem cover_2287735 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287735 := by
  apply coveredState_split_literal (state := state_2287735) 4
    state_2287736 state_2287859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287736
  · exact cover_2287859
#print axioms cover_2287735

def state_2288572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 36 else (if j.val < 4 then 49 else 46)))
theorem cover_2288572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288572 := by
  apply coveredState_split_literal (state := state_2288572) 3
    state_2288573 state_2288616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288573
  · exact cover_2288616
#print axioms cover_2288572

def state_2288571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 46)))
theorem cover_2288571 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288571 := by
  apply coveredState_split_literal (state := state_2288571) 2
    state_2288572 state_2288647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288572
  · exact cover_2288647
#print axioms cover_2288571

def state_2288555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 46)))
theorem cover_2288555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288555 := by
  apply coveredState_split_literal (state := state_2288555) 0
    state_2288556 state_2288571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288556
  · exact cover_2288571
#print axioms cover_2288555

def state_2288547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 46)))
theorem cover_2288547 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288547 := by
  apply coveredState_split_literal (state := state_2288547) 1
    state_2288548 state_2288555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288548
  · exact cover_2288555
#print axioms cover_2288547

def state_2288703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 36 else (if j.val < 4 then 49 else 47)))
theorem cover_2288703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288703 := by
  apply coveredState_split_literal (state := state_2288703) 4
    state_2288704 state_2288755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288704
  · exact cover_2288755
#print axioms cover_2288703

def state_2288774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 49 else 47)))
theorem cover_2288774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288774 := by
  apply coveredState_split_literal (state := state_2288774) 4
    state_2288775 state_2288826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288775
  · exact cover_2288826
#print axioms cover_2288774

def state_2288702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 47)))
theorem cover_2288702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288702 := by
  apply coveredState_split_literal (state := state_2288702) 2
    state_2288703 state_2288774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288703
  · exact cover_2288774
#print axioms cover_2288702

def state_2288682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 47)))
theorem cover_2288682 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288682 := by
  apply coveredState_split_literal (state := state_2288682) 0
    state_2288683 state_2288702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288683
  · exact cover_2288702
#print axioms cover_2288682

def state_2288680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 47)))
theorem cover_2288680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288680 := by
  apply coveredState_split_literal (state := state_2288680) 1
    state_2288681 state_2288682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288681
  · exact cover_2288682
#print axioms cover_2288680

def state_2288546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 23)))
theorem cover_2288546 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288546 := by
  apply coveredState_split_literal (state := state_2288546) 4
    state_2288547 state_2288680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288547
  · exact cover_2288680
#print axioms cover_2288546

def state_2287734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 23)))
theorem cover_2287734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287734 := by
  apply coveredState_split_literal (state := state_2287734) 3
    state_2287735 state_2288546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287735
  · exact cover_2288546
#print axioms cover_2287734

def state_2288860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 23)))
theorem cover_2288860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288860 := by
  apply coveredState_split_literal (state := state_2288860) 4
    state_2288861 state_2288874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288861
  · exact cover_2288874
#print axioms cover_2288860

def state_2288859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 23)))
theorem cover_2288859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288859 := by
  apply coveredState_split_literal (state := state_2288859) 3
    state_2288860 state_2288935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288860
  · exact cover_2288935
#print axioms cover_2288859

def state_2287733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
theorem cover_2287733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287733 := by
  apply coveredState_split_literal (state := state_2287733) 2
    state_2287734 state_2288859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287734
  · exact cover_2288859
#print axioms cover_2287733

def state_2287635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
theorem cover_2287635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287635 := by
  apply coveredState_split_literal (state := state_2287635) 0
    state_2287636 state_2287733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287636
  · exact cover_2287733
#print axioms cover_2287635

def state_2287583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 11)))
theorem cover_2287583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287583 := by
  apply coveredState_split_literal (state := state_2287583) 4
    state_2287584 state_2287635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287584
  · exact cover_2287635
#print axioms cover_2287583
end Mub6.Numerical.CircleFullD0.Forest
