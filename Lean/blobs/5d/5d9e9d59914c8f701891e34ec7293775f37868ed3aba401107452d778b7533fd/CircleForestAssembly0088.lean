import CircleFullInterface
import CircleForestAssembly0086
import CircleForestAssembly0087
import CircleForestChunk0349
import CircleForestChunk0354
import CircleForestChunk0355
import CircleForestChunk0356
import CircleForestChunk0357
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_160358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 21)))
theorem cover_160358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160358 := by
  apply coveredState_split_literal (state := state_160358) 4
    state_160359 state_160462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160359
  · exact cover_160462
#print axioms cover_160358

def state_160357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 21)))
theorem cover_160357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160357 := by
  apply coveredState_split_literal (state := state_160357) 0
    state_160358 state_160467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160358
  · exact cover_160467
#print axioms cover_160357

def state_160356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 15 else 21)))
theorem cover_160356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160356 := by
  apply coveredState_split_literal (state := state_160356) 3
    state_160357 state_160476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160357
  · exact cover_160476
#print axioms cover_160356

def state_160355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 21)))
theorem cover_160355 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160355 := by
  apply coveredState_split_literal (state := state_160355) 2
    state_160356 state_160493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160356
  · exact cover_160493
#print axioms cover_160355

def state_160529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 57 else (if j.val < 4 then 30 else 42)))
theorem cover_160529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160529 := by
  apply coveredState_split_literal (state := state_160529) 3
    state_160530 state_160577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160530
  · exact cover_160577
#print axioms cover_160529

def state_160528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 57 else (if j.val < 4 then 30 else 42)))
theorem cover_160528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160528 := by
  apply coveredState_split_literal (state := state_160528) 1
    state_160529 state_160594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160529
  · exact cover_160594
#print axioms cover_160528

def state_160518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 42)))
theorem cover_160518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160518 := by
  apply coveredState_split_literal (state := state_160518) 2
    state_160519 state_160528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160519
  · exact cover_160528
#print axioms cover_160518

def state_160517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 21)))
theorem cover_160517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160517 := by
  apply coveredState_split_literal (state := state_160517) 4
    state_160518 state_160603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160518
  · exact cover_160603
#print axioms cover_160517

def state_160516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 21)))
theorem cover_160516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160516 := by
  apply coveredState_split_literal (state := state_160516) 0
    state_160517 state_160614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160517
  · exact cover_160614
#print axioms cover_160516

def state_160515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 15 else 21)))
theorem cover_160515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160515 := by
  apply coveredState_split_literal (state := state_160515) 3
    state_160516 state_160639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160516
  · exact cover_160639
#print axioms cover_160515

def state_160648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 29 else (if j.val < 4 then 15 else 21)))
theorem cover_160648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160648 := by
  apply coveredState_split_literal (state := state_160648) 3
    state_160649 state_160694
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160649
  · exact cover_160694
#print axioms cover_160648

def state_160514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 21)))
theorem cover_160514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160514 := by
  apply coveredState_split_literal (state := state_160514) 2
    state_160515 state_160648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160515
  · exact cover_160648
#print axioms cover_160514

def state_160354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 21)))
theorem cover_160354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160354 := by
  apply coveredState_split_literal (state := state_160354) 1
    state_160355 state_160514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160355
  · exact cover_160514
#print axioms cover_160354

def state_159662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 10)))
theorem cover_159662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159662 := by
  apply coveredState_split_literal (state := state_159662) 4
    state_159663 state_160354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159663
  · exact cover_160354
#print axioms cover_159662

def state_159661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 10)))
theorem cover_159661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159661 := by
  apply coveredState_split_literal (state := state_159661) 0
    state_159662 state_160721
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159662
  · exact cover_160721
#print axioms cover_159661

def state_159429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 10)))
theorem cover_159429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159429 := by
  apply coveredState_split_literal (state := state_159429) 3
    state_159430 state_159661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159430
  · exact cover_159661
#print axioms cover_159429

def state_159428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
theorem cover_159428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159428 := by
  apply coveredState_split_literal (state := state_159428) 2
    state_159429 state_160756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159429
  · exact cover_160756
#print axioms cover_159428

def state_160804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 10)))
theorem cover_160804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160804 := by
  apply coveredState_split_literal (state := state_160804) 3
    state_160805 state_160812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160805
  · exact cover_160812
#print axioms cover_160804

def state_160803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
theorem cover_160803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160803 := by
  apply coveredState_split_literal (state := state_160803) 2
    state_160804 state_160871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160804
  · exact cover_160871
#print axioms cover_160803

def state_159427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
theorem cover_159427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159427 := by
  apply coveredState_split_literal (state := state_159427) 1
    state_159428 state_160803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159428
  · exact cover_160803
#print axioms cover_159427

def state_160908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_160908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160908 := by
  apply coveredState_split_literal (state := state_160908) 1
    state_160909 state_160966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160909
  · exact cover_160966
#print axioms cover_160908

def state_159426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_159426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159426 := by
  apply coveredState_split_literal (state := state_159426) 4
    state_159427 state_160908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159427
  · exact cover_160908
#print axioms cover_159426

def state_159425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_159425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159425 := by
  apply coveredState_split_literal (state := state_159425) 0
    state_159426 state_161011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159426
  · exact cover_161011
#print axioms cover_159425

def state_159365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_159365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159365 := by
  apply coveredState_split_literal (state := state_159365) 4
    state_159366 state_159425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159366
  · exact cover_159425
#print axioms cover_159365

def state_159335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_159335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159335 := by
  apply coveredState_split_literal (state := state_159335) 3
    state_159336 state_159365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159336
  · exact cover_159365
#print axioms cover_159335

def state_158993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_158993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158993 := by
  apply coveredState_split_literal (state := state_158993) 2
    state_158994 state_159335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158994
  · exact cover_159335
#print axioms cover_158993

def state_158761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_158761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158761 := by
  apply coveredState_split_literal (state := state_158761) 1
    state_158762 state_158993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158762
  · exact cover_158993
#print axioms cover_158761

def state_158760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_158760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158760 := by
  apply coveredState_split_literal (state := state_158760) 0
    state_158761 state_161038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158761
  · exact cover_161038
#print axioms cover_158760

def state_161091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 6)))
theorem cover_161091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161091 := by
  apply coveredState_split_literal (state := state_161091) 3
    state_161092 state_161101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161092
  · exact cover_161101
#print axioms cover_161091

def state_161090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_161090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161090 := by
  apply coveredState_split_literal (state := state_161090) 2
    state_161091 state_161158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161091
  · exact cover_161158
#print axioms cover_161090

def state_161227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 6)))
theorem cover_161227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161227 := by
  apply coveredState_split_literal (state := state_161227) 4
    state_161228 state_161229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161228
  · exact cover_161229
#print axioms cover_161227

def state_161225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 6)))
theorem cover_161225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161225 := by
  apply coveredState_split_literal (state := state_161225) 3
    state_161226 state_161227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161226
  · exact cover_161227
#print axioms cover_161225
end Mub6.Numerical.CircleFullPrototype.Forest
