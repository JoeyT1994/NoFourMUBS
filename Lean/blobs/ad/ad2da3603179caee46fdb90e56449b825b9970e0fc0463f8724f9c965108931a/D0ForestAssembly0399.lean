import D0FullInterface
import D0ForestChunk1553
import D0ForestChunk1554
import D0ForestChunk1555
import D0ForestChunk1556
import D0ForestChunk1557
import D0ForestChunk1558
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2246440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 48)))
theorem cover_2246440 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246440 := by
  apply coveredState_split_literal (state := state_2246440) 2
    state_2246441 state_2246504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246441
  · exact cover_2246504
#print axioms cover_2246440

def state_2246428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 48)))
theorem cover_2246428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246428 := by
  apply coveredState_split_literal (state := state_2246428) 1
    state_2246429 state_2246440
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246429
  · exact cover_2246440
#print axioms cover_2246428

def state_2246578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 46 else 49)))
theorem cover_2246578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246578 := by
  apply coveredState_split_literal (state := state_2246578) 3
    state_2246579 state_2246592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246579
  · exact cover_2246592
#print axioms cover_2246578

def state_2246577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 46 else 49)))
theorem cover_2246577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246577 := by
  apply coveredState_split_literal (state := state_2246577) 0
    state_2246578 state_2246653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246578
  · exact cover_2246653
#print axioms cover_2246577

def state_2246559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 49)))
theorem cover_2246559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246559 := by
  apply coveredState_split_literal (state := state_2246559) 2
    state_2246560 state_2246577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246560
  · exact cover_2246577
#print axioms cover_2246559

def state_2246551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 49)))
theorem cover_2246551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246551 := by
  apply coveredState_split_literal (state := state_2246551) 1
    state_2246552 state_2246559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246552
  · exact cover_2246559
#print axioms cover_2246551

def state_2246427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 24)))
theorem cover_2246427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246427 := by
  apply coveredState_split_literal (state := state_2246427) 4
    state_2246428 state_2246551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246428
  · exact cover_2246551
#print axioms cover_2246427

def state_2246705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 47 else 48)))
theorem cover_2246705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246705 := by
  apply coveredState_split_literal (state := state_2246705) 3
    state_2246706 state_2246749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246706
  · exact cover_2246749
#print axioms cover_2246705

def state_2246804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 103) else (if j.val < 3 then 38 else (if j.val < 4 then 94 else 96)))
theorem cover_2246804 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246804 := by
  apply coveredState_split_literal (state := state_2246804) 2
    state_2246805 state_2246866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246805
  · exact cover_2246866
#print axioms cover_2246804

def state_2246774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 94 else 96)))
theorem cover_2246774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246774 := by
  apply coveredState_split_literal (state := state_2246774) 1
    state_2246775 state_2246804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246775
  · exact cover_2246804
#print axioms cover_2246774

def state_2246917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 103) else (if j.val < 3 then 38 else (if j.val < 4 then 94 else 97)))
theorem cover_2246917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246917 := by
  apply coveredState_split_literal (state := state_2246917) 2
    state_2246918 state_2246927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246918
  · exact cover_2246927
#print axioms cover_2246917

def state_2246915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 94 else 97)))
theorem cover_2246915 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246915 := by
  apply coveredState_split_literal (state := state_2246915) 1
    state_2246916 state_2246917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246916
  · exact cover_2246917
#print axioms cover_2246915

def state_2246773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 94 else 48)))
theorem cover_2246773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246773 := by
  apply coveredState_split_literal (state := state_2246773) 4
    state_2246774 state_2246915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246774
  · exact cover_2246915
#print axioms cover_2246773

def state_2246989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 95 else 96)))
theorem cover_2246989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246989 := by
  apply coveredState_split_literal (state := state_2246989) 1
    state_2246990 state_2247011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246990
  · exact cover_2247011
#print axioms cover_2246989

def state_2247122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 75 else 103) else (if j.val < 3 then 77 else (if j.val < 4 then 95 else 97)))
theorem cover_2247122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247122 := by
  apply coveredState_split_literal (state := state_2247122) 3
    state_2247123 state_2247178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247123
  · exact cover_2247178
#print axioms cover_2247122

