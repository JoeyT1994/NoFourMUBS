import D0FullInterface
import D0ForestAssembly0509
import D0ForestAssembly0510
import D0ForestAssembly0518
import D0ForestAssembly0519
import D0ForestAssembly0520
import D0ForestChunk2051
import D0ForestChunk2052
import D0ForestChunk2053
import D0ForestChunk2054
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2572575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 48)))
theorem cover_2572575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572575 := by
  apply coveredState_split_literal (state := state_2572575) 0
    state_2572576 state_2572859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572576
  · exact cover_2572859
#print axioms cover_2572575

def state_2572574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 24)))
theorem cover_2572574 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572574 := by
  apply coveredState_split_literal (state := state_2572574) 4
    state_2572575 state_2572918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572575
  · exact cover_2572918
#print axioms cover_2572574

def state_2572969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 24)))
theorem cover_2572969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572969 := by
  apply coveredState_split_literal (state := state_2572969) 4
    state_2572970 state_2573025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572970
  · exact cover_2573025
#print axioms cover_2572969

def state_2572573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 24)))
theorem cover_2572573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572573 := by
  apply coveredState_split_literal (state := state_2572573) 1
    state_2572574 state_2572969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572574
  · exact cover_2572969
#print axioms cover_2572573

def state_2572265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 24)))
theorem cover_2572265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572265 := by
  apply coveredState_split_literal (state := state_2572265) 3
    state_2572266 state_2572573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572266
  · exact cover_2572573
#print axioms cover_2572265

def state_2571937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 24)))
theorem cover_2571937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571937 := by
  apply coveredState_split_literal (state := state_2571937) 2
    state_2571938 state_2572265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571938
  · exact cover_2572265
#print axioms cover_2571937

def state_2571936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_2571936 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571936 := by
  apply coveredState_split_literal (state := state_2571936) 4
    state_2571937 state_2573034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571937
  · exact cover_2573034
#print axioms cover_2571936

def state_2571935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_2571935 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571935 := by
  apply coveredState_split_literal (state := state_2571935) 1
    state_2571936 state_2573047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571936
  · exact cover_2573047
#print axioms cover_2571935

def state_2571934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_2571934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571934 := by
  apply coveredState_split_literal (state := state_2571934) 0
    state_2571935 state_2573062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571935
  · exact cover_2573062
#print axioms cover_2571934

def state_2573090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 24)))
theorem cover_2573090 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573090 := by
  apply coveredState_split_literal (state := state_2573090) 2
    state_2573091 state_2573142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573091
  · exact cover_2573142
#print axioms cover_2573090

def state_2573089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
theorem cover_2573089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573089 := by
  apply coveredState_split_literal (state := state_2573089) 4
    state_2573090 state_2573175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573090
  · exact cover_2573175
#print axioms cover_2573089

def state_2573088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
theorem cover_2573088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573088 := by
  apply coveredState_split_literal (state := state_2573088) 1
    state_2573089 state_2573236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573089
  · exact cover_2573236
#print axioms cover_2573088

def state_2573087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
theorem cover_2573087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573087 := by
  apply coveredState_split_literal (state := state_2573087) 0
    state_2573088 state_2573241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573088
  · exact cover_2573241
#print axioms cover_2573087

def state_2571933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 12)))
theorem cover_2571933 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571933 := by
  apply coveredState_split_literal (state := state_2571933) 3
    state_2571934 state_2573087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571934
  · exact cover_2573087
#print axioms cover_2571933

def state_2573288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 24)))
theorem cover_2573288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573288 := by
  apply coveredState_split_literal (state := state_2573288) 3
    state_2573289 state_2573340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573289
  · exact cover_2573340
#print axioms cover_2573288

def state_2573287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 12)))
theorem cover_2573287 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573287 := by
  apply coveredState_split_literal (state := state_2573287) 4
    state_2573288 state_2573373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573288
  · exact cover_2573373
#print axioms cover_2573287

def state_2573286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 12)))
theorem cover_2573286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573286 := by
  apply coveredState_split_literal (state := state_2573286) 1
    state_2573287 state_2573376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573287
  · exact cover_2573376
#print axioms cover_2573286

def state_2573285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 12)))
theorem cover_2573285 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573285 := by
  apply coveredState_split_literal (state := state_2573285) 0
    state_2573286 state_2573439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573286
  · exact cover_2573439
#print axioms cover_2573285

def state_2573284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 12)))
theorem cover_2573284 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573284 := by
  apply coveredState_split_literal (state := state_2573284) 3
    state_2573285 state_2573482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573285
  · exact cover_2573482
#print axioms cover_2573284

def state_2571932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 12)))
theorem cover_2571932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571932 := by
  apply coveredState_split_literal (state := state_2571932) 2
    state_2571933 state_2573284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571933
  · exact cover_2573284
#print axioms cover_2571932

def state_2571931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_2571931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571931 := by
  apply coveredState_split_literal (state := state_2571931) 4
    state_2571932 state_2573505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571932
  · exact cover_2573505
#print axioms cover_2571931

def state_2571930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_2571930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571930 := by
  apply coveredState_split_literal (state := state_2571930) 1
    state_2571931 state_2573516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571931
  · exact cover_2573516
#print axioms cover_2571930

def state_2571538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_2571538 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571538 := by
  apply coveredState_split_literal (state := state_2571538) 0
    state_2571539 state_2571930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571539
  · exact cover_2571930
#print axioms cover_2571538

def state_2571537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
theorem cover_2571537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571537 := by
  apply coveredState_split_literal (state := state_2571537) 4
    state_2571538 state_2573529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571538
  · exact cover_2573529
#print axioms cover_2571537

def state_2571281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_2571281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571281 := by
  apply coveredState_split_literal (state := state_2571281) 3
    state_2571282 state_2571537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571282
  · exact cover_2571537
#print axioms cover_2571281

def state_2570985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2570985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570985 := by
  apply coveredState_split_literal (state := state_2570985) 2
    state_2570986 state_2571281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570986
  · exact cover_2571281
#print axioms cover_2570985

def state_2570984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2570984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570984 := by
  apply coveredState_split_literal (state := state_2570984) 1
    state_2570985 state_2573536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570985
  · exact cover_2573536
#print axioms cover_2570984

def state_2570768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2570768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570768 := by
  apply coveredState_split_literal (state := state_2570768) 0
    state_2570769 state_2570984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570769
  · exact cover_2570984
#print axioms cover_2570768

def state_2562610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_2562610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562610 := by
  apply coveredState_split_literal (state := state_2562610) 4
    state_2562611 state_2570768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562611
  · exact cover_2570768
#print axioms cover_2562610

def state_2562170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2562170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562170 := by
  apply coveredState_split_literal (state := state_2562170) 3
    state_2562171 state_2562610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562171
  · exact cover_2562610
#print axioms cover_2562170

def state_2561482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2561482 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561482 := by
  apply coveredState_split_literal (state := state_2561482) 2
    state_2561483 state_2562170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561483
  · exact cover_2562170
#print axioms cover_2561482

def state_2546292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2546292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546292 := by
  apply coveredState_split_literal (state := state_2546292) 1
    state_2546293 state_2561482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546293
  · exact cover_2561482
#print axioms cover_2546292
end Mub6.Numerical.CircleFullD0.Forest
