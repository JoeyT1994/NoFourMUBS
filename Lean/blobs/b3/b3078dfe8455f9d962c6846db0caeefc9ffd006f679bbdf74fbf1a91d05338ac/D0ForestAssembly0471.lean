import D0FullInterface
import D0ForestAssembly0467
import D0ForestAssembly0468
import D0ForestAssembly0470
import D0ForestChunk1851
import D0ForestChunk1852
import D0ForestChunk1853
import D0ForestChunk1854
import D0ForestChunk1855
import D0ForestChunk1856
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2314075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2314075 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314075 := by
  apply coveredState_split_literal (state := state_2314075) 0
    state_2314076 state_2314213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314076
  · exact cover_2314213
#print axioms cover_2314075

def state_2313877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_2313877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313877 := by
  apply coveredState_split_literal (state := state_2313877) 4
    state_2313878 state_2314075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313878
  · exact cover_2314075
#print axioms cover_2313877

def state_2313453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2313453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313453 := by
  apply coveredState_split_literal (state := state_2313453) 3
    state_2313454 state_2313877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313454
  · exact cover_2313877
#print axioms cover_2313453

def state_2289767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2289767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289767 := by
  apply coveredState_split_literal (state := state_2289767) 2
    state_2289768 state_2313453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289768
  · exact cover_2313453
#print axioms cover_2289767

def state_2317528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2317528 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317528 := by
  apply coveredState_split_literal (state := state_2317528) 0
    state_2317529 state_2317578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317529
  · exact cover_2317578
#print axioms cover_2317528

def state_2317520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_2317520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317520 := by
  apply coveredState_split_literal (state := state_2317520) 4
    state_2317521 state_2317528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317521
  · exact cover_2317528
#print axioms cover_2317520

def state_2317708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_2317708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317708 := by
  apply coveredState_split_literal (state := state_2317708) 4
    state_2317709 state_2317764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317709
  · exact cover_2317764
#print axioms cover_2317708

def state_2317707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_2317707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317707 := by
  apply coveredState_split_literal (state := state_2317707) 0
    state_2317708 state_2317781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317708
  · exact cover_2317781
#print axioms cover_2317707

def state_2317706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 11)))
theorem cover_2317706 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317706 := by
  apply coveredState_split_literal (state := state_2317706) 3
    state_2317707 state_2317840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317707
  · exact cover_2317840
#print axioms cover_2317706

def state_2317698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_2317698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317698 := by
  apply coveredState_split_literal (state := state_2317698) 2
    state_2317699 state_2317706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317699
  · exact cover_2317706
#print axioms cover_2317698

def state_2317697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_2317697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317697 := by
  apply coveredState_split_literal (state := state_2317697) 1
    state_2317698 state_2317873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317698
  · exact cover_2317873
#print axioms cover_2317697

def state_2317651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_2317651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317651 := by
  apply coveredState_split_literal (state := state_2317651) 4
    state_2317652 state_2317697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317652
  · exact cover_2317697
#print axioms cover_2317651

def state_2317629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_2317629 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317629 := by
  apply coveredState_split_literal (state := state_2317629) 0
    state_2317630 state_2317651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317630
  · exact cover_2317651
#print axioms cover_2317629

def state_2317627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_2317627 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317627 := by
  apply coveredState_split_literal (state := state_2317627) 4
    state_2317628 state_2317629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317628
  · exact cover_2317629
#print axioms cover_2317627

def state_2317519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_2317519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317519 := by
  apply coveredState_split_literal (state := state_2317519) 3
    state_2317520 state_2317627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317520
  · exact cover_2317627
#print axioms cover_2317519

def state_2317960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 5)))
theorem cover_2317960 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317960 := by
  apply coveredState_split_literal (state := state_2317960) 4
    state_2317961 state_2317984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317961
  · exact cover_2317984
#print axioms cover_2317960

def state_2317956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
theorem cover_2317956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317956 := by
  apply coveredState_split_literal (state := state_2317956) 3
    state_2317957 state_2317960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317957
  · exact cover_2317960
#print axioms cover_2317956

def state_2317955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_2317955 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317955 := by
  apply coveredState_split_literal (state := state_2317955) 2
    state_2317956 state_2318037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317956
  · exact cover_2318037
#print axioms cover_2317955

def state_2317899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_2317899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317899 := by
  apply coveredState_split_literal (state := state_2317899) 0
    state_2317900 state_2317955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317900
  · exact cover_2317955
#print axioms cover_2317899

def state_2317883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_2317883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317883 := by
  apply coveredState_split_literal (state := state_2317883) 4
    state_2317884 state_2317899
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317884
  · exact cover_2317899
#print axioms cover_2317883

def state_2318260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 21)))
theorem cover_2318260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318260 := by
  apply coveredState_split_literal (state := state_2318260) 0
    state_2318261 state_2318316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318261
  · exact cover_2318316
#print axioms cover_2318260

def state_2318242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 21)))
theorem cover_2318242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318242 := by
  apply coveredState_split_literal (state := state_2318242) 3
    state_2318243 state_2318260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318243
  · exact cover_2318260
#print axioms cover_2318242

def state_2318241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 21)))
theorem cover_2318241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318241 := by
  apply coveredState_split_literal (state := state_2318241) 1
    state_2318242 state_2318353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318242
  · exact cover_2318353
#print axioms cover_2318241

def state_2318223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 10)))
theorem cover_2318223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318223 := by
  apply coveredState_split_literal (state := state_2318223) 4
    state_2318224 state_2318241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318224
  · exact cover_2318241
#print axioms cover_2318223

def state_2318383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 21)))
theorem cover_2318383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318383 := by
  apply coveredState_split_literal (state := state_2318383) 3
    state_2318384 state_2318393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318384
  · exact cover_2318393
#print axioms cover_2318383

def state_2318382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 21)))
theorem cover_2318382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318382 := by
  apply coveredState_split_literal (state := state_2318382) 1
    state_2318383 state_2318448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318383
  · exact cover_2318448
#print axioms cover_2318382

def state_2318362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 10)))
theorem cover_2318362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318362 := by
  apply coveredState_split_literal (state := state_2318362) 4
    state_2318363 state_2318382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318363
  · exact cover_2318382
#print axioms cover_2318362

def state_2318222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
theorem cover_2318222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318222 := by
  apply coveredState_split_literal (state := state_2318222) 2
    state_2318223 state_2318362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318223
  · exact cover_2318362
#print axioms cover_2318222

def state_2318176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
theorem cover_2318176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318176 := by
  apply coveredState_split_literal (state := state_2318176) 0
    state_2318177 state_2318222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318177
  · exact cover_2318222
#print axioms cover_2318176

def state_2318506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 21)))
theorem cover_2318506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318506 := by
  apply coveredState_split_literal (state := state_2318506) 0
    state_2318507 state_2318544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318507
  · exact cover_2318544
#print axioms cover_2318506

def state_2318505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 21)))
theorem cover_2318505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318505 := by
  apply coveredState_split_literal (state := state_2318505) 3
    state_2318506 state_2318603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318506
  · exact cover_2318603
#print axioms cover_2318505

def state_2318504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 21)))
theorem cover_2318504 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318504 := by
  apply coveredState_split_literal (state := state_2318504) 1
    state_2318505 state_2318616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318505
  · exact cover_2318616
#print axioms cover_2318504
end Mub6.Numerical.CircleFullD0.Forest
