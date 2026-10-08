import CircleFullInterface
import CircleForestChunk1241
import CircleForestChunk1242
import CircleForestChunk1243
import CircleForestChunk1244
import CircleForestChunk1245
import CircleForestChunk1246
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1598406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 58 else 100)))
theorem cover_1598406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598406 := by
  apply coveredState_split_literal (state := state_1598406) 3
    state_1598407 state_1598424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598407
  · exact cover_1598424
#print axioms cover_1598406

def state_1598366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 58 else 100)))
theorem cover_1598366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598366 := by
  apply coveredState_split_literal (state := state_1598366) 0
    state_1598367 state_1598406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598367
  · exact cover_1598406
#print axioms cover_1598366

def state_1598491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 58 else 100)))
theorem cover_1598491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598491 := by
  apply coveredState_split_literal (state := state_1598491) 3
    state_1598492 state_1598523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598492
  · exact cover_1598523
#print axioms cover_1598491

def state_1598471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 58 else 100)))
theorem cover_1598471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598471 := by
  apply coveredState_split_literal (state := state_1598471) 0
    state_1598472 state_1598491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598472
  · exact cover_1598491
#print axioms cover_1598471

def state_1598365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 100)))
theorem cover_1598365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598365 := by
  apply coveredState_split_literal (state := state_1598365) 2
    state_1598366 state_1598471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598366
  · exact cover_1598471
#print axioms cover_1598365

def state_1598668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 58 else 101)))
theorem cover_1598668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598668 := by
  apply coveredState_split_literal (state := state_1598668) 3
    state_1598669 state_1598700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598669
  · exact cover_1598700
#print axioms cover_1598668

def state_1598648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 58 else 101)))
theorem cover_1598648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598648 := by
  apply coveredState_split_literal (state := state_1598648) 0
    state_1598649 state_1598668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598649
  · exact cover_1598668
#print axioms cover_1598648

def state_1598586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 101)))
theorem cover_1598586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598586 := by
  apply coveredState_split_literal (state := state_1598586) 2
    state_1598587 state_1598648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598587
  · exact cover_1598648
#print axioms cover_1598586

def state_1598364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 50)))
theorem cover_1598364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598364 := by
  apply coveredState_split_literal (state := state_1598364) 4
    state_1598365 state_1598586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598365
  · exact cover_1598586
#print axioms cover_1598364

def state_1598766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 103 else (if j.val < 4 then 58 else 100)))
theorem cover_1598766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598766 := by
  apply coveredState_split_literal (state := state_1598766) 0
    state_1598767 state_1598776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598767
  · exact cover_1598776
#print axioms cover_1598766

def state_1598760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 100)))
theorem cover_1598760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598760 := by
  apply coveredState_split_literal (state := state_1598760) 2
    state_1598761 state_1598766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598761
  · exact cover_1598766
#print axioms cover_1598760

def state_1598759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 50)))
theorem cover_1598759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598759 := by
  apply coveredState_split_literal (state := state_1598759) 4
    state_1598760 state_1598835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598760
  · exact cover_1598835
#print axioms cover_1598759

def state_1598363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 50)))
theorem cover_1598363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598363 := by
  apply coveredState_split_literal (state := state_1598363) 1
    state_1598364 state_1598759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598364
  · exact cover_1598759
#print axioms cover_1598363

def state_1598916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 100)))
theorem cover_1598916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598916 := by
  apply coveredState_split_literal (state := state_1598916) 3
    state_1598917 state_1598970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598917
  · exact cover_1598970
#print axioms cover_1598916

def state_1598896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 100)))
theorem cover_1598896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598896 := by
  apply coveredState_split_literal (state := state_1598896) 1
    state_1598897 state_1598916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598897
  · exact cover_1598916
#print axioms cover_1598896

def state_1598888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 100)))
theorem cover_1598888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598888 := by
  apply coveredState_split_literal (state := state_1598888) 0
    state_1598889 state_1598896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598889
  · exact cover_1598896
