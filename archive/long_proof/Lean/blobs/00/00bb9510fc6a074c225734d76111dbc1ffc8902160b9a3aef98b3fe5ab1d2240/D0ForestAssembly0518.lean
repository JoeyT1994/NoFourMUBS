import D0FullInterface
import D0ForestAssembly0510
import D0ForestAssembly0511
import D0ForestAssembly0513
import D0ForestAssembly0514
import D0ForestAssembly0517
import D0ForestChunk2019
import D0ForestChunk2025
import D0ForestChunk2036
import D0ForestChunk2039
import D0ForestChunk2040
import D0ForestChunk2041
import D0ForestChunk2042
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2569336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 23)))
theorem cover_2569336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569336 := by
  apply coveredState_split_literal (state := state_2569336) 3
    state_2569337 state_2570020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569337
  · exact cover_2570020
#print axioms cover_2569336

def state_2569272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
theorem cover_2569272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569272 := by
  apply coveredState_split_literal (state := state_2569272) 4
    state_2569273 state_2569336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569273
  · exact cover_2569336
#print axioms cover_2569272

def state_2570085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 28 else 22)))
theorem cover_2570085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570085 := by
  apply coveredState_split_literal (state := state_2570085) 2
    state_2570086 state_2570103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570086
  · exact cover_2570103
#print axioms cover_2570085

def state_2570084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 22)))
theorem cover_2570084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570084 := by
  apply coveredState_split_literal (state := state_2570084) 3
    state_2570085 state_2570162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570085
  · exact cover_2570162
#print axioms cover_2570084

def state_2570178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 46)))
theorem cover_2570178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570178 := by
  apply coveredState_split_literal (state := state_2570178) 0
    state_2570179 state_2570240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570179
  · exact cover_2570240
#print axioms cover_2570178

def state_2570247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 47)))
theorem cover_2570247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570247 := by
  apply coveredState_split_literal (state := state_2570247) 3
    state_2570248 state_2570303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570248
  · exact cover_2570303
#print axioms cover_2570247

def state_2570246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 47)))
theorem cover_2570246 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570246 := by
  apply coveredState_split_literal (state := state_2570246) 1
    state_2570247 state_2570326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570247
  · exact cover_2570326
#print axioms cover_2570246

def state_2570245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 47)))
theorem cover_2570245 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570245 := by
  apply coveredState_split_literal (state := state_2570245) 0
    state_2570246 state_2570331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570246
  · exact cover_2570331
#print axioms cover_2570245

def state_2570177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 23)))
theorem cover_2570177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570177 := by
  apply coveredState_split_literal (state := state_2570177) 4
    state_2570178 state_2570245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570178
  · exact cover_2570245
#print axioms cover_2570177

def state_2570347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 62 else (if j.val < 4 then 56 else 46)))
theorem cover_2570347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570347 := by
  apply coveredState_split_literal (state := state_2570347) 4
    state_2570348 state_2570373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570348
  · exact cover_2570373
#print axioms cover_2570347

def state_2570346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 56 else 46)))
theorem cover_2570346 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570346 := by
  apply coveredState_split_literal (state := state_2570346) 2
    state_2570347 state_2570412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570347
  · exact cover_2570412
#print axioms cover_2570346

def state_2570345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 28 else 46)))
theorem cover_2570345 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570345 := by
  apply coveredState_split_literal (state := state_2570345) 3
    state_2570346 state_2570463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570346
  · exact cover_2570463
#print axioms cover_2570345

def state_2570344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 28 else 46)))
theorem cover_2570344 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570344 := by
  apply coveredState_split_literal (state := state_2570344) 1
    state_2570345 state_2570484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570345
  · exact cover_2570484
#print axioms cover_2570344

def state_2570343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 28 else 46)))
theorem cover_2570343 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570343 := by
  apply coveredState_split_literal (state := state_2570343) 0
    state_2570344 state_2570503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570344
  · exact cover_2570503
#print axioms cover_2570343

