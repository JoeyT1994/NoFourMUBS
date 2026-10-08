import D0FullInterface
import D0ForestAssembly0422
import D0ForestChunk1651
import D0ForestChunk1652
import D0ForestChunk1653
import D0ForestChunk1654
import D0ForestChunk1655
import D0ForestChunk1656
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2269550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2269550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269550 := by
  apply coveredState_split_literal (state := state_2269550) 4
    state_2269551 state_2269662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269551
  · exact cover_2269662
#print axioms cover_2269550

def state_2269724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 28)))
theorem cover_2269724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269724 := by
  apply coveredState_split_literal (state := state_2269724) 4
    state_2269725 state_2269754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269725
  · exact cover_2269754
#print axioms cover_2269724

def state_2269680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 28)))
theorem cover_2269680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269680 := by
  apply coveredState_split_literal (state := state_2269680) 0
    state_2269681 state_2269724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269681
  · exact cover_2269724
#print axioms cover_2269680

def state_2269793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 28)))
theorem cover_2269793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269793 := by
  apply coveredState_split_literal (state := state_2269793) 0
    state_2269794 state_2269839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269794
  · exact cover_2269839
#print axioms cover_2269793

def state_2269679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 28)))
theorem cover_2269679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269679 := by
  apply coveredState_split_literal (state := state_2269679) 3
    state_2269680 state_2269793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269680
  · exact cover_2269793
#print axioms cover_2269679

def state_2269931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 57)))
theorem cover_2269931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269931 := by
  apply coveredState_split_literal (state := state_2269931) 2
    state_2269932 state_2269989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269932
  · exact cover_2269989
#print axioms cover_2269931

def state_2269930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 57)))
theorem cover_2269930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269930 := by
  apply coveredState_split_literal (state := state_2269930) 1
    state_2269931 state_2270006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269931
  · exact cover_2270006
#print axioms cover_2269930

def state_2269884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 28)))
theorem cover_2269884 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269884 := by
  apply coveredState_split_literal (state := state_2269884) 4
    state_2269885 state_2269930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269885
  · exact cover_2269930
#print axioms cover_2269884

def state_2270036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 57)))
theorem cover_2270036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270036 := by
  apply coveredState_split_literal (state := state_2270036) 2
    state_2270037 state_2270096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270037
  · exact cover_2270096
#print axioms cover_2270036

def state_2270035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 57)))
theorem cover_2270035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270035 := by
  apply coveredState_split_literal (state := state_2270035) 1
    state_2270036 state_2270137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270036
  · exact cover_2270137
#print axioms cover_2270035

def state_2270011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 28)))
theorem cover_2270011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270011 := by
  apply coveredState_split_literal (state := state_2270011) 4
    state_2270012 state_2270035
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270012
  · exact cover_2270035
#print axioms cover_2270011

def state_2269883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 28)))
theorem cover_2269883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269883 := by
  apply coveredState_split_literal (state := state_2269883) 0
    state_2269884 state_2270011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269884
  · exact cover_2270011
#print axioms cover_2269883

def state_2270170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 90 else (if j.val < 4 then 45 else 56)))
theorem cover_2270170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270170 := by
  apply coveredState_split_literal (state := state_2270170) 3
    state_2270171 state_2270232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270171
  · exact cover_2270232
#print axioms cover_2270170

def state_2270169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 56)))
theorem cover_2270169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270169 := by
  apply coveredState_split_literal (state := state_2270169) 2
    state_2270170 state_2270257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270170
  · exact cover_2270257
#print axioms cover_2270169

def state_2270168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 56)))
theorem cover_2270168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270168 := by
  apply coveredState_split_literal (state := state_2270168) 1
    state_2270169 state_2270272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270169
  · exact cover_2270272
#print axioms cover_2270168

def state_2270277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 57)))
theorem cover_2270277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270277 := by
  apply coveredState_split_literal (state := state_2270277) 1
    state_2270278 state_2270333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270278
  · exact cover_2270333
