import CircleFullInterface
import CircleForestAssembly0154
import CircleForestChunk0606
import CircleForestChunk0607
import CircleForestChunk0608
import CircleForestChunk0609
import CircleForestChunk0610
import CircleForestChunk0611
import CircleForestChunk0612
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_384416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_384416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384416 := by
  apply coveredState_split_literal (state := state_384416) 4
    state_384417 state_384444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384417
  · exact cover_384444
#print axioms cover_384416

def state_384415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_384415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384415 := by
  apply coveredState_split_literal (state := state_384415) 3
    state_384416 state_384557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384416
  · exact cover_384557
#print axioms cover_384415

def state_384656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_384656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384656 := by
  apply coveredState_split_literal (state := state_384656) 0
    state_384657 state_384672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384657
  · exact cover_384672
#print axioms cover_384656

def state_384634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 7)))
theorem cover_384634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384634 := by
  apply coveredState_split_literal (state := state_384634) 4
    state_384635 state_384656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384635
  · exact cover_384656
#print axioms cover_384634

def state_384633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 7)))
theorem cover_384633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384633 := by
  apply coveredState_split_literal (state := state_384633) 1
    state_384634 state_384727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384634
  · exact cover_384727
#print axioms cover_384633

def state_384581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 7)))
theorem cover_384581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384581 := by
  apply coveredState_split_literal (state := state_384581) 3
    state_384582 state_384633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384582
  · exact cover_384633
#print axioms cover_384581

def state_384580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_384580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384580 := by
  apply coveredState_split_literal (state := state_384580) 2
    state_384581 state_384742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384581
  · exact cover_384742
#print axioms cover_384580

def state_384790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 7)))
theorem cover_384790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384790 := by
  apply coveredState_split_literal (state := state_384790) 1
    state_384791 state_384838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384791
  · exact cover_384838
#print axioms cover_384790

def state_384764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 7)))
theorem cover_384764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384764 := by
  apply coveredState_split_literal (state := state_384764) 3
    state_384765 state_384790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384765
  · exact cover_384790
#print axioms cover_384764

def state_384763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_384763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384763 := by
  apply coveredState_split_literal (state := state_384763) 2
    state_384764 state_384859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384764
  · exact cover_384859
#print axioms cover_384763

def state_384579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_384579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384579 := by
  apply coveredState_split_literal (state := state_384579) 0
    state_384580 state_384763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384580
  · exact cover_384763
#print axioms cover_384579

def state_384563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_384563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384563 := by
  apply coveredState_split_literal (state := state_384563) 4
    state_384564 state_384579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384564
  · exact cover_384579
#print axioms cover_384563

def state_384562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_384562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384562 := by
  apply coveredState_split_literal (state := state_384562) 3
    state_384563 state_384872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384563
  · exact cover_384872
#print axioms cover_384562

def state_384414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_384414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384414 := by
  apply coveredState_split_literal (state := state_384414) 2
    state_384415 state_384562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384415
  · exact cover_384562
#print axioms cover_384414

def state_384926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_384926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384926 := by
  apply coveredState_split_literal (state := state_384926) 4
    state_384927 state_384960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384927
  · exact cover_384960
#print axioms cover_384926

def state_384925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_384925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384925 := by
  apply coveredState_split_literal (state := state_384925) 3
    state_384926 state_384999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384926
  · exact cover_384999
#print axioms cover_384925

def state_384901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_384901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384901 := by
  apply coveredState_split_literal (state := state_384901) 2
    state_384902 state_384925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384902
  · exact cover_384925
#print axioms cover_384901

def state_384413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_384413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384413 := by
  apply coveredState_split_literal (state := state_384413) 1
    state_384414 state_384901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384414
  · exact cover_384901
#print axioms cover_384413

def state_385032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_385032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385032 := by
  apply coveredState_split_literal (state := state_385032) 1
    state_385033 state_385060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385033
  · exact cover_385060
#print axioms cover_385032

def state_384412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_384412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384412 := by
  apply coveredState_split_literal (state := state_384412) 0
    state_384413 state_385032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384413
  · exact cover_385032
#print axioms cover_384412

def state_384332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_384332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384332 := by
  apply coveredState_split_literal (state := state_384332) 4
    state_384333 state_384412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384333
  · exact cover_384412
#print axioms cover_384332

def state_384164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_384164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384164 := by
  apply coveredState_split_literal (state := state_384164) 3
    state_384165 state_384332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384165
  · exact cover_384332
#print axioms cover_384164

def state_385118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_385118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385118 := by
  apply coveredState_split_literal (state := state_385118) 0
    state_385119 state_385176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385119
  · exact cover_385176
#print axioms cover_385118

def state_385197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_385197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385197 := by
  apply coveredState_split_literal (state := state_385197) 0
    state_385198 state_385261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385198
  · exact cover_385261
#print axioms cover_385197

def state_385117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_385117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385117 := by
  apply coveredState_split_literal (state := state_385117) 4
    state_385118 state_385197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385118
  · exact cover_385197
#print axioms cover_385117

def state_385115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_385115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385115 := by
  apply coveredState_split_literal (state := state_385115) 3
    state_385116 state_385117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385116
  · exact cover_385117
#print axioms cover_385115

def state_384163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_384163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384163 := by
  apply coveredState_split_literal (state := state_384163) 2
    state_384164 state_385115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384164
  · exact cover_385115
#print axioms cover_384163

def state_385379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_385379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385379 := by
  apply coveredState_split_literal (state := state_385379) 4
    state_385380 state_385421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385380
  · exact cover_385421
#print axioms cover_385379

def state_385345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_385345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385345 := by
  apply coveredState_split_literal (state := state_385345) 3
    state_385346 state_385379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385346
  · exact cover_385379
#print axioms cover_385345

def state_385299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_385299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385299 := by
  apply coveredState_split_literal (state := state_385299) 2
    state_385300 state_385345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385300
  · exact cover_385345
#print axioms cover_385299

def state_385298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_385298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385298 := by
  apply coveredState_split_literal (state := state_385298) 1
    state_385299 state_385452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385299
  · exact cover_385452
#print axioms cover_385298

def state_385655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 8)))
theorem cover_385655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385655 := by
  apply coveredState_split_literal (state := state_385655) 3
    state_385656 state_385711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385656
  · exact cover_385711
#print axioms cover_385655
end Mub6.Numerical.CircleFullPrototype.Forest
