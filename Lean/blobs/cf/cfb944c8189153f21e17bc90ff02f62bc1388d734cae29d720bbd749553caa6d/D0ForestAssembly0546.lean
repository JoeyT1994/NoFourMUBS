import D0FullInterface
import D0ForestAssembly0533
import D0ForestAssembly0541
import D0ForestAssembly0545
import D0ForestChunk2152
import D0ForestChunk2153
import D0ForestChunk2154
import D0ForestChunk2155
import D0ForestChunk2156
import D0ForestChunk2157
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2597013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_2597013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597013 := by
  apply coveredState_split_literal (state := state_2597013) 4
    state_2597014 state_2597141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597014
  · exact cover_2597141
#print axioms cover_2597013

def state_2597012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_2597012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597012 := by
  apply coveredState_split_literal (state := state_2597012) 3
    state_2597013 state_2597326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597013
  · exact cover_2597326
#print axioms cover_2597012

def state_2597011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2597011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597011 := by
  apply coveredState_split_literal (state := state_2597011) 2
    state_2597012 state_2597359
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597012
  · exact cover_2597359
#print axioms cover_2597011

def state_2596839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2596839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596839 := by
  apply coveredState_split_literal (state := state_2596839) 1
    state_2596840 state_2597011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596840
  · exact cover_2597011
#print axioms cover_2596839

def state_2593367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2593367 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593367 := by
  apply coveredState_split_literal (state := state_2593367) 0
    state_2593368 state_2596839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593368
  · exact cover_2596839
#print axioms cover_2593367

def state_2597408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_2597408 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597408 := by
  apply coveredState_split_literal (state := state_2597408) 3
    state_2597409 state_2597468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597409
  · exact cover_2597468
#print axioms cover_2597408

def state_2597513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_2597513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597513 := by
  apply coveredState_split_literal (state := state_2597513) 3
    state_2597514 state_2597553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597514
  · exact cover_2597553
#print axioms cover_2597513

def state_2597407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2597407 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597407 := by
  apply coveredState_split_literal (state := state_2597407) 2
    state_2597408 state_2597513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597408
  · exact cover_2597513
#print axioms cover_2597407

def state_2597381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2597381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597381 := by
  apply coveredState_split_literal (state := state_2597381) 1
    state_2597382 state_2597407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597382
  · exact cover_2597407
#print axioms cover_2597381

def state_2597618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_2597618 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597618 := by
  apply coveredState_split_literal (state := state_2597618) 2
    state_2597619 state_2597662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597619
  · exact cover_2597662
#print axioms cover_2597618

def state_2597617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_2597617 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597617 := by
  apply coveredState_split_literal (state := state_2597617) 4
    state_2597618 state_2597713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597618
  · exact cover_2597713
#print axioms cover_2597617

def state_2597616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_2597616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597616 := by
  apply coveredState_split_literal (state := state_2597616) 3
    state_2597617 state_2597722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597617
  · exact cover_2597722
#print axioms cover_2597616

def state_2597615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2597615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597615 := by
  apply coveredState_split_literal (state := state_2597615) 2
    state_2597616 state_2597729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597616
  · exact cover_2597729
#print axioms cover_2597615

def state_2597746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2597746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597746 := by
  apply coveredState_split_literal (state := state_2597746) 2
    state_2597747 state_2597808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597747
  · exact cover_2597808
#print axioms cover_2597746

def state_2597614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2597614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597614 := by
  apply coveredState_split_literal (state := state_2597614) 1
    state_2597615 state_2597746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597615
  · exact cover_2597746
#print axioms cover_2597614

def state_2597380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2597380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597380 := by
  apply coveredState_split_literal (state := state_2597380) 0
    state_2597381 state_2597614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597381
  · exact cover_2597614
#print axioms cover_2597380

def state_2593366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_2593366 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593366 := by
  apply coveredState_split_literal (state := state_2593366) 4
    state_2593367 state_2597380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593367
  · exact cover_2597380
#print axioms cover_2593366

def state_2584868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2584868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584868 := by
  apply coveredState_split_literal (state := state_2584868) 3
    state_2584869 state_2593366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584869
  · exact cover_2593366
#print axioms cover_2584868

def state_2573592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2573592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573592 := by
  apply coveredState_split_literal (state := state_2573592) 2
    state_2573593 state_2584868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573593
  · exact cover_2584868
#print axioms cover_2573592

def state_2597852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2597852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597852 := by
  apply coveredState_split_literal (state := state_2597852) 2
    state_2597853 state_2597906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597853
  · exact cover_2597906
#print axioms cover_2597852

def state_2597851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2597851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597851 := by
  apply coveredState_split_literal (state := state_2597851) 1
    state_2597852 state_2597957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597852
  · exact cover_2597957
#print axioms cover_2597851

def state_2597850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2597850 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597850 := by
  apply coveredState_split_literal (state := state_2597850) 0
    state_2597851 state_2597978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597851
  · exact cover_2597978
#print axioms cover_2597850

def state_2598032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_2598032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598032 := by
  apply coveredState_split_literal (state := state_2598032) 3
    state_2598033 state_2598084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598033
  · exact cover_2598084
#print axioms cover_2598032

def state_2598136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_2598136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598136 := by
  apply coveredState_split_literal (state := state_2598136) 0
    state_2598137 state_2598172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598137
  · exact cover_2598172
#print axioms cover_2598136

def state_2598135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_2598135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598135 := by
  apply coveredState_split_literal (state := state_2598135) 4
    state_2598136 state_2598215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598136
  · exact cover_2598215
#print axioms cover_2598135

def state_2598107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_2598107 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598107 := by
  apply coveredState_split_literal (state := state_2598107) 3
    state_2598108 state_2598135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598108
  · exact cover_2598135
#print axioms cover_2598107

def state_2598031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2598031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598031 := by
  apply coveredState_split_literal (state := state_2598031) 2
    state_2598032 state_2598107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598032
  · exact cover_2598107
#print axioms cover_2598031

def state_2598030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2598030 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598030 := by
  apply coveredState_split_literal (state := state_2598030) 1
    state_2598031 state_2598224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598031
  · exact cover_2598224
#print axioms cover_2598030

def state_2598249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2598249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598249 := by
  apply coveredState_split_literal (state := state_2598249) 1
    state_2598250 state_2598297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598250
  · exact cover_2598297
#print axioms cover_2598249

def state_2598029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2598029 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598029 := by
  apply coveredState_split_literal (state := state_2598029) 0
    state_2598030 state_2598249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598030
  · exact cover_2598249
#print axioms cover_2598029

def state_2597849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2597849 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597849 := by
  apply coveredState_split_literal (state := state_2597849) 4
    state_2597850 state_2598029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597850
  · exact cover_2598029
#print axioms cover_2597849

def state_2598318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2598318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598318 := by
  apply coveredState_split_literal (state := state_2598318) 1
    state_2598319 state_2598376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598319
  · exact cover_2598376
#print axioms cover_2598318
end Mub6.Numerical.CircleFullD0.Forest
