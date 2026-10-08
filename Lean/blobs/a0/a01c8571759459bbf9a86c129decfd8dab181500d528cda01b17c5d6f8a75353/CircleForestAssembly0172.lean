import CircleFullInterface
import CircleForestAssembly0171
import CircleForestChunk0669
import CircleForestChunk0672
import CircleForestChunk0673
import CircleForestChunk0674
import CircleForestChunk0675
import CircleForestChunk0676
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_767038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_767038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767038 := by
  apply coveredState_split_literal (state := state_767038) 3
    state_767039 state_767046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767039
  · exact cover_767046
#print axioms cover_767038

def state_767026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_767026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767026 := by
  apply coveredState_split_literal (state := state_767026) 2
    state_767027 state_767038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767027
  · exact cover_767038
#print axioms cover_767026

def state_766564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_766564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766564 := by
  apply coveredState_split_literal (state := state_766564) 1
    state_766565 state_767026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766565
  · exact cover_767026
#print axioms cover_766564

def state_766456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_766456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766456 := by
  apply coveredState_split_literal (state := state_766456) 0
    state_766457 state_766564
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766457
  · exact cover_766564
#print axioms cover_766456

def state_766398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_766398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766398 := by
  apply coveredState_split_literal (state := state_766398) 4
    state_766399 state_766456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766399
  · exact cover_766456
#print axioms cover_766398

def state_767168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_767168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767168 := by
  apply coveredState_split_literal (state := state_767168) 1
    state_767169 state_767194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767169
  · exact cover_767194
#print axioms cover_767168

def state_767167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_767167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767167 := by
  apply coveredState_split_literal (state := state_767167) 0
    state_767168 state_767235
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767168
  · exact cover_767235
#print axioms cover_767167

def state_767107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_767107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767107 := by
  apply coveredState_split_literal (state := state_767107) 4
    state_767108 state_767167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767108
  · exact cover_767167
#print axioms cover_767107

def state_766397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_766397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766397 := by
  apply coveredState_split_literal (state := state_766397) 3
    state_766398 state_767107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766398
  · exact cover_767107
#print axioms cover_766397

def state_767284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_767284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767284 := by
  apply coveredState_split_literal (state := state_767284) 2
    state_767285 state_767310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767285
  · exact cover_767310
#print axioms cover_767284

def state_767434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_767434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767434 := by
  apply coveredState_split_literal (state := state_767434) 0
    state_767435 state_767484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767435
  · exact cover_767484
#print axioms cover_767434

def state_767408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
theorem cover_767408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767408 := by
  apply coveredState_split_literal (state := state_767408) 4
    state_767409 state_767434
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767409
  · exact cover_767434
#print axioms cover_767408

def state_767508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
theorem cover_767508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767508 := by
  apply coveredState_split_literal (state := state_767508) 0
    state_767509 state_767556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767509
  · exact cover_767556
#print axioms cover_767508

def state_767580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_767580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767580 := by
  apply coveredState_split_literal (state := state_767580) 1
    state_767581 state_767600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767581
  · exact cover_767600
#print axioms cover_767580

def state_767579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 5)))
theorem cover_767579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767579 := by
  apply coveredState_split_literal (state := state_767579) 4
    state_767580 state_767653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767580
  · exact cover_767653
#print axioms cover_767579

def state_767578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_767578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767578 := by
  apply coveredState_split_literal (state := state_767578) 3
    state_767579 state_767658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767579
  · exact cover_767658
#print axioms cover_767578

def state_767685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_767685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767685 := by
  apply coveredState_split_literal (state := state_767685) 2
    state_767686 state_767703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767686
  · exact cover_767703
#print axioms cover_767685

def state_767665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_767665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767665 := by
  apply coveredState_split_literal (state := state_767665) 1
    state_767666 state_767685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767666
  · exact cover_767685
#print axioms cover_767665

def state_767664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 5)))
theorem cover_767664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767664 := by
  apply coveredState_split_literal (state := state_767664) 4
    state_767665 state_767766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767665
  · exact cover_767766
#print axioms cover_767664

def state_767663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_767663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767663 := by
  apply coveredState_split_literal (state := state_767663) 3
    state_767664 state_767785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767664
  · exact cover_767785
#print axioms cover_767663

def state_767577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_767577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767577 := by
  apply coveredState_split_literal (state := state_767577) 0
    state_767578 state_767663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767578
  · exact cover_767663
#print axioms cover_767577

def state_767507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_767507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767507 := by
  apply coveredState_split_literal (state := state_767507) 4
    state_767508 state_767577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767508
  · exact cover_767577
#print axioms cover_767507

def state_767407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_767407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767407 := by
  apply coveredState_split_literal (state := state_767407) 3
    state_767408 state_767507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767408
  · exact cover_767507
#print axioms cover_767407

def state_767357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_767357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767357 := by
  apply coveredState_split_literal (state := state_767357) 2
    state_767358 state_767407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767358
  · exact cover_767407
#print axioms cover_767357

def state_767283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_767283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767283 := by
  apply coveredState_split_literal (state := state_767283) 1
    state_767284 state_767357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767284
  · exact cover_767357
#print axioms cover_767283

def state_767848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_767848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767848 := by
  apply coveredState_split_literal (state := state_767848) 3
    state_767849 state_767856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767849
  · exact cover_767856
#print axioms cover_767848

def state_767834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_767834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767834 := by
  apply coveredState_split_literal (state := state_767834) 2
    state_767835 state_767848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767835
  · exact cover_767848
#print axioms cover_767834

def state_767804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_767804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767804 := by
  apply coveredState_split_literal (state := state_767804) 1
    state_767805 state_767834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767805
  · exact cover_767834
#print axioms cover_767804

def state_767282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_767282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767282 := by
  apply coveredState_split_literal (state := state_767282) 0
    state_767283 state_767804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767283
  · exact cover_767804
#print axioms cover_767282

def state_767915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_767915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767915 := by
  apply coveredState_split_literal (state := state_767915) 0
    state_767916 state_767961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767916
  · exact cover_767961
#print axioms cover_767915

def state_767281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_767281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767281 := by
  apply coveredState_split_literal (state := state_767281) 4
    state_767282 state_767915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767282
  · exact cover_767915
#print axioms cover_767281

def state_768021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_768021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_768021 := by
  apply coveredState_split_literal (state := state_768021) 0
    state_768022 state_768065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_768022
  · exact cover_768065
#print axioms cover_768021
end Mub6.Numerical.CircleFullPrototype.Forest
