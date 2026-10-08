import CircleFullInterface
import CircleForestAssembly0118
import CircleForestAssembly0121
import CircleForestAssembly0122
import CircleForestChunk0486
import CircleForestChunk0487
import CircleForestChunk0488
import CircleForestChunk0489
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_277962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 9)))
theorem cover_277962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277962 := by
  apply coveredState_split_literal (state := state_277962) 2
    state_277963 state_278104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277963
  · exact cover_278104
#print axioms cover_277962

def state_278136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 92) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 36)))
theorem cover_278136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278136 := by
  apply coveredState_split_literal (state := state_278136) 3
    state_278137 state_278156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278137
  · exact cover_278156
#print axioms cover_278136

def state_278135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 46) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 36)))
theorem cover_278135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278135 := by
  apply coveredState_split_literal (state := state_278135) 1
    state_278136 state_278201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278136
  · exact cover_278201
#print axioms cover_278135

def state_278134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 36)))
theorem cover_278134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278134 := by
  apply coveredState_split_literal (state := state_278134) 0
    state_278135 state_278214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278135
  · exact cover_278214
#print axioms cover_278134

def state_278133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 18)))
theorem cover_278133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278133 := by
  apply coveredState_split_literal (state := state_278133) 4
    state_278134 state_278229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278134
  · exact cover_278229
#print axioms cover_278133

def state_278132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 18 else (if j.val < 4 then 57 else 18)))
theorem cover_278132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278132 := by
  apply coveredState_split_literal (state := state_278132) 2
    state_278133 state_278242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278133
  · exact cover_278242
#print axioms cover_278132

def state_278116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 18)))
theorem cover_278116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278116 := by
  apply coveredState_split_literal (state := state_278116) 3
    state_278117 state_278132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278117
  · exact cover_278132
#print axioms cover_278116

def state_278115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 18)))
theorem cover_278115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278115 := by
  apply coveredState_split_literal (state := state_278115) 1
    state_278116 state_278255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278116
  · exact cover_278255
#print axioms cover_278115

def state_278114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 18)))
theorem cover_278114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278114 := by
  apply coveredState_split_literal (state := state_278114) 0
    state_278115 state_278268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278115
  · exact cover_278268
#print axioms cover_278114

def state_278113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 9)))
theorem cover_278113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278113 := by
  apply coveredState_split_literal (state := state_278113) 4
    state_278114 state_278283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278114
  · exact cover_278283
#print axioms cover_278113

def state_278298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 36 else (if j.val < 4 then 58 else 36)))
theorem cover_278298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278298 := by
  apply coveredState_split_literal (state := state_278298) 0
    state_278299 state_278352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278299
  · exact cover_278352
#print axioms cover_278298

def state_278297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 36 else (if j.val < 4 then 58 else 18)))
theorem cover_278297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278297 := by
  apply coveredState_split_literal (state := state_278297) 4
    state_278298 state_278375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278298
  · exact cover_278375
#print axioms cover_278297

def state_278296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 36 else (if j.val < 4 then 29 else 18)))
theorem cover_278296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278296 := by
  apply coveredState_split_literal (state := state_278296) 3
    state_278297 state_278392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278297
  · exact cover_278392
#print axioms cover_278296

def state_278295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 18)))
theorem cover_278295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278295 := by
  apply coveredState_split_literal (state := state_278295) 2
    state_278296 state_278409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278296
  · exact cover_278409
#print axioms cover_278295

def state_278294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 18)))
theorem cover_278294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278294 := by
  apply coveredState_split_literal (state := state_278294) 1
    state_278295 state_278440
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278295
  · exact cover_278440
#print axioms cover_278294

def state_278293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 18)))
theorem cover_278293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278293 := by
  apply coveredState_split_literal (state := state_278293) 0
    state_278294 state_278473
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278294
  · exact cover_278473
#print axioms cover_278293

def state_278292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 9)))
theorem cover_278292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278292 := by
  apply coveredState_split_literal (state := state_278292) 4
    state_278293 state_278508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278293
  · exact cover_278508
#print axioms cover_278292

def state_278112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 9)))
theorem cover_278112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278112 := by
  apply coveredState_split_literal (state := state_278112) 3
    state_278113 state_278292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278113
  · exact cover_278292
#print axioms cover_278112

def state_278111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 9)))
theorem cover_278111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278111 := by
  apply coveredState_split_literal (state := state_278111) 2
    state_278112 state_278531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278112
  · exact cover_278531
#print axioms cover_278111

def state_277961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 9)))
theorem cover_277961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277961 := by
  apply coveredState_split_literal (state := state_277961) 1
    state_277962 state_278111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277962
  · exact cover_278111
#print axioms cover_277961

def state_277761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 9)))
theorem cover_277761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277761 := by
  apply coveredState_split_literal (state := state_277761) 0
    state_277762 state_277961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277762
  · exact cover_277961
#print axioms cover_277761

def state_276797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 4)))
theorem cover_276797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276797 := by
  apply coveredState_split_literal (state := state_276797) 4
    state_276798 state_277761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276798
  · exact cover_277761
#print axioms cover_276797

def state_278642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 9)))
theorem cover_278642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278642 := by
  apply coveredState_split_literal (state := state_278642) 2
    state_278643 state_278702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278643
  · exact cover_278702
#print axioms cover_278642

def state_278628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 9)))
theorem cover_278628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278628 := by
  apply coveredState_split_literal (state := state_278628) 1
    state_278629 state_278642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278629
  · exact cover_278642
#print axioms cover_278628

def state_278606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 9)))
theorem cover_278606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278606 := by
  apply coveredState_split_literal (state := state_278606) 0
    state_278607 state_278628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278607
  · exact cover_278628
#print axioms cover_278606

def state_278572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 4)))
theorem cover_278572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278572 := by
  apply coveredState_split_literal (state := state_278572) 4
    state_278573 state_278606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278573
  · exact cover_278606
#print axioms cover_278572

def state_276796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 4)))
theorem cover_276796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276796 := by
  apply coveredState_split_literal (state := state_276796) 3
    state_276797 state_278572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276797
  · exact cover_278572
#print axioms cover_276796

def state_274138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
theorem cover_274138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274138 := by
  apply coveredState_split_literal (state := state_274138) 2
    state_274139 state_276796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274139
  · exact cover_276796
#print axioms cover_274138

def state_274026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
theorem cover_274026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274026 := by
  apply coveredState_split_literal (state := state_274026) 1
    state_274027 state_274138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274027
  · exact cover_274138
#print axioms cover_274026

def state_273904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
theorem cover_273904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273904 := by
  apply coveredState_split_literal (state := state_273904) 0
    state_273905 state_274026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273905
  · exact cover_274026
#print axioms cover_273904

def state_278725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_278725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278725 := by
  apply coveredState_split_literal (state := state_278725) 0
    state_278726 state_278743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278726
  · exact cover_278743
#print axioms cover_278725

def state_273903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_273903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273903 := by
  apply coveredState_split_literal (state := state_273903) 4
    state_273904 state_278725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273904
  · exact cover_278725
#print axioms cover_273903
end Mub6.Numerical.CircleFullPrototype.Forest
