import CircleFullInterface
import CircleForestAssembly0070
import CircleForestAssembly0072
import CircleForestAssembly0073
import CircleForestChunk0289
import CircleForestChunk0295
import CircleForestChunk0296
import CircleForestChunk0297
import CircleForestChunk0298
import CircleForestChunk0299
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_144931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_144931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144931 := by
  apply coveredState_split_literal (state := state_144931) 4
    state_144932 state_146307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144932
  · exact cover_146307
#print axioms cover_144931

def state_144903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_144903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144903 := by
  apply coveredState_split_literal (state := state_144903) 0
    state_144904 state_144931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144904
  · exact cover_144931
#print axioms cover_144903

def state_144779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_144779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144779 := by
  apply coveredState_split_literal (state := state_144779) 4
    state_144780 state_144903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144780
  · exact cover_144903
#print axioms cover_144779

def state_144729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_144729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144729 := by
  apply coveredState_split_literal (state := state_144729) 3
    state_144730 state_144779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144730
  · exact cover_144779
#print axioms cover_144729

def state_144487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_144487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144487 := by
  apply coveredState_split_literal (state := state_144487) 2
    state_144488 state_144729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144488
  · exact cover_144729
#print axioms cover_144487

def state_143025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_143025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143025 := by
  apply coveredState_split_literal (state := state_143025) 1
    state_143026 state_144487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143026
  · exact cover_144487
#print axioms cover_143025

def state_142847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_142847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142847 := by
  apply coveredState_split_literal (state := state_142847) 0
    state_142848 state_143025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142848
  · exact cover_143025
#print axioms cover_142847

def state_146391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_146391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146391 := by
  apply coveredState_split_literal (state := state_146391) 1
    state_146392 state_146433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146392
  · exact cover_146433
#print axioms cover_146391

def state_146473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_146473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146473 := by
  apply coveredState_split_literal (state := state_146473) 1
    state_146474 state_146509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146474
  · exact cover_146509
#print axioms cover_146473

def state_146817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 26 else 13)))
theorem cover_146817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146817 := by
  apply coveredState_split_literal (state := state_146817) 4
    state_146818 state_146865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146818
  · exact cover_146865
#print axioms cover_146817

def state_146816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 13 else 13)))
theorem cover_146816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146816 := by
  apply coveredState_split_literal (state := state_146816) 3
    state_146817 state_146882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146817
  · exact cover_146882
#print axioms cover_146816

def state_146798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 13)))
theorem cover_146798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146798 := by
  apply coveredState_split_literal (state := state_146798) 2
    state_146799 state_146816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146799
  · exact cover_146816
#print axioms cover_146798

def state_146780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 13)))
theorem cover_146780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146780 := by
  apply coveredState_split_literal (state := state_146780) 1
    state_146781 state_146798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146781
  · exact cover_146798
#print axioms cover_146780

def state_146746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 13)))
theorem cover_146746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146746 := by
  apply coveredState_split_literal (state := state_146746) 0
    state_146747 state_146780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146747
  · exact cover_146780
#print axioms cover_146746

def state_146706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 6)))
theorem cover_146706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146706 := by
  apply coveredState_split_literal (state := state_146706) 4
    state_146707 state_146746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146707
  · exact cover_146746
#print axioms cover_146706

def state_146650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 6)))
theorem cover_146650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146650 := by
  apply coveredState_split_literal (state := state_146650) 3
    state_146651 state_146706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146651
  · exact cover_146706
#print axioms cover_146650

def state_146620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_146620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146620 := by
  apply coveredState_split_literal (state := state_146620) 2
    state_146621 state_146650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146621
  · exact cover_146650
#print axioms cover_146620

def state_146562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_146562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146562 := by
  apply coveredState_split_literal (state := state_146562) 1
    state_146563 state_146620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146563
  · exact cover_146620
#print axioms cover_146562

def state_146472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_146472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146472 := by
  apply coveredState_split_literal (state := state_146472) 0
    state_146473 state_146562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146473
  · exact cover_146562
#print axioms cover_146472

def state_146471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_146471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146471 := by
  apply coveredState_split_literal (state := state_146471) 4
    state_146472 state_146901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146472
  · exact cover_146901
#print axioms cover_146471

def state_146470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_146470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146470 := by
  apply coveredState_split_literal (state := state_146470) 3
    state_146471 state_146940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146471
  · exact cover_146940
#print axioms cover_146470

def state_147034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 12)))
theorem cover_147034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147034 := by
  apply coveredState_split_literal (state := state_147034) 2
    state_147035 state_147096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147035
  · exact cover_147096
#print axioms cover_147034

def state_147164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 13)))
theorem cover_147164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147164 := by
  apply coveredState_split_literal (state := state_147164) 4
    state_147165 state_147206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147165
  · exact cover_147206
#print axioms cover_147164

def state_147118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 13)))
theorem cover_147118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147118 := by
  apply coveredState_split_literal (state := state_147118) 3
    state_147119 state_147164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147119
  · exact cover_147164
#print axioms cover_147118

def state_147112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 13)))
theorem cover_147112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147112 := by
  apply coveredState_split_literal (state := state_147112) 1
    state_147113 state_147118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147113
  · exact cover_147118
#print axioms cover_147112

def state_147102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 13)))
theorem cover_147102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147102 := by
  apply coveredState_split_literal (state := state_147102) 0
    state_147103 state_147112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147103
  · exact cover_147112
#print axioms cover_147102

def state_147101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 13)))
theorem cover_147101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147101 := by
  apply coveredState_split_literal (state := state_147101) 2
    state_147102 state_147243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147102
  · exact cover_147243
#print axioms cover_147101

def state_147033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 6)))
theorem cover_147033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147033 := by
  apply coveredState_split_literal (state := state_147033) 4
    state_147034 state_147101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147034
  · exact cover_147101
#print axioms cover_147033

def state_147025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_147025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147025 := by
  apply coveredState_split_literal (state := state_147025) 3
    state_147026 state_147033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147026
  · exact cover_147033
#print axioms cover_147025

def state_147009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_147009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147009 := by
  apply coveredState_split_literal (state := state_147009) 1
    state_147010 state_147025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147010
  · exact cover_147025
#print axioms cover_147009

def state_146993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_146993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146993 := by
  apply coveredState_split_literal (state := state_146993) 0
    state_146994 state_147009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146994
  · exact cover_147009
#print axioms cover_146993

def state_146992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_146992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146992 := by
  apply coveredState_split_literal (state := state_146992) 4
    state_146993 state_147246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146993
  · exact cover_147246
#print axioms cover_146992
end Mub6.Numerical.CircleFullPrototype.Forest
