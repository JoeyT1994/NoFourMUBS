import CircleFullInterface
import CircleForestAssembly0524
import CircleForestAssembly0532
import CircleForestChunk2100
import CircleForestChunk2101
import CircleForestChunk2102
import CircleForestChunk2103
import CircleForestChunk2104
import CircleForestChunk2105
import CircleForestChunk2106
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2584667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_2584667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584667 := by
  apply coveredState_split_literal (state := state_2584667) 4
    state_2584668 state_2584773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584668
  · exact cover_2584773
#print axioms cover_2584667

def state_2584666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2584666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584666 := by
  apply coveredState_split_literal (state := state_2584666) 3
    state_2584667 state_2584790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584667
  · exact cover_2584790
#print axioms cover_2584666

def state_2584658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2584658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584658 := by
  apply coveredState_split_literal (state := state_2584658) 2
    state_2584659 state_2584666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584659
  · exact cover_2584666
#print axioms cover_2584658

def state_2584622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2584622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584622 := by
  apply coveredState_split_literal (state := state_2584622) 1
    state_2584623 state_2584658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584623
  · exact cover_2584658
#print axioms cover_2584622

def state_2576616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2576616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576616 := by
  apply coveredState_split_literal (state := state_2576616) 0
    state_2576617 state_2584622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576617
  · exact cover_2584622
#print axioms cover_2576616

def state_2584795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2584795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584795 := by
  apply coveredState_split_literal (state := state_2584795) 0
    state_2584796 state_2584843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584796
  · exact cover_2584843
#print axioms cover_2584795

def state_2576615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_2576615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576615 := by
  apply coveredState_split_literal (state := state_2576615) 4
    state_2576616 state_2584795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576616
  · exact cover_2584795
#print axioms cover_2576615

def state_2573593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2573593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573593 := by
  apply coveredState_split_literal (state := state_2573593) 3
    state_2573594 state_2576615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573594
  · exact cover_2576615
#print axioms cover_2573593

def state_2585023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 19)))
theorem cover_2585023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585023 := by
  apply coveredState_split_literal (state := state_2585023) 0
    state_2585024 state_2585047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585024
  · exact cover_2585047
#print axioms cover_2585023

def state_2585216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 33) else (if j.val < 3 then 49 else (if j.val < 4 then 45 else 39)))
theorem cover_2585216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585216 := by
  apply coveredState_split_literal (state := state_2585216) 2
    state_2585217 state_2585256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585217
  · exact cover_2585256
#print axioms cover_2585216

def state_2585164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 45 else 39)))
theorem cover_2585164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585164 := by
  apply coveredState_split_literal (state := state_2585164) 1
    state_2585165 state_2585216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585165
  · exact cover_2585216
#print axioms cover_2585164

def state_2585142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 45 else 19)))
theorem cover_2585142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585142 := by
  apply coveredState_split_literal (state := state_2585142) 4
    state_2585143 state_2585164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585143
  · exact cover_2585164
#print axioms cover_2585142

def state_2585122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 22 else 19)))
theorem cover_2585122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585122 := by
  apply coveredState_split_literal (state := state_2585122) 3
    state_2585123 state_2585142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585123
  · exact cover_2585142
#print axioms cover_2585122

def state_2585104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 22 else 19)))
theorem cover_2585104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585104 := by
  apply coveredState_split_literal (state := state_2585104) 0
    state_2585105 state_2585122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585105
  · exact cover_2585122
#print axioms cover_2585104

def state_2585022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 19)))
theorem cover_2585022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585022 := by
  apply coveredState_split_literal (state := state_2585022) 2
    state_2585023 state_2585104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585023
  · exact cover_2585104
#print axioms cover_2585022

def state_2585300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 45 else 19)))
theorem cover_2585300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585300 := by
  apply coveredState_split_literal (state := state_2585300) 4
    state_2585301 state_2585324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585301
  · exact cover_2585324
