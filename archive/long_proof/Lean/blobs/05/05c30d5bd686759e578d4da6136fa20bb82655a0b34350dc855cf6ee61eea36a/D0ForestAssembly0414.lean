import D0FullInterface
import D0ForestAssembly0413
import D0ForestChunk1614
import D0ForestChunk1615
import D0ForestChunk1616
import D0ForestChunk1617
import D0ForestChunk1618
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2260604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 92 else 53)))
theorem cover_2260604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260604 := by
  apply coveredState_split_literal (state := state_2260604) 1
    state_2260605 state_2260666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260605
  · exact cover_2260666
#print axioms cover_2260604

def state_2260603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 53)))
theorem cover_2260603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260603 := by
  apply coveredState_split_literal (state := state_2260603) 3
    state_2260604 state_2260729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260604
  · exact cover_2260729
#print axioms cover_2260603

def state_2260602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 53)))
theorem cover_2260602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260602 := by
  apply coveredState_split_literal (state := state_2260602) 0
    state_2260603 state_2260760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260603
  · exact cover_2260760
#print axioms cover_2260602

def state_2260398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 26)))
theorem cover_2260398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260398 := by
  apply coveredState_split_literal (state := state_2260398) 4
    state_2260399 state_2260602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260399
  · exact cover_2260602
#print axioms cover_2260398

def state_2260829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 107)))
theorem cover_2260829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260829 := by
  apply coveredState_split_literal (state := state_2260829) 0
    state_2260830 state_2260891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260830
  · exact cover_2260891
#print axioms cover_2260829

def state_2260813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 53)))
theorem cover_2260813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260813 := by
  apply coveredState_split_literal (state := state_2260813) 4
    state_2260814 state_2260829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260814
  · exact cover_2260829
#print axioms cover_2260813

def state_2260812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 53)))
theorem cover_2260812 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260812 := by
  apply coveredState_split_literal (state := state_2260812) 2
    state_2260813 state_2260898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260813
  · exact cover_2260898
#print axioms cover_2260812

def state_2260916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 107)))
theorem cover_2260916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260916 := by
  apply coveredState_split_literal (state := state_2260916) 0
    state_2260917 state_2260954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260917
  · exact cover_2260954
#print axioms cover_2260916

def state_2260902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 53)))
theorem cover_2260902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260902 := by
  apply coveredState_split_literal (state := state_2260902) 4
    state_2260903 state_2260916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260903
  · exact cover_2260916
#print axioms cover_2260902

def state_2260901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 53)))
theorem cover_2260901 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260901 := by
  apply coveredState_split_literal (state := state_2260901) 2
    state_2260902 state_2260989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260902
  · exact cover_2260989
#print axioms cover_2260901

def state_2260811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 53)))
theorem cover_2260811 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260811 := by
  apply coveredState_split_literal (state := state_2260811) 1
    state_2260812 state_2260901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260812
  · exact cover_2260901
#print axioms cover_2260811

def state_2260810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 53)))
theorem cover_2260810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260810 := by
  apply coveredState_split_literal (state := state_2260810) 3
    state_2260811 state_2261000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260811
  · exact cover_2261000
#print axioms cover_2260810

def state_2260809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 53)))
theorem cover_2260809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260809 := by
  apply coveredState_split_literal (state := state_2260809) 0
    state_2260810 state_2261027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260810
  · exact cover_2261027
#print axioms cover_2260809

def state_2260795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 26)))
theorem cover_2260795 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260795 := by
  apply coveredState_split_literal (state := state_2260795) 4
    state_2260796 state_2260809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260796
  · exact cover_2260809
#print axioms cover_2260795

def state_2260397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 26)))
theorem cover_2260397 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260397 := by
  apply coveredState_split_literal (state := state_2260397) 2
    state_2260398 state_2260795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260398
  · exact cover_2260795
#print axioms cover_2260397

