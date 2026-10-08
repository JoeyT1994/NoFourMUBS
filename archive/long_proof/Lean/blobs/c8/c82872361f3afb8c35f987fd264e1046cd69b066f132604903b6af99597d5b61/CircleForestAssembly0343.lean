import CircleFullInterface
import CircleForestAssembly0342
import CircleForestChunk1322
import CircleForestChunk1326
import CircleForestChunk1327
import CircleForestChunk1328
import CircleForestChunk1329
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1618904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
theorem cover_1618904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618904 := by
  apply coveredState_split_literal (state := state_1618904) 4
    state_1618905 state_1619090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618905
  · exact cover_1619090
#print axioms cover_1618904

def state_1618892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
theorem cover_1618892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618892 := by
  apply coveredState_split_literal (state := state_1618892) 0
    state_1618893 state_1618904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618893
  · exact cover_1618904
#print axioms cover_1618892

def state_1618886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 4)))
theorem cover_1618886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618886 := by
  apply coveredState_split_literal (state := state_1618886) 3
    state_1618887 state_1618892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618887
  · exact cover_1618892
#print axioms cover_1618886

def state_1619217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 47 else 16)))
theorem cover_1619217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619217 := by
  apply coveredState_split_literal (state := state_1619217) 0
    state_1619218 state_1619275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619218
  · exact cover_1619275
#print axioms cover_1619217

def state_1619216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 26 else (if j.val < 4 then 47 else 16)))
theorem cover_1619216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619216 := by
  apply coveredState_split_literal (state := state_1619216) 2
    state_1619217 state_1619288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619217
  · exact cover_1619288
#print axioms cover_1619216

def state_1619215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 47 else 16)))
theorem cover_1619215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619215 := by
  apply coveredState_split_literal (state := state_1619215) 1
    state_1619216 state_1619303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619216
  · exact cover_1619303
#print axioms cover_1619215

def state_1619207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 16)))
theorem cover_1619207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619207 := by
  apply coveredState_split_literal (state := state_1619207) 3
    state_1619208 state_1619215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619208
  · exact cover_1619215
#print axioms cover_1619207

def state_1619206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 8)))
theorem cover_1619206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619206 := by
  apply coveredState_split_literal (state := state_1619206) 4
    state_1619207 state_1619310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619207
  · exact cover_1619310
#print axioms cover_1619206

def state_1619152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 8)))
theorem cover_1619152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619152 := by
  apply coveredState_split_literal (state := state_1619152) 0
    state_1619153 state_1619206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619153
  · exact cover_1619206
#print axioms cover_1619152

def state_1619151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 23 else 8)))
theorem cover_1619151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619151 := by
  apply coveredState_split_literal (state := state_1619151) 2
    state_1619152 state_1619341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619152
  · exact cover_1619341
#print axioms cover_1619151

def state_1619150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 23 else 8)))
theorem cover_1619150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619150 := by
  apply coveredState_split_literal (state := state_1619150) 1
    state_1619151 state_1619364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619151
  · exact cover_1619364
#print axioms cover_1619150

def state_1619134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 8)))
theorem cover_1619134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619134 := by
  apply coveredState_split_literal (state := state_1619134) 3
    state_1619135 state_1619150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619135
  · exact cover_1619150
#print axioms cover_1619134

def state_1619133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
theorem cover_1619133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619133 := by
  apply coveredState_split_literal (state := state_1619133) 4
    state_1619134 state_1619375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619134
  · exact cover_1619375
#print axioms cover_1619133

def state_1619113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
theorem cover_1619113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619113 := by
  apply coveredState_split_literal (state := state_1619113) 0
    state_1619114 state_1619133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619114
  · exact cover_1619133
#print axioms cover_1619113

def state_1619105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 4)))
theorem cover_1619105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619105 := by
  apply coveredState_split_literal (state := state_1619105) 3
    state_1619106 state_1619113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619106
  · exact cover_1619113
#print axioms cover_1619105

def state_1618885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1618885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618885 := by
  apply coveredState_split_literal (state := state_1618885) 2
    state_1618886 state_1619105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618886
  · exact cover_1619105
#print axioms cover_1618885

def state_1618083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1618083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618083 := by
  apply coveredState_split_literal (state := state_1618083) 1
    state_1618084 state_1618885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618084
  · exact cover_1618885
#print axioms cover_1618083

def state_1618082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_1618082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618082 := by
  apply coveredState_split_literal (state := state_1618082) 4
    state_1618083 state_1619416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618083
  · exact cover_1619416
#print axioms cover_1618082

def state_1618076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_1618076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618076 := by
  apply coveredState_split_literal (state := state_1618076) 3
    state_1618077 state_1618082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618077
  · exact cover_1618082
#print axioms cover_1618076

def state_1618075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1618075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618075 := by
  apply coveredState_split_literal (state := state_1618075) 2
    state_1618076 state_1619435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618076
  · exact cover_1619435
#print axioms cover_1618075

def state_1619474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1619474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619474 := by
  apply coveredState_split_literal (state := state_1619474) 2
    state_1619475 state_1619524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619475
  · exact cover_1619524
#print axioms cover_1619474

def state_1618074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1618074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618074 := by
  apply coveredState_split_literal (state := state_1618074) 1
    state_1618075 state_1619474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618075
  · exact cover_1619474
#print axioms cover_1618074

def state_1619576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
theorem cover_1619576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619576 := by
  apply coveredState_split_literal (state := state_1619576) 4
    state_1619577 state_1619628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619577
  · exact cover_1619628
#print axioms cover_1619576

def state_1619572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 4)))
theorem cover_1619572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619572 := by
  apply coveredState_split_literal (state := state_1619572) 3
    state_1619573 state_1619576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619573
  · exact cover_1619576
#print axioms cover_1619572

def state_1619566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1619566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619566 := by
  apply coveredState_split_literal (state := state_1619566) 2
    state_1619567 state_1619572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619567
  · exact cover_1619572
#print axioms cover_1619566

def state_1619655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1619655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619655 := by
  apply coveredState_split_literal (state := state_1619655) 2
    state_1619656 state_1619669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619656
  · exact cover_1619669
#print axioms cover_1619655

def state_1619565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1619565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619565 := by
  apply coveredState_split_literal (state := state_1619565) 1
    state_1619566 state_1619655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619566
  · exact cover_1619655
#print axioms cover_1619565

def state_1619564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1619564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619564 := by
  apply coveredState_split_literal (state := state_1619564) 0
    state_1619565 state_1619730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619565
  · exact cover_1619730
#print axioms cover_1619564

def state_1619563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_1619563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619563 := by
  apply coveredState_split_literal (state := state_1619563) 4
    state_1619564 state_1619739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619564
  · exact cover_1619739
#print axioms cover_1619563

def state_1619561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_1619561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619561 := by
  apply coveredState_split_literal (state := state_1619561) 3
    state_1619562 state_1619563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619562
  · exact cover_1619563
#print axioms cover_1619561

def state_1619761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
theorem cover_1619761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619761 := by
  apply coveredState_split_literal (state := state_1619761) 0
    state_1619762 state_1619825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619762
  · exact cover_1619825
#print axioms cover_1619761

def state_1619760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_1619760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619760 := by
  apply coveredState_split_literal (state := state_1619760) 4
    state_1619761 state_1619852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619761
  · exact cover_1619852
#print axioms cover_1619760
end Mub6.Numerical.CircleFullD0.Forest