#print axioms cover_1598888

def state_1598860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 100)))
theorem cover_1598860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598860 := by
  apply coveredState_split_literal (state := state_1598860) 2
    state_1598861 state_1598888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598861
  · exact cover_1598888
#print axioms cover_1598860

def state_1599009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 101)))
theorem cover_1599009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599009 := by
  apply coveredState_split_literal (state := state_1599009) 0
    state_1599010 state_1599013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599010
  · exact cover_1599013
#print axioms cover_1599009

def state_1598985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 101)))
theorem cover_1598985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598985 := by
  apply coveredState_split_literal (state := state_1598985) 2
    state_1598986 state_1599009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598986
  · exact cover_1599009
#print axioms cover_1598985

def state_1598859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 50)))
theorem cover_1598859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598859 := by
  apply coveredState_split_literal (state := state_1598859) 4
    state_1598860 state_1598985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598860
  · exact cover_1598985
#print axioms cover_1598859

def state_1599074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 50)))
theorem cover_1599074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599074 := by
  apply coveredState_split_literal (state := state_1599074) 4
    state_1599075 state_1599114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599075
  · exact cover_1599114
#print axioms cover_1599074

def state_1598858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 50)))
theorem cover_1598858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598858 := by
  apply coveredState_split_literal (state := state_1598858) 1
    state_1598859 state_1599074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598859
  · exact cover_1599074
#print axioms cover_1598858

def state_1598362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 50)))
theorem cover_1598362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598362 := by
  apply coveredState_split_literal (state := state_1598362) 3
    state_1598363 state_1598858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598363
  · exact cover_1598858
#print axioms cover_1598362

def state_1599162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 58 else 100)))
theorem cover_1599162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599162 := by
  apply coveredState_split_literal (state := state_1599162) 0
    state_1599163 state_1599224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599163
  · exact cover_1599224
#print axioms cover_1599162

def state_1599142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 100)))
theorem cover_1599142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599142 := by
  apply coveredState_split_literal (state := state_1599142) 2
    state_1599143 state_1599162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599143
  · exact cover_1599162
#print axioms cover_1599142

def state_1599141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 50)))
theorem cover_1599141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599141 := by
  apply coveredState_split_literal (state := state_1599141) 4
    state_1599142 state_1599229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599142
  · exact cover_1599229
#print axioms cover_1599141

def state_1599140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 50)))
theorem cover_1599140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599140 := by
  apply coveredState_split_literal (state := state_1599140) 1
    state_1599141 state_1599250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599141
  · exact cover_1599250
#print axioms cover_1599140

def state_1599270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 59 else 100)))
theorem cover_1599270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599270 := by
  apply coveredState_split_literal (state := state_1599270) 0
    state_1599271 state_1599334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599271
  · exact cover_1599334
#print axioms cover_1599270

def state_1599351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 80) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 100)))
theorem cover_1599351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599351 := by
  apply coveredState_split_literal (state := state_1599351) 3
    state_1599352 state_1599393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599352
  · exact cover_1599393
#print axioms cover_1599351

def state_1599441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 118 else 100)))
theorem cover_1599441 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599441 := by
  apply coveredState_split_literal (state := state_1599441) 4
    state_1599442 state_1599479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599442
  · exact cover_1599479
#print axioms cover_1599441

def state_1599538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 119 else 100)))
theorem cover_1599538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599538 := by
  apply coveredState_split_literal (state := state_1599538) 4
    state_1599539 state_1599590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599539
  · exact cover_1599590
#print axioms cover_1599538

def state_1599440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 100)))
theorem cover_1599440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599440 := by
  apply coveredState_split_literal (state := state_1599440) 3
    state_1599441 state_1599538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599441
  · exact cover_1599538
#print axioms cover_1599440
end Mub6.Numerical.CircleFullD0.Forest
