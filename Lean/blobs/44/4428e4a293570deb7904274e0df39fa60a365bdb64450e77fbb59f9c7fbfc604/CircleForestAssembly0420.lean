import CircleFullInterface
import CircleForestAssembly0419
import CircleForestChunk1638
import CircleForestChunk1639
import CircleForestChunk1640
import CircleForestChunk1641
import CircleForestChunk1642
import CircleForestChunk1643
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2266802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 22 else (if j.val < 4 then 46 else 28)))
theorem cover_2266802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266802 := by
  apply coveredState_split_literal (state := state_2266802) 2
    state_2266803 state_2266854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266803
  · exact cover_2266854
#print axioms cover_2266802

def state_2266796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 46 else 28)))
theorem cover_2266796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266796 := by
  apply coveredState_split_literal (state := state_2266796) 1
    state_2266797 state_2266802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266797
  · exact cover_2266802
#print axioms cover_2266796

def state_2266795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 28)))
theorem cover_2266795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266795 := by
  apply coveredState_split_literal (state := state_2266795) 3
    state_2266796 state_2266869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266796
  · exact cover_2266869
#print axioms cover_2266795

def state_2266609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 28)))
theorem cover_2266609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266609 := by
  apply coveredState_split_literal (state := state_2266609) 0
    state_2266610 state_2266795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266610
  · exact cover_2266795
#print axioms cover_2266609

def state_2266608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 14)))
theorem cover_2266608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266608 := by
  apply coveredState_split_literal (state := state_2266608) 4
    state_2266609 state_2266878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266609
  · exact cover_2266878
#print axioms cover_2266608

def state_2266376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 14)))
theorem cover_2266376 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266376 := by
  apply coveredState_split_literal (state := state_2266376) 3
    state_2266377 state_2266608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266377
  · exact cover_2266608
#print axioms cover_2266376

def state_2266375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 14)))
theorem cover_2266375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266375 := by
  apply coveredState_split_literal (state := state_2266375) 2
    state_2266376 state_2266895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266376
  · exact cover_2266895
#print axioms cover_2266375

def state_2266349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 14)))
theorem cover_2266349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266349 := by
  apply coveredState_split_literal (state := state_2266349) 1
    state_2266350 state_2266375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266350
  · exact cover_2266375
#print axioms cover_2266349

def state_2266348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2266348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266348 := by
  apply coveredState_split_literal (state := state_2266348) 4
    state_2266349 state_2266934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266349
  · exact cover_2266934
#print axioms cover_2266348

def state_2266967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 14)))
theorem cover_2266967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266967 := by
  apply coveredState_split_literal (state := state_2266967) 3
    state_2266968 state_2267001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266968
  · exact cover_2267001
#print axioms cover_2266967

def state_2266966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 14)))
theorem cover_2266966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266966 := by
  apply coveredState_split_literal (state := state_2266966) 2
    state_2266967 state_2267036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266967
  · exact cover_2267036
#print axioms cover_2266966

def state_2266958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 14)))
theorem cover_2266958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266958 := by
  apply coveredState_split_literal (state := state_2266958) 1
    state_2266959 state_2266966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266959
  · exact cover_2266966
#print axioms cover_2266958

def state_2266957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2266957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266957 := by
  apply coveredState_split_literal (state := state_2266957) 4
    state_2266958 state_2267045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266958
  · exact cover_2267045
#print axioms cover_2266957

def state_2266347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2266347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266347 := by
  apply coveredState_split_literal (state := state_2266347) 0
    state_2266348 state_2266957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266348
  · exact cover_2266957
#print axioms cover_2266347

def state_2266307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 7)))
theorem cover_2266307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266307 := by
  apply coveredState_split_literal (state := state_2266307) 3
    state_2266308 state_2266347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266308
  · exact cover_2266347
#print axioms cover_2266307