def state_2570520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 28 else 47)))
theorem cover_2570520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570520 := by
  apply coveredState_split_literal (state := state_2570520) 0
    state_2570521 state_2570578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570521
  · exact cover_2570578
#print axioms cover_2570520

def state_2570342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 28 else 23)))
theorem cover_2570342 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570342 := by
  apply coveredState_split_literal (state := state_2570342) 4
    state_2570343 state_2570520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570343
  · exact cover_2570520
#print axioms cover_2570342

def state_2570176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 28 else 23)))
theorem cover_2570176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570176 := by
  apply coveredState_split_literal (state := state_2570176) 2
    state_2570177 state_2570342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570177
  · exact cover_2570342
#print axioms cover_2570176

def state_2570175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 23)))
theorem cover_2570175 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570175 := by
  apply coveredState_split_literal (state := state_2570175) 3
    state_2570176 state_2570601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570176
  · exact cover_2570601
#print axioms cover_2570175

def state_2570083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
theorem cover_2570083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570083 := by
  apply coveredState_split_literal (state := state_2570083) 4
    state_2570084 state_2570175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570084
  · exact cover_2570175
#print axioms cover_2570083

def state_2569271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
theorem cover_2569271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569271 := by
  apply coveredState_split_literal (state := state_2569271) 1
    state_2569272 state_2570083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569272
  · exact cover_2570083
#print axioms cover_2569271

def state_2569270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
theorem cover_2569270 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569270 := by
  apply coveredState_split_literal (state := state_2569270) 0
    state_2569271 state_2570610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569271
  · exact cover_2570610
#print axioms cover_2569270

def state_2569269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 11)))
theorem cover_2569269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569269 := by
  apply coveredState_split_literal (state := state_2569269) 3
    state_2569270 state_2570659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569270
  · exact cover_2570659
#print axioms cover_2569269

def state_2566553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_2566553 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566553 := by
  apply coveredState_split_literal (state := state_2566553) 2
    state_2566554 state_2569269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566554
  · exact cover_2569269
#print axioms cover_2566553

def state_2566519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_2566519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566519 := by
  apply coveredState_split_literal (state := state_2566519) 4
    state_2566520 state_2566553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566520
  · exact cover_2566553
#print axioms cover_2566519

def state_2570672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_2570672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570672 := by
  apply coveredState_split_literal (state := state_2570672) 4
    state_2570673 state_2570684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570673
  · exact cover_2570684
#print axioms cover_2570672

def state_2566518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_2566518 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566518 := by
  apply coveredState_split_literal (state := state_2566518) 1
    state_2566519 state_2570672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566519
  · exact cover_2570672
#print axioms cover_2566518

def state_2565240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_2565240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565240 := by
  apply coveredState_split_literal (state := state_2565240) 0
    state_2565241 state_2566518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565241
  · exact cover_2566518
#print axioms cover_2565240

def state_2565234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_2565234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565234 := by
  apply coveredState_split_literal (state := state_2565234) 4
    state_2565235 state_2565240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565235
  · exact cover_2565240
#print axioms cover_2565234

def state_2563050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_2563050 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563050 := by
  apply coveredState_split_literal (state := state_2563050) 3
    state_2563051 state_2565234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563051
  · exact cover_2565234
#print axioms cover_2563050

def state_2562786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2562786 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562786 := by
  apply coveredState_split_literal (state := state_2562786) 2
    state_2562787 state_2563050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562787
  · exact cover_2563050
#print axioms cover_2562786

def state_2562785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2562785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562785 := by
  apply coveredState_split_literal (state := state_2562785) 1
    state_2562786 state_2570737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562786
  · exact cover_2570737
#print axioms cover_2562785

def state_2562611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2562611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562611 := by
  apply coveredState_split_literal (state := state_2562611) 0
    state_2562612 state_2562785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562612
  · exact cover_2562785
#print axioms cover_2562611
end Mub6.Numerical.CircleFullD0.Forest