def state_2261050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 26)))
theorem cover_2261050 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261050 := by
  apply coveredState_split_literal (state := state_2261050) 2
    state_2261051 state_2261108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261051
  · exact cover_2261108
#print axioms cover_2261050

def state_2260396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 26)))
theorem cover_2260396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260396 := by
  apply coveredState_split_literal (state := state_2260396) 1
    state_2260397 state_2261050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260397
  · exact cover_2261050
#print axioms cover_2260396

def state_2261165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 47 else 26)))
theorem cover_2261165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261165 := by
  apply coveredState_split_literal (state := state_2261165) 1
    state_2261166 state_2261229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261166
  · exact cover_2261229
#print axioms cover_2261165

def state_2260395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 26)))
theorem cover_2260395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260395 := by
  apply coveredState_split_literal (state := state_2260395) 3
    state_2260396 state_2261165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260396
  · exact cover_2261165
#print axioms cover_2260395

def state_2261252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 26)))
theorem cover_2261252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261252 := by
  apply coveredState_split_literal (state := state_2261252) 3
    state_2261253 state_2261316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261253
  · exact cover_2261316
#print axioms cover_2261252

def state_2260394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 26)))
theorem cover_2260394 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260394 := by
  apply coveredState_split_literal (state := state_2260394) 0
    state_2260395 state_2261252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260395
  · exact cover_2261252
#print axioms cover_2260394

def state_2261354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
theorem cover_2261354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261354 := by
  apply coveredState_split_literal (state := state_2261354) 2
    state_2261355 state_2261396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261355
  · exact cover_2261396
#print axioms cover_2261354

def state_2261455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 54)))
theorem cover_2261455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261455 := by
  apply coveredState_split_literal (state := state_2261455) 0
    state_2261456 state_2261501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261456
  · exact cover_2261501
#print axioms cover_2261455

def state_2261425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
theorem cover_2261425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261425 := by
  apply coveredState_split_literal (state := state_2261425) 2
    state_2261426 state_2261455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261426
  · exact cover_2261455
#print axioms cover_2261425

def state_2261353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
theorem cover_2261353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261353 := by
  apply coveredState_split_literal (state := state_2261353) 1
    state_2261354 state_2261425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261354
  · exact cover_2261425
#print axioms cover_2261353

def state_2261352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 54)))
theorem cover_2261352 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261352 := by
  apply coveredState_split_literal (state := state_2261352) 3
    state_2261353 state_2261538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261353
  · exact cover_2261538
#print axioms cover_2261352

def state_2261351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 27)))
theorem cover_2261351 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261351 := by
  apply coveredState_split_literal (state := state_2261351) 4
    state_2261352 state_2261581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261352
  · exact cover_2261581
#print axioms cover_2261351

def state_2261350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 27)))
theorem cover_2261350 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261350 := by
  apply coveredState_split_literal (state := state_2261350) 0
    state_2261351 state_2261610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261351
  · exact cover_2261610
#print axioms cover_2261350

def state_2261338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 27)))
theorem cover_2261338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261338 := by
  apply coveredState_split_literal (state := state_2261338) 2
    state_2261339 state_2261350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261339
  · exact cover_2261350
#print axioms cover_2261338

def state_2261659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 27)))
theorem cover_2261659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261659 := by
  apply coveredState_split_literal (state := state_2261659) 0
    state_2261660 state_2261691
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261660
  · exact cover_2261691
#print axioms cover_2261659

def state_2261657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 27)))
theorem cover_2261657 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261657 := by
  apply coveredState_split_literal (state := state_2261657) 2
    state_2261658 state_2261659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261658
  · exact cover_2261659
#print axioms cover_2261657

def state_2261337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 27)))
theorem cover_2261337 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261337 := by
  apply coveredState_split_literal (state := state_2261337) 1
    state_2261338 state_2261657
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261338
  · exact cover_2261657
#print axioms cover_2261337
end Mub6.Numerical.CircleFullD0.Forest
