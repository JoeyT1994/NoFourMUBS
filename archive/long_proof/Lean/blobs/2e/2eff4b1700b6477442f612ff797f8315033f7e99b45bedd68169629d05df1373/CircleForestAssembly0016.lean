import CircleFullInterface
import CircleForestAssembly0015
import CircleForestChunk0068
import CircleForestChunk0069
import CircleForestChunk0070
import CircleForestChunk0071
import CircleForestChunk0072
import CircleForestChunk0073
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_953906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
theorem cover_953906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953906 := by
  apply coveredState_split_literal (state := state_953906) 1
    state_953907 state_954012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953907
  · exact cover_954012
#print axioms cover_953906

def state_953905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
theorem cover_953905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953905 := by
  apply coveredState_split_literal (state := state_953905) 0
    state_953906 state_954103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953906
  · exact cover_954103
#print axioms cover_953905

def state_953875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 54)))
theorem cover_953875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953875 := by
  apply coveredState_split_literal (state := state_953875) 3
    state_953876 state_953905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953876
  · exact cover_953905
#print axioms cover_953875

def state_953874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 27)))
theorem cover_953874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953874 := by
  apply coveredState_split_literal (state := state_953874) 4
    state_953875 state_954130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953875
  · exact cover_954130
#print axioms cover_953874

def state_953873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
theorem cover_953873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953873 := by
  apply coveredState_split_literal (state := state_953873) 2
    state_953874 state_954161
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953874
  · exact cover_954161
#print axioms cover_953873

def state_953847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
theorem cover_953847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953847 := by
  apply coveredState_split_literal (state := state_953847) 1
    state_953848 state_953873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953848
  · exact cover_953873
#print axioms cover_953847

def state_953846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
theorem cover_953846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953846 := by
  apply coveredState_split_literal (state := state_953846) 0
    state_953847 state_954182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953847
  · exact cover_954182
#print axioms cover_953846

def state_953836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 27)))
theorem cover_953836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953836 := by
  apply coveredState_split_literal (state := state_953836) 3
    state_953837 state_953846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953837
  · exact cover_953846
#print axioms cover_953836

def state_953684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 13)))
theorem cover_953684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953684 := by
  apply coveredState_split_literal (state := state_953684) 4
    state_953685 state_953836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953685
  · exact cover_953836
#print axioms cover_953684

def state_953683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_953683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953683 := by
  apply coveredState_split_literal (state := state_953683) 2
    state_953684 state_954197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953684
  · exact cover_954197
#print axioms cover_953683

def state_953617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_953617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953617 := by
  apply coveredState_split_literal (state := state_953617) 1
    state_953618 state_953683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953618
  · exact cover_953683
#print axioms cover_953617

def state_951543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_951543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951543 := by
  apply coveredState_split_literal (state := state_951543) 0
    state_951544 state_953617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951544
  · exact cover_953617
#print axioms cover_951543

def state_954215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 26)))
theorem cover_954215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954215 := by
  apply coveredState_split_literal (state := state_954215) 0
    state_954216 state_954233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954216
  · exact cover_954233
#print axioms cover_954215

def state_954214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 26)))
theorem cover_954214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954214 := by
  apply coveredState_split_literal (state := state_954214) 3
    state_954215 state_954294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954215
  · exact cover_954294
#print axioms cover_954214

def state_954213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 13)))
theorem cover_954213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954213 := by
  apply coveredState_split_literal (state := state_954213) 4
    state_954214 state_954305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954214
  · exact cover_954305
#print axioms cover_954213

def state_954323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 26)))
theorem cover_954323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954323 := by
  apply coveredState_split_literal (state := state_954323) 3
    state_954324 state_954373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954324
  · exact cover_954373
#print axioms cover_954323

def state_954322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 13)))
theorem cover_954322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954322 := by
  apply coveredState_split_literal (state := state_954322) 4
    state_954323 state_954398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954323
  · exact cover_954398
#print axioms cover_954322

def state_954212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_954212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954212 := by
  apply coveredState_split_literal (state := state_954212) 2
    state_954213 state_954322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954213
  · exact cover_954322
#print axioms cover_954212

def state_954483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 53)))
theorem cover_954483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954483 := by
  apply coveredState_split_literal (state := state_954483) 0
    state_954484 state_954499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954484
  · exact cover_954499
#print axioms cover_954483

def state_954482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 53)))
theorem cover_954482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954482 := by
  apply coveredState_split_literal (state := state_954482) 3
    state_954483 state_954548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954483
  · exact cover_954548
#print axioms cover_954482

def state_954476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 26)))
theorem cover_954476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954476 := by
  apply coveredState_split_literal (state := state_954476) 4
    state_954477 state_954482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954477
  · exact cover_954482
#print axioms cover_954476

def state_954475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 26)))
theorem cover_954475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954475 := by
  apply coveredState_split_literal (state := state_954475) 2
    state_954476 state_954553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954476
  · exact cover_954553
#print axioms cover_954475

def state_954616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 26)))
theorem cover_954616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954616 := by
  apply coveredState_split_literal (state := state_954616) 2
    state_954617 state_954660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954617
  · exact cover_954660
#print axioms cover_954616

def state_954474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 26)))
theorem cover_954474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954474 := by
  apply coveredState_split_literal (state := state_954474) 1
    state_954475 state_954616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954475
  · exact cover_954616
#print axioms cover_954474

def state_954432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 26)))
theorem cover_954432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954432 := by
  apply coveredState_split_literal (state := state_954432) 0
    state_954433 state_954474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954433
  · exact cover_954474
#print axioms cover_954432

def state_954431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 26)))
theorem cover_954431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954431 := by
  apply coveredState_split_literal (state := state_954431) 3
    state_954432 state_954693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954432
  · exact cover_954693
#print axioms cover_954431

def state_954794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
theorem cover_954794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954794 := by
  apply coveredState_split_literal (state := state_954794) 1
    state_954795 state_954806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954795
  · exact cover_954806
#print axioms cover_954794

def state_954786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
theorem cover_954786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954786 := by
  apply coveredState_split_literal (state := state_954786) 0
    state_954787 state_954794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954787
  · exact cover_954794
#print axioms cover_954786

def state_954785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 27)))
theorem cover_954785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954785 := by
  apply coveredState_split_literal (state := state_954785) 4
    state_954786 state_954869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954786
  · exact cover_954869
#print axioms cover_954785

def state_954784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 27)))
theorem cover_954784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954784 := by
  apply coveredState_split_literal (state := state_954784) 3
    state_954785 state_954874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954785
  · exact cover_954874
#print axioms cover_954784

def state_954750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_954750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954750 := by
  apply coveredState_split_literal (state := state_954750) 2
    state_954751 state_954784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954751
  · exact cover_954784
#print axioms cover_954750

def state_954983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 108)))
theorem cover_954983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954983 := by
  apply coveredState_split_literal (state := state_954983) 1
    state_954984 state_955015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954984
  · exact cover_955015
#print axioms cover_954983
end Mub6.Numerical.CircleFullD0.Forest
