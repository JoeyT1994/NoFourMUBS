import CircleFullInterface
import CircleForestAssembly0406
import CircleForestChunk1582
import CircleForestChunk1584
import CircleForestChunk1585
import CircleForestChunk1586
import CircleForestChunk1587
import CircleForestChunk1588
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2253576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 46 else 27)))
theorem cover_2253576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253576 := by
  apply coveredState_split_literal (state := state_2253576) 1
    state_2253577 state_2253612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253577
  · exact cover_2253612
#print axioms cover_2253576

def state_2253575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 27)))
theorem cover_2253575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253575 := by
  apply coveredState_split_literal (state := state_2253575) 3
    state_2253576 state_2253837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253576
  · exact cover_2253837
#print axioms cover_2253575

def state_2253957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 88 else (if j.val < 4 then 92 else 55)))
theorem cover_2253957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253957 := by
  apply coveredState_split_literal (state := state_2253957) 4
    state_2253958 state_2254009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253958
  · exact cover_2254009
#print axioms cover_2253957

def state_2253956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 44 else (if j.val < 4 then 92 else 55)))
theorem cover_2253956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253956 := by
  apply coveredState_split_literal (state := state_2253956) 2
    state_2253957 state_2254038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253957
  · exact cover_2254038
#print axioms cover_2253956

def state_2253950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 92 else 55)))
theorem cover_2253950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253950 := by
  apply coveredState_split_literal (state := state_2253950) 1
    state_2253951 state_2253956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253951
  · exact cover_2253956
#print axioms cover_2253950

def state_2253949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 55)))
theorem cover_2253949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253949 := by
  apply coveredState_split_literal (state := state_2253949) 3
    state_2253950 state_2254047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253950
  · exact cover_2254047
#print axioms cover_2253949

def state_2253948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 55)))
theorem cover_2253948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253948 := by
  apply coveredState_split_literal (state := state_2253948) 0
    state_2253949 state_2254068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253949
  · exact cover_2254068
#print axioms cover_2253948

def state_2253886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 27)))
theorem cover_2253886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253886 := by
  apply coveredState_split_literal (state := state_2253886) 4
    state_2253887 state_2253948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253887
  · exact cover_2253948
#print axioms cover_2253886

def state_2253885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 22 else (if j.val < 4 then 46 else 27)))
theorem cover_2253885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253885 := by
  apply coveredState_split_literal (state := state_2253885) 2
    state_2253886 state_2254101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253886
  · exact cover_2254101
#print axioms cover_2253885

def state_2253879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 46 else 27)))
theorem cover_2253879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253879 := by
  apply coveredState_split_literal (state := state_2253879) 1
    state_2253880 state_2253885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253880
  · exact cover_2253885
#print axioms cover_2253879

def state_2253878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 27)))
theorem cover_2253878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253878 := by
  apply coveredState_split_literal (state := state_2253878) 3
    state_2253879 state_2254114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253879
  · exact cover_2254114
#print axioms cover_2253878

def state_2253574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 27)))
theorem cover_2253574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253574 := by
  apply coveredState_split_literal (state := state_2253574) 0
    state_2253575 state_2253878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253575
  · exact cover_2253878
#print axioms cover_2253574

def state_2253572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 13)))
theorem cover_2253572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253572 := by
  apply coveredState_split_literal (state := state_2253572) 4
    state_2253573 state_2253574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253573
  · exact cover_2253574
#print axioms cover_2253572

def state_2253138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 13)))
theorem cover_2253138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253138 := by
  apply coveredState_split_literal (state := state_2253138) 3
    state_2253139 state_2253572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253139
  · exact cover_2253572
#print axioms cover_2253138

def state_2253137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 13)))
theorem cover_2253137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253137 := by
  apply coveredState_split_literal (state := state_2253137) 2
    state_2253138 state_2254141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253138
  · exact cover_2254141
#print axioms cover_2253137

