import D0FullInterface
import D0ForestAssembly0217
import D0ForestChunk0822
import D0ForestChunk0823
import D0ForestChunk0824
import D0ForestChunk0825
import D0ForestChunk0826
import D0ForestChunk0827
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1498581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 60)))
theorem cover_1498581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498581 := by
  apply coveredState_split_literal (state := state_1498581) 4
    state_1498582 state_1498645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498582
  · exact cover_1498645
#print axioms cover_1498581

def state_1498571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 60)))
theorem cover_1498571 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498571 := by
  apply coveredState_split_literal (state := state_1498571) 2
    state_1498572 state_1498581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498572
  · exact cover_1498581
#print axioms cover_1498571

def state_1498691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 174) else (if j.val < 3 then 163 else (if j.val < 4 then 206 else 120)))
theorem cover_1498691 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498691 := by
  apply coveredState_split_literal (state := state_1498691) 4
    state_1498692 state_1498749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498692
  · exact cover_1498749
#print axioms cover_1498691

def state_1498683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 174) else (if j.val < 3 then 81 else (if j.val < 4 then 206 else 120)))
theorem cover_1498683 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498683 := by
  apply coveredState_split_literal (state := state_1498683) 2
    state_1498684 state_1498691
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498684
  · exact cover_1498691
#print axioms cover_1498683

def state_1498682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 206 else 120)))
theorem cover_1498682 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498682 := by
  apply coveredState_split_literal (state := state_1498682) 1
    state_1498683 state_1498758
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498683
  · exact cover_1498758
#print axioms cover_1498682

def state_1498681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 120)))
theorem cover_1498681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498681 := by
  apply coveredState_split_literal (state := state_1498681) 3
    state_1498682 state_1498795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498682
  · exact cover_1498795
#print axioms cover_1498681

def state_1498663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 120)))
theorem cover_1498663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498663 := by
  apply coveredState_split_literal (state := state_1498663) 0
    state_1498664 state_1498681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498664
  · exact cover_1498681
#print axioms cover_1498663

def state_1498662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 60)))
theorem cover_1498662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498662 := by
  apply coveredState_split_literal (state := state_1498662) 4
    state_1498663 state_1498796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498663
  · exact cover_1498796
#print axioms cover_1498662

def state_1498654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 60)))
theorem cover_1498654 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498654 := by
  apply coveredState_split_literal (state := state_1498654) 2
    state_1498655 state_1498662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498655
  · exact cover_1498662
#print axioms cover_1498654

def state_1498570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 60)))
theorem cover_1498570 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498570 := by
  apply coveredState_split_literal (state := state_1498570) 1
    state_1498571 state_1498654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498571
  · exact cover_1498654
#print axioms cover_1498570

def state_1498364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 60)))
theorem cover_1498364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498364 := by
  apply coveredState_split_literal (state := state_1498364) 3
    state_1498365 state_1498570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498365
  · exact cover_1498570
#print axioms cover_1498364

def state_1498328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 60)))
theorem cover_1498328 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498328 := by
  apply coveredState_split_literal (state := state_1498328) 0
    state_1498329 state_1498364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498329
  · exact cover_1498364
#print axioms cover_1498328

def state_1498327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 30)))
theorem cover_1498327 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498327 := by
  apply coveredState_split_literal (state := state_1498327) 4
    state_1498328 state_1498811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498328
  · exact cover_1498811
#print axioms cover_1498327

def state_1498839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 60)))
theorem cover_1498839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498839 := by
  apply coveredState_split_literal (state := state_1498839) 3
    state_1498840 state_1498853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498840
  · exact cover_1498853
#print axioms cover_1498839

def state_1498829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 60)))
theorem cover_1498829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498829 := by
  apply coveredState_split_literal (state := state_1498829) 0
    state_1498830 state_1498839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498830
  · exact cover_1498839
#print axioms cover_1498829

def state_1498828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 30)))
theorem cover_1498828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498828 := by
  apply coveredState_split_literal (state := state_1498828) 4
    state_1498829 state_1498906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498829
  · exact cover_1498906
