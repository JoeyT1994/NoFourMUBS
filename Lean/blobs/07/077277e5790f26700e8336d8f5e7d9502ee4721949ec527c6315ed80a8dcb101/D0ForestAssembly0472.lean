import D0FullInterface
import D0ForestAssembly0471
import D0ForestChunk1855
import D0ForestChunk1856
import D0ForestChunk1857
import D0ForestChunk1858
import D0ForestChunk1859
import D0ForestChunk1860
import D0ForestChunk1861
import D0ForestChunk1862
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2318502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 10)))
theorem cover_2318502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318502 := by
  apply coveredState_split_literal (state := state_2318502) 4
    state_2318503 state_2318504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318503
  · exact cover_2318504
#print axioms cover_2318502

def state_2318658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 43)))
theorem cover_2318658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318658 := by
  apply coveredState_split_literal (state := state_2318658) 3
    state_2318659 state_2318702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318659
  · exact cover_2318702
#print axioms cover_2318658

def state_2318657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 43)))
theorem cover_2318657 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318657 := by
  apply coveredState_split_literal (state := state_2318657) 1
    state_2318658 state_2318749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318658
  · exact cover_2318749
#print axioms cover_2318657

def state_2318645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 21)))
theorem cover_2318645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318645 := by
  apply coveredState_split_literal (state := state_2318645) 4
    state_2318646 state_2318657
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318646
  · exact cover_2318657
#print axioms cover_2318645

def state_2318644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 21)))
theorem cover_2318644 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318644 := by
  apply coveredState_split_literal (state := state_2318644) 2
    state_2318645 state_2318760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318645
  · exact cover_2318760
#print axioms cover_2318644

def state_2318862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 43)))
theorem cover_2318862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318862 := by
  apply coveredState_split_literal (state := state_2318862) 4
    state_2318863 state_2318874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318863
  · exact cover_2318874
#print axioms cover_2318862

def state_2318861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 43)))
theorem cover_2318861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318861 := by
  apply coveredState_split_literal (state := state_2318861) 0
    state_2318862 state_2318935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318862
  · exact cover_2318935
#print axioms cover_2318861

def state_2318841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 43)))
theorem cover_2318841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318841 := by
  apply coveredState_split_literal (state := state_2318841) 3
    state_2318842 state_2318861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318842
  · exact cover_2318861
#print axioms cover_2318841

def state_2318942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 43)))
theorem cover_2318942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318942 := by
  apply coveredState_split_literal (state := state_2318942) 3
    state_2318943 state_2318962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318943
  · exact cover_2318962
#print axioms cover_2318942

def state_2318840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 43)))
theorem cover_2318840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318840 := by
  apply coveredState_split_literal (state := state_2318840) 1
    state_2318841 state_2318942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318841
  · exact cover_2318942
#print axioms cover_2318840

def state_2318824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 21)))
theorem cover_2318824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318824 := by
  apply coveredState_split_literal (state := state_2318824) 4
    state_2318825 state_2318840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318825
  · exact cover_2318840
#print axioms cover_2318824

def state_2319039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 43)))
theorem cover_2319039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319039 := by
  apply coveredState_split_literal (state := state_2319039) 1
    state_2319040 state_2319069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319040
  · exact cover_2319069
#print axioms cover_2319039

def state_2319021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 21)))
theorem cover_2319021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319021 := by
  apply coveredState_split_literal (state := state_2319021) 4
    state_2319022 state_2319039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319022
  · exact cover_2319039
#print axioms cover_2319021

def state_2318823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 21)))
theorem cover_2318823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318823 := by
  apply coveredState_split_literal (state := state_2318823) 2
    state_2318824 state_2319021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318824
  · exact cover_2319021
#print axioms cover_2318823

def state_2318643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 21)))
theorem cover_2318643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318643 := by
  apply coveredState_split_literal (state := state_2318643) 0
    state_2318644 state_2318823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318644
  · exact cover_2318823
#print axioms cover_2318643

