import CircleFullInterface
import CircleForestAssembly0430
import CircleForestChunk1682
import CircleForestChunk1683
import CircleForestChunk1685
import CircleForestChunk1686
import CircleForestChunk1687
import CircleForestChunk1688
import CircleForestChunk1689
import CircleForestChunk1690
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2277972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 62)))
theorem cover_2277972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277972 := by
  apply coveredState_split_literal (state := state_2277972) 2
    state_2277973 state_2278028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277973
  · exact cover_2278028
#print axioms cover_2277972

def state_2277971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 31)))
theorem cover_2277971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277971 := by
  apply coveredState_split_literal (state := state_2277971) 4
    state_2277972 state_2278045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277972
  · exact cover_2278045
#print axioms cover_2277971

def state_2278096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 43 else 62)))
theorem cover_2278096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278096 := by
  apply coveredState_split_literal (state := state_2278096) 0
    state_2278097 state_2278144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278097
  · exact cover_2278144
#print axioms cover_2278096

def state_2278201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 87 else 62)))
theorem cover_2278201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278201 := by
  apply coveredState_split_literal (state := state_2278201) 4
    state_2278202 state_2278227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278202
  · exact cover_2278227
#print axioms cover_2278201

def state_2278200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 87 else 62)))
theorem cover_2278200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278200 := by
  apply coveredState_split_literal (state := state_2278200) 1
    state_2278201 state_2278272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278201
  · exact cover_2278272
#print axioms cover_2278200

def state_2278194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 43 else 62)))
theorem cover_2278194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278194 := by
  apply coveredState_split_literal (state := state_2278194) 3
    state_2278195 state_2278200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278195
  · exact cover_2278200
#print axioms cover_2278194

def state_2278301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 87 else 62)))
theorem cover_2278301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278301 := by
  apply coveredState_split_literal (state := state_2278301) 1
    state_2278302 state_2278345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278302
  · exact cover_2278345
#print axioms cover_2278301

def state_2278295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 43 else 62)))
theorem cover_2278295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278295 := by
  apply coveredState_split_literal (state := state_2278295) 3
    state_2278296 state_2278301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278296
  · exact cover_2278301
#print axioms cover_2278295

def state_2278193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 43 else 62)))
theorem cover_2278193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278193 := by
  apply coveredState_split_literal (state := state_2278193) 0
    state_2278194 state_2278295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278194
  · exact cover_2278295
#print axioms cover_2278193

def state_2278095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 62)))
theorem cover_2278095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278095 := by
  apply coveredState_split_literal (state := state_2278095) 2
    state_2278096 state_2278193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278096
  · exact cover_2278193
#print axioms cover_2278095

def state_2278451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 87 else 63)))
theorem cover_2278451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278451 := by
  apply coveredState_split_literal (state := state_2278451) 4
    state_2278452 state_2278515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278452
  · exact cover_2278515
#print axioms cover_2278451

def state_2278450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 87 else 63)))
theorem cover_2278450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278450 := by
  apply coveredState_split_literal (state := state_2278450) 1
    state_2278451 state_2278516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278451
  · exact cover_2278516
#print axioms cover_2278450

def state_2278440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 43 else 63)))
theorem cover_2278440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278440 := by
  apply coveredState_split_literal (state := state_2278440) 3
    state_2278441 state_2278450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278441
  · exact cover_2278450
#print axioms cover_2278440

def state_2278412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 43 else 63)))
theorem cover_2278412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278412 := by
  apply coveredState_split_literal (state := state_2278412) 0
    state_2278413 state_2278440
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278413
  · exact cover_2278440
#print axioms cover_2278412

def state_2278394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 63)))
theorem cover_2278394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278394 := by
  apply coveredState_split_literal (state := state_2278394) 2
    state_2278395 state_2278412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278395
  · exact cover_2278412
#print axioms cover_2278394

def state_2278094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 31)))
theorem cover_2278094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278094 := by
  apply coveredState_split_literal (state := state_2278094) 4
    state_2278095 state_2278394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278095
  · exact cover_2278394
#print axioms cover_2278094

def state_2277970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 31)))
theorem cover_2277970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277970 := by
  apply coveredState_split_literal (state := state_2277970) 1
    state_2277971 state_2278094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277971
  · exact cover_2278094
#print axioms cover_2277970

def state_2277942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 21 else 31)))
theorem cover_2277942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277942 := by
  apply coveredState_split_literal (state := state_2277942) 3
    state_2277943 state_2277970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277943
  · exact cover_2277970
#print axioms cover_2277942

def state_2277812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 21 else 31)))
theorem cover_2277812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277812 := by
  apply coveredState_split_literal (state := state_2277812) 0
    state_2277813 state_2277942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277813
  · exact cover_2277942
#print axioms cover_2277812

def state_2277762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 31)))
theorem cover_2277762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277762 := by
  apply coveredState_split_literal (state := state_2277762) 2
    state_2277763 state_2277812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277763
  · exact cover_2277812
#print axioms cover_2277762

def state_2277284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 15)))
theorem cover_2277284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277284 := by
  apply coveredState_split_literal (state := state_2277284) 4
    state_2277285 state_2277762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277285
  · exact cover_2277762
#print axioms cover_2277284

def state_2277283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 15)))
theorem cover_2277283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277283 := by
  apply coveredState_split_literal (state := state_2277283) 1
    state_2277284 state_2278563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277284
  · exact cover_2278563
#print axioms cover_2277283

def state_2277259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 15)))
theorem cover_2277259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277259 := by
  apply coveredState_split_literal (state := state_2277259) 3
    state_2277260 state_2277283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277260
  · exact cover_2277283
#print axioms cover_2277259

def state_2277143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 15)))
theorem cover_2277143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277143 := by
  apply coveredState_split_literal (state := state_2277143) 0
    state_2277144 state_2277259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277144
  · exact cover_2277259
#print axioms cover_2277143

def state_2277097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 15)))
theorem cover_2277097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277097 := by
  apply coveredState_split_literal (state := state_2277097) 2
    state_2277098 state_2277143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277098
  · exact cover_2277143
#print axioms cover_2277097

def state_2276817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
theorem cover_2276817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276817 := by
  apply coveredState_split_literal (state := state_2276817) 4
    state_2276818 state_2277097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276818
  · exact cover_2277097
#print axioms cover_2276817

def state_2276816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
theorem cover_2276816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276816 := by
  apply coveredState_split_literal (state := state_2276816) 1
    state_2276817 state_2278614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276817
  · exact cover_2278614
#print axioms cover_2276816

def state_2278683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 29)))
theorem cover_2278683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278683 := by
  apply coveredState_split_literal (state := state_2278683) 2
    state_2278684 state_2278693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278684
  · exact cover_2278693
#print axioms cover_2278683

def state_2278645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2278645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278645 := by
  apply coveredState_split_literal (state := state_2278645) 4
    state_2278646 state_2278683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278646
  · exact cover_2278683
#print axioms cover_2278645

def state_2278644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2278644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278644 := by
  apply coveredState_split_literal (state := state_2278644) 1
    state_2278645 state_2278754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278645
  · exact cover_2278754
#print axioms cover_2278644

def state_2278643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2278643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278643 := by
  apply coveredState_split_literal (state := state_2278643) 0
    state_2278644 state_2278765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278644
  · exact cover_2278765
#print axioms cover_2278643

def state_2278642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 14)))
theorem cover_2278642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278642 := by
  apply coveredState_split_literal (state := state_2278642) 3
    state_2278643 state_2278812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278643
  · exact cover_2278812
#print axioms cover_2278642
end Mub6.Numerical.CircleFullD0.Forest
