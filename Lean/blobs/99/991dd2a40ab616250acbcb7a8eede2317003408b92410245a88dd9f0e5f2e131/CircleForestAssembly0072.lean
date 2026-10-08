import CircleFullInterface
import CircleForestAssembly0071
import CircleForestChunk0286
import CircleForestChunk0287
import CircleForestChunk0288
import CircleForestChunk0289
import CircleForestChunk0290
import CircleForestChunk0291
import CircleForestChunk0292
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_144153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
theorem cover_144153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144153 := by
  apply coveredState_split_literal (state := state_144153) 2
    state_144154 state_144431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144154
  · exact cover_144431
#print axioms cover_144153

def state_144152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_144152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144152 := by
  apply coveredState_split_literal (state := state_144152) 4
    state_144153 state_144466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144153
  · exact cover_144466
#print axioms cover_144152

def state_144146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_144146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144146 := by
  apply coveredState_split_literal (state := state_144146) 1
    state_144147 state_144152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144147
  · exact cover_144152
#print axioms cover_144146

def state_144138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_144138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144138 := by
  apply coveredState_split_literal (state := state_144138) 0
    state_144139 state_144146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144139
  · exact cover_144146
#print axioms cover_144138

def state_143824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_143824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143824 := by
  apply coveredState_split_literal (state := state_143824) 4
    state_143825 state_144138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143825
  · exact cover_144138
#print axioms cover_143824

def state_143646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_143646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143646 := by
  apply coveredState_split_literal (state := state_143646) 3
    state_143647 state_143824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143647
  · exact cover_143824
#print axioms cover_143646

def state_143026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_143026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143026 := by
  apply coveredState_split_literal (state := state_143026) 2
    state_143027 state_143646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143027
  · exact cover_143646
#print axioms cover_143026

def state_144595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 10)))
theorem cover_144595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144595 := by
  apply coveredState_split_literal (state := state_144595) 2
    state_144596 state_144603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144596
  · exact cover_144603
#print axioms cover_144595

def state_144593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 10)))
theorem cover_144593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144593 := by
  apply coveredState_split_literal (state := state_144593) 0
    state_144594 state_144595
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144594
  · exact cover_144595
#print axioms cover_144593

def state_144592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 10)))
theorem cover_144592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144592 := by
  apply coveredState_split_literal (state := state_144592) 3
    state_144593 state_144662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144593
  · exact cover_144662
#print axioms cover_144592

def state_144591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 10)))
theorem cover_144591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144591 := by
  apply coveredState_split_literal (state := state_144591) 1
    state_144592 state_144721
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144592
  · exact cover_144721
#print axioms cover_144591

def state_144590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
theorem cover_144590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144590 := by
  apply coveredState_split_literal (state := state_144590) 4
    state_144591 state_144724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144591
  · exact cover_144724
#print axioms cover_144590

def state_144588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_144588 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144588 := by
  apply coveredState_split_literal (state := state_144588) 2
    state_144589 state_144590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144589
  · exact cover_144590
#print axioms cover_144588

def state_144586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_144586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144586 := by
  apply coveredState_split_literal (state := state_144586) 0
    state_144587 state_144588
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144587
  · exact cover_144588
#print axioms cover_144586

def state_144548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_144548 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144548 := by
  apply coveredState_split_literal (state := state_144548) 4
    state_144549 state_144586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144549
  · exact cover_144586
#print axioms cover_144548

def state_144488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_144488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144488 := by
  apply coveredState_split_literal (state := state_144488) 3
    state_144489 state_144548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144489
  · exact cover_144548
#print axioms cover_144488

def state_144798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 4)))
theorem cover_144798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144798 := by
  apply coveredState_split_literal (state := state_144798) 3
    state_144799 state_144838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144799
  · exact cover_144838
#print axioms cover_144798

def state_144797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
theorem cover_144797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144797 := by
  apply coveredState_split_literal (state := state_144797) 2
    state_144798 state_144889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144798
  · exact cover_144889
#print axioms cover_144797

def state_144796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
theorem cover_144796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144796 := by
  apply coveredState_split_literal (state := state_144796) 1
    state_144797 state_144898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144797
  · exact cover_144898
#print axioms cover_144796

def state_144780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
theorem cover_144780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144780 := by
  apply coveredState_split_literal (state := state_144780) 0
    state_144781 state_144796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144781
  · exact cover_144796
#print axioms cover_144780

def state_145025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 20)))
theorem cover_145025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145025 := by
  apply coveredState_split_literal (state := state_145025) 1
    state_145026 state_145085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145026
  · exact cover_145085
#print axioms cover_145025

def state_145133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 40)))
theorem cover_145133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145133 := by
  apply coveredState_split_literal (state := state_145133) 0
    state_145134 state_145171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145134
  · exact cover_145171
#print axioms cover_145133

def state_145212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 41)))
theorem cover_145212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145212 := by
  apply coveredState_split_literal (state := state_145212) 0
    state_145213 state_145258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145213
  · exact cover_145258
#print axioms cover_145212

def state_145132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 20)))
theorem cover_145132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145132 := by
  apply coveredState_split_literal (state := state_145132) 4
    state_145133 state_145212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145133
  · exact cover_145212
#print axioms cover_145132

def state_145108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 20)))
theorem cover_145108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145108 := by
  apply coveredState_split_literal (state := state_145108) 3
    state_145109 state_145132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145109
  · exact cover_145132
#print axioms cover_145108

def state_145390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 114 else (if j.val < 4 then 59 else 41)))
theorem cover_145390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145390 := by
  apply coveredState_split_literal (state := state_145390) 1
    state_145391 state_145406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145391
  · exact cover_145406
#print axioms cover_145390

def state_145389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 41)))
theorem cover_145389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145389 := by
  apply coveredState_split_literal (state := state_145389) 2
    state_145390 state_145467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145390
  · exact cover_145467
#print axioms cover_145389

def state_145341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 41)))
theorem cover_145341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145341 := by
  apply coveredState_split_literal (state := state_145341) 0
    state_145342 state_145389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145342
  · exact cover_145389
#print axioms cover_145341

def state_145317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 20)))
theorem cover_145317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145317 := by
  apply coveredState_split_literal (state := state_145317) 4
    state_145318 state_145341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145318
  · exact cover_145341
#print axioms cover_145317

def state_145295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 20)))
theorem cover_145295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145295 := by
  apply coveredState_split_literal (state := state_145295) 3
    state_145296 state_145317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145296
  · exact cover_145317
#print axioms cover_145295

def state_145107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 20)))
theorem cover_145107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145107 := by
  apply coveredState_split_literal (state := state_145107) 2
    state_145108 state_145295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145108
  · exact cover_145295
#print axioms cover_145107

def state_145483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 20)))
theorem cover_145483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145483 := by
  apply coveredState_split_literal (state := state_145483) 3
    state_145484 state_145493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145484
  · exact cover_145493
#print axioms cover_145483
end Mub6.Numerical.CircleFullPrototype.Forest
