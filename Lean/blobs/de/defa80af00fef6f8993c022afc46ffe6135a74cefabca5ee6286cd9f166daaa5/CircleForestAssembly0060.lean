import CircleFullInterface
import CircleForestAssembly0059
import CircleForestChunk0236
import CircleForestChunk0237
import CircleForestChunk0238
import CircleForestChunk0239
import CircleForestChunk0240
import CircleForestChunk0241
import CircleForestChunk0242
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_132175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_132175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132175 := by
  apply coveredState_split_literal (state := state_132175) 3
    state_132176 state_132177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132176
  · exact cover_132177
#print axioms cover_132175

def state_132174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_132174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132174 := by
  apply coveredState_split_literal (state := state_132174) 2
    state_132175 state_132356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132175
  · exact cover_132356
#print axioms cover_132174

def state_132405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_132405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132405 := by
  apply coveredState_split_literal (state := state_132405) 2
    state_132406 state_132457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132406
  · exact cover_132457
#print axioms cover_132405

def state_132173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_132173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132173 := by
  apply coveredState_split_literal (state := state_132173) 1
    state_132174 state_132405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132174
  · exact cover_132405
#print axioms cover_132173

def state_132172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_132172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132172 := by
  apply coveredState_split_literal (state := state_132172) 0
    state_132173 state_132512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132173
  · exact cover_132512
#print axioms cover_132172

def state_132574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_132574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132574 := by
  apply coveredState_split_literal (state := state_132574) 1
    state_132575 state_132608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132575
  · exact cover_132608
#print axioms cover_132574

def state_132702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_132702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132702 := by
  apply coveredState_split_literal (state := state_132702) 4
    state_132703 state_132758
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132703
  · exact cover_132758
#print axioms cover_132702

def state_132688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_132688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132688 := by
  apply coveredState_split_literal (state := state_132688) 3
    state_132689 state_132702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132689
  · exact cover_132702
#print axioms cover_132688

def state_132786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_132786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132786 := by
  apply coveredState_split_literal (state := state_132786) 0
    state_132787 state_132832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132787
  · exact cover_132832
#print axioms cover_132786

def state_132785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_132785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132785 := by
  apply coveredState_split_literal (state := state_132785) 4
    state_132786 state_132853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132786
  · exact cover_132853
#print axioms cover_132785

def state_132767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_132767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132767 := by
  apply coveredState_split_literal (state := state_132767) 3
    state_132768 state_132785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132768
  · exact cover_132785
#print axioms cover_132767

def state_132687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_132687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132687 := by
  apply coveredState_split_literal (state := state_132687) 2
    state_132688 state_132767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132688
  · exact cover_132767
#print axioms cover_132687

def state_132649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_132649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132649 := by
  apply coveredState_split_literal (state := state_132649) 1
    state_132650 state_132687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132650
  · exact cover_132687
#print axioms cover_132649

def state_132573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_132573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132573 := by
  apply coveredState_split_literal (state := state_132573) 0
    state_132574 state_132649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132574
  · exact cover_132649
#print axioms cover_132573

def state_132171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_132171 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132171 := by
  apply coveredState_split_literal (state := state_132171) 4
    state_132172 state_132573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132172
  · exact cover_132573
#print axioms cover_132171

def state_132860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_132860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132860 := by
  apply coveredState_split_literal (state := state_132860) 1
    state_132861 state_132916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132861
  · exact cover_132916
#print axioms cover_132860

def state_132955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_132955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132955 := by
  apply coveredState_split_literal (state := state_132955) 4
    state_132956 state_132965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132956
  · exact cover_132965
#print axioms cover_132955

def state_132954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_132954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132954 := by
  apply coveredState_split_literal (state := state_132954) 3
    state_132955 state_133024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132955
  · exact cover_133024
#print axioms cover_132954

def state_132936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_132936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132936 := by
  apply coveredState_split_literal (state := state_132936) 2
    state_132937 state_132954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132937
  · exact cover_132954
#print axioms cover_132936

def state_133056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_133056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133056 := by
  apply coveredState_split_literal (state := state_133056) 4
    state_133057 state_133068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133057
  · exact cover_133068
#print axioms cover_133056

def state_133055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_133055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133055 := by
  apply coveredState_split_literal (state := state_133055) 3
    state_133056 state_133129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133056
  · exact cover_133129
#print axioms cover_133055

def state_133037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_133037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133037 := by
  apply coveredState_split_literal (state := state_133037) 2
    state_133038 state_133055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133038
  · exact cover_133055
#print axioms cover_133037

def state_132935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_132935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132935 := by
  apply coveredState_split_literal (state := state_132935) 1
    state_132936 state_133037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132936
  · exact cover_133037
#print axioms cover_132935

def state_132859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_132859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132859 := by
  apply coveredState_split_literal (state := state_132859) 0
    state_132860 state_132935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132860
  · exact cover_132935
#print axioms cover_132859

def state_133145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_133145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133145 := by
  apply coveredState_split_literal (state := state_133145) 3
    state_133146 state_133197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133146
  · exact cover_133197
#print axioms cover_133145

def state_133144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_133144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133144 := by
  apply coveredState_split_literal (state := state_133144) 2
    state_133145 state_133210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133145
  · exact cover_133210
#print axioms cover_133144

def state_133143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_133143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133143 := by
  apply coveredState_split_literal (state := state_133143) 1
    state_133144 state_133231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133144
  · exact cover_133231
#print axioms cover_133143

def state_133294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_133294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133294 := by
  apply coveredState_split_literal (state := state_133294) 3
    state_133295 state_133340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133295
  · exact cover_133340
#print axioms cover_133294

def state_133361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_133361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133361 := by
  apply coveredState_split_literal (state := state_133361) 0
    state_133362 state_133403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133362
  · exact cover_133403
#print axioms cover_133361

def state_133360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_133360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133360 := by
  apply coveredState_split_literal (state := state_133360) 4
    state_133361 state_133446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133361
  · exact cover_133446
#print axioms cover_133360

def state_133359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_133359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133359 := by
  apply coveredState_split_literal (state := state_133359) 3
    state_133360 state_133447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133360
  · exact cover_133447
#print axioms cover_133359

def state_133293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_133293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133293 := by
  apply coveredState_split_literal (state := state_133293) 2
    state_133294 state_133359
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133294
  · exact cover_133359
#print axioms cover_133293
end Mub6.Numerical.CircleFullPrototype.Forest