#print axioms cover_1498828

def state_1498326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 30)))
theorem cover_1498326 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498326 := by
  apply coveredState_split_literal (state := state_1498326) 2
    state_1498327 state_1498828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498327
  · exact cover_1498828
#print axioms cover_1498326

def state_1498288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 30)))
theorem cover_1498288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498288 := by
  apply coveredState_split_literal (state := state_1498288) 1
    state_1498289 state_1498326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498289
  · exact cover_1498326
#print axioms cover_1498288

def state_1498186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 30)))
theorem cover_1498186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498186 := by
  apply coveredState_split_literal (state := state_1498186) 3
    state_1498187 state_1498288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498187
  · exact cover_1498288
#print axioms cover_1498186

def state_1498156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 30)))
theorem cover_1498156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498156 := by
  apply coveredState_split_literal (state := state_1498156) 0
    state_1498157 state_1498186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498157
  · exact cover_1498186
#print axioms cover_1498156

def state_1498155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 15)))
theorem cover_1498155 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498155 := by
  apply coveredState_split_literal (state := state_1498155) 4
    state_1498156 state_1498907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498156
  · exact cover_1498907
#print axioms cover_1498155

def state_1498154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 15)))
theorem cover_1498154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498154 := by
  apply coveredState_split_literal (state := state_1498154) 2
    state_1498155 state_1498908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498155
  · exact cover_1498908
#print axioms cover_1498154

def state_1498152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 15)))
theorem cover_1498152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498152 := by
  apply coveredState_split_literal (state := state_1498152) 1
    state_1498153 state_1498154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498153
  · exact cover_1498154
#print axioms cover_1498152

def state_1498136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 15)))
theorem cover_1498136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498136 := by
  apply coveredState_split_literal (state := state_1498136) 3
    state_1498137 state_1498152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498137
  · exact cover_1498152
#print axioms cover_1498136

def state_1499096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 120)))
theorem cover_1499096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499096 := by
  apply coveredState_split_literal (state := state_1499096) 3
    state_1499097 state_1499108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499097
  · exact cover_1499108
#print axioms cover_1499096

def state_1499095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 120)))
theorem cover_1499095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499095 := by
  apply coveredState_split_literal (state := state_1499095) 0
    state_1499096 state_1499165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499096
  · exact cover_1499165
#print axioms cover_1499095

def state_1499094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 60)))
theorem cover_1499094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499094 := by
  apply coveredState_split_literal (state := state_1499094) 4
    state_1499095 state_1499172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499095
  · exact cover_1499172
#print axioms cover_1499094

def state_1499060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 60)))
theorem cover_1499060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499060 := by
  apply coveredState_split_literal (state := state_1499060) 2
    state_1499061 state_1499094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499061
  · exact cover_1499094
#print axioms cover_1499060

def state_1499048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 60)))
theorem cover_1499048 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499048 := by
  apply coveredState_split_literal (state := state_1499048) 1
    state_1499049 state_1499060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499049
  · exact cover_1499060
#print axioms cover_1499048

def state_1499221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 174) else (if j.val < 3 then 81 else (if j.val < 4 then 206 else 120)))
theorem cover_1499221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499221 := by
  apply coveredState_split_literal (state := state_1499221) 2
    state_1499222 state_1499233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499222
  · exact cover_1499233
#print axioms cover_1499221

def state_1499306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 175) else (if j.val < 3 then 163 else (if j.val < 4 then 206 else 120)))
theorem cover_1499306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499306 := by
  apply coveredState_split_literal (state := state_1499306) 4
    state_1499307 state_1499340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499307
  · exact cover_1499340
#print axioms cover_1499306

def state_1499292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 175) else (if j.val < 3 then 81 else (if j.val < 4 then 206 else 120)))
theorem cover_1499292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499292 := by
  apply coveredState_split_literal (state := state_1499292) 2
    state_1499293 state_1499306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499293
  · exact cover_1499306
#print axioms cover_1499292
end Mub6.Numerical.CircleFullD0.Forest
