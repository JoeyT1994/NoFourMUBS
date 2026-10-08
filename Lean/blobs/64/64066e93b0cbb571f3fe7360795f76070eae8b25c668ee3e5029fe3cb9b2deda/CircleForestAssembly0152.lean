import CircleFullInterface
import CircleForestAssembly0151
import CircleForestChunk0592
import CircleForestChunk0593
import CircleForestChunk0594
import CircleForestChunk0595
import CircleForestChunk0596
import CircleForestChunk0597
import CircleForestChunk0598
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_381383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_381383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381383 := by
  apply coveredState_split_literal (state := state_381383) 2
    state_381384 state_381393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381384
  · exact cover_381393
#print axioms cover_381383

def state_381077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_381077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381077 := by
  apply coveredState_split_literal (state := state_381077) 1
    state_381078 state_381383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381078
  · exact cover_381383
#print axioms cover_381077

def state_381029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_381029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381029 := by
  apply coveredState_split_literal (state := state_381029) 0
    state_381030 state_381077
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381030
  · exact cover_381077
#print axioms cover_381029

def state_381482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_381482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381482 := by
  apply coveredState_split_literal (state := state_381482) 2
    state_381483 state_381536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381483
  · exact cover_381536
#print axioms cover_381482

def state_381481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_381481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381481 := by
  apply coveredState_split_literal (state := state_381481) 1
    state_381482 state_381583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381482
  · exact cover_381583
#print axioms cover_381481

def state_381650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
theorem cover_381650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381650 := by
  apply coveredState_split_literal (state := state_381650) 3
    state_381651 state_381714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381651
  · exact cover_381714
#print axioms cover_381650

def state_381649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_381649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381649 := by
  apply coveredState_split_literal (state := state_381649) 2
    state_381650 state_381717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381650
  · exact cover_381717
#print axioms cover_381649

def state_381648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_381648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381648 := by
  apply coveredState_split_literal (state := state_381648) 1
    state_381649 state_381744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381649
  · exact cover_381744
#print axioms cover_381648

def state_381755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_381755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381755 := by
  apply coveredState_split_literal (state := state_381755) 1
    state_381756 state_381817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381756
  · exact cover_381817
#print axioms cover_381755

def state_381647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_381647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381647 := by
  apply coveredState_split_literal (state := state_381647) 0
    state_381648 state_381755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381648
  · exact cover_381755
#print axioms cover_381647

def state_381646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_381646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381646 := by
  apply coveredState_split_literal (state := state_381646) 4
    state_381647 state_381838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381647
  · exact cover_381838
#print axioms cover_381646

def state_381645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_381645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381645 := by
  apply coveredState_split_literal (state := state_381645) 3
    state_381646 state_381873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381646
  · exact cover_381873
#print axioms cover_381645

def state_381597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_381597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381597 := by
  apply coveredState_split_literal (state := state_381597) 2
    state_381598 state_381645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381598
  · exact cover_381645
#print axioms cover_381597

def state_381596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_381596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381596 := by
  apply coveredState_split_literal (state := state_381596) 1
    state_381597 state_381898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381597
  · exact cover_381898
#print axioms cover_381596

def state_381480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_381480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381480 := by
  apply coveredState_split_literal (state := state_381480) 0
    state_381481 state_381596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381481
  · exact cover_381596
#print axioms cover_381480

def state_381028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_381028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381028 := by
  apply coveredState_split_literal (state := state_381028) 4
    state_381029 state_381480
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381029
  · exact cover_381480
#print axioms cover_381028

def state_379598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_379598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379598 := by
  apply coveredState_split_literal (state := state_379598) 3
    state_379599 state_381028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379599
  · exact cover_381028
#print axioms cover_379598

def state_381927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_381927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381927 := by
  apply coveredState_split_literal (state := state_381927) 0
    state_381928 state_381957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381928
  · exact cover_381957
#print axioms cover_381927

def state_382038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 7)))
theorem cover_382038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382038 := by
  apply coveredState_split_literal (state := state_382038) 0
    state_382039 state_382048
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382039
  · exact cover_382048
#print axioms cover_382038

def state_382037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_382037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382037 := by
  apply coveredState_split_literal (state := state_382037) 2
    state_382038 state_382111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382038
  · exact cover_382111
#print axioms cover_382037

def state_382036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_382036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382036 := by
  apply coveredState_split_literal (state := state_382036) 1
    state_382037 state_382118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382037
  · exact cover_382118
#print axioms cover_382036

def state_382006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_382006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382006 := by
  apply coveredState_split_literal (state := state_382006) 4
    state_382007 state_382036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382007
  · exact cover_382036
#print axioms cover_382006

def state_382005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_382005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382005 := by
  apply coveredState_split_literal (state := state_382005) 3
    state_382006 state_382147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382006
  · exact cover_382147
#print axioms cover_382005

def state_382004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_382004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382004 := by
  apply coveredState_split_literal (state := state_382004) 2
    state_382005 state_382170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382005
  · exact cover_382170
#print axioms cover_382004

def state_382003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_382003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382003 := by
  apply coveredState_split_literal (state := state_382003) 1
    state_382004 state_382183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382004
  · exact cover_382183
#print axioms cover_382003

def state_382215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_382215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382215 := by
  apply coveredState_split_literal (state := state_382215) 2
    state_382216 state_382267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382216
  · exact cover_382267
#print axioms cover_382215

def state_382316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 15)))
theorem cover_382316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382316 := by
  apply coveredState_split_literal (state := state_382316) 2
    state_382317 state_382332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382317
  · exact cover_382332
#print axioms cover_382316

def state_382294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 7)))
theorem cover_382294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382294 := by
  apply coveredState_split_literal (state := state_382294) 4
    state_382295 state_382316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382295
  · exact cover_382316
#print axioms cover_382294

def state_382293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 7)))
theorem cover_382293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382293 := by
  apply coveredState_split_literal (state := state_382293) 3
    state_382294 state_382387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382294
  · exact cover_382387
#print axioms cover_382293

def state_382292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_382292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382292 := by
  apply coveredState_split_literal (state := state_382292) 2
    state_382293 state_382402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382293
  · exact cover_382402
#print axioms cover_382292

def state_382214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_382214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382214 := by
  apply coveredState_split_literal (state := state_382214) 1
    state_382215 state_382292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382215
  · exact cover_382292
#print axioms cover_382214

def state_382213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_382213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382213 := by
  apply coveredState_split_literal (state := state_382213) 0
    state_382214 state_382461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382214
  · exact cover_382461
#print axioms cover_382213
end Mub6.Numerical.CircleFullPrototype.Forest