def state_2247076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 103) else (if j.val < 3 then 77 else (if j.val < 4 then 95 else 97)))
theorem cover_2247076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247076 := by
  apply coveredState_split_literal (state := state_2247076) 0
    state_2247077 state_2247122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247077
  · exact cover_2247122
#print axioms cover_2247076

def state_2247058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 103) else (if j.val < 3 then 38 else (if j.val < 4 then 95 else 97)))
theorem cover_2247058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247058 := by
  apply coveredState_split_literal (state := state_2247058) 2
    state_2247059 state_2247076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247059
  · exact cover_2247076
#print axioms cover_2247058

def state_2247056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 95 else 97)))
theorem cover_2247056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247056 := by
  apply coveredState_split_literal (state := state_2247056) 1
    state_2247057 state_2247058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247057
  · exact cover_2247058
#print axioms cover_2247056

def state_2246988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 95 else 48)))
theorem cover_2246988 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246988 := by
  apply coveredState_split_literal (state := state_2246988) 4
    state_2246989 state_2247056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246989
  · exact cover_2247056
#print axioms cover_2246988

def state_2246772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 47 else 48)))
theorem cover_2246772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246772 := by
  apply coveredState_split_literal (state := state_2246772) 3
    state_2246773 state_2246988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246773
  · exact cover_2246988
#print axioms cover_2246772

def state_2246704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 47 else 48)))
theorem cover_2246704 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246704 := by
  apply coveredState_split_literal (state := state_2246704) 0
    state_2246705 state_2246772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246705
  · exact cover_2246772
#print axioms cover_2246704

def state_2247250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 94 else 97)))
theorem cover_2247250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247250 := by
  apply coveredState_split_literal (state := state_2247250) 1
    state_2247251 state_2247256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247251
  · exact cover_2247256
#print axioms cover_2247250

def state_2247230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 94 else 48)))
theorem cover_2247230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247230 := by
  apply coveredState_split_literal (state := state_2247230) 4
    state_2247231 state_2247250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247231
  · exact cover_2247250
#print axioms cover_2247230

def state_2247229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 47 else 48)))
theorem cover_2247229 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247229 := by
  apply coveredState_split_literal (state := state_2247229) 3
    state_2247230 state_2247319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247230
  · exact cover_2247319
#print axioms cover_2247229

def state_2247215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 47 else 48)))
theorem cover_2247215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247215 := by
  apply coveredState_split_literal (state := state_2247215) 0
    state_2247216 state_2247229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247216
  · exact cover_2247229
#print axioms cover_2247215

def state_2246703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 48)))
theorem cover_2246703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246703 := by
  apply coveredState_split_literal (state := state_2246703) 2
    state_2246704 state_2247215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246704
  · exact cover_2247215
#print axioms cover_2246703

def state_2246687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 48)))
theorem cover_2246687 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246687 := by
  apply coveredState_split_literal (state := state_2246687) 1
    state_2246688 state_2246703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246688
  · exact cover_2246703
#print axioms cover_2246687

def state_2247399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 47 else 49)))
theorem cover_2247399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247399 := by
  apply coveredState_split_literal (state := state_2247399) 3
    state_2247400 state_2247451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247400
  · exact cover_2247451
#print axioms cover_2247399

def state_2247470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 47 else 49)))
theorem cover_2247470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247470 := by
  apply coveredState_split_literal (state := state_2247470) 3
    state_2247471 state_2247522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247471
  · exact cover_2247522
#print axioms cover_2247470

def state_2247398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 47 else 49)))
theorem cover_2247398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247398 := by
  apply coveredState_split_literal (state := state_2247398) 0
    state_2247399 state_2247470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247399
  · exact cover_2247470
#print axioms cover_2247398

def state_2247378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 49)))
theorem cover_2247378 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247378 := by
  apply coveredState_split_literal (state := state_2247378) 2
    state_2247379 state_2247398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247379
  · exact cover_2247398
#print axioms cover_2247378

def state_2247376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 49)))
theorem cover_2247376 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247376 := by
  apply coveredState_split_literal (state := state_2247376) 1
    state_2247377 state_2247378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247377
  · exact cover_2247378
#print axioms cover_2247376
end Mub6.Numerical.CircleFullD0.Forest
