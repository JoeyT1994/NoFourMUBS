import D0FullInterface
import D0ForestAssembly0002
import D0ForestAssembly0043
import D0ForestChunk0175
import D0ForestChunk0176
import D0ForestChunk0177
import D0ForestChunk0178
import D0ForestChunk0179
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_939525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_939525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939525 := by
  apply coveredState_split_literal (state := state_939525) 2
    state_939526 state_940367
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939526
  · exact cover_940367
#print axioms cover_939525

def state_979677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_979677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979677 := by
  apply coveredState_split_literal (state := state_979677) 3
    state_979678 state_979681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979678
  · exact cover_979681
#print axioms cover_979677

def state_979655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_979655 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979655 := by
  apply coveredState_split_literal (state := state_979655) 1
    state_979656 state_979677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979656
  · exact cover_979677
#print axioms cover_979655

def state_979641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_979641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979641 := by
  apply coveredState_split_literal (state := state_979641) 0
    state_979642 state_979655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979642
  · exact cover_979655
#print axioms cover_979641

def state_979581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
theorem cover_979581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979581 := by
  apply coveredState_split_literal (state := state_979581) 4
    state_979582 state_979641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979582
  · exact cover_979641
#print axioms cover_979581

def state_979577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_979577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979577 := by
  apply coveredState_split_literal (state := state_979577) 3
    state_979578 state_979581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979578
  · exact cover_979581
#print axioms cover_979577

def state_979576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_979576 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979576 := by
  apply coveredState_split_literal (state := state_979576) 2
    state_979577 state_979744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979577
  · exact cover_979744
#print axioms cover_979576

def state_979755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_979755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979755 := by
  apply coveredState_split_literal (state := state_979755) 2
    state_979756 state_979813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979756
  · exact cover_979813
#print axioms cover_979755

def state_979575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_979575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979575 := by
  apply coveredState_split_literal (state := state_979575) 1
    state_979576 state_979755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979576
  · exact cover_979755
#print axioms cover_979575

def state_979561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_979561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979561 := by
  apply coveredState_split_literal (state := state_979561) 0
    state_979562 state_979575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979562
  · exact cover_979575
#print axioms cover_979561

def state_979912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 7)))
theorem cover_979912 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979912 := by
  apply coveredState_split_literal (state := state_979912) 0
    state_979913 state_979926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979913
  · exact cover_979926
#print axioms cover_979912

def state_979902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
theorem cover_979902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979902 := by
  apply coveredState_split_literal (state := state_979902) 4
    state_979903 state_979912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979903
  · exact cover_979912
#print axioms cover_979902

def state_979901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_979901 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979901 := by
  apply coveredState_split_literal (state := state_979901) 3
    state_979902 state_979981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979902
  · exact cover_979981
#print axioms cover_979901

def state_979875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_979875 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979875 := by
  apply coveredState_split_literal (state := state_979875) 2
    state_979876 state_979901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979876
  · exact cover_979901
#print axioms cover_979875

def state_980014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_980014 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980014 := by
  apply coveredState_split_literal (state := state_980014) 0
    state_980015 state_980028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980015
  · exact cover_980028
#print axioms cover_980014

def state_980013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_980013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980013 := by
  apply coveredState_split_literal (state := state_980013) 4
    state_980014 state_980087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980014
  · exact cover_980087
#print axioms cover_980013

def state_980007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_980007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980007 := by
  apply coveredState_split_literal (state := state_980007) 3
    state_980008 state_980013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980008
  · exact cover_980013
#print axioms cover_980007

def state_980106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_980106 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980106 := by
  apply coveredState_split_literal (state := state_980106) 4
    state_980107 state_980118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980107
  · exact cover_980118
#print axioms cover_980106

def state_980094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_980094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980094 := by
  apply coveredState_split_literal (state := state_980094) 3
    state_980095 state_980106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980095
  · exact cover_980106
#print axioms cover_980094

def state_980006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_980006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980006 := by
  apply coveredState_split_literal (state := state_980006) 2
    state_980007 state_980094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980007
  · exact cover_980094
#print axioms cover_980006

def state_979874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_979874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979874 := by
  apply coveredState_split_literal (state := state_979874) 1
    state_979875 state_980006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979875
  · exact cover_980006
#print axioms cover_979874

def state_979820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_979820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979820 := by
  apply coveredState_split_literal (state := state_979820) 0
    state_979821 state_979874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979821
  · exact cover_979874
#print axioms cover_979820

def state_979560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_979560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979560 := by
  apply coveredState_split_literal (state := state_979560) 4
    state_979561 state_979820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979561
  · exact cover_979820
#print axioms cover_979560

def state_980174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_980174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980174 := by
  apply coveredState_split_literal (state := state_980174) 2
    state_980175 state_980234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980175
  · exact cover_980234
#print axioms cover_980174

def state_980173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_980173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980173 := by
  apply coveredState_split_literal (state := state_980173) 1
    state_980174 state_980273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980174
  · exact cover_980273
#print axioms cover_980173

def state_980310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 4)))
theorem cover_980310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980310 := by
  apply coveredState_split_literal (state := state_980310) 4
    state_980311 state_980320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980311
  · exact cover_980320
#print axioms cover_980310

def state_980309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 4)))
theorem cover_980309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980309 := by
  apply coveredState_split_literal (state := state_980309) 2
    state_980310 state_980375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980310
  · exact cover_980375
#print axioms cover_980309

def state_980308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
theorem cover_980308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980308 := by
  apply coveredState_split_literal (state := state_980308) 3
    state_980309 state_980394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980309
  · exact cover_980394
#print axioms cover_980308

def state_980307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
theorem cover_980307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980307 := by
  apply coveredState_split_literal (state := state_980307) 1
    state_980308 state_980437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980308
  · exact cover_980437
#print axioms cover_980307

def state_980520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 24 else 19)))
theorem cover_980520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980520 := by
  apply coveredState_split_literal (state := state_980520) 3
    state_980521 state_980542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980521
  · exact cover_980542
#print axioms cover_980520

def state_980519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 19)))
theorem cover_980519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980519 := by
  apply coveredState_split_literal (state := state_980519) 2
    state_980520 state_980601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980520
  · exact cover_980601
#print axioms cover_980519

def state_980515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 9)))
theorem cover_980515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980515 := by
  apply coveredState_split_literal (state := state_980515) 4
    state_980516 state_980519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980516
  · exact cover_980519
#print axioms cover_980515
end Mub6.Numerical.CircleFullD0.Forest
