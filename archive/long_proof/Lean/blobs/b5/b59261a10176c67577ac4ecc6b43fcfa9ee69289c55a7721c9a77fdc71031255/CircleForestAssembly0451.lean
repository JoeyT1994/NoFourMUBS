import CircleFullInterface
import CircleForestAssembly0450
import CircleForestChunk1766
import CircleForestChunk1767
import CircleForestChunk1768
import CircleForestChunk1769
import CircleForestChunk1770
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2297039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 46)))
theorem cover_2297039 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297039 := by
  apply coveredState_split_literal (state := state_2297039) 1
    state_2297040 state_2297299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297040
  · exact cover_2297299
#print axioms cover_2297039

def state_2297382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 71 else (if j.val < 4 then 107 else 92)))
theorem cover_2297382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297382 := by
  apply coveredState_split_literal (state := state_2297382) 4
    state_2297383 state_2297446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297383
  · exact cover_2297446
#print axioms cover_2297382

def state_2297344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 107 else 92)))
theorem cover_2297344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297344 := by
  apply coveredState_split_literal (state := state_2297344) 2
    state_2297345 state_2297382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297345
  · exact cover_2297382
#print axioms cover_2297344

def state_2297336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 92)))
theorem cover_2297336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297336 := by
  apply coveredState_split_literal (state := state_2297336) 3
    state_2297337 state_2297344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297337
  · exact cover_2297344
#print axioms cover_2297336

def state_2297335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 92)))
theorem cover_2297335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297335 := by
  apply coveredState_split_literal (state := state_2297335) 1
    state_2297336 state_2297477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297336
  · exact cover_2297477
#print axioms cover_2297335

def state_2297334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 92)))
theorem cover_2297334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297334 := by
  apply coveredState_split_literal (state := state_2297334) 0
    state_2297335 state_2297490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297335
  · exact cover_2297490
#print axioms cover_2297334

def state_2297333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 46)))
theorem cover_2297333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297333 := by
  apply coveredState_split_literal (state := state_2297333) 4
    state_2297334 state_2297503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297334
  · exact cover_2297503
#print axioms cover_2297333

def state_2297305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 53 else 46)))
theorem cover_2297305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297305 := by
  apply coveredState_split_literal (state := state_2297305) 2
    state_2297306 state_2297333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297306
  · exact cover_2297333
#print axioms cover_2297305

def state_2297303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 46)))
theorem cover_2297303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297303 := by
  apply coveredState_split_literal (state := state_2297303) 3
    state_2297304 state_2297305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297304
  · exact cover_2297305
#print axioms cover_2297303

def state_2297302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 46)))
theorem cover_2297302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297302 := by
  apply coveredState_split_literal (state := state_2297302) 1
    state_2297303 state_2297528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297303
  · exact cover_2297528
#print axioms cover_2297302

def state_2297038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 46)))
theorem cover_2297038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297038 := by
  apply coveredState_split_literal (state := state_2297038) 0
    state_2297039 state_2297302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297039
  · exact cover_2297302
#print axioms cover_2297038

def state_2297037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 23)))
theorem cover_2297037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297037 := by
  apply coveredState_split_literal (state := state_2297037) 4
    state_2297038 state_2297529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297038
  · exact cover_2297529
#print axioms cover_2297037

def state_2297019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 23)))
theorem cover_2297019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297019 := by
  apply coveredState_split_literal (state := state_2297019) 2
    state_2297020 state_2297037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297020
  · exact cover_2297037
#print axioms cover_2297019

def state_2297658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 104) else (if j.val < 3 then 69 else (if j.val < 4 then 109 else 92)))
theorem cover_2297658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297658 := by
  apply coveredState_split_literal (state := state_2297658) 4
    state_2297659 state_2297720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297659
  · exact cover_2297720
#print axioms cover_2297658

def state_2297648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 104) else (if j.val < 3 then 34 else (if j.val < 4 then 109 else 92)))
theorem cover_2297648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297648 := by
  apply coveredState_split_literal (state := state_2297648) 2
    state_2297649 state_2297658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297649
  · exact cover_2297658
