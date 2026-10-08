import CircleFullInterface
import CircleForestAssembly0009
import CircleForestChunk0039
import CircleForestChunk0040
import CircleForestChunk0041
import CircleForestChunk0042
import CircleForestChunk0043
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_9379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 72 else 35)))
theorem cover_9379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9379 := by
  apply coveredState_split_literal (state := state_9379) 1
    state_9380 state_9405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9380
  · exact cover_9405
#print axioms cover_9379

def state_9378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 35)))
theorem cover_9378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9378 := by
  apply coveredState_split_literal (state := state_9378) 3
    state_9379 state_9458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9379
  · exact cover_9458
#print axioms cover_9378

def state_9354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 35)))
theorem cover_9354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9354 := by
  apply coveredState_split_literal (state := state_9354) 0
    state_9355 state_9378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9355
  · exact cover_9378
#print axioms cover_9354

def state_9322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 17)))
theorem cover_9322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9322 := by
  apply coveredState_split_literal (state := state_9322) 4
    state_9323 state_9354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9323
  · exact cover_9354
#print axioms cover_9322

def state_9321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 17)))
theorem cover_9321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9321 := by
  apply coveredState_split_literal (state := state_9321) 2
    state_9322 state_9467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9322
  · exact cover_9467
#print axioms cover_9321

def state_9320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 17)))
theorem cover_9320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9320 := by
  apply coveredState_split_literal (state := state_9320) 1
    state_9321 state_9472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9321
  · exact cover_9472
#print axioms cover_9320

def state_9319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 17)))
theorem cover_9319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9319 := by
  apply coveredState_split_literal (state := state_9319) 3
    state_9320 state_9507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9320
  · exact cover_9507
#print axioms cover_9319

def state_9546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 35)))
theorem cover_9546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9546 := by
  apply coveredState_split_literal (state := state_9546) 3
    state_9547 state_9600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9547
  · exact cover_9600
#print axioms cover_9546

def state_9545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 35)))
theorem cover_9545 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9545 := by
  apply coveredState_split_literal (state := state_9545) 0
    state_9546 state_9613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9546
  · exact cover_9613
#print axioms cover_9545

def state_9527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 17)))
theorem cover_9527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9527 := by
  apply coveredState_split_literal (state := state_9527) 4
    state_9528 state_9545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9528
  · exact cover_9545
#print axioms cover_9527

def state_9526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 17)))
theorem cover_9526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9526 := by
  apply coveredState_split_literal (state := state_9526) 2
    state_9527 state_9644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9527
  · exact cover_9644
#print axioms cover_9526

def state_9662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 55) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 35)))
theorem cover_9662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9662 := by
  apply coveredState_split_literal (state := state_9662) 0
    state_9663 state_9726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9663
  · exact cover_9726
#print axioms cover_9662

def state_9646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 55) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 17)))
theorem cover_9646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9646 := by
  apply coveredState_split_literal (state := state_9646) 4
    state_9647 state_9662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9647
  · exact cover_9662
#print axioms cover_9646

def state_9645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 55) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 17)))
theorem cover_9645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9645 := by
  apply coveredState_split_literal (state := state_9645) 2
    state_9646 state_9777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9646
  · exact cover_9777
#print axioms cover_9645

def state_9525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 17)))
theorem cover_9525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9525 := by
  apply coveredState_split_literal (state := state_9525) 1
    state_9526 state_9645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9526
  · exact cover_9645
#print axioms cover_9525

def state_9524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 17)))
theorem cover_9524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9524 := by
  apply coveredState_split_literal (state := state_9524) 3
    state_9525 state_9812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9525
  · exact cover_9812
#print axioms cover_9524

def state_9318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 17)))
theorem cover_9318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9318 := by
  apply coveredState_split_literal (state := state_9318) 0
    state_9319 state_9524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9319
  · exact cover_9524
#print axioms cover_9318

def state_9288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 8)))
theorem cover_9288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9288 := by
  apply coveredState_split_literal (state := state_9288) 4
    state_9289 state_9318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9289
  · exact cover_9318
#print axioms cover_9288

def state_9287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 8)))
theorem cover_9287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9287 := by
  apply coveredState_split_literal (state := state_9287) 3
    state_9288 state_9843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9288
  · exact cover_9843
#print axioms cover_9287

def state_9211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 8)))
theorem cover_9211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9211 := by
  apply coveredState_split_literal (state := state_9211) 0
    state_9212 state_9287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9212
  · exact cover_9287
#print axioms cover_9211

def state_9015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_9015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9015 := by
  apply coveredState_split_literal (state := state_9015) 2
    state_9016 state_9211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9016
  · exact cover_9211
#print axioms cover_9015

def state_8933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_8933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8933 := by
  apply coveredState_split_literal (state := state_8933) 1
    state_8934 state_9015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8934
  · exact cover_9015
#print axioms cover_8933

def state_9971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 36)))
theorem cover_9971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9971 := by
  apply coveredState_split_literal (state := state_9971) 1
    state_9972 state_10017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9972
  · exact cover_10017
#print axioms cover_9971

def state_9970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 18)))
theorem cover_9970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9970 := by
  apply coveredState_split_literal (state := state_9970) 4
    state_9971 state_10056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9971
  · exact cover_10056
#print axioms cover_9970

def state_9969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 18)))
theorem cover_9969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9969 := by
  apply coveredState_split_literal (state := state_9969) 3
    state_9970 state_10063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9970
  · exact cover_10063
#print axioms cover_9969

def state_10081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 36)))
theorem cover_10081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10081 := by
  apply coveredState_split_literal (state := state_10081) 3
    state_10082 state_10137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10082
  · exact cover_10137
#print axioms cover_10081

def state_10080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 36)))
theorem cover_10080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10080 := by
  apply coveredState_split_literal (state := state_10080) 0
    state_10081 state_10152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10081
  · exact cover_10152
#print axioms cover_10080

def state_10079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 36)))
theorem cover_10079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10079 := by
  apply coveredState_split_literal (state := state_10079) 2
    state_10080 state_10167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10080
  · exact cover_10167
#print axioms cover_10079

def state_10256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 55) else (if j.val < 3 then 55 else (if j.val < 4 then 36 else 36)))
theorem cover_10256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10256 := by
  apply coveredState_split_literal (state := state_10256) 0
    state_10257 state_10294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10257
  · exact cover_10294
#print axioms cover_10256

def state_10210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 55) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 36)))
theorem cover_10210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10210 := by
  apply coveredState_split_literal (state := state_10210) 2
    state_10211 state_10256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10211
  · exact cover_10256
#print axioms cover_10210

def state_10078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 36)))
theorem cover_10078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10078 := by
  apply coveredState_split_literal (state := state_10078) 1
    state_10079 state_10210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10079
  · exact cover_10210
#print axioms cover_10078

def state_10077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 18)))
theorem cover_10077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10077 := by
  apply coveredState_split_literal (state := state_10077) 4
    state_10078 state_10331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10078
  · exact cover_10331
#print axioms cover_10077
end Mub6.Numerical.CircleFullPrototype.Forest
