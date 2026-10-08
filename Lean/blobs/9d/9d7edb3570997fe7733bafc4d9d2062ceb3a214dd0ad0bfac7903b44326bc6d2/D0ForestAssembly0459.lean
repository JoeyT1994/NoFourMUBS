import D0FullInterface
import D0ForestAssembly0458
import D0ForestChunk1800
import D0ForestChunk1801
import D0ForestChunk1802
import D0ForestChunk1803
import D0ForestChunk1804
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2304983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 91)))
theorem cover_2304983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304983 := by
  apply coveredState_split_literal (state := state_2304983) 1
    state_2304984 state_2305063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304984
  · exact cover_2305063
#print axioms cover_2304983

def state_2305350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 91)))
theorem cover_2305350 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305350 := by
  apply coveredState_split_literal (state := state_2305350) 1
    state_2305351 state_2305366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305351
  · exact cover_2305366
#print axioms cover_2305350

def state_2304982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 91)))
theorem cover_2304982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304982 := by
  apply coveredState_split_literal (state := state_2304982) 0
    state_2304983 state_2305350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304983
  · exact cover_2305350
#print axioms cover_2304982

def state_2304828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 45)))
theorem cover_2304828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304828 := by
  apply coveredState_split_literal (state := state_2304828) 4
    state_2304829 state_2304982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304829
  · exact cover_2304982
#print axioms cover_2304828

def state_2304674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 27 else 45)))
theorem cover_2304674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304674 := by
  apply coveredState_split_literal (state := state_2304674) 3
    state_2304675 state_2304828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304675
  · exact cover_2304828
#print axioms cover_2304674

def state_2305470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 91)))
theorem cover_2305470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305470 := by
  apply coveredState_split_literal (state := state_2305470) 1
    state_2305471 state_2305476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305471
  · exact cover_2305476
#print axioms cover_2305470

def state_2305469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 91)))
theorem cover_2305469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305469 := by
  apply coveredState_split_literal (state := state_2305469) 0
    state_2305470 state_2305537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305470
  · exact cover_2305537
#print axioms cover_2305469

def state_2305447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 45)))
theorem cover_2305447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305447 := by
  apply coveredState_split_literal (state := state_2305447) 4
    state_2305448 state_2305469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305448
  · exact cover_2305469
#print axioms cover_2305447

def state_2305429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 45)))
theorem cover_2305429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305429 := by
  apply coveredState_split_literal (state := state_2305429) 3
    state_2305430 state_2305447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305430
  · exact cover_2305447
#print axioms cover_2305429

def state_2304673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
theorem cover_2304673 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304673 := by
  apply coveredState_split_literal (state := state_2304673) 2
    state_2304674 state_2305429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304674
  · exact cover_2305429
#print axioms cover_2304673

def state_2305558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 45)))
theorem cover_2305558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305558 := by
  apply coveredState_split_literal (state := state_2305558) 4
    state_2305559 state_2305584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305559
  · exact cover_2305584
#print axioms cover_2305558

def state_2305625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 90)))
theorem cover_2305625 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305625 := by
  apply coveredState_split_literal (state := state_2305625) 1
    state_2305626 state_2305687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305626
  · exact cover_2305687
#print axioms cover_2305625

def state_2305624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 90)))
theorem cover_2305624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305624 := by
  apply coveredState_split_literal (state := state_2305624) 0
    state_2305625 state_2305690
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305625
  · exact cover_2305690
#print axioms cover_2305624

def state_2305716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 106) else (if j.val < 3 then 36 else (if j.val < 4 then 110 else 91)))
theorem cover_2305716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305716 := by
  apply coveredState_split_literal (state := state_2305716) 2
    state_2305717 state_2305732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305717
  · exact cover_2305732
#print axioms cover_2305716

def state_2305715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 106) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 91)))
theorem cover_2305715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305715 := by
  apply coveredState_split_literal (state := state_2305715) 3
    state_2305716 state_2305785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305716
  · exact cover_2305785
#print axioms cover_2305715

