import D0FullInterface
import D0ForestAssembly0018
import D0ForestAssembly0020
import D0ForestAssembly0021
import D0ForestChunk0046
import D0ForestChunk0047
import D0ForestChunk0048
import D0ForestChunk0049
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2321031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 22)))
theorem cover_2321031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321031 := by
  apply coveredState_split_literal (state := state_2321031) 2
    state_2321032 state_2321577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321032
  · exact cover_2321577
#print axioms cover_2321031

def state_2321030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
theorem cover_2321030 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321030 := by
  apply coveredState_split_literal (state := state_2321030) 4
    state_2321031 state_2327302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321031
  · exact cover_2327302
#print axioms cover_2321030

def state_2320950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
theorem cover_2320950 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320950 := by
  apply coveredState_split_literal (state := state_2320950) 0
    state_2320951 state_2321030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320951
  · exact cover_2321030
#print axioms cover_2320950

def state_2319998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
theorem cover_2319998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319998 := by
  apply coveredState_split_literal (state := state_2319998) 3
    state_2319999 state_2320950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319999
  · exact cover_2320950
#print axioms cover_2319998

def state_2319997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
theorem cover_2319997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319997 := by
  apply coveredState_split_literal (state := state_2319997) 1
    state_2319998 state_2327379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319998
  · exact cover_2327379
#print axioms cover_2319997

def state_2318173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 5)))
theorem cover_2318173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318173 := by
  apply coveredState_split_literal (state := state_2318173) 4
    state_2318174 state_2319997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318174
  · exact cover_2319997
#print axioms cover_2318173

def state_2327442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 5)))
theorem cover_2327442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327442 := by
  apply coveredState_split_literal (state := state_2327442) 4
    state_2327443 state_2327882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327443
  · exact cover_2327882
#print axioms cover_2327442

def state_2318172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2318172 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318172 := by
  apply coveredState_split_literal (state := state_2318172) 2
    state_2318173 state_2327442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318173
  · exact cover_2327442
#print axioms cover_2318172

def state_2318108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2318108 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318108 := by
  apply coveredState_split_literal (state := state_2318108) 0
    state_2318109 state_2318172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318109
  · exact cover_2318172
#print axioms cover_2318108

def state_2318060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_2318060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318060 := by
  apply coveredState_split_literal (state := state_2318060) 4
    state_2318061 state_2318108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318061
  · exact cover_2318108
#print axioms cover_2318060

def state_2317882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2317882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317882 := by
  apply coveredState_split_literal (state := state_2317882) 3
    state_2317883 state_2318060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317883
  · exact cover_2318060
#print axioms cover_2317882

def state_2317518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2317518 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317518 := by
  apply coveredState_split_literal (state := state_2317518) 2
    state_2317519 state_2317882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317519
  · exact cover_2317882
#print axioms cover_2317518

def state_2289766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2289766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289766 := by
  apply coveredState_split_literal (state := state_2289766) 1
    state_2289767 state_2317518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289767
  · exact cover_2317518
#print axioms cover_2289766

def state_2287150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2287150 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287150 := by
  apply coveredState_split_literal (state := state_2287150) 0
    state_2287151 state_2289766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287151
  · exact cover_2289766
#print axioms cover_2287150

def state_2328499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2328499 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328499 := by
  apply coveredState_split_literal (state := state_2328499) 2
    state_2328500 state_2329457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328500
  · exact cover_2329457
#print axioms cover_2328499

def state_2328498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2328498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328498 := by
  apply coveredState_split_literal (state := state_2328498) 1
    state_2328499 state_2330246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328499
  · exact cover_2330246
#print axioms cover_2328498

def state_2330298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2330298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330298 := by
  apply coveredState_split_literal (state := state_2330298) 2
    state_2330299 state_2331086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330299
  · exact cover_2331086
#print axioms cover_2330298

def state_2330297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2330297 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330297 := by
  apply coveredState_split_literal (state := state_2330297) 1
    state_2330298 state_2331477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330298
  · exact cover_2331477
#print axioms cover_2330297

def state_2328497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2328497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328497 := by
  apply coveredState_split_literal (state := state_2328497) 0
    state_2328498 state_2330297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328498
  · exact cover_2330297
#print axioms cover_2328497

def state_2287149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_2287149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287149 := by
  apply coveredState_split_literal (state := state_2287149) 4
    state_2287150 state_2328497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287150
  · exact cover_2328497
#print axioms cover_2287149

