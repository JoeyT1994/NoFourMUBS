import D0FullInterface
import D0ForestAssembly0116
import D0ForestAssembly0118
import D0ForestChunk0459
import D0ForestChunk0465
import D0ForestChunk0466
import D0ForestChunk0467
import D0ForestChunk0468
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1047910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_1047910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047910 := by
  apply coveredState_split_literal (state := state_1047910) 4
    state_1047911 state_1047924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047911
  · exact cover_1047924
#print axioms cover_1047910

def state_1049361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_1049361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049361 := by
  apply coveredState_split_literal (state := state_1049361) 2
    state_1049362 state_1049373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049362
  · exact cover_1049373
#print axioms cover_1049361

def state_1049436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_1049436 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049436 := by
  apply coveredState_split_literal (state := state_1049436) 2
    state_1049437 state_1049476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049437
  · exact cover_1049476
#print axioms cover_1049436

def state_1049360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_1049360 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049360 := by
  apply coveredState_split_literal (state := state_1049360) 1
    state_1049361 state_1049436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049361
  · exact cover_1049436
#print axioms cover_1049360

def state_1049359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_1049359 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049359 := by
  apply coveredState_split_literal (state := state_1049359) 0
    state_1049360 state_1049539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049360
  · exact cover_1049539
#print axioms cover_1049359

def state_1049349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_1049349 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049349 := by
  apply coveredState_split_literal (state := state_1049349) 4
    state_1049350 state_1049359
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049350
  · exact cover_1049359
#print axioms cover_1049349

def state_1047909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_1047909 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047909 := by
  apply coveredState_split_literal (state := state_1047909) 3
    state_1047910 state_1049349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047910
  · exact cover_1049349
#print axioms cover_1047909

def state_1049598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 15)))
theorem cover_1049598 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049598 := by
  apply coveredState_split_literal (state := state_1049598) 0
    state_1049599 state_1049656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049599
  · exact cover_1049656
#print axioms cover_1049598

def state_1049582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 7)))
theorem cover_1049582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049582 := by
  apply coveredState_split_literal (state := state_1049582) 4
    state_1049583 state_1049598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049583
  · exact cover_1049598
#print axioms cover_1049582

def state_1049581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_1049581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049581 := by
  apply coveredState_split_literal (state := state_1049581) 2
    state_1049582 state_1049665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049582
  · exact cover_1049665
#print axioms cover_1049581

def state_1049580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_1049580 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049580 := by
  apply coveredState_split_literal (state := state_1049580) 3
    state_1049581 state_1049680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049581
  · exact cover_1049680
#print axioms cover_1049580

def state_1049579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_1049579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049579 := by
  apply coveredState_split_literal (state := state_1049579) 1
    state_1049580 state_1049707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049580
  · exact cover_1049707
#print axioms cover_1049579

def state_1049578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_1049578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049578 := by
  apply coveredState_split_literal (state := state_1049578) 0
    state_1049579 state_1049730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049579
  · exact cover_1049730
#print axioms cover_1049578

def state_1049568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_1049568 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049568 := by
  apply coveredState_split_literal (state := state_1049568) 4
    state_1049569 state_1049578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049569
  · exact cover_1049578
#print axioms cover_1049568

def state_1049544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_1049544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049544 := by
  apply coveredState_split_literal (state := state_1049544) 3
    state_1049545 state_1049568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049545
  · exact cover_1049568
#print axioms cover_1049544

def state_1047908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1047908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047908 := by
  apply coveredState_split_literal (state := state_1047908) 2
    state_1047909 state_1049544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047909
  · exact cover_1049544
#print axioms cover_1047908

def state_1049767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_1049767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049767 := by
  apply coveredState_split_literal (state := state_1049767) 2
    state_1049768 state_1049809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049768
  · exact cover_1049809
#print axioms cover_1049767

def state_1049766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_1049766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049766 := by
  apply coveredState_split_literal (state := state_1049766) 0
    state_1049767 state_1049834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049767
  · exact cover_1049834
#print axioms cover_1049766

def state_1049760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_1049760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049760 := by
  apply coveredState_split_literal (state := state_1049760) 4
    state_1049761 state_1049766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049761
  · exact cover_1049766
#print axioms cover_1049760

def state_1049742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_1049742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049742 := by
  apply coveredState_split_literal (state := state_1049742) 3
    state_1049743 state_1049760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049743
  · exact cover_1049760
#print axioms cover_1049742

def state_1049741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1049741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049741 := by
  apply coveredState_split_literal (state := state_1049741) 2
    state_1049742 state_1049839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049742
  · exact cover_1049839
#print axioms cover_1049741

def state_1047907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1047907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047907 := by
  apply coveredState_split_literal (state := state_1047907) 1
    state_1047908 state_1049741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047908
  · exact cover_1049741
#print axioms cover_1047907

def state_1047906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1047906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047906 := by
  apply coveredState_split_literal (state := state_1047906) 0
    state_1047907 state_1049854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047907
  · exact cover_1049854
#print axioms cover_1047906

def state_1047744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1047744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047744 := by
  apply coveredState_split_literal (state := state_1047744) 4
    state_1047745 state_1047906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047745
  · exact cover_1047906
#print axioms cover_1047744

def state_1050074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 51) else (if j.val < 3 then 63 else (if j.val < 4 then 51 else 32)))
theorem cover_1050074 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050074 := by
  apply coveredState_split_literal (state := state_1050074) 1
    state_1050075 state_1050092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050075
  · exact cover_1050092
#print axioms cover_1050074

def state_1050038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 51) else (if j.val < 3 then 63 else (if j.val < 4 then 51 else 32)))
theorem cover_1050038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050038 := by
  apply coveredState_split_literal (state := state_1050038) 0
    state_1050039 state_1050074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050039
  · exact cover_1050074
#print axioms cover_1050038

def state_1050037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 51) else (if j.val < 3 then 63 else (if j.val < 4 then 51 else 16)))
theorem cover_1050037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050037 := by
  apply coveredState_split_literal (state := state_1050037) 4
    state_1050038 state_1050153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050038
  · exact cover_1050153
#print axioms cover_1050037

def state_1050015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 51) else (if j.val < 3 then 31 else (if j.val < 4 then 51 else 16)))
theorem cover_1050015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050015 := by
  apply coveredState_split_literal (state := state_1050015) 2
    state_1050016 state_1050037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050016
  · exact cover_1050037
#print axioms cover_1050015

def state_1050001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 51) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 16)))
theorem cover_1050001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050001 := by
  apply coveredState_split_literal (state := state_1050001) 3
    state_1050002 state_1050015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050002
  · exact cover_1050015
#print axioms cover_1050001

def state_1049997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 16)))
theorem cover_1049997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049997 := by
  apply coveredState_split_literal (state := state_1049997) 1
    state_1049998 state_1050001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049998
  · exact cover_1050001
#print axioms cover_1049997

def state_1049979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 16)))
theorem cover_1049979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049979 := by
  apply coveredState_split_literal (state := state_1049979) 0
    state_1049980 state_1049997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049980
  · exact cover_1049997
#print axioms cover_1049979

def state_1049978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 8)))
theorem cover_1049978 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049978 := by
  apply coveredState_split_literal (state := state_1049978) 4
    state_1049979 state_1050170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049979
  · exact cover_1050170
#print axioms cover_1049978
end Mub6.Numerical.CircleFullD0.Forest
