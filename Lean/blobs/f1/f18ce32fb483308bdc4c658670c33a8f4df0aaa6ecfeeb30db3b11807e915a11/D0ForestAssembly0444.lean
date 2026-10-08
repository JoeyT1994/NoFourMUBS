import D0FullInterface
import D0ForestAssembly0443
import D0ForestChunk1736
import D0ForestChunk1737
import D0ForestChunk1738
import D0ForestChunk1739
import D0ForestChunk1740
import D0ForestChunk1741
import D0ForestChunk1742
import D0ForestChunk1743
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2290300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 23)))
theorem cover_2290300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290300 := by
  apply coveredState_split_literal (state := state_2290300) 0
    state_2290301 state_2290502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290301
  · exact cover_2290502
#print axioms cover_2290300

def state_2290194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 11)))
theorem cover_2290194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290194 := by
  apply coveredState_split_literal (state := state_2290194) 4
    state_2290195 state_2290300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290195
  · exact cover_2290300
#print axioms cover_2290194

def state_2290094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
theorem cover_2290094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290094 := by
  apply coveredState_split_literal (state := state_2290094) 3
    state_2290095 state_2290194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290095
  · exact cover_2290194
#print axioms cover_2290094

def state_2290080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
theorem cover_2290080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290080 := by
  apply coveredState_split_literal (state := state_2290080) 1
    state_2290081 state_2290094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290081
  · exact cover_2290094
#print axioms cover_2290080

def state_2289828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_2289828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289828 := by
  apply coveredState_split_literal (state := state_2289828) 2
    state_2289829 state_2290080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289829
  · exact cover_2290080
#print axioms cover_2289828

def state_2289806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_2289806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289806 := by
  apply coveredState_split_literal (state := state_2289806) 4
    state_2289807 state_2289828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289807
  · exact cover_2289828
#print axioms cover_2289806

def state_2290517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
theorem cover_2290517 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290517 := by
  apply coveredState_split_literal (state := state_2290517) 1
    state_2290518 state_2290533
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290518
  · exact cover_2290533
#print axioms cover_2290517

def state_2290516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 10)))
theorem cover_2290516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290516 := by
  apply coveredState_split_literal (state := state_2290516) 2
    state_2290517 state_2290586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290517
  · exact cover_2290586
#print axioms cover_2290516

def state_2290625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_2290625 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290625 := by
  apply coveredState_split_literal (state := state_2290625) 4
    state_2290626 state_2290663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290626
  · exact cover_2290663
#print axioms cover_2290625

def state_2290771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 22)))
theorem cover_2290771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290771 := by
  apply coveredState_split_literal (state := state_2290771) 4
    state_2290772 state_2290795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290772
  · exact cover_2290795
#print axioms cover_2290771

def state_2290753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 22)))
theorem cover_2290753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290753 := by
  apply coveredState_split_literal (state := state_2290753) 1
    state_2290754 state_2290771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290754
  · exact cover_2290771
#print axioms cover_2290753

def state_2290713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 22)))
theorem cover_2290713 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290713 := by
  apply coveredState_split_literal (state := state_2290713) 2
    state_2290714 state_2290753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290714
  · exact cover_2290753
#print axioms cover_2290713

def state_2290712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_2290712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290712 := by
  apply coveredState_split_literal (state := state_2290712) 3
    state_2290713 state_2290842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290713
  · exact cover_2290842
#print axioms cover_2290712

def state_2290987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 45)))
theorem cover_2290987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290987 := by
  apply coveredState_split_literal (state := state_2290987) 4
    state_2290988 state_2291019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290988
  · exact cover_2291019
#print axioms cover_2290987

def state_2290941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 53 else 45)))
theorem cover_2290941 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290941 := by
  apply coveredState_split_literal (state := state_2290941) 2
    state_2290942 state_2290987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290942
  · exact cover_2290987
#print axioms cover_2290941

def state_2290925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 45)))
theorem cover_2290925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290925 := by
  apply coveredState_split_literal (state := state_2290925) 3
    state_2290926 state_2290941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290926
  · exact cover_2290941
