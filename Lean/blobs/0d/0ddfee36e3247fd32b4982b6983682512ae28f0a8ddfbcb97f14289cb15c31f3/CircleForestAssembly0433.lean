import CircleFullInterface
import CircleForestAssembly0432
import CircleForestChunk1694
import CircleForestChunk1695
import CircleForestChunk1696
import CircleForestChunk1697
import CircleForestChunk1698
import CircleForestChunk1699
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2279678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
theorem cover_2279678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279678 := by
  apply coveredState_split_literal (state := state_2279678) 1
    state_2279679 state_2279930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279679
  · exact cover_2279930
#print axioms cover_2279678

def state_2279677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 22 else 30)))
theorem cover_2279677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279677 := by
  apply coveredState_split_literal (state := state_2279677) 3
    state_2279678 state_2279959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279678
  · exact cover_2279959
#print axioms cover_2279677

def state_2279998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
theorem cover_2279998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279998 := by
  apply coveredState_split_literal (state := state_2279998) 4
    state_2279999 state_2280050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279999
  · exact cover_2280050
#print axioms cover_2279998

def state_2279996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
theorem cover_2279996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279996 := by
  apply coveredState_split_literal (state := state_2279996) 0
    state_2279997 state_2279998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279997
  · exact cover_2279998
#print axioms cover_2279996

def state_2279995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
theorem cover_2279995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279995 := by
  apply coveredState_split_literal (state := state_2279995) 1
    state_2279996 state_2280071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279996
  · exact cover_2280071
#print axioms cover_2279995

def state_2279994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 30)))
theorem cover_2279994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279994 := by
  apply coveredState_split_literal (state := state_2279994) 3
    state_2279995 state_2280092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279995
  · exact cover_2280092
#print axioms cover_2279994

def state_2279676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 30)))
theorem cover_2279676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279676 := by
  apply coveredState_split_literal (state := state_2279676) 2
    state_2279677 state_2279994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279677
  · exact cover_2279994
#print axioms cover_2279676

def state_2279675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2279675 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279675 := by
  apply coveredState_split_literal (state := state_2279675) 4
    state_2279676 state_2280143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279676
  · exact cover_2280143
#print axioms cover_2279675

def state_2279674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2279674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279674 := by
  apply coveredState_split_literal (state := state_2279674) 1
    state_2279675 state_2280188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279675
  · exact cover_2280188
#print axioms cover_2279674

def state_2280254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 88 else 60)))
theorem cover_2280254 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280254 := by
  apply coveredState_split_literal (state := state_2280254) 1
    state_2280255 state_2280308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280255
  · exact cover_2280308
#print axioms cover_2280254

def state_2280253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 88 else 60)))
theorem cover_2280253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280253 := by
  apply coveredState_split_literal (state := state_2280253) 0
    state_2280254 state_2280321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280254
  · exact cover_2280321
#print axioms cover_2280253

def state_2280346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 89 else 60)))
theorem cover_2280346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280346 := by
  apply coveredState_split_literal (state := state_2280346) 0
    state_2280347 state_2280392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280347
  · exact cover_2280392
#print axioms cover_2280346

def state_2280252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 44 else 60)))
theorem cover_2280252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280252 := by
  apply coveredState_split_literal (state := state_2280252) 3
    state_2280253 state_2280346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280253
  · exact cover_2280346
#print axioms cover_2280252

def state_2280226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 60)))
theorem cover_2280226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280226 := by
  apply coveredState_split_literal (state := state_2280226) 2
    state_2280227 state_2280252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280227
  · exact cover_2280252
#print axioms cover_2280226

def state_2280426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 88 else 61)))
theorem cover_2280426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280426 := by
  apply coveredState_split_literal (state := state_2280426) 0
    state_2280427 state_2280466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280427
  · exact cover_2280466
#print axioms cover_2280426

def state_2280425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 44 else 61)))
theorem cover_2280425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280425 := by
  apply coveredState_split_literal (state := state_2280425) 3
    state_2280426 state_2280505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280426
  · exact cover_2280505