def state_2266165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2266165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266165 := by
  apply coveredState_split_literal (state := state_2266165) 2
    state_2266166 state_2266307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266166
  · exact cover_2266307
#print axioms cover_2266165

def state_2267154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 14)))
theorem cover_2267154 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267154 := by
  apply coveredState_split_literal (state := state_2267154) 0
    state_2267155 state_2267198
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267155
  · exact cover_2267198
#print axioms cover_2267154

def state_2267150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 14)))
theorem cover_2267150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267150 := by
  apply coveredState_split_literal (state := state_2267150) 2
    state_2267151 state_2267154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267151
  · exact cover_2267154
#print axioms cover_2267150

def state_2267149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 14)))
theorem cover_2267149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267149 := by
  apply coveredState_split_literal (state := state_2267149) 1
    state_2267150 state_2267227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267150
  · exact cover_2267227
#print axioms cover_2267149

def state_2267148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 14)))
theorem cover_2267148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267148 := by
  apply coveredState_split_literal (state := state_2267148) 3
    state_2267149 state_2267274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267149
  · exact cover_2267274
#print axioms cover_2267148

def state_2267147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 7)))
theorem cover_2267147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267147 := by
  apply coveredState_split_literal (state := state_2267147) 4
    state_2267148 state_2267297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267148
  · exact cover_2267297
#print axioms cover_2267147

def state_2267117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 7)))
theorem cover_2267117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267117 := by
  apply coveredState_split_literal (state := state_2267117) 0
    state_2267118 state_2267147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267118
  · exact cover_2267147
#print axioms cover_2267117

def state_2267057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 7)))
theorem cover_2267057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267057 := by
  apply coveredState_split_literal (state := state_2267057) 3
    state_2267058 state_2267117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267058
  · exact cover_2267117
#print axioms cover_2267057

def state_2267340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 21 else 14)))
theorem cover_2267340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267340 := by
  apply coveredState_split_literal (state := state_2267340) 0
    state_2267341 state_2267374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267341
  · exact cover_2267374
#print axioms cover_2267340

def state_2267330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 14)))
theorem cover_2267330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267330 := by
  apply coveredState_split_literal (state := state_2267330) 3
    state_2267331 state_2267340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267331
  · exact cover_2267340
#print axioms cover_2267330

def state_2267426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 21 else 28)))
theorem cover_2267426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267426 := by
  apply coveredState_split_literal (state := state_2267426) 2
    state_2267427 state_2267460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267427
  · exact cover_2267460
#print axioms cover_2267426

def state_2267425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 21 else 14)))
theorem cover_2267425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267425 := by
  apply coveredState_split_literal (state := state_2267425) 4
    state_2267426 state_2267499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267426
  · exact cover_2267499
#print axioms cover_2267425

def state_2267415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 21 else 14)))
theorem cover_2267415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267415 := by
  apply coveredState_split_literal (state := state_2267415) 0
    state_2267416 state_2267425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267416
  · exact cover_2267425
#print axioms cover_2267415

def state_2267405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 14)))
theorem cover_2267405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267405 := by
  apply coveredState_split_literal (state := state_2267405) 3
    state_2267406 state_2267415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267406
  · exact cover_2267415
#print axioms cover_2267405

def state_2267329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 14)))
theorem cover_2267329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267329 := by
  apply coveredState_split_literal (state := state_2267329) 1
    state_2267330 state_2267405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267330
  · exact cover_2267405
#print axioms cover_2267329

def state_2267532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 14)))
theorem cover_2267532 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267532 := by
  apply coveredState_split_literal (state := state_2267532) 3
    state_2267533 state_2267540
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267533
  · exact cover_2267540
#print axioms cover_2267532

def state_2267526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 14)))
theorem cover_2267526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267526 := by
  apply coveredState_split_literal (state := state_2267526) 1
    state_2267527 state_2267532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267527
  · exact cover_2267532
#print axioms cover_2267526
end Mub6.Numerical.CircleFullD0.Forest
