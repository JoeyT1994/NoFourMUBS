import CircleFullInterface
import CircleForestAssembly0141
import CircleForestChunk0557
import CircleForestChunk0558
import CircleForestChunk0559
import CircleForestChunk0560
import CircleForestChunk0561
import CircleForestChunk0562
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_372890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 23)))
theorem cover_372890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372890 := by
  apply coveredState_split_literal (state := state_372890) 4
    state_372891 state_372896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372891
  · exact cover_372896
#print axioms cover_372890

def state_372738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 23)))
theorem cover_372738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372738 := by
  apply coveredState_split_literal (state := state_372738) 2
    state_372739 state_372890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372739
  · exact cover_372890
#print axioms cover_372738

def state_373037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 45 else 47)))
theorem cover_373037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373037 := by
  apply coveredState_split_literal (state := state_373037) 2
    state_373038 state_373043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373038
  · exact cover_373043
#print axioms cover_373037

def state_373036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 45 else 47)))
theorem cover_373036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373036 := by
  apply coveredState_split_literal (state := state_373036) 0
    state_373037 state_373102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373037
  · exact cover_373102
#print axioms cover_373036

def state_373008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 22 else 47)))
theorem cover_373008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373008 := by
  apply coveredState_split_literal (state := state_373008) 3
    state_373009 state_373036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373009
  · exact cover_373036
#print axioms cover_373008

def state_373006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 22 else 47)))
theorem cover_373006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373006 := by
  apply coveredState_split_literal (state := state_373006) 1
    state_373007 state_373008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373007
  · exact cover_373008
#print axioms cover_373006

def state_373000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 22 else 23)))
theorem cover_373000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373000 := by
  apply coveredState_split_literal (state := state_373000) 4
    state_373001 state_373006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373001
  · exact cover_373006
#print axioms cover_373000

def state_373177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 45 else 47)))
theorem cover_373177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373177 := by
  apply coveredState_split_literal (state := state_373177) 0
    state_373178 state_373239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373178
  · exact cover_373239
#print axioms cover_373177

def state_373155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 47)))
theorem cover_373155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373155 := by
  apply coveredState_split_literal (state := state_373155) 3
    state_373156 state_373177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373156
  · exact cover_373177
#print axioms cover_373155

def state_373129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 47)))
theorem cover_373129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373129 := by
  apply coveredState_split_literal (state := state_373129) 1
    state_373130 state_373155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373130
  · exact cover_373155
#print axioms cover_373129

def state_373103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 23)))
theorem cover_373103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373103 := by
  apply coveredState_split_literal (state := state_373103) 4
    state_373104 state_373129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373104
  · exact cover_373129
#print axioms cover_373103

def state_372999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 23)))
theorem cover_372999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372999 := by
  apply coveredState_split_literal (state := state_372999) 2
    state_373000 state_373103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373000
  · exact cover_373103
#print axioms cover_372999

def state_372737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 23)))
theorem cover_372737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372737 := by
  apply coveredState_split_literal (state := state_372737) 0
    state_372738 state_372999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372738
  · exact cover_372999
#print axioms cover_372737

def state_372711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 11)))
theorem cover_372711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372711 := by
  apply coveredState_split_literal (state := state_372711) 4
    state_372712 state_372737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372712
  · exact cover_372737
#print axioms cover_372711

def state_373362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 47)))
theorem cover_373362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373362 := by
  apply coveredState_split_literal (state := state_373362) 2
    state_373363 state_373424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373363
  · exact cover_373424
#print axioms cover_373362

def state_373447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 47)))
theorem cover_373447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373447 := by
  apply coveredState_split_literal (state := state_373447) 2
    state_373448 state_373463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373448
  · exact cover_373463
#print axioms cover_373447

def state_373361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 47)))
theorem cover_373361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373361 := by
  apply coveredState_split_literal (state := state_373361) 0
    state_373362 state_373447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373362
  · exact cover_373447
#print axioms cover_373361

def state_373339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 47)))
theorem cover_373339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373339 := by
  apply coveredState_split_literal (state := state_373339) 1
    state_373340 state_373361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373340
  · exact cover_373361
#print axioms cover_373339

def state_373329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 23)))
theorem cover_373329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373329 := by
  apply coveredState_split_literal (state := state_373329) 4
    state_373330 state_373339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373330
  · exact cover_373339
#print axioms cover_373329

def state_373328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 23)))
theorem cover_373328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373328 := by
  apply coveredState_split_literal (state := state_373328) 3
    state_373329 state_373518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373329
  · exact cover_373518
#print axioms cover_373328

def state_373306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 23)))
theorem cover_373306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373306 := by
  apply coveredState_split_literal (state := state_373306) 2
    state_373307 state_373328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373307
  · exact cover_373328
#print axioms cover_373306

def state_373268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 23)))
theorem cover_373268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373268 := by
  apply coveredState_split_literal (state := state_373268) 0
    state_373269 state_373306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373269
  · exact cover_373306
#print axioms cover_373268

def state_373258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 11)))
theorem cover_373258 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373258 := by
  apply coveredState_split_literal (state := state_373258) 4
    state_373259 state_373268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373259
  · exact cover_373268
#print axioms cover_373258

def state_372710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 11)))
theorem cover_372710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372710 := by
  apply coveredState_split_literal (state := state_372710) 3
    state_372711 state_373258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372711
  · exact cover_373258
#print axioms cover_372710

def state_373648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 45 else 47)))
theorem cover_373648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373648 := by
  apply coveredState_split_literal (state := state_373648) 2
    state_373649 state_373708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373649
  · exact cover_373708
#print axioms cover_373648

def state_373723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 45 else 47)))
theorem cover_373723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373723 := by
  apply coveredState_split_literal (state := state_373723) 2
    state_373724 state_373747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373724
  · exact cover_373747
#print axioms cover_373723

def state_373647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 45 else 47)))
theorem cover_373647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373647 := by
  apply coveredState_split_literal (state := state_373647) 0
    state_373648 state_373723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373648
  · exact cover_373723
#print axioms cover_373647

def state_373623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 47)))
theorem cover_373623 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373623 := by
  apply coveredState_split_literal (state := state_373623) 3
    state_373624 state_373647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373624
  · exact cover_373647
#print axioms cover_373623

def state_373611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 23)))
theorem cover_373611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373611 := by
  apply coveredState_split_literal (state := state_373611) 4
    state_373612 state_373623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373612
  · exact cover_373623
#print axioms cover_373611

def state_373610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 23) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 23)))
theorem cover_373610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373610 := by
  apply coveredState_split_literal (state := state_373610) 1
    state_373611 state_373802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373611
  · exact cover_373802
#print axioms cover_373610

def state_373592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 23)))
theorem cover_373592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373592 := by
  apply coveredState_split_literal (state := state_373592) 2
    state_373593 state_373610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373593
  · exact cover_373610
#print axioms cover_373592

def state_373550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 23)))
theorem cover_373550 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373550 := by
  apply coveredState_split_literal (state := state_373550) 0
    state_373551 state_373592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373551
  · exact cover_373592
#print axioms cover_373550
end Mub6.Numerical.CircleFullPrototype.Forest