def state_2319183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 62 else 43)))
theorem cover_2319183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319183 := by
  apply coveredState_split_literal (state := state_2319183) 0
    state_2319184 state_2319235
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319184
  · exact cover_2319235
#print axioms cover_2319183

def state_2319182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 31 else 43)))
theorem cover_2319182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319182 := by
  apply coveredState_split_literal (state := state_2319182) 3
    state_2319183 state_2319262
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319183
  · exact cover_2319262
#print axioms cover_2319182

def state_2319181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 31 else 43)))
theorem cover_2319181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319181 := by
  apply coveredState_split_literal (state := state_2319181) 1
    state_2319182 state_2319279
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319182
  · exact cover_2319279
#print axioms cover_2319181

def state_2319171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 31 else 21)))
theorem cover_2319171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319171 := by
  apply coveredState_split_literal (state := state_2319171) 4
    state_2319172 state_2319181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319172
  · exact cover_2319181
#print axioms cover_2319171

def state_2319330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 43)))
theorem cover_2319330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319330 := by
  apply coveredState_split_literal (state := state_2319330) 0
    state_2319331 state_2319386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319331
  · exact cover_2319386
#print axioms cover_2319330

def state_2319329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 43)))
theorem cover_2319329 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319329 := by
  apply coveredState_split_literal (state := state_2319329) 3
    state_2319330 state_2319403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319330
  · exact cover_2319403
#print axioms cover_2319329

def state_2319454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 43)))
theorem cover_2319454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319454 := by
  apply coveredState_split_literal (state := state_2319454) 2
    state_2319455 state_2319502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319455
  · exact cover_2319502
#print axioms cover_2319454

def state_2319559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 87)))
theorem cover_2319559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319559 := by
  apply coveredState_split_literal (state := state_2319559) 3
    state_2319560 state_2319585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319560
  · exact cover_2319585
#print axioms cover_2319559

def state_2319558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 87)))
theorem cover_2319558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319558 := by
  apply coveredState_split_literal (state := state_2319558) 1
    state_2319559 state_2319630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319559
  · exact cover_2319630
#print axioms cover_2319558

def state_2319552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 43)))
theorem cover_2319552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319552 := by
  apply coveredState_split_literal (state := state_2319552) 4
    state_2319553 state_2319558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319553
  · exact cover_2319558
#print axioms cover_2319552

def state_2319659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 87)))
theorem cover_2319659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319659 := by
  apply coveredState_split_literal (state := state_2319659) 1
    state_2319660 state_2319703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319660
  · exact cover_2319703
#print axioms cover_2319659

def state_2319653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 43)))
theorem cover_2319653 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319653 := by
  apply coveredState_split_literal (state := state_2319653) 4
    state_2319654 state_2319659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319654
  · exact cover_2319659
#print axioms cover_2319653

def state_2319551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 43)))
theorem cover_2319551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319551 := by
  apply coveredState_split_literal (state := state_2319551) 2
    state_2319552 state_2319653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319552
  · exact cover_2319653
#print axioms cover_2319551

def state_2319453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 43)))
theorem cover_2319453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319453 := by
  apply coveredState_split_literal (state := state_2319453) 0
    state_2319454 state_2319551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319454
  · exact cover_2319551
#print axioms cover_2319453

def state_2319809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 63 else 87)))
theorem cover_2319809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319809 := by
  apply coveredState_split_literal (state := state_2319809) 3
    state_2319810 state_2319873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319810
  · exact cover_2319873
#print axioms cover_2319809

def state_2319808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 63 else 87)))
theorem cover_2319808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319808 := by
  apply coveredState_split_literal (state := state_2319808) 1
    state_2319809 state_2319874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319809
  · exact cover_2319874
#print axioms cover_2319808

def state_2319798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 63 else 43)))
theorem cover_2319798 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319798 := by
  apply coveredState_split_literal (state := state_2319798) 4
    state_2319799 state_2319808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319799
  · exact cover_2319808
#print axioms cover_2319798
end Mub6.Numerical.CircleFullD0.Forest
