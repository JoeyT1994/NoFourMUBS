import D0FullInterface
import D0ForestAssembly0027
import D0ForestChunk0114
import D0ForestChunk0115
import D0ForestChunk0116
import D0ForestChunk0117
import D0ForestChunk0118
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_964962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 88) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 110)))
theorem cover_964962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964962 := by
  apply coveredState_split_literal (state := state_964962) 1
    state_964963 state_965042
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964963
  · exact cover_965042
#print axioms cover_964962

def state_964961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 110)))
theorem cover_964961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964961 := by
  apply coveredState_split_literal (state := state_964961) 0
    state_964962 state_965101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964962
  · exact cover_965101
#print axioms cover_964961

def state_964897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 106 else (if j.val < 4 then 36 else 110)))
theorem cover_964897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964897 := by
  apply coveredState_split_literal (state := state_964897) 3
    state_964898 state_964961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964898
  · exact cover_964961
#print axioms cover_964897

def state_964896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 106 else (if j.val < 4 then 36 else 55)))
theorem cover_964896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964896 := by
  apply coveredState_split_literal (state := state_964896) 4
    state_964897 state_965146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964897
  · exact cover_965146
#print axioms cover_964896

def state_964895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 55)))
theorem cover_964895 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964895 := by
  apply coveredState_split_literal (state := state_964895) 2
    state_964896 state_965193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964896
  · exact cover_965193
#print axioms cover_964895

def state_965319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 111)))
theorem cover_965319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965319 := by
  apply coveredState_split_literal (state := state_965319) 0
    state_965320 state_965337
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965320
  · exact cover_965337
#print axioms cover_965319

def state_965301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 106 else (if j.val < 4 then 36 else 111)))
theorem cover_965301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965301 := by
  apply coveredState_split_literal (state := state_965301) 3
    state_965302 state_965319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965302
  · exact cover_965319
#print axioms cover_965301

def state_965237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 106 else (if j.val < 4 then 36 else 55)))
theorem cover_965237 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965237 := by
  apply coveredState_split_literal (state := state_965237) 4
    state_965238 state_965301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965238
  · exact cover_965301
#print axioms cover_965237

def state_965236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 55)))
theorem cover_965236 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965236 := by
  apply coveredState_split_literal (state := state_965236) 2
    state_965237 state_965384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965237
  · exact cover_965384
#print axioms cover_965236

def state_964894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 55)))
theorem cover_964894 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964894 := by
  apply coveredState_split_literal (state := state_964894) 1
    state_964895 state_965236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964895
  · exact cover_965236
#print axioms cover_964894

def state_964893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 55)))
theorem cover_964893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964893 := by
  apply coveredState_split_literal (state := state_964893) 0
    state_964894 state_965401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964894
  · exact cover_965401
#print axioms cover_964893

def state_964823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 27)))
theorem cover_964823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964823 := by
  apply coveredState_split_literal (state := state_964823) 4
    state_964824 state_964893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964824
  · exact cover_964893
#print axioms cover_964823

def state_965498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 107 else (if j.val < 4 then 74 else 110)))
theorem cover_965498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965498 := by
  apply coveredState_split_literal (state := state_965498) 0
    state_965499 state_965540
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965499
  · exact cover_965540
#print axioms cover_965498

def state_965497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 107 else (if j.val < 4 then 74 else 55)))
theorem cover_965497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965497 := by
  apply coveredState_split_literal (state := state_965497) 4
    state_965498 state_965571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965498
  · exact cover_965571
#print axioms cover_965497

def state_965496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 107 else (if j.val < 4 then 37 else 55)))
theorem cover_965496 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965496 := by
  apply coveredState_split_literal (state := state_965496) 3
    state_965497 state_965594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965497
  · exact cover_965594
#print axioms cover_965496

def state_965478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 55)))
theorem cover_965478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965478 := by
  apply coveredState_split_literal (state := state_965478) 2
    state_965479 state_965496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965479
  · exact cover_965496
#print axioms cover_965478

def state_965603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 55)))
theorem cover_965603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965603 := by
  apply coveredState_split_literal (state := state_965603) 2
    state_965604 state_965645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965604
  · exact cover_965645
#print axioms cover_965603

def state_965477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 55)))
theorem cover_965477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965477 := by
  apply coveredState_split_literal (state := state_965477) 1
    state_965478 state_965603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965478
  · exact cover_965603
#print axioms cover_965477

def state_965476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 55)))
theorem cover_965476 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965476 := by
  apply coveredState_split_literal (state := state_965476) 0
    state_965477 state_965708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965477
  · exact cover_965708
#print axioms cover_965476

def state_965448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 27)))
theorem cover_965448 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965448 := by
  apply coveredState_split_literal (state := state_965448) 4
    state_965449 state_965476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965449
  · exact cover_965476
#print axioms cover_965448

def state_964822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 27)))
theorem cover_964822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964822 := by
  apply coveredState_split_literal (state := state_964822) 3
    state_964823 state_965448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964823
  · exact cover_965448
#print axioms cover_964822

def state_963728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_963728 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963728 := by
  apply coveredState_split_literal (state := state_963728) 2
    state_963729 state_964822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963729
  · exact cover_964822
#print axioms cover_963728

def state_965825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 90) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 111)))
theorem cover_965825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965825 := by
  apply coveredState_split_literal (state := state_965825) 3
    state_965826 state_965879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965826
  · exact cover_965879
#print axioms cover_965825

def state_965815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 90) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 55)))
theorem cover_965815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965815 := by
  apply coveredState_split_literal (state := state_965815) 4
    state_965816 state_965825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965816
  · exact cover_965825
#print axioms cover_965815

def state_965765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 90) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
theorem cover_965765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965765 := by
  apply coveredState_split_literal (state := state_965765) 2
    state_965766 state_965815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965766
  · exact cover_965815
#print axioms cover_965765

def state_965764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
theorem cover_965764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965764 := by
  apply coveredState_split_literal (state := state_965764) 1
    state_965765 state_965900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965765
  · exact cover_965900
#print axioms cover_965764

def state_965763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
theorem cover_965763 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965763 := by
  apply coveredState_split_literal (state := state_965763) 0
    state_965764 state_965925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965764
  · exact cover_965925
#print axioms cover_965763

def state_965761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 27)))
theorem cover_965761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965761 := by
  apply coveredState_split_literal (state := state_965761) 4
    state_965762 state_965763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965762
  · exact cover_965763
#print axioms cover_965761

def state_965760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 27)))
theorem cover_965760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965760 := by
  apply coveredState_split_literal (state := state_965760) 3
    state_965761 state_965940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965761
  · exact cover_965940
#print axioms cover_965760

def state_965941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 27)))
theorem cover_965941 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965941 := by
  apply coveredState_split_literal (state := state_965941) 3
    state_965942 state_966001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965942
  · exact cover_966001
#print axioms cover_965941

def state_965759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_965759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965759 := by
  apply coveredState_split_literal (state := state_965759) 2
    state_965760 state_965941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_965760
  · exact cover_965941
#print axioms cover_965759

def state_963727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_963727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963727 := by
  apply coveredState_split_literal (state := state_963727) 1
    state_963728 state_965759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963728
  · exact cover_965759
#print axioms cover_963727
end Mub6.Numerical.CircleFullD0.Forest
