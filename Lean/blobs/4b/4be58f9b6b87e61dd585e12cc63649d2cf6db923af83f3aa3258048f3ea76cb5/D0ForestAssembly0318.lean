import D0FullInterface
import D0ForestAssembly0317
import D0ForestChunk1229
import D0ForestChunk1230
import D0ForestChunk1231
import D0ForestChunk1232
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1595388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 13)))
theorem cover_1595388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595388 := by
  apply coveredState_split_literal (state := state_1595388) 4
    state_1595389 state_1595452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595389
  · exact cover_1595452
#print axioms cover_1595388

def state_1595270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 13)))
theorem cover_1595270 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595270 := by
  apply coveredState_split_literal (state := state_1595270) 0
    state_1595271 state_1595388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595271
  · exact cover_1595388
#print axioms cover_1595270

def state_1595192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 13)))
theorem cover_1595192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595192 := by
  apply coveredState_split_literal (state := state_1595192) 2
    state_1595193 state_1595270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595193
  · exact cover_1595270
#print axioms cover_1595192

def state_1595191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
theorem cover_1595191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595191 := by
  apply coveredState_split_literal (state := state_1595191) 3
    state_1595192 state_1595461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595192
  · exact cover_1595461
#print axioms cover_1595191

def state_1595125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
theorem cover_1595125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595125 := by
  apply coveredState_split_literal (state := state_1595125) 1
    state_1595126 state_1595191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595126
  · exact cover_1595191
#print axioms cover_1595125

def state_1590779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_1590779 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590779 := by
  apply coveredState_split_literal (state := state_1590779) 4
    state_1590780 state_1595125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590780
  · exact cover_1595125
#print axioms cover_1590779

def state_1595565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 25)))
theorem cover_1595565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595565 := by
  apply coveredState_split_literal (state := state_1595565) 3
    state_1595566 state_1595593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595566
  · exact cover_1595593
#print axioms cover_1595565

def state_1595561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 25)))
theorem cover_1595561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595561 := by
  apply coveredState_split_literal (state := state_1595561) 1
    state_1595562 state_1595565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595562
  · exact cover_1595565
#print axioms cover_1595561

def state_1595560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
theorem cover_1595560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595560 := by
  apply coveredState_split_literal (state := state_1595560) 2
    state_1595561 state_1595634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595561
  · exact cover_1595634
#print axioms cover_1595560

def state_1595514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
theorem cover_1595514 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595514 := by
  apply coveredState_split_literal (state := state_1595514) 0
    state_1595515 state_1595560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595515
  · exact cover_1595560
#print axioms cover_1595514

def state_1595492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_1595492 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595492 := by
  apply coveredState_split_literal (state := state_1595492) 4
    state_1595493 state_1595514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595493
  · exact cover_1595514
#print axioms cover_1595492

def state_1595491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1595491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595491 := by
  apply coveredState_split_literal (state := state_1595491) 3
    state_1595492 state_1595639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595492
  · exact cover_1595639
#print axioms cover_1595491

def state_1595483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1595483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595483 := by
  apply coveredState_split_literal (state := state_1595483) 1
    state_1595484 state_1595491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595484
  · exact cover_1595491
#print axioms cover_1595483

def state_1595482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_1595482 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595482 := by
  apply coveredState_split_literal (state := state_1595482) 4
    state_1595483 state_1595666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595483
  · exact cover_1595666
#print axioms cover_1595482

def state_1590778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1590778 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590778 := by
  apply coveredState_split_literal (state := state_1590778) 2
    state_1590779 state_1595482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590779
  · exact cover_1595482
#print axioms cover_1590778

def state_1595783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 12)))
theorem cover_1595783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595783 := by
  apply coveredState_split_literal (state := state_1595783) 4
    state_1595784 state_1595819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595784
  · exact cover_1595819
#print axioms cover_1595783

def state_1595773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
theorem cover_1595773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595773 := by
  apply coveredState_split_literal (state := state_1595773) 2
    state_1595774 state_1595783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595774
  · exact cover_1595783
#print axioms cover_1595773

def state_1595772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
theorem cover_1595772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595772 := by
  apply coveredState_split_literal (state := state_1595772) 0
    state_1595773 state_1595852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595773
  · exact cover_1595852
#print axioms cover_1595772

def state_1595931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 49)))
theorem cover_1595931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595931 := by
  apply coveredState_split_literal (state := state_1595931) 2
    state_1595932 state_1595947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595932
  · exact cover_1595947
#print axioms cover_1595931

def state_1595930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 49)))
theorem cover_1595930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595930 := by
  apply coveredState_split_literal (state := state_1595930) 0
    state_1595931 state_1595998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595931
  · exact cover_1595998
#print axioms cover_1595930

def state_1595920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 24)))
theorem cover_1595920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595920 := by
  apply coveredState_split_literal (state := state_1595920) 4
    state_1595921 state_1595930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595921
  · exact cover_1595930
#print axioms cover_1595920

def state_1596058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 49)))
theorem cover_1596058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596058 := by
  apply coveredState_split_literal (state := state_1596058) 3
    state_1596059 state_1596104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596059
  · exact cover_1596104
#print axioms cover_1596058

def state_1596056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 49)))
theorem cover_1596056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596056 := by
  apply coveredState_split_literal (state := state_1596056) 1
    state_1596057 state_1596058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596057
  · exact cover_1596058
#print axioms cover_1596056

def state_1596038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 49)))
theorem cover_1596038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596038 := by
  apply coveredState_split_literal (state := state_1596038) 2
    state_1596039 state_1596056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596039
  · exact cover_1596056
#print axioms cover_1596038

def state_1596037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 49)))
theorem cover_1596037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596037 := by
  apply coveredState_split_literal (state := state_1596037) 0
    state_1596038 state_1596151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596038
  · exact cover_1596151
#print axioms cover_1596037

def state_1596003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 24)))
theorem cover_1596003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596003 := by
  apply coveredState_split_literal (state := state_1596003) 4
    state_1596004 state_1596037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596004
  · exact cover_1596037
#print axioms cover_1596003

def state_1595919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
theorem cover_1595919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595919 := by
  apply coveredState_split_literal (state := state_1595919) 3
    state_1595920 state_1596003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595920
  · exact cover_1596003
#print axioms cover_1595919

def state_1595901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
theorem cover_1595901 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595901 := by
  apply coveredState_split_literal (state := state_1595901) 1
    state_1595902 state_1595919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595902
  · exact cover_1595919
#print axioms cover_1595901

def state_1596244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 25)))
theorem cover_1596244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596244 := by
  apply coveredState_split_literal (state := state_1596244) 4
    state_1596245 state_1596306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596245
  · exact cover_1596306
#print axioms cover_1596244

def state_1596218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 25)))
theorem cover_1596218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596218 := by
  apply coveredState_split_literal (state := state_1596218) 2
    state_1596219 state_1596244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596219
  · exact cover_1596244
#print axioms cover_1596218

def state_1596217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 25)))
theorem cover_1596217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596217 := by
  apply coveredState_split_literal (state := state_1596217) 0
    state_1596218 state_1596315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596218
  · exact cover_1596315
#print axioms cover_1596217

def state_1596321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 25)))
theorem cover_1596321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596321 := by
  apply coveredState_split_literal (state := state_1596321) 2
    state_1596322 state_1596327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596322
  · exact cover_1596327
#print axioms cover_1596321
end Mub6.Numerical.CircleFullD0.Forest
