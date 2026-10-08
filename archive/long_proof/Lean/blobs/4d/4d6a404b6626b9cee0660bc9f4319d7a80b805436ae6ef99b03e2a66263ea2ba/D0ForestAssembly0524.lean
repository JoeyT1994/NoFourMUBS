import D0FullInterface
import D0ForestAssembly0523
import D0ForestChunk2054
import D0ForestChunk2063
import D0ForestChunk2064
import D0ForestChunk2065
import D0ForestChunk2066
import D0ForestChunk2067
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2575706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 10)))
theorem cover_2575706 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575706 := by
  apply coveredState_split_literal (state := state_2575706) 1
    state_2575707 state_2575778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575707
  · exact cover_2575778
#print axioms cover_2575706

def state_2575705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 5)))
theorem cover_2575705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575705 := by
  apply coveredState_split_literal (state := state_2575705) 4
    state_2575706 state_2575855
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575706
  · exact cover_2575855
#print axioms cover_2575705

def state_2575687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 5)))
theorem cover_2575687 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575687 := by
  apply coveredState_split_literal (state := state_2575687) 3
    state_2575688 state_2575705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575688
  · exact cover_2575705
#print axioms cover_2575687

def state_2575673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_2575673 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575673 := by
  apply coveredState_split_literal (state := state_2575673) 2
    state_2575674 state_2575687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575674
  · exact cover_2575687
#print axioms cover_2575673

def state_2575611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_2575611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575611 := by
  apply coveredState_split_literal (state := state_2575611) 0
    state_2575612 state_2575673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575612
  · exact cover_2575673
#print axioms cover_2575611

def state_2573619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_2573619 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573619 := by
  apply coveredState_split_literal (state := state_2573619) 4
    state_2573620 state_2575611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573620
  · exact cover_2575611
#print axioms cover_2573619

def state_2573609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_2573609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573609 := by
  apply coveredState_split_literal (state := state_2573609) 3
    state_2573610 state_2573619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573610
  · exact cover_2573619
#print axioms cover_2573609

def state_2573597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2573597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573597 := by
  apply coveredState_split_literal (state := state_2573597) 2
    state_2573598 state_2573609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573598
  · exact cover_2573609
#print axioms cover_2573597

def state_2576009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 8)))
theorem cover_2576009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576009 := by
  apply coveredState_split_literal (state := state_2576009) 2
    state_2576010 state_2576039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576010
  · exact cover_2576039
#print axioms cover_2576009

def state_2576078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 9)))
theorem cover_2576078 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576078 := by
  apply coveredState_split_literal (state := state_2576078) 2
    state_2576079 state_2576096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576079
  · exact cover_2576096
#print axioms cover_2576078

def state_2576008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
theorem cover_2576008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576008 := by
  apply coveredState_split_literal (state := state_2576008) 4
    state_2576009 state_2576078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576009
  · exact cover_2576078
#print axioms cover_2576008

def state_2575998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 4)))
theorem cover_2575998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575998 := by
  apply coveredState_split_literal (state := state_2575998) 3
    state_2575999 state_2576008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575999
  · exact cover_2576008
#print axioms cover_2575998

def state_2575982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_2575982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575982 := by
  apply coveredState_split_literal (state := state_2575982) 2
    state_2575983 state_2575998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575983
  · exact cover_2575998
#print axioms cover_2575982

def state_2575981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_2575981 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575981 := by
  apply coveredState_split_literal (state := state_2575981) 1
    state_2575982 state_2576153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575982
  · exact cover_2576153
#print axioms cover_2575981

def state_2575921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_2575921 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575921 := by
  apply coveredState_split_literal (state := state_2575921) 0
    state_2575922 state_2575981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575922
  · exact cover_2575981
#print axioms cover_2575921

def state_2575920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_2575920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575920 := by
  apply coveredState_split_literal (state := state_2575920) 4
    state_2575921 state_2576174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575921
  · exact cover_2576174
#print axioms cover_2575920

def state_2575916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_2575916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575916 := by
  apply coveredState_split_literal (state := state_2575916) 3
    state_2575917 state_2575920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575917
  · exact cover_2575920
#print axioms cover_2575916

def state_2575872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2575872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575872 := by
  apply coveredState_split_literal (state := state_2575872) 2
    state_2575873 state_2575916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575873
  · exact cover_2575916
#print axioms cover_2575872

def state_2573596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2573596 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573596 := by
  apply coveredState_split_literal (state := state_2573596) 1
    state_2573597 state_2575872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573597
  · exact cover_2575872
#print axioms cover_2573596

def state_2576230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_2576230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576230 := by
  apply coveredState_split_literal (state := state_2576230) 2
    state_2576231 state_2576240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576231
  · exact cover_2576240
#print axioms cover_2576230

def state_2576218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_2576218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576218 := by
  apply coveredState_split_literal (state := state_2576218) 4
    state_2576219 state_2576230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576219
  · exact cover_2576230
#print axioms cover_2576218

def state_2576214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_2576214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576214 := by
  apply coveredState_split_literal (state := state_2576214) 3
    state_2576215 state_2576218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576215
  · exact cover_2576218
#print axioms cover_2576214

def state_2576204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2576204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576204 := by
  apply coveredState_split_literal (state := state_2576204) 2
    state_2576205 state_2576214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576205
  · exact cover_2576214
#print axioms cover_2576204

def state_2576307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_2576307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576307 := by
  apply coveredState_split_literal (state := state_2576307) 4
    state_2576308 state_2576369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576308
  · exact cover_2576369
#print axioms cover_2576307

def state_2576301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_2576301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576301 := by
  apply coveredState_split_literal (state := state_2576301) 3
    state_2576302 state_2576307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576302
  · exact cover_2576307
#print axioms cover_2576301

def state_2576295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2576295 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576295 := by
  apply coveredState_split_literal (state := state_2576295) 2
    state_2576296 state_2576301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576296
  · exact cover_2576301
#print axioms cover_2576295

def state_2576203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2576203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576203 := by
  apply coveredState_split_literal (state := state_2576203) 1
    state_2576204 state_2576295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576204
  · exact cover_2576295
#print axioms cover_2576203

def state_2573595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2573595 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573595 := by
  apply coveredState_split_literal (state := state_2573595) 0
    state_2573596 state_2576203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573596
  · exact cover_2576203
#print axioms cover_2573595

def state_2576461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2576461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576461 := by
  apply coveredState_split_literal (state := state_2576461) 2
    state_2576462 state_2576503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576462
  · exact cover_2576503
#print axioms cover_2576461

def state_2576417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2576417 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576417 := by
  apply coveredState_split_literal (state := state_2576417) 1
    state_2576418 state_2576461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576418
  · exact cover_2576461
#print axioms cover_2576417

def state_2576416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2576416 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576416 := by
  apply coveredState_split_literal (state := state_2576416) 0
    state_2576417 state_2576556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576417
  · exact cover_2576556
#print axioms cover_2576416

def state_2573594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2573594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573594 := by
  apply coveredState_split_literal (state := state_2573594) 4
    state_2573595 state_2576416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573595
  · exact cover_2576416
#print axioms cover_2573594
end Mub6.Numerical.CircleFullD0.Forest
