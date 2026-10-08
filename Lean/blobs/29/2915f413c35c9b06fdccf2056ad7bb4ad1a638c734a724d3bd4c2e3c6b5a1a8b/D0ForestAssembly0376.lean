import D0FullInterface
import D0ForestAssembly0368
import D0ForestAssembly0374
import D0ForestAssembly0375
import D0ForestChunk1465
import D0ForestChunk1466
import D0ForestChunk1467
import D0ForestChunk1468
import D0ForestChunk1469
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1652395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
theorem cover_1652395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652395 := by
  apply coveredState_split_literal (state := state_1652395) 4
    state_1652396 state_1652503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652396
  · exact cover_1652503
#print axioms cover_1652395

def state_1652504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
theorem cover_1652504 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652504 := by
  apply coveredState_split_literal (state := state_1652504) 4
    state_1652505 state_1652566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652505
  · exact cover_1652566
#print axioms cover_1652504

def state_1652394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
theorem cover_1652394 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652394 := by
  apply coveredState_split_literal (state := state_1652394) 1
    state_1652395 state_1652504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652395
  · exact cover_1652504
#print axioms cover_1652394

def state_1651376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 11)))
theorem cover_1651376 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651376 := by
  apply coveredState_split_literal (state := state_1651376) 2
    state_1651377 state_1652394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651377
  · exact cover_1652394
#print axioms cover_1651376

def state_1645080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 5)))
theorem cover_1645080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645080 := by
  apply coveredState_split_literal (state := state_1645080) 4
    state_1645081 state_1651376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645081
  · exact cover_1651376
#print axioms cover_1645080

def state_1640876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1640876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640876 := by
  apply coveredState_split_literal (state := state_1640876) 3
    state_1640877 state_1645080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640877
  · exact cover_1645080
#print axioms cover_1640876

def state_1652585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 10)))
theorem cover_1652585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652585 := by
  apply coveredState_split_literal (state := state_1652585) 2
    state_1652586 state_1652641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652586
  · exact cover_1652641
#print axioms cover_1652585

def state_1652584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 5)))
theorem cover_1652584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652584 := by
  apply coveredState_split_literal (state := state_1652584) 4
    state_1652585 state_1652664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652585
  · exact cover_1652664
#print axioms cover_1652584

def state_1652683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 10)))
theorem cover_1652683 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652683 := by
  apply coveredState_split_literal (state := state_1652683) 4
    state_1652684 state_1652741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652684
  · exact cover_1652741
#print axioms cover_1652683

def state_1652682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1652682 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652682 := by
  apply coveredState_split_literal (state := state_1652682) 3
    state_1652683 state_1652756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652683
  · exact cover_1652756
#print axioms cover_1652682

def state_1652681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1652681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652681 := by
  apply coveredState_split_literal (state := state_1652681) 1
    state_1652682 state_1652769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652682
  · exact cover_1652769
#print axioms cover_1652681

def state_1652667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1652667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652667 := by
  apply coveredState_split_literal (state := state_1652667) 0
    state_1652668 state_1652681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652668
  · exact cover_1652681
#print axioms cover_1652667

def state_1652666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 10)))
theorem cover_1652666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652666 := by
  apply coveredState_split_literal (state := state_1652666) 2
    state_1652667 state_1652778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652667
  · exact cover_1652778
#print axioms cover_1652666

def state_1652665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 5)))
theorem cover_1652665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652665 := by
  apply coveredState_split_literal (state := state_1652665) 4
    state_1652666 state_1652807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652666
  · exact cover_1652807
#print axioms cover_1652665

def state_1652583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1652583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652583 := by
  apply coveredState_split_literal (state := state_1652583) 3
    state_1652584 state_1652665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652584
  · exact cover_1652665
#print axioms cover_1652583

def state_1640875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1640875 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640875 := by
  apply coveredState_split_literal (state := state_1640875) 1
    state_1640876 state_1652583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640876
  · exact cover_1652583
#print axioms cover_1640875