def state_2253121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 13)))
theorem cover_2253121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253121 := by
  apply coveredState_split_literal (state := state_2253121) 1
    state_2253122 state_2253137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253122
  · exact cover_2253137
#print axioms cover_2253121

def state_2253120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 13)))
theorem cover_2253120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253120 := by
  apply coveredState_split_literal (state := state_2253120) 0
    state_2253121 state_2254160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253121
  · exact cover_2254160
#print axioms cover_2253120

def state_2253116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 6)))
theorem cover_2253116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253116 := by
  apply coveredState_split_literal (state := state_2253116) 4
    state_2253117 state_2253120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253117
  · exact cover_2253120
#print axioms cover_2253116

def state_2253112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 6)))
theorem cover_2253112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253112 := by
  apply coveredState_split_literal (state := state_2253112) 3
    state_2253113 state_2253116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253113
  · exact cover_2253116
#print axioms cover_2253112

def state_2248446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_2248446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248446 := by
  apply coveredState_split_literal (state := state_2248446) 2
    state_2248447 state_2253112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248447
  · exact cover_2253112
#print axioms cover_2248446

def state_2254298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 21 else 13)))
theorem cover_2254298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254298 := by
  apply coveredState_split_literal (state := state_2254298) 4
    state_2254299 state_2254312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254299
  · exact cover_2254312
#print axioms cover_2254298

def state_2254292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 10 else 13)))
theorem cover_2254292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254292 := by
  apply coveredState_split_literal (state := state_2254292) 3
    state_2254293 state_2254298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254293
  · exact cover_2254298
#print axioms cover_2254292

def state_2254274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 13)))
theorem cover_2254274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254274 := by
  apply coveredState_split_literal (state := state_2254274) 2
    state_2254275 state_2254292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254275
  · exact cover_2254292
#print axioms cover_2254274

def state_2254273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 13)))
theorem cover_2254273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254273 := by
  apply coveredState_split_literal (state := state_2254273) 1
    state_2254274 state_2254369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254274
  · exact cover_2254369
#print axioms cover_2254273

def state_2254243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 13)))
theorem cover_2254243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254243 := by
  apply coveredState_split_literal (state := state_2254243) 0
    state_2254244 state_2254273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254244
  · exact cover_2254273
#print axioms cover_2254243

def state_2254221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 6)))
theorem cover_2254221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254221 := by
  apply coveredState_split_literal (state := state_2254221) 4
    state_2254222 state_2254243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254222
  · exact cover_2254243
#print axioms cover_2254221

def state_2254385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 12)))
theorem cover_2254385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254385 := by
  apply coveredState_split_literal (state := state_2254385) 4
    state_2254386 state_2254403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254386
  · exact cover_2254403
#print axioms cover_2254385

def state_2254475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 25)))
theorem cover_2254475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254475 := by
  apply coveredState_split_literal (state := state_2254475) 4
    state_2254476 state_2254493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254476
  · exact cover_2254493
#print axioms cover_2254475

def state_2254474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 25)))
theorem cover_2254474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254474 := by
  apply coveredState_split_literal (state := state_2254474) 3
    state_2254475 state_2254548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254475
  · exact cover_2254548
#print axioms cover_2254474

def state_2254468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 25)))
theorem cover_2254468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254468 := by
  apply coveredState_split_literal (state := state_2254468) 0
    state_2254469 state_2254474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254469
  · exact cover_2254474
#print axioms cover_2254468

def state_2254467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 25)))
theorem cover_2254467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254467 := by
  apply coveredState_split_literal (state := state_2254467) 2
    state_2254468 state_2254571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254468
  · exact cover_2254571
#print axioms cover_2254467

def state_2254466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 25)))
theorem cover_2254466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254466 := by
  apply coveredState_split_literal (state := state_2254466) 1
    state_2254467 state_2254572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254467
  · exact cover_2254572
#print axioms cover_2254466
end Mub6.Numerical.CircleFullD0.Forest