#print axioms cover_2297648

def state_2297626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 104) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 92)))
theorem cover_2297626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297626 := by
  apply coveredState_split_literal (state := state_2297626) 3
    state_2297627 state_2297648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297627
  · exact cover_2297648
#print axioms cover_2297626

def state_2297625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 92)))
theorem cover_2297625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297625 := by
  apply coveredState_split_literal (state := state_2297625) 1
    state_2297626 state_2297727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297626
  · exact cover_2297727
#print axioms cover_2297625

def state_2297601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 92)))
theorem cover_2297601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297601 := by
  apply coveredState_split_literal (state := state_2297601) 0
    state_2297602 state_2297625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297602
  · exact cover_2297625
#print axioms cover_2297601

def state_2297600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 46)))
theorem cover_2297600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297600 := by
  apply coveredState_split_literal (state := state_2297600) 4
    state_2297601 state_2297730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297601
  · exact cover_2297730
#print axioms cover_2297600

def state_2297739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 92)))
theorem cover_2297739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297739 := by
  apply coveredState_split_literal (state := state_2297739) 1
    state_2297740 state_2297801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297740
  · exact cover_2297801
#print axioms cover_2297739

def state_2297813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 92)))
theorem cover_2297813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297813 := by
  apply coveredState_split_literal (state := state_2297813) 3
    state_2297814 state_2297853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297814
  · exact cover_2297853
#print axioms cover_2297813

def state_2297812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 92)))
theorem cover_2297812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297812 := by
  apply coveredState_split_literal (state := state_2297812) 1
    state_2297813 state_2297908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297813
  · exact cover_2297908
#print axioms cover_2297812

def state_2297738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 92)))
theorem cover_2297738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297738 := by
  apply coveredState_split_literal (state := state_2297738) 0
    state_2297739 state_2297812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297739
  · exact cover_2297812
#print axioms cover_2297738

def state_2297737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 46)))
theorem cover_2297737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297737 := by
  apply coveredState_split_literal (state := state_2297737) 4
    state_2297738 state_2297937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297738
  · exact cover_2297937
#print axioms cover_2297737

def state_2297599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 54 else 46)))
theorem cover_2297599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297599 := by
  apply coveredState_split_literal (state := state_2297599) 2
    state_2297600 state_2297737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297600
  · exact cover_2297737
#print axioms cover_2297599

def state_2297598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
theorem cover_2297598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297598 := by
  apply coveredState_split_literal (state := state_2297598) 3
    state_2297599 state_2297974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297599
  · exact cover_2297974
#print axioms cover_2297598

def state_2297597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
theorem cover_2297597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297597 := by
  apply coveredState_split_literal (state := state_2297597) 1
    state_2297598 state_2298025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297598
  · exact cover_2298025
#print axioms cover_2297597

def state_2297581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
theorem cover_2297581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297581 := by
  apply coveredState_split_literal (state := state_2297581) 0
    state_2297582 state_2297597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297582
  · exact cover_2297597
#print axioms cover_2297581

def state_2297580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 23)))
theorem cover_2297580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297580 := by
  apply coveredState_split_literal (state := state_2297580) 4
    state_2297581 state_2298038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297581
  · exact cover_2298038
#print axioms cover_2297580

def state_2297558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 23)))
theorem cover_2297558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297558 := by
  apply coveredState_split_literal (state := state_2297558) 2
    state_2297559 state_2297580
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297559
  · exact cover_2297580
#print axioms cover_2297558

def state_2297018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
theorem cover_2297018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297018 := by
  apply coveredState_split_literal (state := state_2297018) 3
    state_2297019 state_2297558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297019
  · exact cover_2297558
#print axioms cover_2297018

def state_2297017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
theorem cover_2297017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297017 := by
  apply coveredState_split_literal (state := state_2297017) 1
    state_2297018 state_2298045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297018
  · exact cover_2298045
#print axioms cover_2297017
end Mub6.Numerical.CircleFullD0.Forest