def state_1653028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 103 else 40)))
theorem cover_1653028 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653028 := by
  apply coveredState_split_literal (state := state_1653028) 4
    state_1653029 state_1653058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653029
  · exact cover_1653058
#print axioms cover_1653028

def state_1653018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 40)))
theorem cover_1653018 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653018 := by
  apply coveredState_split_literal (state := state_1653018) 3
    state_1653019 state_1653028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653019
  · exact cover_1653028
#print axioms cover_1653018

def state_1653017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 40)))
theorem cover_1653017 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653017 := by
  apply coveredState_split_literal (state := state_1653017) 0
    state_1653018 state_1653109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653018
  · exact cover_1653109
#print axioms cover_1653017

def state_1652995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 40)))
theorem cover_1652995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652995 := by
  apply coveredState_split_literal (state := state_1652995) 1
    state_1652996 state_1653017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652996
  · exact cover_1653017
#print axioms cover_1652995

def state_1652961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 40)))
theorem cover_1652961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652961 := by
  apply coveredState_split_literal (state := state_1652961) 2
    state_1652962 state_1652995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652962
  · exact cover_1652995
#print axioms cover_1652961

def state_1652960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 20)))
theorem cover_1652960 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652960 := by
  apply coveredState_split_literal (state := state_1652960) 4
    state_1652961 state_1653114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652961
  · exact cover_1653114
#print axioms cover_1652960

def state_1652946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 20)))
theorem cover_1652946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652946 := by
  apply coveredState_split_literal (state := state_1652946) 3
    state_1652947 state_1652960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652947
  · exact cover_1652960
#print axioms cover_1652946

def state_1652945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 20)))
theorem cover_1652945 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652945 := by
  apply coveredState_split_literal (state := state_1652945) 0
    state_1652946 state_1653175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652946
  · exact cover_1653175
#print axioms cover_1652945

def state_1652917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 20)))
theorem cover_1652917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652917 := by
  apply coveredState_split_literal (state := state_1652917) 1
    state_1652918 state_1652945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652918
  · exact cover_1652945
#print axioms cover_1652917

def state_1653271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 99) else (if j.val < 3 then 62 else (if j.val < 4 then 51 else 40)))
theorem cover_1653271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653271 := by
  apply coveredState_split_literal (state := state_1653271) 0
    state_1653272 state_1653323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653272
  · exact cover_1653323
#print axioms cover_1653271

def state_1653237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 62 else (if j.val < 4 then 51 else 40)))
theorem cover_1653237 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653237 := by
  apply coveredState_split_literal (state := state_1653237) 1
    state_1653238 state_1653271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653238
  · exact cover_1653271
#print axioms cover_1653237

def state_1653362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 63 else (if j.val < 4 then 51 else 40)))
theorem cover_1653362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653362 := by
  apply coveredState_split_literal (state := state_1653362) 1
    state_1653363 state_1653404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653363
  · exact cover_1653404
#print axioms cover_1653362

def state_1653236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 51 else 40)))
theorem cover_1653236 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653236 := by
  apply coveredState_split_literal (state := state_1653236) 2
    state_1653237 state_1653362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653237
  · exact cover_1653362
#print axioms cover_1653236

def state_1653235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 51 else 20)))
theorem cover_1653235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653235 := by
  apply coveredState_split_literal (state := state_1653235) 4
    state_1653236 state_1653439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653236
  · exact cover_1653439
#print axioms cover_1653235

def state_1653223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 20)))
theorem cover_1653223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653223 := by
  apply coveredState_split_literal (state := state_1653223) 3
    state_1653224 state_1653235
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653224
  · exact cover_1653235
#print axioms cover_1653223

def state_1653222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 20)))
theorem cover_1653222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653222 := by
  apply coveredState_split_literal (state := state_1653222) 0
    state_1653223 state_1653448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653223
  · exact cover_1653448
#print axioms cover_1653222
end Mub6.Numerical.CircleFullD0.Forest
