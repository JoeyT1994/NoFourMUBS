import CircleFullInterface
import CircleForestAssembly0210
import CircleForestChunk0797
import CircleForestChunk0798
import CircleForestChunk0799
import CircleForestChunk0800
import CircleForestChunk0801
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1492134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 7)))
theorem cover_1492134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492134 := by
  apply coveredState_split_literal (state := state_1492134) 4
    state_1492135 state_1492256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492135
  · exact cover_1492256
#print axioms cover_1492134

def state_1492128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 7)))
theorem cover_1492128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492128 := by
  apply coveredState_split_literal (state := state_1492128) 2
    state_1492129 state_1492134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492129
  · exact cover_1492134
#print axioms cover_1492128

def state_1489406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1489406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489406 := by
  apply coveredState_split_literal (state := state_1489406) 3
    state_1489407 state_1492128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489407
  · exact cover_1492128
#print axioms cover_1489406

def state_1492339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 37 else (if j.val < 4 then 48 else 29)))
theorem cover_1492339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492339 := by
  apply coveredState_split_literal (state := state_1492339) 4
    state_1492340 state_1492349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492340
  · exact cover_1492349
#print axioms cover_1492339

def state_1492331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 29)))
theorem cover_1492331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492331 := by
  apply coveredState_split_literal (state := state_1492331) 2
    state_1492332 state_1492339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492332
  · exact cover_1492339
#print axioms cover_1492331

def state_1492330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 29)))
theorem cover_1492330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492330 := by
  apply coveredState_split_literal (state := state_1492330) 1
    state_1492331 state_1492404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492331
  · exact cover_1492404
#print axioms cover_1492330

def state_1492329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 29)))
theorem cover_1492329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492329 := by
  apply coveredState_split_literal (state := state_1492329) 3
    state_1492330 state_1492405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492330
  · exact cover_1492405
#print axioms cover_1492329

def state_1492311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 29)))
theorem cover_1492311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492311 := by
  apply coveredState_split_literal (state := state_1492311) 0
    state_1492312 state_1492329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492312
  · exact cover_1492329
#print axioms cover_1492311

def state_1492305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 14)))
theorem cover_1492305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492305 := by
  apply coveredState_split_literal (state := state_1492305) 4
    state_1492306 state_1492311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492306
  · exact cover_1492311
#print axioms cover_1492305

def state_1492495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 29)))
theorem cover_1492495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492495 := by
  apply coveredState_split_literal (state := state_1492495) 2
    state_1492496 state_1492549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492496
  · exact cover_1492549
#print axioms cover_1492495

def state_1492494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 29)))
theorem cover_1492494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492494 := by
  apply coveredState_split_literal (state := state_1492494) 1
    state_1492495 state_1492568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492495
  · exact cover_1492568
#print axioms cover_1492494

def state_1492430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 29)))
theorem cover_1492430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492430 := by
  apply coveredState_split_literal (state := state_1492430) 3
    state_1492431 state_1492494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492431
  · exact cover_1492494
#print axioms cover_1492430

def state_1492416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 29)))
theorem cover_1492416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492416 := by
  apply coveredState_split_literal (state := state_1492416) 0
    state_1492417 state_1492430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492417
  · exact cover_1492430
#print axioms cover_1492416

def state_1492414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 14)))
theorem cover_1492414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492414 := by
  apply coveredState_split_literal (state := state_1492414) 4
    state_1492415 state_1492416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492415
  · exact cover_1492416
#print axioms cover_1492414

def state_1492304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 14)))
theorem cover_1492304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492304 := by
  apply coveredState_split_literal (state := state_1492304) 2
    state_1492305 state_1492414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492305
  · exact cover_1492414
#print axioms cover_1492304

def state_1492593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 29)))
theorem cover_1492593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492593 := by
  apply coveredState_split_literal (state := state_1492593) 1
    state_1492594 state_1492653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492594
  · exact cover_1492653
#print axioms cover_1492593

def state_1492581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 29)))
theorem cover_1492581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492581 := by
  apply coveredState_split_literal (state := state_1492581) 0
    state_1492582 state_1492593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492582
  · exact cover_1492593
#print axioms cover_1492581

def state_1492577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 14)))
theorem cover_1492577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492577 := by
  apply coveredState_split_literal (state := state_1492577) 4
    state_1492578 state_1492581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492578
  · exact cover_1492581
#print axioms cover_1492577

def state_1492571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 14)))
theorem cover_1492571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492571 := by
  apply coveredState_split_literal (state := state_1492571) 2
    state_1492572 state_1492577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492572
  · exact cover_1492577
#print axioms cover_1492571

def state_1492303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
theorem cover_1492303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492303 := by
  apply coveredState_split_literal (state := state_1492303) 3
    state_1492304 state_1492571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492304
  · exact cover_1492571
#print axioms cover_1492303

def state_1492302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
theorem cover_1492302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492302 := by
  apply coveredState_split_literal (state := state_1492302) 1
    state_1492303 state_1492662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492303
  · exact cover_1492662
#print axioms cover_1492302

def state_1492673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
theorem cover_1492673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492673 := by
  apply coveredState_split_literal (state := state_1492673) 1
    state_1492674 state_1492737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492674
  · exact cover_1492737
#print axioms cover_1492673

def state_1492301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
theorem cover_1492301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492301 := by
  apply coveredState_split_literal (state := state_1492301) 0
    state_1492302 state_1492673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492302
  · exact cover_1492673
#print axioms cover_1492301

def state_1492758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 30)))
theorem cover_1492758 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492758 := by
  apply coveredState_split_literal (state := state_1492758) 1
    state_1492759 state_1492810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492759
  · exact cover_1492810
#print axioms cover_1492758

def state_1492757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 30)))
theorem cover_1492757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492757 := by
  apply coveredState_split_literal (state := state_1492757) 3
    state_1492758 state_1492837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492758
  · exact cover_1492837
#print axioms cover_1492757

def state_1492747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 30)))
theorem cover_1492747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492747 := by
  apply coveredState_split_literal (state := state_1492747) 0
    state_1492748 state_1492757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492748
  · exact cover_1492757
#print axioms cover_1492747

def state_1492746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 15)))
theorem cover_1492746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492746 := by
  apply coveredState_split_literal (state := state_1492746) 4
    state_1492747 state_1492846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492747
  · exact cover_1492846
#print axioms cover_1492746

def state_1492994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 49 else 60)))
theorem cover_1492994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492994 := by
  apply coveredState_split_literal (state := state_1492994) 0
    state_1492995 state_1493006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492995
  · exact cover_1493006
#print axioms cover_1492994

def state_1492993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 49 else 30)))
theorem cover_1492993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492993 := by
  apply coveredState_split_literal (state := state_1492993) 4
    state_1492994 state_1493061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492994
  · exact cover_1493061
#print axioms cover_1492993

def state_1492935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 30)))
theorem cover_1492935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492935 := by
  apply coveredState_split_literal (state := state_1492935) 2
    state_1492936 state_1492993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492936
  · exact cover_1492993
#print axioms cover_1492935

def state_1492934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 30)))
theorem cover_1492934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492934 := by
  apply coveredState_split_literal (state := state_1492934) 1
    state_1492935 state_1493062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492935
  · exact cover_1493062
#print axioms cover_1492934

def state_1492870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 30)))
theorem cover_1492870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492870 := by
  apply coveredState_split_literal (state := state_1492870) 3
    state_1492871 state_1492934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492871
  · exact cover_1492934
#print axioms cover_1492870
end Mub6.Numerical.CircleFullD0.Forest