#print axioms cover_2280425

def state_2280411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 61)))
theorem cover_2280411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280411 := by
  apply coveredState_split_literal (state := state_2280411) 2
    state_2280412 state_2280425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280412
  · exact cover_2280425
#print axioms cover_2280411

def state_2280225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
theorem cover_2280225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280225 := by
  apply coveredState_split_literal (state := state_2280225) 4
    state_2280226 state_2280411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280226
  · exact cover_2280411
#print axioms cover_2280225

def state_2280224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
theorem cover_2280224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280224 := by
  apply coveredState_split_literal (state := state_2280224) 1
    state_2280225 state_2280516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280225
  · exact cover_2280516
#print axioms cover_2280224

def state_2280561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
theorem cover_2280561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280561 := by
  apply coveredState_split_literal (state := state_2280561) 1
    state_2280562 state_2280617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280562
  · exact cover_2280617
#print axioms cover_2280561

def state_2280223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
theorem cover_2280223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280223 := by
  apply coveredState_split_literal (state := state_2280223) 0
    state_2280224 state_2280561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280224
  · exact cover_2280561
#print axioms cover_2280223

def state_2280222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 22 else 30)))
theorem cover_2280222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280222 := by
  apply coveredState_split_literal (state := state_2280222) 3
    state_2280223 state_2280636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280223
  · exact cover_2280636
#print axioms cover_2280222

def state_2280735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 60)))
theorem cover_2280735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280735 := by
  apply coveredState_split_literal (state := state_2280735) 1
    state_2280736 state_2280753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280736
  · exact cover_2280753
#print axioms cover_2280735

def state_2280734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 60)))
theorem cover_2280734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280734 := by
  apply coveredState_split_literal (state := state_2280734) 0
    state_2280735 state_2280810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280735
  · exact cover_2280810
#print axioms cover_2280734

def state_2280680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 44 else 60)))
theorem cover_2280680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280680 := by
  apply coveredState_split_literal (state := state_2280680) 3
    state_2280681 state_2280734
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280681
  · exact cover_2280734
#print axioms cover_2280680

def state_2280679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 60)))
theorem cover_2280679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280679 := by
  apply coveredState_split_literal (state := state_2280679) 2
    state_2280680 state_2280825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280680
  · exact cover_2280825
#print axioms cover_2280679

def state_2280873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 113) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
theorem cover_2280873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280873 := by
  apply coveredState_split_literal (state := state_2280873) 4
    state_2280874 state_2280933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280874
  · exact cover_2280933
#print axioms cover_2280873

def state_2280839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
theorem cover_2280839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280839 := by
  apply coveredState_split_literal (state := state_2280839) 1
    state_2280840 state_2280873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280840
  · exact cover_2280873
#print axioms cover_2280839

def state_2281023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 113) else (if j.val < 3 then 188 else (if j.val < 4 then 88 else 123)))
theorem cover_2281023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281023 := by
  apply coveredState_split_literal (state := state_2281023) 3
    state_2281024 state_2281055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281024
  · exact cover_2281055
#print axioms cover_2281023

def state_2281088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 113) else (if j.val < 3 then 189 else (if j.val < 4 then 88 else 123)))
theorem cover_2281088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281088 := by
  apply coveredState_split_literal (state := state_2281088) 3
    state_2281089 state_2281112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281089
  · exact cover_2281112
#print axioms cover_2281088

def state_2281022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 113) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 123)))
theorem cover_2281022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281022 := by
  apply coveredState_split_literal (state := state_2281022) 2
    state_2281023 state_2281088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281023
  · exact cover_2281088
#print axioms cover_2281022

def state_2280974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 113) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
theorem cover_2280974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280974 := by
  apply coveredState_split_literal (state := state_2280974) 4
    state_2280975 state_2281022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280975
  · exact cover_2281022
#print axioms cover_2280974
end Mub6.Numerical.CircleFullD0.Forest
