import D0FullInterface
import D0ForestAssembly0114
import D0ForestChunk0453
import D0ForestChunk0454
import D0ForestChunk0455
import D0ForestChunk0456
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1046453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 26)))
theorem cover_1046453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046453 := by
  apply coveredState_split_literal (state := state_1046453) 4
    state_1046454 state_1046533
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046454
  · exact cover_1046533
#print axioms cover_1046453

def state_1046445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
theorem cover_1046445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046445 := by
  apply coveredState_split_literal (state := state_1046445) 3
    state_1046446 state_1046453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046446
  · exact cover_1046453
#print axioms cover_1046445

def state_1046444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
theorem cover_1046444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046444 := by
  apply coveredState_split_literal (state := state_1046444) 0
    state_1046445 state_1046548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046445
  · exact cover_1046548
#print axioms cover_1046444

def state_1046430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
theorem cover_1046430 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046430 := by
  apply coveredState_split_literal (state := state_1046430) 1
    state_1046431 state_1046444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046431
  · exact cover_1046444
#print axioms cover_1046430

def state_1046394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 26)))
theorem cover_1046394 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046394 := by
  apply coveredState_split_literal (state := state_1046394) 2
    state_1046395 state_1046430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046395
  · exact cover_1046430
#print axioms cover_1046394

def state_1046393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 13)))
theorem cover_1046393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046393 := by
  apply coveredState_split_literal (state := state_1046393) 4
    state_1046394 state_1046555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046394
  · exact cover_1046555
#print axioms cover_1046393

def state_1046387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1046387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046387 := by
  apply coveredState_split_literal (state := state_1046387) 3
    state_1046388 state_1046393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046388
  · exact cover_1046393
#print axioms cover_1046387

def state_1046386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1046386 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046386 := by
  apply coveredState_split_literal (state := state_1046386) 0
    state_1046387 state_1046572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046387
  · exact cover_1046572
#print axioms cover_1046386

def state_1046372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_1046372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046372 := by
  apply coveredState_split_literal (state := state_1046372) 2
    state_1046373 state_1046386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046373
  · exact cover_1046386
#print axioms cover_1046372

def state_1046358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_1046358 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046358 := by
  apply coveredState_split_literal (state := state_1046358) 1
    state_1046359 state_1046372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046359
  · exact cover_1046372
#print axioms cover_1046358

def state_1045822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_1045822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045822 := by
  apply coveredState_split_literal (state := state_1045822) 4
    state_1045823 state_1046358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045823
  · exact cover_1046358
#print axioms cover_1045822

def state_1046668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 24)))
theorem cover_1046668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046668 := by
  apply coveredState_split_literal (state := state_1046668) 3
    state_1046669 state_1046718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046669
  · exact cover_1046718
#print axioms cover_1046668

def state_1046780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
theorem cover_1046780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046780 := by
  apply coveredState_split_literal (state := state_1046780) 4
    state_1046781 state_1046824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046781
  · exact cover_1046824
#print axioms cover_1046780

def state_1046779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
theorem cover_1046779 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046779 := by
  apply coveredState_split_literal (state := state_1046779) 0
    state_1046780 state_1046859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046780
  · exact cover_1046859
#print axioms cover_1046779

def state_1046757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
theorem cover_1046757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046757 := by
  apply coveredState_split_literal (state := state_1046757) 1
    state_1046758 state_1046779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046758
  · exact cover_1046779
#print axioms cover_1046757

def state_1046978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 51)))
theorem cover_1046978 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046978 := by
  apply coveredState_split_literal (state := state_1046978) 4
    state_1046979 state_1047028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046979
  · exact cover_1047028
#print axioms cover_1046978

def state_1046977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 51)))
theorem cover_1046977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046977 := by
  apply coveredState_split_literal (state := state_1046977) 0
    state_1046978 state_1047053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046978
  · exact cover_1047053
#print axioms cover_1046977

def state_1046955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 51)))
theorem cover_1046955 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046955 := by
  apply coveredState_split_literal (state := state_1046955) 1
    state_1046956 state_1046977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046956
  · exact cover_1046977
#print axioms cover_1046955

def state_1046954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 52 else 51)))
theorem cover_1046954 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046954 := by
  apply coveredState_split_literal (state := state_1046954) 2
    state_1046955 state_1047062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046955
  · exact cover_1047062
#print axioms cover_1046954

def state_1046953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 51)))
theorem cover_1046953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046953 := by
  apply coveredState_split_literal (state := state_1046953) 3
    state_1046954 state_1047069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046954
  · exact cover_1047069
#print axioms cover_1046953

def state_1046891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
theorem cover_1046891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046891 := by
  apply coveredState_split_literal (state := state_1046891) 4
    state_1046892 state_1046953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046892
  · exact cover_1046953
#print axioms cover_1046891

def state_1046890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
theorem cover_1046890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046890 := by
  apply coveredState_split_literal (state := state_1046890) 0
    state_1046891 state_1047092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046891
  · exact cover_1047092
#print axioms cover_1046890

def state_1046864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
theorem cover_1046864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046864 := by
  apply coveredState_split_literal (state := state_1046864) 1
    state_1046865 state_1046890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046865
  · exact cover_1046890
#print axioms cover_1046864

def state_1046756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 25)))
theorem cover_1046756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046756 := by
  apply coveredState_split_literal (state := state_1046756) 2
    state_1046757 state_1046864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046757
  · exact cover_1046864
#print axioms cover_1046756

def state_1046755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 25)))
theorem cover_1046755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046755 := by
  apply coveredState_split_literal (state := state_1046755) 3
    state_1046756 state_1047101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046756
  · exact cover_1047101
#print axioms cover_1046755

def state_1046667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_1046667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046667 := by
  apply coveredState_split_literal (state := state_1046667) 4
    state_1046668 state_1046755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046668
  · exact cover_1046755
#print axioms cover_1046667

def state_1046666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_1046666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046666 := by
  apply coveredState_split_literal (state := state_1046666) 0
    state_1046667 state_1047140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046667
  · exact cover_1047140
#print axioms cover_1046666

def state_1046636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_1046636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046636 := by
  apply coveredState_split_literal (state := state_1046636) 2
    state_1046637 state_1046666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046637
  · exact cover_1046666
#print axioms cover_1046636

def state_1046580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_1046580 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046580 := by
  apply coveredState_split_literal (state := state_1046580) 1
    state_1046581 state_1046636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046581
  · exact cover_1046636
#print axioms cover_1046580

def state_1047158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 26)))
theorem cover_1047158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047158 := by
  apply coveredState_split_literal (state := state_1047158) 1
    state_1047159 state_1047168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047159
  · exact cover_1047168
#print axioms cover_1047158

def state_1047156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 26)))
theorem cover_1047156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047156 := by
  apply coveredState_split_literal (state := state_1047156) 2
    state_1047157 state_1047158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047157
  · exact cover_1047158
#print axioms cover_1047156

def state_1047155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 13)))
theorem cover_1047155 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047155 := by
  apply coveredState_split_literal (state := state_1047155) 4
    state_1047156 state_1047225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047156
  · exact cover_1047225
#print axioms cover_1047155
end Mub6.Numerical.CircleFullD0.Forest