#print axioms cover_2290925

def state_2290924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 45)))
theorem cover_2290924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290924 := by
  apply coveredState_split_literal (state := state_2290924) 0
    state_2290925 state_2291056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290925
  · exact cover_2291056
#print axioms cover_2290924

def state_2290898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 22)))
theorem cover_2290898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290898 := by
  apply coveredState_split_literal (state := state_2290898) 4
    state_2290899 state_2290924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290899
  · exact cover_2290924
#print axioms cover_2290898

def state_2290878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 22)))
theorem cover_2290878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290878 := by
  apply coveredState_split_literal (state := state_2290878) 1
    state_2290879 state_2290898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290879
  · exact cover_2290898
#print axioms cover_2290878

def state_2290852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 22)))
theorem cover_2290852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290852 := by
  apply coveredState_split_literal (state := state_2290852) 2
    state_2290853 state_2290878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290853
  · exact cover_2290878
#print axioms cover_2290852

def state_2291162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 45)))
theorem cover_2291162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291162 := by
  apply coveredState_split_literal (state := state_2291162) 3
    state_2291163 state_2291216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291163
  · exact cover_2291216
#print axioms cover_2291162

def state_2291142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 45)))
theorem cover_2291142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291142 := by
  apply coveredState_split_literal (state := state_2291142) 0
    state_2291143 state_2291162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291143
  · exact cover_2291162
#print axioms cover_2291142

def state_2291132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 22)))
theorem cover_2291132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291132 := by
  apply coveredState_split_literal (state := state_2291132) 4
    state_2291133 state_2291142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291133
  · exact cover_2291142
#print axioms cover_2291132

def state_2291080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 22)))
theorem cover_2291080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291080 := by
  apply coveredState_split_literal (state := state_2291080) 1
    state_2291081 state_2291132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291081
  · exact cover_2291132
#print axioms cover_2291080

def state_2291444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 91)))
theorem cover_2291444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291444 := by
  apply coveredState_split_literal (state := state_2291444) 3
    state_2291445 state_2291488
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291445
  · exact cover_2291488
#print axioms cover_2291444

def state_2291595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 207) else (if j.val < 3 then 69 else (if j.val < 4 then 109 else 183)))
theorem cover_2291595 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291595 := by
  apply coveredState_split_literal (state := state_2291595) 0
    state_2291596 state_2291645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291596
  · exact cover_2291645
#print axioms cover_2291595

def state_2291585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 69 else (if j.val < 4 then 109 else 183)))
theorem cover_2291585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291585 := by
  apply coveredState_split_literal (state := state_2291585) 1
    state_2291586 state_2291595
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291586
  · exact cover_2291595
#print axioms cover_2291585

def state_2291563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 69 else (if j.val < 4 then 109 else 91)))
theorem cover_2291563 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291563 := by
  apply coveredState_split_literal (state := state_2291563) 4
    state_2291564 state_2291585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291564
  · exact cover_2291585
#print axioms cover_2291563

def state_2291529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 109 else 91)))
theorem cover_2291529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291529 := by
  apply coveredState_split_literal (state := state_2291529) 2
    state_2291530 state_2291563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291530
  · exact cover_2291563
#print axioms cover_2291529

def state_2291527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 91)))
theorem cover_2291527 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291527 := by
  apply coveredState_split_literal (state := state_2291527) 3
    state_2291528 state_2291529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291528
  · exact cover_2291529
#print axioms cover_2291527

def state_2291443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 91)))
theorem cover_2291443 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291443 := by
  apply coveredState_split_literal (state := state_2291443) 0
    state_2291444 state_2291527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291444
  · exact cover_2291527
#print axioms cover_2291443

def state_2291433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 91)))
theorem cover_2291433 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291433 := by
  apply coveredState_split_literal (state := state_2291433) 1
    state_2291434 state_2291443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291434
  · exact cover_2291443
#print axioms cover_2291433
end Mub6.Numerical.CircleFullD0.Forest
