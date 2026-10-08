import CircleFullInterface
import CircleForestAssembly0550
import CircleForestAssembly0551
import CircleForestChunk2180
import CircleForestChunk2181
import CircleForestChunk2182
import CircleForestChunk2183
import CircleForestChunk2184
import CircleForestChunk2185
import CircleForestChunk2186
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2603335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2603335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603335 := by
  apply coveredState_split_literal (state := state_2603335) 3
    state_2603336 state_2603529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603336
  · exact cover_2603529
#print axioms cover_2603335

def state_2602423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2602423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602423 := by
  apply coveredState_split_literal (state := state_2602423) 2
    state_2602424 state_2603335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602424
  · exact cover_2603335
#print axioms cover_2602423

def state_2600941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2600941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2600941 := by
  apply coveredState_split_literal (state := state_2600941) 1
    state_2600942 state_2602423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600942
  · exact cover_2602423
#print axioms cover_2600941

def state_2603978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2603978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603978 := by
  apply coveredState_split_literal (state := state_2603978) 0
    state_2603979 state_2604022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603979
  · exact cover_2604022
#print axioms cover_2603978

def state_2604072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2604072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604072 := by
  apply coveredState_split_literal (state := state_2604072) 1
    state_2604073 state_2604106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604073
  · exact cover_2604106
#print axioms cover_2604072

def state_2604071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2604071 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604071 := by
  apply coveredState_split_literal (state := state_2604071) 0
    state_2604072 state_2604163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604072
  · exact cover_2604163
#print axioms cover_2604071

def state_2603977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2603977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603977 := by
  apply coveredState_split_literal (state := state_2603977) 4
    state_2603978 state_2604071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603978
  · exact cover_2604071
#print axioms cover_2603977

def state_2604224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2604224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604224 := by
  apply coveredState_split_literal (state := state_2604224) 2
    state_2604225 state_2604252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604225
  · exact cover_2604252
#print axioms cover_2604224

def state_2604176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2604176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604176 := by
  apply coveredState_split_literal (state := state_2604176) 1
    state_2604177 state_2604224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604177
  · exact cover_2604224
#print axioms cover_2604176

def state_2604292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2604292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604292 := by
  apply coveredState_split_literal (state := state_2604292) 2
    state_2604293 state_2604322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604293
  · exact cover_2604322
#print axioms cover_2604292

def state_2604469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2604469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604469 := by
  apply coveredState_split_literal (state := state_2604469) 1
    state_2604470 state_2604523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604470
  · exact cover_2604523
#print axioms cover_2604469

def state_2604457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_2604457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604457 := by
  apply coveredState_split_literal (state := state_2604457) 4
    state_2604458 state_2604469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604458
  · exact cover_2604469
#print axioms cover_2604457

def state_2604425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2604425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604425 := by
  apply coveredState_split_literal (state := state_2604425) 3
    state_2604426 state_2604457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604426
  · exact cover_2604457
#print axioms cover_2604425

def state_2604375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2604375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604375 := by
  apply coveredState_split_literal (state := state_2604375) 2
    state_2604376 state_2604425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604376
  · exact cover_2604425
#print axioms cover_2604375

def state_2604291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2604291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604291 := by
  apply coveredState_split_literal (state := state_2604291) 1
    state_2604292 state_2604375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604292
  · exact cover_2604375
#print axioms cover_2604291

def state_2604175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2604175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604175 := by
  apply coveredState_split_literal (state := state_2604175) 0
    state_2604176 state_2604291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604176
  · exact cover_2604291
#print axioms cover_2604175

def state_2604563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_2604563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604563 := by
  apply coveredState_split_literal (state := state_2604563) 0
    state_2604564 state_2604597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604564
  · exact cover_2604597
#print axioms cover_2604563

def state_2604562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_2604562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604562 := by
  apply coveredState_split_literal (state := state_2604562) 4
    state_2604563 state_2604652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604563
  · exact cover_2604652
#print axioms cover_2604562

def state_2604561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_2604561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604561 := by
  apply coveredState_split_literal (state := state_2604561) 3
    state_2604562 state_2604663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604562
  · exact cover_2604663
#print axioms cover_2604561

def state_2604560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2604560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604560 := by
  apply coveredState_split_literal (state := state_2604560) 2
    state_2604561 state_2604696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604561
  · exact cover_2604696
#print axioms cover_2604560

def state_2604559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2604559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604559 := by
  apply coveredState_split_literal (state := state_2604559) 1
    state_2604560 state_2604741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604560
  · exact cover_2604741
#print axioms cover_2604559

def state_2604803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2604803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604803 := by
  apply coveredState_split_literal (state := state_2604803) 2
    state_2604804 state_2604867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604804
  · exact cover_2604867
#print axioms cover_2604803

def state_2604802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2604802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604802 := by
  apply coveredState_split_literal (state := state_2604802) 1
    state_2604803 state_2604884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604803
  · exact cover_2604884
#print axioms cover_2604802

def state_2604558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2604558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604558 := by
  apply coveredState_split_literal (state := state_2604558) 0
    state_2604559 state_2604802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604559
  · exact cover_2604802
#print axioms cover_2604558

def state_2604174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_2604174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604174 := by
  apply coveredState_split_literal (state := state_2604174) 4
    state_2604175 state_2604558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604175
  · exact cover_2604558
#print axioms cover_2604174

def state_2603976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2603976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603976 := by
  apply coveredState_split_literal (state := state_2603976) 3
    state_2603977 state_2604174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603977
  · exact cover_2604174
#print axioms cover_2603976

def state_2604946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2604946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604946 := by
  apply coveredState_split_literal (state := state_2604946) 1
    state_2604947 state_2604984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604947
  · exact cover_2604984
#print axioms cover_2604946

def state_2605219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_2605219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605219 := by
  apply coveredState_split_literal (state := state_2605219) 3
    state_2605220 state_2605259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605220
  · exact cover_2605259
#print axioms cover_2605219

def state_2605195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_2605195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605195 := by
  apply coveredState_split_literal (state := state_2605195) 1
    state_2605196 state_2605219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605196
  · exact cover_2605219
#print axioms cover_2605195

def state_2605163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_2605163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605163 := by
  apply coveredState_split_literal (state := state_2605163) 4
    state_2605164 state_2605195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605164
  · exact cover_2605195
#print axioms cover_2605163

def state_2605111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_2605111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605111 := by
  apply coveredState_split_literal (state := state_2605111) 3
    state_2605112 state_2605163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605112
  · exact cover_2605163
#print axioms cover_2605111

def state_2605077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2605077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605077 := by
  apply coveredState_split_literal (state := state_2605077) 2
    state_2605078 state_2605111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605078
  · exact cover_2605111
#print axioms cover_2605077
end Mub6.Numerical.CircleFullD0.Forest