def state_2244399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2244399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244399 := by
  apply coveredState_split_literal (state := state_2244399) 3
    state_2244400 state_2287149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244400
  · exact cover_2287149
#print axioms cover_2244399

def state_2332400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_2332400 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332400 := by
  apply coveredState_split_literal (state := state_2332400) 0
    state_2332401 state_2333220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332401
  · exact cover_2333220
#print axioms cover_2332400

def state_2332384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_2332384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332384 := by
  apply coveredState_split_literal (state := state_2332384) 4
    state_2332385 state_2332400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332385
  · exact cover_2332400
#print axioms cover_2332384

def state_2332338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_2332338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332338 := by
  apply coveredState_split_literal (state := state_2332338) 3
    state_2332339 state_2332384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332339
  · exact cover_2332384
#print axioms cover_2332338

def state_2332337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2332337 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332337 := by
  apply coveredState_split_literal (state := state_2332337) 2
    state_2332338 state_2333733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332338
  · exact cover_2333733
#print axioms cover_2332337

def state_2332085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2332085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332085 := by
  apply coveredState_split_literal (state := state_2332085) 1
    state_2332086 state_2332337
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332086
  · exact cover_2332337
#print axioms cover_2332085

def state_2331859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2331859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331859 := by
  apply coveredState_split_literal (state := state_2331859) 0
    state_2331860 state_2332085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331860
  · exact cover_2332085
#print axioms cover_2331859

def state_2331743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_2331743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331743 := by
  apply coveredState_split_literal (state := state_2331743) 4
    state_2331744 state_2331859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331744
  · exact cover_2331859
#print axioms cover_2331743

def state_2331742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2331742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331742 := by
  apply coveredState_split_literal (state := state_2331742) 3
    state_2331743 state_2333744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331743
  · exact cover_2333744
#print axioms cover_2331742

def state_2244398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2244398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244398 := by
  apply coveredState_split_literal (state := state_2244398) 2
    state_2244399 state_2331742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244399
  · exact cover_2331742
#print axioms cover_2244398

def state_2240852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2240852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240852 := by
  apply coveredState_split_literal (state := state_2240852) 1
    state_2240853 state_2244398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240853
  · exact cover_2244398
#print axioms cover_2240852

def state_2334078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2334078 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334078 := by
  apply coveredState_split_literal (state := state_2334078) 4
    state_2334079 state_2334994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334079
  · exact cover_2334994
#print axioms cover_2334078

def state_2334077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2334077 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334077 := by
  apply coveredState_split_literal (state := state_2334077) 3
    state_2334078 state_2335123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334078
  · exact cover_2335123
#print axioms cover_2334077

def state_2334076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2334076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334076 := by
  apply coveredState_split_literal (state := state_2334076) 2
    state_2334077 state_2335338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334077
  · exact cover_2335338
#print axioms cover_2334076

def state_2336487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2336487 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336487 := by
  apply coveredState_split_literal (state := state_2336487) 2
    state_2336488 state_2337297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336488
  · exact cover_2337297
#print axioms cover_2336487

def state_2336486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2336486 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336486 := by
  apply coveredState_split_literal (state := state_2336486) 0
    state_2336487 state_2337790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336487
  · exact cover_2337790
#print axioms cover_2336486

def state_2336454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_2336454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336454 := by
  apply coveredState_split_literal (state := state_2336454) 4
    state_2336455 state_2336486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336455
  · exact cover_2336486
#print axioms cover_2336454

def state_2336426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2336426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336426 := by
  apply coveredState_split_literal (state := state_2336426) 3
    state_2336427 state_2336454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336427
  · exact cover_2336454
#print axioms cover_2336426

def state_2336358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2336358 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336358 := by
  apply coveredState_split_literal (state := state_2336358) 2
    state_2336359 state_2336426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336359
  · exact cover_2336426
#print axioms cover_2336358

def state_2335968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2335968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335968 := by
  apply coveredState_split_literal (state := state_2335968) 1
    state_2335969 state_2336358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335969
  · exact cover_2336358
#print axioms cover_2335968

def state_2335967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2335967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335967 := by
  apply coveredState_split_literal (state := state_2335967) 0
    state_2335968 state_2337817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335968
  · exact cover_2337817
#print axioms cover_2335967

def state_2335966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_2335966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335966 := by
  apply coveredState_split_literal (state := state_2335966) 4
    state_2335967 state_2337856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335967
  · exact cover_2337856
#print axioms cover_2335966

def state_2335748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2335748 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335748 := by
  apply coveredState_split_literal (state := state_2335748) 3
    state_2335749 state_2335966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335749
  · exact cover_2335966
