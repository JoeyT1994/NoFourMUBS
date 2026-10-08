import D0FullInterface
import D0ForestAssembly0401
import D0ForestAssembly0419
import D0ForestAssembly0420
import D0ForestAssembly0421
import D0ForestAssembly0424
import D0ForestChunk1660
import D0ForestChunk1661
import D0ForestChunk1662
import D0ForestChunk1663
import D0ForestChunk1664
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2271745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 14)))
theorem cover_2271745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271745 := by
  apply coveredState_split_literal (state := state_2271745) 0
    state_2271746 state_2271757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271746
  · exact cover_2271757
#print axioms cover_2271745

def state_2271689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 14)))
theorem cover_2271689 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271689 := by
  apply coveredState_split_literal (state := state_2271689) 1
    state_2271690 state_2271745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271690
  · exact cover_2271745
#print axioms cover_2271689

def state_2271311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 14)))
theorem cover_2271311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271311 := by
  apply coveredState_split_literal (state := state_2271311) 3
    state_2271312 state_2271689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271312
  · exact cover_2271689
#print axioms cover_2271311

def state_2268171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 14)))
theorem cover_2268171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268171 := by
  apply coveredState_split_literal (state := state_2268171) 2
    state_2268172 state_2271311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268172
  · exact cover_2271311
#print axioms cover_2268171

def state_2271879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2271879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271879 := by
  apply coveredState_split_literal (state := state_2271879) 1
    state_2271880 state_2271917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271880
  · exact cover_2271917
#print axioms cover_2271879

def state_2271878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 15)))
theorem cover_2271878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271878 := by
  apply coveredState_split_literal (state := state_2271878) 3
    state_2271879 state_2271968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271879
  · exact cover_2271968
#print axioms cover_2271878

def state_2271838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 15)))
theorem cover_2271838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271838 := by
  apply coveredState_split_literal (state := state_2271838) 2
    state_2271839 state_2271878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271839
  · exact cover_2271878
#print axioms cover_2271838

def state_2268170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2268170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268170 := by
  apply coveredState_split_literal (state := state_2268170) 4
    state_2268171 state_2271838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268171
  · exact cover_2271838
#print axioms cover_2268170

def state_2267664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2267664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267664 := by
  apply coveredState_split_literal (state := state_2267664) 0
    state_2267665 state_2268170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267665
  · exact cover_2268170
#print axioms cover_2267664

def state_2267302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 7)))
theorem cover_2267302 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267302 := by
  apply coveredState_split_literal (state := state_2267302) 3
    state_2267303 state_2267664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267303
  · exact cover_2267664
#print axioms cover_2267302

def state_2267056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2267056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267056 := by
  apply coveredState_split_literal (state := state_2267056) 2
    state_2267057 state_2267302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267057
  · exact cover_2267302
#print axioms cover_2267056

def state_2266164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2266164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266164 := by
  apply coveredState_split_literal (state := state_2266164) 1
    state_2266165 state_2267056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266165
  · exact cover_2267056
#print axioms cover_2266164

def state_2248444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_2248444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248444 := by
  apply coveredState_split_literal (state := state_2248444) 4
    state_2248445 state_2266164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248445
  · exact cover_2266164
#print axioms cover_2248444

def state_2248348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_2248348 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248348 := by
  apply coveredState_split_literal (state := state_2248348) 3
    state_2248349 state_2248444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248349
  · exact cover_2248444
#print axioms cover_2248348

def state_2245820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2245820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245820 := by
  apply coveredState_split_literal (state := state_2245820) 2
    state_2245821 state_2248348
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245821
  · exact cover_2248348
#print axioms cover_2245820

def state_2272026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_2272026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272026 := by
  apply coveredState_split_literal (state := state_2272026) 2
    state_2272027 state_2272070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272027
  · exact cover_2272070
#print axioms cover_2272026

def state_2272190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 14)))
theorem cover_2272190 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272190 := by
  apply coveredState_split_literal (state := state_2272190) 3
    state_2272191 state_2272248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272191
  · exact cover_2272248
#print axioms cover_2272190

def state_2272189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 14)))
theorem cover_2272189 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272189 := by
  apply coveredState_split_literal (state := state_2272189) 2
    state_2272190 state_2272265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272190
  · exact cover_2272265
#print axioms cover_2272189

def state_2272188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2272188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272188 := by
  apply coveredState_split_literal (state := state_2272188) 4
    state_2272189 state_2272322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272189
  · exact cover_2272322
#print axioms cover_2272188

def state_2272187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2272187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272187 := by
  apply coveredState_split_literal (state := state_2272187) 1
    state_2272188 state_2272355
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272188
  · exact cover_2272355
#print axioms cover_2272187

def state_2272177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2272177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272177 := by
  apply coveredState_split_literal (state := state_2272177) 0
    state_2272178 state_2272187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272178
  · exact cover_2272187
#print axioms cover_2272177

def state_2272135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 7)))
theorem cover_2272135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272135 := by
  apply coveredState_split_literal (state := state_2272135) 3
    state_2272136 state_2272177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272136
  · exact cover_2272177
#print axioms cover_2272135

def state_2272113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2272113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272113 := by
  apply coveredState_split_literal (state := state_2272113) 2
    state_2272114 state_2272135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272114
  · exact cover_2272135
#print axioms cover_2272113

def state_2272025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_2272025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272025 := by
  apply coveredState_split_literal (state := state_2272025) 4
    state_2272026 state_2272113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272026
  · exact cover_2272113
#print axioms cover_2272025

def state_2272013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_2272013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272013 := by
  apply coveredState_split_literal (state := state_2272013) 3
    state_2272014 state_2272025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272014
  · exact cover_2272025
#print axioms cover_2272013

def state_2272001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2272001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272001 := by
  apply coveredState_split_literal (state := state_2272001) 2
    state_2272002 state_2272013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272002
  · exact cover_2272013
#print axioms cover_2272001

def state_2245819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2245819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245819 := by
  apply coveredState_split_literal (state := state_2245819) 1
    state_2245820 state_2272001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245820
  · exact cover_2272001
#print axioms cover_2245819

def state_2272378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_2272378 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272378 := by
  apply coveredState_split_literal (state := state_2272378) 4
    state_2272379 state_2272436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272379
  · exact cover_2272436
#print axioms cover_2272378

def state_2272364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_2272364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272364 := by
  apply coveredState_split_literal (state := state_2272364) 3
    state_2272365 state_2272378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272365
  · exact cover_2272378
#print axioms cover_2272364

def state_2272535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 7)))
theorem cover_2272535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272535 := by
  apply coveredState_split_literal (state := state_2272535) 4
    state_2272536 state_2272571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272536
  · exact cover_2272571
#print axioms cover_2272535

def state_2272527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 7)))
theorem cover_2272527 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272527 := by
  apply coveredState_split_literal (state := state_2272527) 3
    state_2272528 state_2272535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272528
  · exact cover_2272535
#print axioms cover_2272527

def state_2272505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 7)))
theorem cover_2272505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272505 := by
  apply coveredState_split_literal (state := state_2272505) 2
    state_2272506 state_2272527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272506
  · exact cover_2272527
#print axioms cover_2272505
end Mub6.Numerical.CircleFullD0.Forest
