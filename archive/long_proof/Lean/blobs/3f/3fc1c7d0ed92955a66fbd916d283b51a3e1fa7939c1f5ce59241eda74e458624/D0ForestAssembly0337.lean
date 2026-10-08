import D0FullInterface
import D0ForestAssembly0333
import D0ForestAssembly0336
import D0ForestChunk1306
import D0ForestChunk1307
import D0ForestChunk1308
import D0ForestChunk1309
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1610203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_1610203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610203 := by
  apply coveredState_split_literal (state := state_1610203) 4
    state_1610204 state_1614049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610204
  · exact cover_1614049
#print axioms cover_1610203

def state_1609101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1609101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609101 := by
  apply coveredState_split_literal (state := state_1609101) 2
    state_1609102 state_1610203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609102
  · exact cover_1610203
#print axioms cover_1609101

def state_1614191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 48)))
theorem cover_1614191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614191 := by
  apply coveredState_split_literal (state := state_1614191) 1
    state_1614192 state_1614217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614192
  · exact cover_1614217
#print axioms cover_1614191

def state_1614190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 48)))
theorem cover_1614190 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614190 := by
  apply coveredState_split_literal (state := state_1614190) 0
    state_1614191 state_1614256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614191
  · exact cover_1614256
#print axioms cover_1614190

def state_1614306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 49)))
theorem cover_1614306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614306 := by
  apply coveredState_split_literal (state := state_1614306) 3
    state_1614307 state_1614328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614307
  · exact cover_1614328
#print axioms cover_1614306

def state_1614260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 49)))
theorem cover_1614260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614260 := by
  apply coveredState_split_literal (state := state_1614260) 1
    state_1614261 state_1614306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614261
  · exact cover_1614306
#print axioms cover_1614260

def state_1614259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 49)))
theorem cover_1614259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614259 := by
  apply coveredState_split_literal (state := state_1614259) 0
    state_1614260 state_1614375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614260
  · exact cover_1614375
#print axioms cover_1614259

def state_1614189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 24)))
theorem cover_1614189 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614189 := by
  apply coveredState_split_literal (state := state_1614189) 4
    state_1614190 state_1614259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614190
  · exact cover_1614259
#print axioms cover_1614189

def state_1614181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 24)))
theorem cover_1614181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614181 := by
  apply coveredState_split_literal (state := state_1614181) 3
    state_1614182 state_1614189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614182
  · exact cover_1614189
#print axioms cover_1614181

def state_1614167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_1614167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614167 := by
  apply coveredState_split_literal (state := state_1614167) 2
    state_1614168 state_1614181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614168
  · exact cover_1614181
#print axioms cover_1614167

def state_1614399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 25)))
theorem cover_1614399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614399 := by
  apply coveredState_split_literal (state := state_1614399) 1
    state_1614400 state_1614445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614400
  · exact cover_1614445
#print axioms cover_1614399

def state_1614398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 25)))
theorem cover_1614398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614398 := by
  apply coveredState_split_literal (state := state_1614398) 0
    state_1614399 state_1614472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614399
  · exact cover_1614472
#print axioms cover_1614398

def state_1614390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 25)))
theorem cover_1614390 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614390 := by
  apply coveredState_split_literal (state := state_1614390) 3
    state_1614391 state_1614398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614391
  · exact cover_1614398
#print axioms cover_1614390

def state_1614382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
theorem cover_1614382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614382 := by
  apply coveredState_split_literal (state := state_1614382) 2
    state_1614383 state_1614390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614383
  · exact cover_1614390
#print axioms cover_1614382

def state_1614166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_1614166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614166 := by
  apply coveredState_split_literal (state := state_1614166) 4
    state_1614167 state_1614382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614167
  · exact cover_1614382
#print axioms cover_1614166

def state_1614493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 24)))
theorem cover_1614493 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614493 := by
  apply coveredState_split_literal (state := state_1614493) 4
    state_1614494 state_1614509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614494
  · exact cover_1614509
#print axioms cover_1614493

def state_1614492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 24)))
theorem cover_1614492 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614492 := by
  apply coveredState_split_literal (state := state_1614492) 1
    state_1614493 state_1614558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614493
  · exact cover_1614558
#print axioms cover_1614492

def state_1614490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 24)))
theorem cover_1614490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614490 := by
  apply coveredState_split_literal (state := state_1614490) 3
    state_1614491 state_1614492
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614491
  · exact cover_1614492
#print axioms cover_1614490

def state_1614488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_1614488 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614488 := by
  apply coveredState_split_literal (state := state_1614488) 2
    state_1614489 state_1614490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614489
  · exact cover_1614490
#print axioms cover_1614488

def state_1614487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_1614487 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614487 := by
  apply coveredState_split_literal (state := state_1614487) 4
    state_1614488 state_1614569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614488
  · exact cover_1614569
#print axioms cover_1614487

def state_1614165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_1614165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614165 := by
  apply coveredState_split_literal (state := state_1614165) 1
    state_1614166 state_1614487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614166
  · exact cover_1614487
#print axioms cover_1614165

def state_1614164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_1614164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614164 := by
  apply coveredState_split_literal (state := state_1614164) 0
    state_1614165 state_1614586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614165
  · exact cover_1614586
#print axioms cover_1614164

def state_1614647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 49)))
theorem cover_1614647 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614647 := by
  apply coveredState_split_literal (state := state_1614647) 0
    state_1614648 state_1614707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614648
  · exact cover_1614707
#print axioms cover_1614647

def state_1614605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 24)))
theorem cover_1614605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614605 := by
  apply coveredState_split_literal (state := state_1614605) 4
    state_1614606 state_1614647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614606
  · exact cover_1614647
#print axioms cover_1614605

def state_1614604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 24)))
theorem cover_1614604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614604 := by
  apply coveredState_split_literal (state := state_1614604) 3
    state_1614605 state_1614712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614605
  · exact cover_1614712
#print axioms cover_1614604

def state_1614602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_1614602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614602 := by
  apply coveredState_split_literal (state := state_1614602) 2
    state_1614603 state_1614604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614603
  · exact cover_1614604
#print axioms cover_1614602

def state_1614731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 25)))
theorem cover_1614731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614731 := by
  apply coveredState_split_literal (state := state_1614731) 1
    state_1614732 state_1614771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614732
  · exact cover_1614771
#print axioms cover_1614731

def state_1614730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 25)))
theorem cover_1614730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614730 := by
  apply coveredState_split_literal (state := state_1614730) 0
    state_1614731 state_1614796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614731
  · exact cover_1614796
#print axioms cover_1614730

def state_1614729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 25)))
theorem cover_1614729 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614729 := by
  apply coveredState_split_literal (state := state_1614729) 3
    state_1614730 state_1614807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614730
  · exact cover_1614807
#print axioms cover_1614729

def state_1614727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_1614727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614727 := by
  apply coveredState_split_literal (state := state_1614727) 2
    state_1614728 state_1614729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614728
  · exact cover_1614729
#print axioms cover_1614727

def state_1614601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1614601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614601 := by
  apply coveredState_split_literal (state := state_1614601) 4
    state_1614602 state_1614727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614602
  · exact cover_1614727
#print axioms cover_1614601

def state_1614600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1614600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614600 := by
  apply coveredState_split_literal (state := state_1614600) 1
    state_1614601 state_1614822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614601
  · exact cover_1614822
#print axioms cover_1614600
end Mub6.Numerical.CircleFullD0.Forest
