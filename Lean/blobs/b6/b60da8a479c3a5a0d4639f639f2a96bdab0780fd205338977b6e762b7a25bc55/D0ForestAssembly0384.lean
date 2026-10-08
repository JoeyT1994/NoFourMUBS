import D0FullInterface
import D0ForestAssembly0383
import D0ForestChunk1493
import D0ForestChunk1495
import D0ForestChunk1496
import D0ForestChunk1497
import D0ForestChunk1498
import D0ForestChunk1499
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1659592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 56 else 47)))
theorem cover_1659592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659592 := by
  apply coveredState_split_literal (state := state_1659592) 2
    state_1659593 state_1659740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659593
  · exact cover_1659740
#print axioms cover_1659592

def state_1659759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 96) else (if j.val < 3 then 116 else (if j.val < 4 then 114 else 94)))
theorem cover_1659759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659759 := by
  apply coveredState_split_literal (state := state_1659759) 1
    state_1659760 state_1659797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659760
  · exact cover_1659797
#print axioms cover_1659759

def state_1659758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 114 else 94)))
theorem cover_1659758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659758 := by
  apply coveredState_split_literal (state := state_1659758) 2
    state_1659759 state_1659852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659759
  · exact cover_1659852
#print axioms cover_1659758

def state_1659757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 94)))
theorem cover_1659757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659757 := by
  apply coveredState_split_literal (state := state_1659757) 3
    state_1659758 state_1659897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659758
  · exact cover_1659897
#print axioms cover_1659757

def state_1659756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 94)))
theorem cover_1659756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659756 := by
  apply coveredState_split_literal (state := state_1659756) 0
    state_1659757 state_1659914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659757
  · exact cover_1659914
#print axioms cover_1659756

def state_1659915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 95)))
theorem cover_1659915 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659915 := by
  apply coveredState_split_literal (state := state_1659915) 0
    state_1659916 state_1659961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659916
  · exact cover_1659961
#print axioms cover_1659915

def state_1659755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 47)))
theorem cover_1659755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659755 := by
  apply coveredState_split_literal (state := state_1659755) 4
    state_1659756 state_1659915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659756
  · exact cover_1659915
#print axioms cover_1659755

def state_1659984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 94)))
theorem cover_1659984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659984 := by
  apply coveredState_split_literal (state := state_1659984) 3
    state_1659985 state_1660046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659985
  · exact cover_1660046
#print axioms cover_1659984

def state_1659983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 94)))
theorem cover_1659983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659983 := by
  apply coveredState_split_literal (state := state_1659983) 0
    state_1659984 state_1660055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659984
  · exact cover_1660055
#print axioms cover_1659983

def state_1660057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 95)))
theorem cover_1660057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660057 := by
  apply coveredState_split_literal (state := state_1660057) 3
    state_1660058 state_1660107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660058
  · exact cover_1660107
#print axioms cover_1660057

def state_1660056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 95)))
theorem cover_1660056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660056 := by
  apply coveredState_split_literal (state := state_1660056) 0
    state_1660057 state_1660168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660057
  · exact cover_1660168
#print axioms cover_1660056

def state_1659982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 47)))
theorem cover_1659982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659982 := by
  apply coveredState_split_literal (state := state_1659982) 4
    state_1659983 state_1660056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659983
  · exact cover_1660056
#print axioms cover_1659982

def state_1659754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 47)))
theorem cover_1659754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659754 := by
  apply coveredState_split_literal (state := state_1659754) 1
    state_1659755 state_1659982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659755
  · exact cover_1659982
#print axioms cover_1659754

def state_1660197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 47)))
theorem cover_1660197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660197 := by
  apply coveredState_split_literal (state := state_1660197) 1
    state_1660198 state_1660221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660198
  · exact cover_1660221
#print axioms cover_1660197

def state_1659753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 47)))
theorem cover_1659753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659753 := by
  apply coveredState_split_literal (state := state_1659753) 2
    state_1659754 state_1660197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659754
  · exact cover_1660197
#print axioms cover_1659753

def state_1659591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_1659591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659591 := by
  apply coveredState_split_literal (state := state_1659591) 3
    state_1659592 state_1659753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659592
  · exact cover_1659753
#print axioms cover_1659591

def state_1659590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_1659590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659590 := by
  apply coveredState_split_literal (state := state_1659590) 0
    state_1659591 state_1660264
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659591
  · exact cover_1660264
#print axioms cover_1659590

def state_1659410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_1659410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659410 := by
  apply coveredState_split_literal (state := state_1659410) 4
    state_1659411 state_1659590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659411
  · exact cover_1659590
#print axioms cover_1659410

def state_1660316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 46)))
theorem cover_1660316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660316 := by
  apply coveredState_split_literal (state := state_1660316) 1
    state_1660317 state_1660378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660317
  · exact cover_1660378
#print axioms cover_1660316

def state_1660282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 56 else 46)))
theorem cover_1660282 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660282 := by
  apply coveredState_split_literal (state := state_1660282) 2
    state_1660283 state_1660316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660283
  · exact cover_1660316
#print axioms cover_1660282

def state_1660281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
theorem cover_1660281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660281 := by
  apply coveredState_split_literal (state := state_1660281) 3
    state_1660282 state_1660391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660282
  · exact cover_1660391
#print axioms cover_1660281

def state_1660280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
theorem cover_1660280 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660280 := by
  apply coveredState_split_literal (state := state_1660280) 0
    state_1660281 state_1660408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660281
  · exact cover_1660408
#print axioms cover_1660280

def state_1660416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_1660416 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660416 := by
  apply coveredState_split_literal (state := state_1660416) 3
    state_1660417 state_1660464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660417
  · exact cover_1660464
#print axioms cover_1660416

def state_1660415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_1660415 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660415 := by
  apply coveredState_split_literal (state := state_1660415) 0
    state_1660416 state_1660527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660416
  · exact cover_1660527
#print axioms cover_1660415

def state_1660279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_1660279 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660279 := by
  apply coveredState_split_literal (state := state_1660279) 4
    state_1660280 state_1660415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660280
  · exact cover_1660415
#print axioms cover_1660279

def state_1659409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_1659409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659409 := by
  apply coveredState_split_literal (state := state_1659409) 1
    state_1659410 state_1660279
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659410
  · exact cover_1660279
#print axioms cover_1659409

def state_1660538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 23)))
theorem cover_1660538 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660538 := by
  apply coveredState_split_literal (state := state_1660538) 1
    state_1660539 state_1660596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660539
  · exact cover_1660596
#print axioms cover_1660538

def state_1659408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 23)))
theorem cover_1659408 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659408 := by
  apply coveredState_split_literal (state := state_1659408) 3
    state_1659409 state_1660538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659409
  · exact cover_1660538
#print axioms cover_1659408

def state_1659276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
theorem cover_1659276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659276 := by
  apply coveredState_split_literal (state := state_1659276) 2
    state_1659277 state_1659408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659277
  · exact cover_1659408
#print axioms cover_1659276

def state_1659264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_1659264 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659264 := by
  apply coveredState_split_literal (state := state_1659264) 4
    state_1659265 state_1659276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659265
  · exact cover_1659276
#print axioms cover_1659264

def state_1660609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_1660609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660609 := by
  apply coveredState_split_literal (state := state_1660609) 4
    state_1660610 state_1660627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660610
  · exact cover_1660627
#print axioms cover_1660609

def state_1659263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_1659263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659263 := by
  apply coveredState_split_literal (state := state_1659263) 1
    state_1659264 state_1660609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659264
  · exact cover_1660609
#print axioms cover_1659263
end Mub6.Numerical.CircleFullD0.Forest
