import CircleFullInterface
import CircleForestAssembly0149
import CircleForestChunk0572
import CircleForestChunk0573
import CircleForestChunk0574
import CircleForestChunk0575
import CircleForestChunk0576
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1326627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
theorem cover_1326627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326627 := by
  apply coveredState_split_literal (state := state_1326627) 2
    state_1326628 state_1326697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326628
  · exact cover_1326697
#print axioms cover_1326627

def state_1326617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
theorem cover_1326617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326617 := by
  apply coveredState_split_literal (state := state_1326617) 1
    state_1326618 state_1326627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326618
  · exact cover_1326627
#print axioms cover_1326617

def state_1326616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 10)))
theorem cover_1326616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326616 := by
  apply coveredState_split_literal (state := state_1326616) 3
    state_1326617 state_1326702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326617
  · exact cover_1326702
#print axioms cover_1326616

def state_1326615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 10)))
theorem cover_1326615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326615 := by
  apply coveredState_split_literal (state := state_1326615) 0
    state_1326616 state_1326707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326616
  · exact cover_1326707
#print axioms cover_1326615

def state_1326732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1326732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326732 := by
  apply coveredState_split_literal (state := state_1326732) 1
    state_1326733 state_1326734
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326733
  · exact cover_1326734
#print axioms cover_1326732

def state_1326731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
theorem cover_1326731 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326731 := by
  apply coveredState_split_literal (state := state_1326731) 3
    state_1326732 state_1326797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326732
  · exact cover_1326797
#print axioms cover_1326731

def state_1326812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 47) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
theorem cover_1326812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326812 := by
  apply coveredState_split_literal (state := state_1326812) 3
    state_1326813 state_1326874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326813
  · exact cover_1326874
#print axioms cover_1326812

def state_1326811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 47) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
theorem cover_1326811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326811 := by
  apply coveredState_split_literal (state := state_1326811) 0
    state_1326812 state_1326917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326812
  · exact cover_1326917
#print axioms cover_1326811

def state_1326810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 47) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 22)))
theorem cover_1326810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326810 := by
  apply coveredState_split_literal (state := state_1326810) 4
    state_1326811 state_1326918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326811
  · exact cover_1326918
#print axioms cover_1326810

def state_1326809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 47) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1326809 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326809 := by
  apply coveredState_split_literal (state := state_1326809) 2
    state_1326810 state_1326937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326810
  · exact cover_1326937
#print axioms cover_1326809

def state_1326799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1326799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326799 := by
  apply coveredState_split_literal (state := state_1326799) 1
    state_1326800 state_1326809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326800
  · exact cover_1326809
#print axioms cover_1326799

def state_1326798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
theorem cover_1326798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326798 := by
  apply coveredState_split_literal (state := state_1326798) 3
    state_1326799 state_1326952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326799
  · exact cover_1326952
#print axioms cover_1326798

def state_1326730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
theorem cover_1326730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326730 := by
  apply coveredState_split_literal (state := state_1326730) 0
    state_1326731 state_1326798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326731
  · exact cover_1326798
#print axioms cover_1326730

def state_1326729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 11)))
theorem cover_1326729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326729 := by
  apply coveredState_split_literal (state := state_1326729) 4
    state_1326730 state_1326995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326730
  · exact cover_1326995
#print axioms cover_1326729

def state_1326728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
theorem cover_1326728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326728 := by
  apply coveredState_split_literal (state := state_1326728) 2
    state_1326729 state_1327006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326729
  · exact cover_1327006
#print axioms cover_1326728

def state_1326718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
theorem cover_1326718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326718 := by
  apply coveredState_split_literal (state := state_1326718) 1
    state_1326719 state_1326728
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326719
  · exact cover_1326728
#print axioms cover_1326718

def state_1326717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
theorem cover_1326717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326717 := by
  apply coveredState_split_literal (state := state_1326717) 3
    state_1326718 state_1327015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326718
  · exact cover_1327015
#print axioms cover_1326717

def state_1326716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
theorem cover_1326716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326716 := by
  apply coveredState_split_literal (state := state_1326716) 0
    state_1326717 state_1327046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326717
  · exact cover_1327046
#print axioms cover_1326716

def state_1326614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 5)))
theorem cover_1326614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326614 := by
  apply coveredState_split_literal (state := state_1326614) 4
    state_1326615 state_1326716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326615
  · exact cover_1326716
#print axioms cover_1326614

def state_1326390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1326390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326390 := by
  apply coveredState_split_literal (state := state_1326390) 2
    state_1326391 state_1326614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326391
  · exact cover_1326614
#print axioms cover_1326390

def state_1326366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1326366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326366 := by
  apply coveredState_split_literal (state := state_1326366) 1
    state_1326367 state_1326390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326367
  · exact cover_1326390
#print axioms cover_1326366

def state_1326352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
theorem cover_1326352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326352 := by
  apply coveredState_split_literal (state := state_1326352) 4
    state_1326353 state_1326366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326353
  · exact cover_1326366
#print axioms cover_1326352

def state_1326351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_1326351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326351 := by
  apply coveredState_split_literal (state := state_1326351) 3
    state_1326352 state_1327097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326352
  · exact cover_1327097
#print axioms cover_1326351

def state_1326341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1326341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326341 := by
  apply coveredState_split_literal (state := state_1326341) 2
    state_1326342 state_1326351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326342
  · exact cover_1326351
#print axioms cover_1326341

def state_1326317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1326317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326317 := by
  apply coveredState_split_literal (state := state_1326317) 1
    state_1326318 state_1326341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326318
  · exact cover_1326341
#print axioms cover_1326317

def state_1326001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1326001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326001 := by
  apply coveredState_split_literal (state := state_1326001) 0
    state_1326002 state_1326317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326002
  · exact cover_1326317
#print axioms cover_1326001

def state_1327124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1327124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327124 := by
  apply coveredState_split_literal (state := state_1327124) 2
    state_1327125 state_1327138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327125
  · exact cover_1327138
#print axioms cover_1327124

def state_1327123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1327123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327123 := by
  apply coveredState_split_literal (state := state_1327123) 1
    state_1327124 state_1327191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327124
  · exact cover_1327191
#print axioms cover_1327123

def state_1327278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_1327278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327278 := by
  apply coveredState_split_literal (state := state_1327278) 3
    state_1327279 state_1327334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327279
  · exact cover_1327334
#print axioms cover_1327278

def state_1327260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1327260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327260 := by
  apply coveredState_split_literal (state := state_1327260) 2
    state_1327261 state_1327278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327261
  · exact cover_1327278
#print axioms cover_1327260

def state_1327236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1327236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327236 := by
  apply coveredState_split_literal (state := state_1327236) 1
    state_1327237 state_1327260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327237
  · exact cover_1327260
#print axioms cover_1327236

def state_1327122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1327122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327122 := by
  apply coveredState_split_literal (state := state_1327122) 0
    state_1327123 state_1327236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327123
  · exact cover_1327236
#print axioms cover_1327122
end Mub6.Numerical.CircleFullD0.Forest
