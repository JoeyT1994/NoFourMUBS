import CircleFullInterface
import CircleForestAssembly0471
import CircleForestAssembly0472
import CircleForestChunk1855
import CircleForestChunk1856
import CircleForestChunk1858
import CircleForestChunk1859
import CircleForestChunk1861
import CircleForestChunk1862
import CircleForestChunk1863
import CircleForestChunk1864
import CircleForestChunk1865
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2319770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 43)))
theorem cover_2319770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319770 := by
  apply coveredState_split_literal (state := state_2319770) 2
    state_2319771 state_2319798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319771
  · exact cover_2319798
#print axioms cover_2319770

def state_2319752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 43)))
theorem cover_2319752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319752 := by
  apply coveredState_split_literal (state := state_2319752) 0
    state_2319753 state_2319770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319753
  · exact cover_2319770
#print axioms cover_2319752

def state_2319452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 43)))
theorem cover_2319452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319452 := by
  apply coveredState_split_literal (state := state_2319452) 3
    state_2319453 state_2319752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319453
  · exact cover_2319752
#print axioms cover_2319452

def state_2319328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 43)))
theorem cover_2319328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319328 := by
  apply coveredState_split_literal (state := state_2319328) 1
    state_2319329 state_2319452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319329
  · exact cover_2319452
#print axioms cover_2319328

def state_2319300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 21)))
theorem cover_2319300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319300 := by
  apply coveredState_split_literal (state := state_2319300) 4
    state_2319301 state_2319328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319301
  · exact cover_2319328
#print axioms cover_2319300

def state_2319170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 21)))
theorem cover_2319170 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319170 := by
  apply coveredState_split_literal (state := state_2319170) 2
    state_2319171 state_2319300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319171
  · exact cover_2319300
#print axioms cover_2319170

def state_2319120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 21)))
theorem cover_2319120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319120 := by
  apply coveredState_split_literal (state := state_2319120) 0
    state_2319121 state_2319170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319121
  · exact cover_2319170
#print axioms cover_2319120

def state_2318642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 21)))
theorem cover_2318642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318642 := by
  apply coveredState_split_literal (state := state_2318642) 3
    state_2318643 state_2319120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318643
  · exact cover_2319120
#print axioms cover_2318642

def state_2318641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 21)))
theorem cover_2318641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318641 := by
  apply coveredState_split_literal (state := state_2318641) 1
    state_2318642 state_2319921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318642
  · exact cover_2319921
#print axioms cover_2318641

def state_2318617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 10)))
theorem cover_2318617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318617 := by
  apply coveredState_split_literal (state := state_2318617) 4
    state_2318618 state_2318641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318618
  · exact cover_2318641
#print axioms cover_2318617

def state_2318501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_2318501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318501 := by
  apply coveredState_split_literal (state := state_2318501) 2
    state_2318502 state_2318617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318502
  · exact cover_2318617
#print axioms cover_2318501

def state_2318455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_2318455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318455 := by
  apply coveredState_split_literal (state := state_2318455) 0
    state_2318456 state_2318501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318456
  · exact cover_2318501
#print axioms cover_2318455

def state_2318175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
theorem cover_2318175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318175 := by
  apply coveredState_split_literal (state := state_2318175) 3
    state_2318176 state_2318455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318176
  · exact cover_2318455
#print axioms cover_2318175

def state_2318174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
theorem cover_2318174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318174 := by
  apply coveredState_split_literal (state := state_2318174) 1
    state_2318175 state_2319972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318175
  · exact cover_2319972
#print axioms cover_2318174

def state_2320041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 22)))
theorem cover_2320041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320041 := by
  apply coveredState_split_literal (state := state_2320041) 0
    state_2320042 state_2320051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320042
  · exact cover_2320051
#print axioms cover_2320041

def state_2320003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 22)))
theorem cover_2320003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320003 := by
  apply coveredState_split_literal (state := state_2320003) 3
    state_2320004 state_2320041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320004
  · exact cover_2320041