#print axioms cover_2270277

def state_2270167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 28)))
theorem cover_2270167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270167 := by
  apply coveredState_split_literal (state := state_2270167) 4
    state_2270168 state_2270277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270168
  · exact cover_2270277
#print axioms cover_2270167

def state_2270346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 56)))
theorem cover_2270346 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270346 := by
  apply coveredState_split_literal (state := state_2270346) 2
    state_2270347 state_2270400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270347
  · exact cover_2270400
#print axioms cover_2270346

def state_2270345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 56)))
theorem cover_2270345 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270345 := by
  apply coveredState_split_literal (state := state_2270345) 1
    state_2270346 state_2270427
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270346
  · exact cover_2270427
#print axioms cover_2270345

def state_2270469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 91 else (if j.val < 4 then 45 else 57)))
theorem cover_2270469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270469 := by
  apply coveredState_split_literal (state := state_2270469) 3
    state_2270470 state_2270527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270470
  · exact cover_2270527
#print axioms cover_2270469

def state_2270443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 57)))
theorem cover_2270443 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270443 := by
  apply coveredState_split_literal (state := state_2270443) 2
    state_2270444 state_2270469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270444
  · exact cover_2270469
#print axioms cover_2270443

def state_2270442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 57)))
theorem cover_2270442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270442 := by
  apply coveredState_split_literal (state := state_2270442) 1
    state_2270443 state_2270536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270443
  · exact cover_2270536
#print axioms cover_2270442

def state_2270344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 28)))
theorem cover_2270344 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270344 := by
  apply coveredState_split_literal (state := state_2270344) 4
    state_2270345 state_2270442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270345
  · exact cover_2270442
#print axioms cover_2270344

def state_2270166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 28)))
theorem cover_2270166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270166 := by
  apply coveredState_split_literal (state := state_2270166) 0
    state_2270167 state_2270344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270167
  · exact cover_2270344
#print axioms cover_2270166

def state_2269882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 28)))
theorem cover_2269882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269882 := by
  apply coveredState_split_literal (state := state_2269882) 3
    state_2269883 state_2270166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269883
  · exact cover_2270166
#print axioms cover_2269882

def state_2269678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 28)))
theorem cover_2269678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269678 := by
  apply coveredState_split_literal (state := state_2269678) 2
    state_2269679 state_2269882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269679
  · exact cover_2269882
#print axioms cover_2269678

def state_2270678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 91 else (if j.val < 4 then 44 else 58)))
theorem cover_2270678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270678 := by
  apply coveredState_split_literal (state := state_2270678) 3
    state_2270679 state_2270696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270679
  · exact cover_2270696
#print axioms cover_2270678

def state_2270650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 58)))
theorem cover_2270650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270650 := by
  apply coveredState_split_literal (state := state_2270650) 2
    state_2270651 state_2270678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270651
  · exact cover_2270678
#print axioms cover_2270650

def state_2270649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 58)))
theorem cover_2270649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270649 := by
  apply coveredState_split_literal (state := state_2270649) 1
    state_2270650 state_2270749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270650
  · exact cover_2270749
#print axioms cover_2270649

def state_2270648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 29)))
theorem cover_2270648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270648 := by
  apply coveredState_split_literal (state := state_2270648) 4
    state_2270649 state_2270798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270649
  · exact cover_2270798
#print axioms cover_2270648

def state_2270600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 29)))
theorem cover_2270600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270600 := by
  apply coveredState_split_literal (state := state_2270600) 0
    state_2270601 state_2270648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270601
  · exact cover_2270648
#print axioms cover_2270600

def state_2270821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 29)))
theorem cover_2270821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270821 := by
  apply coveredState_split_literal (state := state_2270821) 0
    state_2270822 state_2270849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270822
  · exact cover_2270849
#print axioms cover_2270821
end Mub6.Numerical.CircleFullD0.Forest
