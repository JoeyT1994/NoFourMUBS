import CircleFullInterface
import CircleForestAssembly0481
import CircleForestChunk1898
import CircleForestChunk1899
import CircleForestChunk1900
import CircleForestChunk1901
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2328648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 48)))
theorem cover_2328648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328648 := by
  apply coveredState_split_literal (state := state_2328648) 1
    state_2328649 state_2328650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328649
  · exact cover_2328650
#print axioms cover_2328648

def state_2328647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 24)))
theorem cover_2328647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328647 := by
  apply coveredState_split_literal (state := state_2328647) 4
    state_2328648 state_2328723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328648
  · exact cover_2328723
#print axioms cover_2328647

def state_2328646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 24)))
theorem cover_2328646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328646 := by
  apply coveredState_split_literal (state := state_2328646) 3
    state_2328647 state_2328752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328647
  · exact cover_2328752
#print axioms cover_2328646

def state_2328604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 24)))
theorem cover_2328604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328604 := by
  apply coveredState_split_literal (state := state_2328604) 2
    state_2328605 state_2328646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328605
  · exact cover_2328646
#print axioms cover_2328604

def state_2328758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 48)))
theorem cover_2328758 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328758 := by
  apply coveredState_split_literal (state := state_2328758) 0
    state_2328759 state_2328810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328759
  · exact cover_2328810
#print axioms cover_2328758

def state_2328756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 48)))
theorem cover_2328756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328756 := by
  apply coveredState_split_literal (state := state_2328756) 1
    state_2328757 state_2328758
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328757
  · exact cover_2328758
#print axioms cover_2328756

def state_2328755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 24)))
theorem cover_2328755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328755 := by
  apply coveredState_split_literal (state := state_2328755) 4
    state_2328756 state_2328835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328756
  · exact cover_2328835
#print axioms cover_2328755

def state_2328754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 24)))
theorem cover_2328754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328754 := by
  apply coveredState_split_literal (state := state_2328754) 3
    state_2328755 state_2328836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328755
  · exact cover_2328836
#print axioms cover_2328754

def state_2328868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 24)))
theorem cover_2328868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328868 := by
  apply coveredState_split_literal (state := state_2328868) 4
    state_2328869 state_2328930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328869
  · exact cover_2328930
#print axioms cover_2328868

def state_2328867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 24)))
theorem cover_2328867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328867 := by
  apply coveredState_split_literal (state := state_2328867) 3
    state_2328868 state_2328937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328868
  · exact cover_2328937
#print axioms cover_2328867

def state_2328753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 24)))
theorem cover_2328753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328753 := by
  apply coveredState_split_literal (state := state_2328753) 2
    state_2328754 state_2328867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328754
  · exact cover_2328867
#print axioms cover_2328753

def state_2328603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 24)))
theorem cover_2328603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328603 := by
  apply coveredState_split_literal (state := state_2328603) 0
    state_2328604 state_2328753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328604
  · exact cover_2328753
#print axioms cover_2328603

def state_2328602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 12)))
theorem cover_2328602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328602 := by
  apply coveredState_split_literal (state := state_2328602) 4
    state_2328603 state_2328948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328603
  · exact cover_2328948
#print axioms cover_2328602

def state_2328601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_2328601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328601 := by
  apply coveredState_split_literal (state := state_2328601) 3
    state_2328602 state_2328951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328602
  · exact cover_2328951
#print axioms cover_2328601

def state_2328593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_2328593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328593 := by
  apply coveredState_split_literal (state := state_2328593) 1
    state_2328594 state_2328601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328594
  · exact cover_2328601
#print axioms cover_2328593

def state_2328553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_2328553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328553 := by
  apply coveredState_split_literal (state := state_2328553) 2
    state_2328554 state_2328593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328554
  · exact cover_2328593
#print axioms cover_2328553

def state_2328505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_2328505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328505 := by
  apply coveredState_split_literal (state := state_2328505) 0
    state_2328506 state_2328553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328506
  · exact cover_2328553
#print axioms cover_2328505

def state_2328504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_2328504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328504 := by
  apply coveredState_split_literal (state := state_2328504) 4
    state_2328505 state_2328960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328505
  · exact cover_2328960
#print axioms cover_2328504

def state_2328503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_2328503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328503 := by
  apply coveredState_split_literal (state := state_2328503) 3
    state_2328504 state_2328961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328504
  · exact cover_2328961
#print axioms cover_2328503

def state_2329102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 38 else (if j.val < 4 then 48 else 48)))
theorem cover_2329102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329102 := by
  apply coveredState_split_literal (state := state_2329102) 3
    state_2329103 state_2329146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329103
  · exact cover_2329146
#print axioms cover_2329102

def state_2329101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 48)))
theorem cover_2329101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329101 := by
  apply coveredState_split_literal (state := state_2329101) 2
    state_2329102 state_2329199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329102
  · exact cover_2329199
#print axioms cover_2329101

def state_2329100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 48)))
theorem cover_2329100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329100 := by
  apply coveredState_split_literal (state := state_2329100) 0
    state_2329101 state_2329226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329101
  · exact cover_2329226
#print axioms cover_2329100

def state_2329099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 48)))
theorem cover_2329099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329099 := by
  apply coveredState_split_literal (state := state_2329099) 1
    state_2329100 state_2329255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329100
  · exact cover_2329255
#print axioms cover_2329099

def state_2329098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 24)))
theorem cover_2329098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329098 := by
  apply coveredState_split_literal (state := state_2329098) 4
    state_2329099 state_2329266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329099
  · exact cover_2329266
#print axioms cover_2329098

def state_2329323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 24)))
theorem cover_2329323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329323 := by
  apply coveredState_split_literal (state := state_2329323) 4
    state_2329324 state_2329383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329324
  · exact cover_2329383
#print axioms cover_2329323

def state_2329097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 24)))
theorem cover_2329097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329097 := by
  apply coveredState_split_literal (state := state_2329097) 3
    state_2329098 state_2329323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329098
  · exact cover_2329323
#print axioms cover_2329097

def state_2329051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 24)))
theorem cover_2329051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329051 := by
  apply coveredState_split_literal (state := state_2329051) 2
    state_2329052 state_2329097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329052
  · exact cover_2329097
#print axioms cover_2329051

def state_2329001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 24)))
theorem cover_2329001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329001 := by
  apply coveredState_split_literal (state := state_2329001) 0
    state_2329002 state_2329051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329002
  · exact cover_2329051
#print axioms cover_2329001

def state_2329000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 24)))
theorem cover_2329000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329000 := by
  apply coveredState_split_literal (state := state_2329000) 1
    state_2329001 state_2329396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329001
  · exact cover_2329396
#print axioms cover_2329000

def state_2328999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 12)))
theorem cover_2328999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328999 := by
  apply coveredState_split_literal (state := state_2328999) 4
    state_2329000 state_2329405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329000
  · exact cover_2329405
#print axioms cover_2328999

def state_2328998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_2328998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328998 := by
  apply coveredState_split_literal (state := state_2328998) 3
    state_2328999 state_2329420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328999
  · exact cover_2329420
#print axioms cover_2328998

def state_2328984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_2328984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328984 := by
  apply coveredState_split_literal (state := state_2328984) 2
    state_2328985 state_2328998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328985
  · exact cover_2328998
#print axioms cover_2328984
end Mub6.Numerical.CircleFullD0.Forest
