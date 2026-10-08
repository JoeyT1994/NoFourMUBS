import CircleFullInterface
import CircleForestAssembly0166
import CircleForestChunk0650
import CircleForestChunk0651
import CircleForestChunk0652
import CircleForestChunk0653
import CircleForestChunk0654
import CircleForestChunk0655
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_761903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_761903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761903 := by
  apply coveredState_split_literal (state := state_761903) 4
    state_761904 state_762007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761904
  · exact cover_762007
#print axioms cover_761903

def state_761875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_761875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761875 := by
  apply coveredState_split_literal (state := state_761875) 3
    state_761876 state_761903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761876
  · exact cover_761903
#print axioms cover_761875

def state_761847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_761847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761847 := by
  apply coveredState_split_literal (state := state_761847) 1
    state_761848 state_761875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761848
  · exact cover_761875
#print axioms cover_761847

def state_761797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_761797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761797 := by
  apply coveredState_split_literal (state := state_761797) 4
    state_761798 state_761847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761798
  · exact cover_761847
#print axioms cover_761797

def state_762086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_762086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762086 := by
  apply coveredState_split_literal (state := state_762086) 1
    state_762087 state_762110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762087
  · exact cover_762110
#print axioms cover_762086

def state_762080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_762080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762080 := by
  apply coveredState_split_literal (state := state_762080) 4
    state_762081 state_762086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762081
  · exact cover_762086
#print axioms cover_762080

def state_761796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_761796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761796 := by
  apply coveredState_split_literal (state := state_761796) 3
    state_761797 state_762080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761797
  · exact cover_762080
#print axioms cover_761796

def state_761795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_761795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761795 := by
  apply coveredState_split_literal (state := state_761795) 2
    state_761796 state_762155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761796
  · exact cover_762155
#print axioms cover_761795

def state_762204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_762204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762204 := by
  apply coveredState_split_literal (state := state_762204) 3
    state_762205 state_762236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762205
  · exact cover_762236
#print axioms cover_762204

def state_762198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_762198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762198 := by
  apply coveredState_split_literal (state := state_762198) 4
    state_762199 state_762204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762199
  · exact cover_762204
#print axioms cover_762198

def state_762197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_762197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762197 := by
  apply coveredState_split_literal (state := state_762197) 3
    state_762198 state_762287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762198
  · exact cover_762287
#print axioms cover_762197

def state_762196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_762196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762196 := by
  apply coveredState_split_literal (state := state_762196) 2
    state_762197 state_762314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762197
  · exact cover_762314
#print axioms cover_762196

def state_761794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_761794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761794 := by
  apply coveredState_split_literal (state := state_761794) 1
    state_761795 state_762196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761795
  · exact cover_762196
#print axioms cover_761794

def state_762347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_762347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762347 := by
  apply coveredState_split_literal (state := state_762347) 1
    state_762348 state_762401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762348
  · exact cover_762401
#print axioms cover_762347

def state_761793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_761793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761793 := by
  apply coveredState_split_literal (state := state_761793) 0
    state_761794 state_762347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761794
  · exact cover_762347
#print axioms cover_761793

def state_762572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_762572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762572 := by
  apply coveredState_split_literal (state := state_762572) 2
    state_762573 state_762620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762573
  · exact cover_762620
#print axioms cover_762572

def state_762571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_762571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762571 := by
  apply coveredState_split_literal (state := state_762571) 4
    state_762572 state_762647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762572
  · exact cover_762647
#print axioms cover_762571

def state_762549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_762549 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762549 := by
  apply coveredState_split_literal (state := state_762549) 3
    state_762550 state_762571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762550
  · exact cover_762571
#print axioms cover_762549

def state_762503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_762503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762503 := by
  apply coveredState_split_literal (state := state_762503) 2
    state_762504 state_762549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762504
  · exact cover_762549
#print axioms cover_762503

def state_762455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_762455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762455 := by
  apply coveredState_split_literal (state := state_762455) 1
    state_762456 state_762503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762456
  · exact cover_762503
#print axioms cover_762455

def state_762734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_762734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762734 := by
  apply coveredState_split_literal (state := state_762734) 0
    state_762735 state_762786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762735
  · exact cover_762786
#print axioms cover_762734

def state_762733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
theorem cover_762733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762733 := by
  apply coveredState_split_literal (state := state_762733) 4
    state_762734 state_762817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762734
  · exact cover_762817
#print axioms cover_762733

def state_762717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_762717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762717 := by
  apply coveredState_split_literal (state := state_762717) 3
    state_762718 state_762733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762718
  · exact cover_762733
#print axioms cover_762717

def state_762844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 12)))
theorem cover_762844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762844 := by
  apply coveredState_split_literal (state := state_762844) 1
    state_762845 state_762866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762845
  · exact cover_762866
#print axioms cover_762844

def state_762949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 13)))
theorem cover_762949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762949 := by
  apply coveredState_split_literal (state := state_762949) 0
    state_762950 state_762965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762950
  · exact cover_762965
#print axioms cover_762949

def state_762935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 13)))
theorem cover_762935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762935 := by
  apply coveredState_split_literal (state := state_762935) 3
    state_762936 state_762949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762936
  · exact cover_762949
#print axioms cover_762935

def state_762917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 13)))
theorem cover_762917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762917 := by
  apply coveredState_split_literal (state := state_762917) 1
    state_762918 state_762935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762918
  · exact cover_762935
#print axioms cover_762917

def state_762843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 6)))
theorem cover_762843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762843 := by
  apply coveredState_split_literal (state := state_762843) 4
    state_762844 state_762917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762844
  · exact cover_762917
#print axioms cover_762843

def state_762842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_762842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762842 := by
  apply coveredState_split_literal (state := state_762842) 2
    state_762843 state_763020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762843
  · exact cover_763020
#print axioms cover_762842

def state_762841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_762841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762841 := by
  apply coveredState_split_literal (state := state_762841) 0
    state_762842 state_763043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762842
  · exact cover_763043
#print axioms cover_762841

def state_762840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_762840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762840 := by
  apply coveredState_split_literal (state := state_762840) 4
    state_762841 state_763074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762841
  · exact cover_763074
#print axioms cover_762840

def state_762822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_762822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762822 := by
  apply coveredState_split_literal (state := state_762822) 3
    state_762823 state_762840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762823
  · exact cover_762840
#print axioms cover_762822
end Mub6.Numerical.CircleFullPrototype.Forest
