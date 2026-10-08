import CircleFullInterface
import CircleForestAssembly0219
import CircleForestChunk0829
import CircleForestChunk0830
import CircleForestChunk0831
import CircleForestChunk0832
import CircleForestChunk0833
import CircleForestChunk0834
import CircleForestChunk0835
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1499710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 28)))
theorem cover_1499710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499710 := by
  apply coveredState_split_literal (state := state_1499710) 3
    state_1499711 state_1499978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499711
  · exact cover_1499978
#print axioms cover_1499710

def state_1499664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 28)))
theorem cover_1499664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499664 := by
  apply coveredState_split_literal (state := state_1499664) 0
    state_1499665 state_1499710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499665
  · exact cover_1499710
#print axioms cover_1499664

def state_1500131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 104 else 58)))
theorem cover_1500131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500131 := by
  apply coveredState_split_literal (state := state_1500131) 4
    state_1500132 state_1500171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500132
  · exact cover_1500171
#print axioms cover_1500131

def state_1500130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 58)))
theorem cover_1500130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500130 := by
  apply coveredState_split_literal (state := state_1500130) 3
    state_1500131 state_1500200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500131
  · exact cover_1500200
#print axioms cover_1500130

def state_1500114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 58)))
theorem cover_1500114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500114 := by
  apply coveredState_split_literal (state := state_1500114) 0
    state_1500115 state_1500130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500115
  · exact cover_1500130
#print axioms cover_1500114

def state_1500233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 41) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 58)))
theorem cover_1500233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500233 := by
  apply coveredState_split_literal (state := state_1500233) 3
    state_1500234 state_1500291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500234
  · exact cover_1500291
#print axioms cover_1500233

def state_1500213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 41) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 58)))
theorem cover_1500213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500213 := by
  apply coveredState_split_literal (state := state_1500213) 0
    state_1500214 state_1500233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500214
  · exact cover_1500233
#print axioms cover_1500213

def state_1500113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 41) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 58)))
theorem cover_1500113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500113 := by
  apply coveredState_split_literal (state := state_1500113) 2
    state_1500114 state_1500213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500114
  · exact cover_1500213
#print axioms cover_1500113

def state_1500085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 58)))
theorem cover_1500085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500085 := by
  apply coveredState_split_literal (state := state_1500085) 1
    state_1500086 state_1500113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500086
  · exact cover_1500113
#print axioms cover_1500085

def state_1500084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 29)))
theorem cover_1500084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500084 := by
  apply coveredState_split_literal (state := state_1500084) 4
    state_1500085 state_1500344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500085
  · exact cover_1500344
#print axioms cover_1500084

def state_1500379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 29)))
theorem cover_1500379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500379 := by
  apply coveredState_split_literal (state := state_1500379) 4
    state_1500380 state_1500443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500380
  · exact cover_1500443
#print axioms cover_1500379

def state_1500083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
theorem cover_1500083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500083 := by
  apply coveredState_split_literal (state := state_1500083) 3
    state_1500084 state_1500379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500084
  · exact cover_1500379
#print axioms cover_1500083

def state_1500069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
theorem cover_1500069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500069 := by
  apply coveredState_split_literal (state := state_1500069) 0
    state_1500070 state_1500083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500070
  · exact cover_1500083
#print axioms cover_1500069

def state_1499663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 14)))
theorem cover_1499663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499663 := by
  apply coveredState_split_literal (state := state_1499663) 4
    state_1499664 state_1500069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499664
  · exact cover_1500069
#print axioms cover_1499663

def state_1499662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 14)))
theorem cover_1499662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499662 := by
  apply coveredState_split_literal (state := state_1499662) 3
    state_1499663 state_1500456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499663
  · exact cover_1500456
#print axioms cover_1499662

def state_1500482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 14)))
theorem cover_1500482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500482 := by
  apply coveredState_split_literal (state := state_1500482) 4
    state_1500483 state_1500528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500483
  · exact cover_1500528
#print axioms cover_1500482

def state_1500563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 14)))
theorem cover_1500563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500563 := by
  apply coveredState_split_literal (state := state_1500563) 4
    state_1500564 state_1500587
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500564
  · exact cover_1500587
#print axioms cover_1500563

def state_1500481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 14)))
theorem cover_1500481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500481 := by
  apply coveredState_split_literal (state := state_1500481) 3
    state_1500482 state_1500563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500482
  · exact cover_1500563
#print axioms cover_1500481

def state_1499661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1499661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499661 := by
  apply coveredState_split_literal (state := state_1499661) 2
    state_1499662 state_1500481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499662
  · exact cover_1500481
#print axioms cover_1499661

def state_1500696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 58)))
theorem cover_1500696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500696 := by
  apply coveredState_split_literal (state := state_1500696) 0
    state_1500697 state_1500720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500697
  · exact cover_1500720
#print axioms cover_1500696

def state_1500772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 58)))
theorem cover_1500772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500772 := by
  apply coveredState_split_literal (state := state_1500772) 1
    state_1500773 state_1500836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500773
  · exact cover_1500836
#print axioms cover_1500772

def state_1500771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 58)))
theorem cover_1500771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500771 := by
  apply coveredState_split_literal (state := state_1500771) 3
    state_1500772 state_1500851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500772
  · exact cover_1500851
#print axioms cover_1500771

def state_1500761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 58)))
theorem cover_1500761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500761 := by
  apply coveredState_split_literal (state := state_1500761) 0
    state_1500762 state_1500771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500762
  · exact cover_1500771
#print axioms cover_1500761

def state_1500695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 58)))
theorem cover_1500695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500695 := by
  apply coveredState_split_literal (state := state_1500695) 2
    state_1500696 state_1500761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500696
  · exact cover_1500761
#print axioms cover_1500695

def state_1500910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 104 else 59)))
theorem cover_1500910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500910 := by
  apply coveredState_split_literal (state := state_1500910) 1
    state_1500911 state_1500938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500911
  · exact cover_1500938
#print axioms cover_1500910

def state_1500909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 59)))
theorem cover_1500909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500909 := by
  apply coveredState_split_literal (state := state_1500909) 3
    state_1500910 state_1500993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500910
  · exact cover_1500993
#print axioms cover_1500909

def state_1500903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 59)))
theorem cover_1500903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500903 := by
  apply coveredState_split_literal (state := state_1500903) 0
    state_1500904 state_1500909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500904
  · exact cover_1500909
#print axioms cover_1500903

def state_1501062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 208 else 118)))
theorem cover_1501062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501062 := by
  apply coveredState_split_literal (state := state_1501062) 1
    state_1501063 state_1501094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501063
  · exact cover_1501094
#print axioms cover_1501062

def state_1501061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 118)))
theorem cover_1501061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501061 := by
  apply coveredState_split_literal (state := state_1501061) 3
    state_1501062 state_1501135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501062
  · exact cover_1501135
#print axioms cover_1501061

def state_1501043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 118)))
theorem cover_1501043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501043 := by
  apply coveredState_split_literal (state := state_1501043) 0
    state_1501044 state_1501061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501044
  · exact cover_1501061
#print axioms cover_1501043

def state_1501042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 118)))
theorem cover_1501042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501042 := by
  apply coveredState_split_literal (state := state_1501042) 2
    state_1501043 state_1501190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501043
  · exact cover_1501190
#print axioms cover_1501042

def state_1501200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 119)))
theorem cover_1501200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501200 := by
  apply coveredState_split_literal (state := state_1501200) 0
    state_1501201 state_1501210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1501201
  · exact cover_1501210
#print axioms cover_1501200
end Mub6.Numerical.CircleFullD0.Forest