#print axioms cover_2585300

def state_2585294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 19)))
theorem cover_2585294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585294 := by
  apply coveredState_split_literal (state := state_2585294) 3
    state_2585295 state_2585300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585295
  · exact cover_2585300
#print axioms cover_2585294

def state_2585282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 19)))
theorem cover_2585282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585282 := by
  apply coveredState_split_literal (state := state_2585282) 0
    state_2585283 state_2585294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585283
  · exact cover_2585294
#print axioms cover_2585282

def state_2585379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 22 else 19)))
theorem cover_2585379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585379 := by
  apply coveredState_split_literal (state := state_2585379) 0
    state_2585380 state_2585385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585380
  · exact cover_2585385
#print axioms cover_2585379

def state_2585281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 19)))
theorem cover_2585281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585281 := by
  apply coveredState_split_literal (state := state_2585281) 2
    state_2585282 state_2585379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585282
  · exact cover_2585379
#print axioms cover_2585281

def state_2585021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 19)))
theorem cover_2585021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585021 := by
  apply coveredState_split_literal (state := state_2585021) 1
    state_2585022 state_2585281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585022
  · exact cover_2585281
#print axioms cover_2585021

def state_2585011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 9)))
theorem cover_2585011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585011 := by
  apply coveredState_split_literal (state := state_2585011) 4
    state_2585012 state_2585021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585012
  · exact cover_2585021
#print axioms cover_2585011

def state_2585615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 35) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 38)))
theorem cover_2585615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585615 := by
  apply coveredState_split_literal (state := state_2585615) 2
    state_2585616 state_2585635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585616
  · exact cover_2585635
#print axioms cover_2585615

def state_2585599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 38)))
theorem cover_2585599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585599 := by
  apply coveredState_split_literal (state := state_2585599) 1
    state_2585600 state_2585615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585600
  · exact cover_2585615
#print axioms cover_2585599

def state_2585742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 35) else (if j.val < 3 then 97 else (if j.val < 4 then 46 else 39)))
theorem cover_2585742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585742 := by
  apply coveredState_split_literal (state := state_2585742) 3
    state_2585743 state_2585800
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585743
  · exact cover_2585800
#print axioms cover_2585742

def state_2585722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 35) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 39)))
theorem cover_2585722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585722 := by
  apply coveredState_split_literal (state := state_2585722) 2
    state_2585723 state_2585742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585723
  · exact cover_2585742
#print axioms cover_2585722

def state_2585690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 39)))
theorem cover_2585690 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585690 := by
  apply coveredState_split_literal (state := state_2585690) 1
    state_2585691 state_2585722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585691
  · exact cover_2585722
#print axioms cover_2585690

def state_2585598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 19)))
theorem cover_2585598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585598 := by
  apply coveredState_split_literal (state := state_2585598) 4
    state_2585599 state_2585690
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585599
  · exact cover_2585690
#print axioms cover_2585598

def state_2585564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 19)))
theorem cover_2585564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585564 := by
  apply coveredState_split_literal (state := state_2585564) 0
    state_2585565 state_2585598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585565
  · exact cover_2585598
#print axioms cover_2585564

def state_2585563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 19)))
theorem cover_2585563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585563 := by
  apply coveredState_split_literal (state := state_2585563) 3
    state_2585564 state_2585839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585564
  · exact cover_2585839
#print axioms cover_2585563

def state_2585946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 34) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 39)))
theorem cover_2585946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585946 := by
  apply coveredState_split_literal (state := state_2585946) 2
    state_2585947 state_2585998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585947
  · exact cover_2585998
#print axioms cover_2585946

def state_2586036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 46 else 39)))
theorem cover_2586036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586036 := by
  apply coveredState_split_literal (state := state_2586036) 3
    state_2586037 state_2586066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586037
  · exact cover_2586066
#print axioms cover_2586036
end Mub6.Numerical.CircleFullD0.Forest