def state_2305714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 91)))
theorem cover_2305714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305714 := by
  apply coveredState_split_literal (state := state_2305714) 1
    state_2305715 state_2305804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305715
  · exact cover_2305804
#print axioms cover_2305714

def state_2305713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 91)))
theorem cover_2305713 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305713 := by
  apply coveredState_split_literal (state := state_2305713) 0
    state_2305714 state_2305811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305714
  · exact cover_2305811
#print axioms cover_2305713

def state_2305623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 45)))
theorem cover_2305623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305623 := by
  apply coveredState_split_literal (state := state_2305623) 4
    state_2305624 state_2305713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305624
  · exact cover_2305713
#print axioms cover_2305623

def state_2305557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 27 else 45)))
theorem cover_2305557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305557 := by
  apply coveredState_split_literal (state := state_2305557) 3
    state_2305558 state_2305623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305558
  · exact cover_2305623
#print axioms cover_2305557

def state_2305864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 91)))
theorem cover_2305864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305864 := by
  apply coveredState_split_literal (state := state_2305864) 1
    state_2305865 state_2305924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305865
  · exact cover_2305924
#print axioms cover_2305864

def state_2305863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 91)))
theorem cover_2305863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305863 := by
  apply coveredState_split_literal (state := state_2305863) 0
    state_2305864 state_2305933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305864
  · exact cover_2305933
#print axioms cover_2305863

def state_2305839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 45)))
theorem cover_2305839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305839 := by
  apply coveredState_split_literal (state := state_2305839) 4
    state_2305840 state_2305863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305840
  · exact cover_2305863
#print axioms cover_2305839

def state_2305941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 106) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 90)))
theorem cover_2305941 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305941 := by
  apply coveredState_split_literal (state := state_2305941) 2
    state_2305942 state_2306001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305942
  · exact cover_2306001
#print axioms cover_2305941

def state_2305940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 90)))
theorem cover_2305940 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305940 := by
  apply coveredState_split_literal (state := state_2305940) 1
    state_2305941 state_2306032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305941
  · exact cover_2306032
#print axioms cover_2305940

def state_2305939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 90)))
theorem cover_2305939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305939 := by
  apply coveredState_split_literal (state := state_2305939) 0
    state_2305940 state_2306051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305940
  · exact cover_2306051
#print axioms cover_2305939

def state_2306114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 106) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 91)))
theorem cover_2306114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306114 := by
  apply coveredState_split_literal (state := state_2306114) 2
    state_2306115 state_2306178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306115
  · exact cover_2306178
#print axioms cover_2306114

def state_2306113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 91)))
theorem cover_2306113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306113 := by
  apply coveredState_split_literal (state := state_2306113) 1
    state_2306114 state_2306209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306114
  · exact cover_2306209
#print axioms cover_2306113

def state_2306229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 106) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 91)))
theorem cover_2306229 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306229 := by
  apply coveredState_split_literal (state := state_2306229) 2
    state_2306230 state_2306277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306230
  · exact cover_2306277
#print axioms cover_2306229

def state_2306228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 91)))
theorem cover_2306228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306228 := by
  apply coveredState_split_literal (state := state_2306228) 1
    state_2306229 state_2306294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306229
  · exact cover_2306294
#print axioms cover_2306228

def state_2306112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 91)))
theorem cover_2306112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306112 := by
  apply coveredState_split_literal (state := state_2306112) 0
    state_2306113 state_2306228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306113
  · exact cover_2306228
#print axioms cover_2306112

def state_2305938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 45)))
theorem cover_2305938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305938 := by
  apply coveredState_split_literal (state := state_2305938) 4
    state_2305939 state_2306112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305939
  · exact cover_2306112
#print axioms cover_2305938

def state_2305838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 45)))
theorem cover_2305838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305838 := by
  apply coveredState_split_literal (state := state_2305838) 3
    state_2305839 state_2305938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305839
  · exact cover_2305938
#print axioms cover_2305838
end Mub6.Numerical.CircleFullD0.Forest