#print axioms cover_2320003

def state_2320002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 22)))
theorem cover_2320002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320002 := by
  apply coveredState_split_literal (state := state_2320002) 1
    state_2320003 state_2320112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320003
  · exact cover_2320112
#print axioms cover_2320002

def state_2320001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 22)))
theorem cover_2320001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320001 := by
  apply coveredState_split_literal (state := state_2320001) 2
    state_2320002 state_2320123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320002
  · exact cover_2320123
#print axioms cover_2320001

def state_2320000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 11)))
theorem cover_2320000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320000 := by
  apply coveredState_split_literal (state := state_2320000) 4
    state_2320001 state_2320170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320001
  · exact cover_2320170
#print axioms cover_2320000

def state_2320389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 59 else 89)))
theorem cover_2320389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320389 := by
  apply coveredState_split_literal (state := state_2320389) 1
    state_2320390 state_2320449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320390
  · exact cover_2320449
#print axioms cover_2320389

def state_2320355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 59 else 44)))
theorem cover_2320355 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320355 := by
  apply coveredState_split_literal (state := state_2320355) 4
    state_2320356 state_2320389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320356
  · exact cover_2320389
#print axioms cover_2320355

def state_2320323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 59 else 44)))
theorem cover_2320323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320323 := by
  apply coveredState_split_literal (state := state_2320323) 0
    state_2320324 state_2320355
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320324
  · exact cover_2320355
#print axioms cover_2320323

def state_2320291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 59 else 44)))
theorem cover_2320291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320291 := by
  apply coveredState_split_literal (state := state_2320291) 2
    state_2320292 state_2320323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320292
  · exact cover_2320323
#print axioms cover_2320291

def state_2320239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 44)))
theorem cover_2320239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320239 := by
  apply coveredState_split_literal (state := state_2320239) 3
    state_2320240 state_2320291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320240
  · exact cover_2320291
#print axioms cover_2320239

def state_2320238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 44)))
theorem cover_2320238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320238 := by
  apply coveredState_split_literal (state := state_2320238) 1
    state_2320239 state_2320466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320239
  · exact cover_2320466
#print axioms cover_2320238

def state_2320486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 45)))
theorem cover_2320486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320486 := by
  apply coveredState_split_literal (state := state_2320486) 3
    state_2320487 state_2320534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320487
  · exact cover_2320534
#print axioms cover_2320486

def state_2320485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 45)))
theorem cover_2320485 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320485 := by
  apply coveredState_split_literal (state := state_2320485) 1
    state_2320486 state_2320575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320486
  · exact cover_2320575
#print axioms cover_2320485

def state_2320237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 22)))
theorem cover_2320237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320237 := by
  apply coveredState_split_literal (state := state_2320237) 4
    state_2320238 state_2320485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320238
  · exact cover_2320485
#print axioms cover_2320237

def state_2320594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 22)))
theorem cover_2320594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320594 := by
  apply coveredState_split_literal (state := state_2320594) 4
    state_2320595 state_2320644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320595
  · exact cover_2320644
#print axioms cover_2320594

def state_2320236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 22)))
theorem cover_2320236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320236 := by
  apply coveredState_split_literal (state := state_2320236) 0
    state_2320237 state_2320594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320237
  · exact cover_2320594
#print axioms cover_2320236

def state_2320208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 22)))
theorem cover_2320208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320208 := by
  apply coveredState_split_literal (state := state_2320208) 3
    state_2320209 state_2320236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320209
  · exact cover_2320236
#print axioms cover_2320208

def state_2320207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 22)))
theorem cover_2320207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320207 := by
  apply coveredState_split_literal (state := state_2320207) 1
    state_2320208 state_2320667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320208
  · exact cover_2320667
#print axioms cover_2320207
end Mub6.Numerical.CircleFullD0.Forest
