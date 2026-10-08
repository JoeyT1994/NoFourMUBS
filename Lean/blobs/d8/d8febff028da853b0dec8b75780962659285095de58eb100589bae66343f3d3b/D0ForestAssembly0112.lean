import D0FullInterface
import D0ForestAssembly0111
import D0ForestChunk0443
import D0ForestChunk0444
import D0ForestChunk0445
import D0ForestChunk0446
import D0ForestChunk0447
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1043938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1043938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043938 := by
  apply coveredState_split_literal (state := state_1043938) 1
    state_1043939 state_1043978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043939
  · exact cover_1043978
#print axioms cover_1043938

def state_1043937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1043937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043937 := by
  apply coveredState_split_literal (state := state_1043937) 0
    state_1043938 state_1044039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043938
  · exact cover_1044039
#print axioms cover_1043937

def state_1043815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1043815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043815 := by
  apply coveredState_split_literal (state := state_1043815) 4
    state_1043816 state_1043937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043816
  · exact cover_1043937
#print axioms cover_1043815

def state_1044218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_1044218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044218 := by
  apply coveredState_split_literal (state := state_1044218) 4
    state_1044219 state_1044276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044219
  · exact cover_1044276
#print axioms cover_1044218

def state_1044156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1044156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044156 := by
  apply coveredState_split_literal (state := state_1044156) 3
    state_1044157 state_1044218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044157
  · exact cover_1044218
#print axioms cover_1044156

def state_1044130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1044130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044130 := by
  apply coveredState_split_literal (state := state_1044130) 1
    state_1044131 state_1044156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044131
  · exact cover_1044156
#print axioms cover_1044130

def state_1044129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1044129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044129 := by
  apply coveredState_split_literal (state := state_1044129) 0
    state_1044130 state_1044297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044130
  · exact cover_1044297
#print axioms cover_1044129

def state_1044067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_1044067 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044067 := by
  apply coveredState_split_literal (state := state_1044067) 4
    state_1044068 state_1044129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044068
  · exact cover_1044129
#print axioms cover_1044067

def state_1044066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_1044066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044066 := by
  apply coveredState_split_literal (state := state_1044066) 3
    state_1044067 state_1044306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044067
  · exact cover_1044306
#print axioms cover_1044066

def state_1044378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1044378 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044378 := by
  apply coveredState_split_literal (state := state_1044378) 2
    state_1044379 state_1044442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044379
  · exact cover_1044442
#print axioms cover_1044378

def state_1044372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1044372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044372 := by
  apply coveredState_split_literal (state := state_1044372) 1
    state_1044373 state_1044378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044373
  · exact cover_1044378
#print axioms cover_1044372

def state_1044371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1044371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044371 := by
  apply coveredState_split_literal (state := state_1044371) 0
    state_1044372 state_1044455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044372
  · exact cover_1044455
#print axioms cover_1044371

def state_1044365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_1044365 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044365 := by
  apply coveredState_split_literal (state := state_1044365) 4
    state_1044366 state_1044371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044366
  · exact cover_1044371
#print axioms cover_1044365

def state_1044341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_1044341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044341 := by
  apply coveredState_split_literal (state := state_1044341) 3
    state_1044342 state_1044365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044342
  · exact cover_1044365
#print axioms cover_1044341

def state_1044065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1044065 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044065 := by
  apply coveredState_split_literal (state := state_1044065) 2
    state_1044066 state_1044341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044066
  · exact cover_1044341
#print axioms cover_1044065

def state_1044583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_1044583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044583 := by
  apply coveredState_split_literal (state := state_1044583) 4
    state_1044584 state_1044633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044584
  · exact cover_1044633
#print axioms cover_1044583

def state_1044582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_1044582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044582 := by
  apply coveredState_split_literal (state := state_1044582) 0
    state_1044583 state_1044682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044583
  · exact cover_1044682
#print axioms cover_1044582

def state_1044554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_1044554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044554 := by
  apply coveredState_split_literal (state := state_1044554) 2
    state_1044555 state_1044582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044555
  · exact cover_1044582
#print axioms cover_1044554

def state_1044553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_1044553 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044553 := by
  apply coveredState_split_literal (state := state_1044553) 1
    state_1044554 state_1044691
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044554
  · exact cover_1044691
#print axioms cover_1044553

def state_1044535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_1044535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044535 := by
  apply coveredState_split_literal (state := state_1044535) 4
    state_1044536 state_1044553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044536
  · exact cover_1044553
#print axioms cover_1044535

def state_1044475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1044475 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044475 := by
  apply coveredState_split_literal (state := state_1044475) 3
    state_1044476 state_1044535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044476
  · exact cover_1044535
#print axioms cover_1044475

def state_1044474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1044474 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044474 := by
  apply coveredState_split_literal (state := state_1044474) 0
    state_1044475 state_1044704
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044475
  · exact cover_1044704
#print axioms cover_1044474

def state_1044462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_1044462 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044462 := by
  apply coveredState_split_literal (state := state_1044462) 4
    state_1044463 state_1044474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044463
  · exact cover_1044474
#print axioms cover_1044462

def state_1044461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_1044461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044461 := by
  apply coveredState_split_literal (state := state_1044461) 3
    state_1044462 state_1044715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044462
  · exact cover_1044715
#print axioms cover_1044461

def state_1044773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_1044773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044773 := by
  apply coveredState_split_literal (state := state_1044773) 4
    state_1044774 state_1044781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044774
  · exact cover_1044781
#print axioms cover_1044773

def state_1044892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 21)))
theorem cover_1044892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044892 := by
  apply coveredState_split_literal (state := state_1044892) 3
    state_1044893 state_1044926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044893
  · exact cover_1044926
#print axioms cover_1044892

def state_1044891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 21)))
theorem cover_1044891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044891 := by
  apply coveredState_split_literal (state := state_1044891) 1
    state_1044892 state_1044969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044892
  · exact cover_1044969
#print axioms cover_1044891

def state_1044889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 10)))
theorem cover_1044889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044889 := by
  apply coveredState_split_literal (state := state_1044889) 4
    state_1044890 state_1044891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044890
  · exact cover_1044891
#print axioms cover_1044889

def state_1044887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_1044887 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044887 := by
  apply coveredState_split_literal (state := state_1044887) 2
    state_1044888 state_1044889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044888
  · exact cover_1044889
#print axioms cover_1044887

def state_1044886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_1044886 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044886 := by
  apply coveredState_split_literal (state := state_1044886) 0
    state_1044887 state_1044970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044887
  · exact cover_1044970
#print axioms cover_1044886

def state_1044850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
theorem cover_1044850 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044850 := by
  apply coveredState_split_literal (state := state_1044850) 3
    state_1044851 state_1044886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044851
  · exact cover_1044886
#print axioms cover_1044850

def state_1044849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
theorem cover_1044849 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044849 := by
  apply coveredState_split_literal (state := state_1044849) 1
    state_1044850 state_1044971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044850
  · exact cover_1044971
#print axioms cover_1044849
end Mub6.Numerical.CircleFullD0.Forest
