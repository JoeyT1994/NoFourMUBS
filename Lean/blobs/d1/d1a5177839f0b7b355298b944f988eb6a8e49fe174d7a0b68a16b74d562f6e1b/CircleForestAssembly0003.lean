import CircleFullInterface
import CircleForestAssembly0002
import CircleForestChunk0009
import CircleForestChunk0010
import CircleForestChunk0011
import CircleForestChunk0012
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1996 := by
  apply coveredState_split_literal (state := state_1996) 2
    state_1997 state_2010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1997
  · exact cover_2010
#print axioms cover_1996

def state_1995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1995 := by
  apply coveredState_split_literal (state := state_1995) 1
    state_1996 state_2081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1996
  · exact cover_2081
#print axioms cover_1995

def state_1967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1967 := by
  apply coveredState_split_literal (state := state_1967) 0
    state_1968 state_1995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1968
  · exact cover_1995
#print axioms cover_1967

def state_1835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1835 := by
  apply coveredState_split_literal (state := state_1835) 4
    state_1836 state_1967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1836
  · exact cover_1967
#print axioms cover_1835

def state_2101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2101 := by
  apply coveredState_split_literal (state := state_2101) 0
    state_2102 state_2151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2102
  · exact cover_2151
#print axioms cover_2101

def state_2188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2188 := by
  apply coveredState_split_literal (state := state_2188) 0
    state_2189 state_2212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2189
  · exact cover_2212
#print axioms cover_2188

def state_2100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_2100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2100 := by
  apply coveredState_split_literal (state := state_2100) 4
    state_2101 state_2188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2101
  · exact cover_2188
#print axioms cover_2100

def state_1834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1834 := by
  apply coveredState_split_literal (state := state_1834) 3
    state_1835 state_2100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1835
  · exact cover_2100
#print axioms cover_1834

def state_1450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1450 := by
  apply coveredState_split_literal (state := state_1450) 2
    state_1451 state_1834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1451
  · exact cover_1834
#print axioms cover_1450

def state_2311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_2311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2311 := by
  apply coveredState_split_literal (state := state_2311) 3
    state_2312 state_2317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312
  · exact cover_2317
#print axioms cover_2311

def state_2310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2310 := by
  apply coveredState_split_literal (state := state_2310) 2
    state_2311 state_2378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311
  · exact cover_2378
#print axioms cover_2310

def state_2290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2290 := by
  apply coveredState_split_literal (state := state_2290) 1
    state_2291 state_2310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291
  · exact cover_2310
#print axioms cover_2290

def state_2262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2262 := by
  apply coveredState_split_literal (state := state_2262) 0
    state_2263 state_2290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263
  · exact cover_2290
#print axioms cover_2262

def state_2387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2387 := by
  apply coveredState_split_literal (state := state_2387) 0
    state_2388 state_2439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2388
  · exact cover_2439
#print axioms cover_2387

def state_2261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2261 := by
  apply coveredState_split_literal (state := state_2261) 4
    state_2262 state_2387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262
  · exact cover_2387
#print axioms cover_2261

def state_2521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_2521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2521 := by
  apply coveredState_split_literal (state := state_2521) 4
    state_2522 state_2577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2522
  · exact cover_2577
#print axioms cover_2521

def state_2520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_2520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2520 := by
  apply coveredState_split_literal (state := state_2520) 3
    state_2521 state_2586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2521
  · exact cover_2586
#print axioms cover_2520

def state_2519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2519 := by
  apply coveredState_split_literal (state := state_2519) 2
    state_2520 state_2591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2520
  · exact cover_2591
#print axioms cover_2519

def state_2501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2501 := by
  apply coveredState_split_literal (state := state_2501) 1
    state_2502 state_2519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2502
  · exact cover_2519
#print axioms cover_2501

def state_2477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2477 := by
  apply coveredState_split_literal (state := state_2477) 0
    state_2478 state_2501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2478
  · exact cover_2501
#print axioms cover_2477

def state_2604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2604 := by
  apply coveredState_split_literal (state := state_2604) 0
    state_2605 state_2628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605
  · exact cover_2628
#print axioms cover_2604

def state_2476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_2476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2476 := by
  apply coveredState_split_literal (state := state_2476) 4
    state_2477 state_2604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2477
  · exact cover_2604
#print axioms cover_2476

def state_2260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2260 := by
  apply coveredState_split_literal (state := state_2260) 3
    state_2261 state_2476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261
  · exact cover_2476
#print axioms cover_2260

def state_2693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2693 := by
  apply coveredState_split_literal (state := state_2693) 1
    state_2694 state_2737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2694
  · exact cover_2737
#print axioms cover_2693

def state_2677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2677 := by
  apply coveredState_split_literal (state := state_2677) 0
    state_2678 state_2693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2678
  · exact cover_2693
#print axioms cover_2677

def state_2770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2770 := by
  apply coveredState_split_literal (state := state_2770) 0
    state_2771 state_2804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2771
  · exact cover_2804
#print axioms cover_2770

def state_2676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_2676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2676 := by
  apply coveredState_split_literal (state := state_2676) 4
    state_2677 state_2770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2677
  · exact cover_2770
#print axioms cover_2676

def state_2840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2840 := by
  apply coveredState_split_literal (state := state_2840) 0
    state_2841 state_2872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2841
  · exact cover_2872
#print axioms cover_2840

def state_2839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_2839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2839 := by
  apply coveredState_split_literal (state := state_2839) 4
    state_2840 state_2905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2840
  · exact cover_2905
#print axioms cover_2839

def state_2675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2675 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2675 := by
  apply coveredState_split_literal (state := state_2675) 3
    state_2676 state_2839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2676
  · exact cover_2839
#print axioms cover_2675

def state_2259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2259 := by
  apply coveredState_split_literal (state := state_2259) 2
    state_2260 state_2675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260
  · exact cover_2675
#print axioms cover_2259

def state_1449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1449 := by
  apply coveredState_split_literal (state := state_1449) 1
    state_1450 state_2259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1450
  · exact cover_2259
#print axioms cover_1449
end Mub6.Numerical.CircleFullPrototype.Forest
