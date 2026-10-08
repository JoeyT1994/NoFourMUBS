import CircleFullInterface
import CircleForestAssembly0029
import CircleForestAssembly0031
import CircleForestChunk0125
import CircleForestChunk0126
import CircleForestChunk0127
import CircleForestChunk0128
import CircleForestChunk0129
import CircleForestChunk0130
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_45482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_45482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45482 := by
  apply coveredState_split_literal (state := state_45482) 4
    state_45483 state_48954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45483
  · exact cover_48954
#print axioms cover_45482

def state_51503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 10)))
theorem cover_51503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51503 := by
  apply coveredState_split_literal (state := state_51503) 4
    state_51504 state_51561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51504
  · exact cover_51561
#print axioms cover_51503

def state_51502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 10)))
theorem cover_51502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51502 := by
  apply coveredState_split_literal (state := state_51502) 3
    state_51503 state_51602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51503
  · exact cover_51602
#print axioms cover_51502

def state_51496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
theorem cover_51496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51496 := by
  apply coveredState_split_literal (state := state_51496) 2
    state_51497 state_51502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51497
  · exact cover_51502
#print axioms cover_51496

def state_51466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
theorem cover_51466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51466 := by
  apply coveredState_split_literal (state := state_51466) 1
    state_51467 state_51496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51467
  · exact cover_51496
#print axioms cover_51466

def state_51426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
theorem cover_51426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51426 := by
  apply coveredState_split_literal (state := state_51426) 0
    state_51427 state_51466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51427
  · exact cover_51466
#print axioms cover_51426

def state_51425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_51425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51425 := by
  apply coveredState_split_literal (state := state_51425) 4
    state_51426 state_51611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51426
  · exact cover_51611
#print axioms cover_51425

def state_51424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_51424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51424 := by
  apply coveredState_split_literal (state := state_51424) 3
    state_51425 state_51670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51425
  · exact cover_51670
#print axioms cover_51424

def state_51372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_51372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51372 := by
  apply coveredState_split_literal (state := state_51372) 4
    state_51373 state_51424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51373
  · exact cover_51424
#print axioms cover_51372

def state_51371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_51371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51371 := by
  apply coveredState_split_literal (state := state_51371) 3
    state_51372 state_51679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51372
  · exact cover_51679
#print axioms cover_51371

def state_51775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 9)))
theorem cover_51775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51775 := by
  apply coveredState_split_literal (state := state_51775) 2
    state_51776 state_51833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51776
  · exact cover_51833
#print axioms cover_51775

def state_51774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 9)))
theorem cover_51774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51774 := by
  apply coveredState_split_literal (state := state_51774) 3
    state_51775 state_51870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51775
  · exact cover_51870
#print axioms cover_51774

def state_51768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 4)))
theorem cover_51768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51768 := by
  apply coveredState_split_literal (state := state_51768) 4
    state_51769 state_51774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51769
  · exact cover_51774
#print axioms cover_51768

def state_51744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 4)))
theorem cover_51744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51744 := by
  apply coveredState_split_literal (state := state_51744) 1
    state_51745 state_51768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51745
  · exact cover_51768
#print axioms cover_51744

def state_51698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 4)))
theorem cover_51698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51698 := by
  apply coveredState_split_literal (state := state_51698) 0
    state_51699 state_51744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51699
  · exact cover_51744
#print axioms cover_51698

def state_51697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 4)))
theorem cover_51697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51697 := by
  apply coveredState_split_literal (state := state_51697) 3
    state_51698 state_51877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51698
  · exact cover_51877
#print axioms cover_51697

def state_51884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
theorem cover_51884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51884 := by
  apply coveredState_split_literal (state := state_51884) 3
    state_51885 state_51946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51885
  · exact cover_51946
#print axioms cover_51884

def state_51696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_51696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51696 := by
  apply coveredState_split_literal (state := state_51696) 2
    state_51697 state_51884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51697
  · exact cover_51884
#print axioms cover_51696

def state_52043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
theorem cover_52043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52043 := by
  apply coveredState_split_literal (state := state_52043) 1
    state_52044 state_52099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52044
  · exact cover_52099
#print axioms cover_52043

def state_52042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
theorem cover_52042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52042 := by
  apply coveredState_split_literal (state := state_52042) 3
    state_52043 state_52110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52043
  · exact cover_52110
#print axioms cover_52042

def state_51980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
theorem cover_51980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51980 := by
  apply coveredState_split_literal (state := state_51980) 1
    state_51981 state_52042
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51981
  · exact cover_52042
#print axioms cover_51980

def state_52122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
theorem cover_52122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52122 := by
  apply coveredState_split_literal (state := state_52122) 3
    state_52123 state_52186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52123
  · exact cover_52186
#print axioms cover_52122

def state_52230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 20)))
theorem cover_52230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52230 := by
  apply coveredState_split_literal (state := state_52230) 4
    state_52231 state_52258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52231
  · exact cover_52258
#print axioms cover_52230

def state_52198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
theorem cover_52198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52198 := by
  apply coveredState_split_literal (state := state_52198) 2
    state_52199 state_52230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52199
  · exact cover_52230
#print axioms cover_52198

def state_52197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
theorem cover_52197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52197 := by
  apply coveredState_split_literal (state := state_52197) 1
    state_52198 state_52299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52198
  · exact cover_52299
#print axioms cover_52197

def state_52400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 41)))
theorem cover_52400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52400 := by
  apply coveredState_split_literal (state := state_52400) 3
    state_52401 state_52438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52401
  · exact cover_52438
#print axioms cover_52400

def state_52398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 20)))
theorem cover_52398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52398 := by
  apply coveredState_split_literal (state := state_52398) 4
    state_52399 state_52400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52399
  · exact cover_52400
#print axioms cover_52398

def state_52396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
theorem cover_52396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52396 := by
  apply coveredState_split_literal (state := state_52396) 2
    state_52397 state_52398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52397
  · exact cover_52398
#print axioms cover_52396

def state_52350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
theorem cover_52350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52350 := by
  apply coveredState_split_literal (state := state_52350) 1
    state_52351 state_52396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52351
  · exact cover_52396
#print axioms cover_52350

def state_52196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
theorem cover_52196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52196 := by
  apply coveredState_split_literal (state := state_52196) 0
    state_52197 state_52350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52197
  · exact cover_52350
#print axioms cover_52196

def state_52195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
theorem cover_52195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52195 := by
  apply coveredState_split_literal (state := state_52195) 3
    state_52196 state_52471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52196
  · exact cover_52471
#print axioms cover_52195

def state_52121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
theorem cover_52121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52121 := by
  apply coveredState_split_literal (state := state_52121) 1
    state_52122 state_52195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52122
  · exact cover_52195
#print axioms cover_52121
end Mub6.Numerical.CircleFullPrototype.Forest