#print axioms cover_2335748

def state_2335747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2335747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335747 := by
  apply coveredState_split_literal (state := state_2335747) 2
    state_2335748 state_2338081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335748
  · exact cover_2338081
#print axioms cover_2335747

def state_2334075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2334075 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334075 := by
  apply coveredState_split_literal (state := state_2334075) 1
    state_2334076 state_2335747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334076
  · exact cover_2335747
#print axioms cover_2334075

def state_2240851 : State := rootState
theorem cover_2240851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240851 := by
  apply coveredState_split_literal (state := state_2240851) 0
    state_2240852 state_2334075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240852
  · exact cover_2334075
#print axioms cover_2240851

def state_2546712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 5)))
theorem cover_2546712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546712 := by
  apply coveredState_split_literal (state := state_2546712) 1
    state_2546713 state_2546812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546713
  · exact cover_2546812
#print axioms cover_2546712

def state_2546492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 5)))
theorem cover_2546492 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546492 := by
  apply coveredState_split_literal (state := state_2546492) 0
    state_2546493 state_2546712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546493
  · exact cover_2546712
#print axioms cover_2546492

def state_2546486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 2)))
theorem cover_2546486 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546486 := by
  apply coveredState_split_literal (state := state_2546486) 4
    state_2546487 state_2546492
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546487
  · exact cover_2546492
#print axioms cover_2546486

def state_2546485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_2546485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546485 := by
  apply coveredState_split_literal (state := state_2546485) 3
    state_2546486 state_2547765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546486
  · exact cover_2547765
#print axioms cover_2546485

def state_2546484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2546484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546484 := by
  apply coveredState_split_literal (state := state_2546484) 2
    state_2546485 state_2547792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546485
  · exact cover_2547792
#print axioms cover_2546484

def state_2546398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2546398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546398 := by
  apply coveredState_split_literal (state := state_2546398) 1
    state_2546399 state_2546484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546399
  · exact cover_2546484
#print axioms cover_2546398

def state_2546296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2546296 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546296 := by
  apply coveredState_split_literal (state := state_2546296) 0
    state_2546297 state_2546398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546297
  · exact cover_2546398
#print axioms cover_2546296

def state_2546295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2546295 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546295 := by
  apply coveredState_split_literal (state := state_2546295) 4
    state_2546296 state_2547837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546296
  · exact cover_2547837
#print axioms cover_2546295

def state_2546294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2546294 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546294 := by
  apply coveredState_split_literal (state := state_2546294) 3
    state_2546295 state_2547974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546295
  · exact cover_2547974
#print axioms cover_2546294

def state_2549819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_2549819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549819 := by
  apply coveredState_split_literal (state := state_2549819) 3
    state_2549820 state_2550445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549820
  · exact cover_2550445
#print axioms cover_2549819

def state_2551598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_2551598 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551598 := by
  apply coveredState_split_literal (state := state_2551598) 0
    state_2551599 state_2552622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551599
  · exact cover_2552622
#print axioms cover_2551598

def state_2551596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_2551596 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551596 := by
  apply coveredState_split_literal (state := state_2551596) 4
    state_2551597 state_2551598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551597
  · exact cover_2551598
#print axioms cover_2551596

def state_2551024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_2551024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551024 := by
  apply coveredState_split_literal (state := state_2551024) 3
    state_2551025 state_2551596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551025
  · exact cover_2551596
#print axioms cover_2551024

def state_2549818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2549818 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549818 := by
  apply coveredState_split_literal (state := state_2549818) 2
    state_2549819 state_2551024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549819
  · exact cover_2551024
#print axioms cover_2549818

def state_2549792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2549792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549792 := by
  apply coveredState_split_literal (state := state_2549792) 1
    state_2549793 state_2549818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549793
  · exact cover_2549818
#print axioms cover_2549792

def state_2549256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2549256 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549256 := by
  apply coveredState_split_literal (state := state_2549256) 0
    state_2549257 state_2549792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549257
  · exact cover_2549792
#print axioms cover_2549256

def state_2553785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_2553785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553785 := by
  apply coveredState_split_literal (state := state_2553785) 3
    state_2553786 state_2554187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553786
  · exact cover_2554187
#print axioms cover_2553785

def state_2553784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_2553784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553784 := by
  apply coveredState_split_literal (state := state_2553784) 4
    state_2553785 state_2555162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553785
  · exact cover_2555162
#print axioms cover_2553784
end Mub6.Numerical.CircleFullD0.Forest
