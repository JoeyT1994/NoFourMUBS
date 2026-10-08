import D0FullInterface
import D0ForestAssembly0013
import D0ForestAssembly0014
import D0ForestChunk0063
import D0ForestChunk0064
import D0ForestChunk0065
import D0ForestChunk0066
import D0ForestChunk0067
import D0ForestChunk0068
import D0ForestChunk0069
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_953182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 108)))
theorem cover_953182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953182 := by
  apply coveredState_split_literal (state := state_953182) 2
    state_953183 state_953234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953183
  · exact cover_953234
#print axioms cover_953182

def state_953126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 108)))
theorem cover_953126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953126 := by
  apply coveredState_split_literal (state := state_953126) 0
    state_953127 state_953182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953127
  · exact cover_953182
#print axioms cover_953126

def state_952964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 108)))
theorem cover_952964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952964 := by
  apply coveredState_split_literal (state := state_952964) 3
    state_952965 state_953126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952965
  · exact cover_953126
#print axioms cover_952964

def state_952963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 54)))
theorem cover_952963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952963 := by
  apply coveredState_split_literal (state := state_952963) 4
    state_952964 state_953309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952964
  · exact cover_953309
#print axioms cover_952963

def state_953353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 71 else 108)))
theorem cover_953353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953353 := by
  apply coveredState_split_literal (state := state_953353) 0
    state_953354 state_953381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953354
  · exact cover_953381
#print axioms cover_953353

def state_953343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 108)))
theorem cover_953343 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953343 := by
  apply coveredState_split_literal (state := state_953343) 3
    state_953344 state_953353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953344
  · exact cover_953353
#print axioms cover_953343

def state_953342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 54)))
theorem cover_953342 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953342 := by
  apply coveredState_split_literal (state := state_953342) 4
    state_953343 state_953442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953343
  · exact cover_953442
#print axioms cover_953342

def state_952962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
theorem cover_952962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952962 := by
  apply coveredState_split_literal (state := state_952962) 2
    state_952963 state_953342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952963
  · exact cover_953342
#print axioms cover_952962

def state_953461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 54)))
theorem cover_953461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953461 := by
  apply coveredState_split_literal (state := state_953461) 4
    state_953462 state_953493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953462
  · exact cover_953493
#print axioms cover_953461

def state_953459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
theorem cover_953459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953459 := by
  apply coveredState_split_literal (state := state_953459) 2
    state_953460 state_953461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953460
  · exact cover_953461
#print axioms cover_953459

def state_952961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
theorem cover_952961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952961 := by
  apply coveredState_split_literal (state := state_952961) 1
    state_952962 state_953459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952962
  · exact cover_953459
#print axioms cover_952961

def state_952899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
theorem cover_952899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952899 := by
  apply coveredState_split_literal (state := state_952899) 0
    state_952900 state_952961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952900
  · exact cover_952961
#print axioms cover_952899

def state_952861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 54)))
theorem cover_952861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952861 := by
  apply coveredState_split_literal (state := state_952861) 3
    state_952862 state_952899
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952862
  · exact cover_952899
#print axioms cover_952861

def state_952860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 27)))
theorem cover_952860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952860 := by
  apply coveredState_split_literal (state := state_952860) 4
    state_952861 state_953544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952861
  · exact cover_953544
#print axioms cover_952860

def state_952859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
theorem cover_952859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952859 := by
  apply coveredState_split_literal (state := state_952859) 2
    state_952860 state_953575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952860
  · exact cover_953575
#print axioms cover_952859

def state_952625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
theorem cover_952625 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952625 := by
  apply coveredState_split_literal (state := state_952625) 1
    state_952626 state_952859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952626
  · exact cover_952859
#print axioms cover_952625

def state_952607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
theorem cover_952607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952607 := by
  apply coveredState_split_literal (state := state_952607) 0
    state_952608 state_952625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952608
  · exact cover_952625
#print axioms cover_952607

def state_952601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 27)))
theorem cover_952601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952601 := by
  apply coveredState_split_literal (state := state_952601) 3
    state_952602 state_952607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952602
  · exact cover_952607
#print axioms cover_952601

def state_951789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 13)))
theorem cover_951789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951789 := by
  apply coveredState_split_literal (state := state_951789) 4
    state_951790 state_952601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951790
  · exact cover_952601
#print axioms cover_951789

def state_951788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_951788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951788 := by
  apply coveredState_split_literal (state := state_951788) 2
    state_951789 state_953604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951789
  · exact cover_953604
#print axioms cover_951788

def state_951544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_951544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951544 := by
  apply coveredState_split_literal (state := state_951544) 1
    state_951545 state_951788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951545
  · exact cover_951788
#print axioms cover_951544

def state_953618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_953618 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953618 := by
  apply coveredState_split_literal (state := state_953618) 2
    state_953619 state_953674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953619
  · exact cover_953674
#print axioms cover_953618

def state_953712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 53)))
theorem cover_953712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953712 := by
  apply coveredState_split_literal (state := state_953712) 0
    state_953713 state_953774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953713
  · exact cover_953774
#print axioms cover_953712

def state_953702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 53)))
theorem cover_953702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953702 := by
  apply coveredState_split_literal (state := state_953702) 3
    state_953703 state_953712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953703
  · exact cover_953712
#print axioms cover_953702

def state_953690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 26)))
theorem cover_953690 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953690 := by
  apply coveredState_split_literal (state := state_953690) 4
    state_953691 state_953702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953691
  · exact cover_953702
#print axioms cover_953690

def state_953689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 26)))
theorem cover_953689 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953689 := by
  apply coveredState_split_literal (state := state_953689) 2
    state_953690 state_953781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953690
  · exact cover_953781
#print axioms cover_953689

def state_953688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 26)))
theorem cover_953688 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953688 := by
  apply coveredState_split_literal (state := state_953688) 1
    state_953689 state_953788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953689
  · exact cover_953788
#print axioms cover_953688

def state_953687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 26)))
theorem cover_953687 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953687 := by
  apply coveredState_split_literal (state := state_953687) 0
    state_953688 state_953827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953688
  · exact cover_953827
#print axioms cover_953687

def state_953685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 26)))
theorem cover_953685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953685 := by
  apply coveredState_split_literal (state := state_953685) 3
    state_953686 state_953687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953686
  · exact cover_953687
#print axioms cover_953685

def state_953908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 54)))
theorem cover_953908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953908 := by
  apply coveredState_split_literal (state := state_953908) 4
    state_953909 state_953966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953909
  · exact cover_953966
#print axioms cover_953908

def state_953907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
theorem cover_953907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953907 := by
  apply coveredState_split_literal (state := state_953907) 2
    state_953908 state_953977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953908
  · exact cover_953977
#print axioms cover_953907

def state_954012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
theorem cover_954012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954012 := by
  apply coveredState_split_literal (state := state_954012) 2
    state_954013 state_954058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954013
  · exact cover_954058
#print axioms cover_954012
end Mub6.Numerical.CircleFullD0.Forest
