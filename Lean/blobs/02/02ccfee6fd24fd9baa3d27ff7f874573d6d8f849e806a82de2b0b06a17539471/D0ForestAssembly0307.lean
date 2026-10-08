import D0FullInterface
import D0ForestAssembly0306
import D0ForestChunk1153
import D0ForestChunk1180
import D0ForestChunk1181
import D0ForestChunk1182
import D0ForestChunk1183
import D0ForestChunk1184
import D0ForestChunk1185
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1583752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
theorem cover_1583752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583752 := by
  apply coveredState_split_literal (state := state_1583752) 2
    state_1583753 state_1583794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583753
  · exact cover_1583794
#print axioms cover_1583752

def state_1583751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
theorem cover_1583751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583751 := by
  apply coveredState_split_literal (state := state_1583751) 1
    state_1583752 state_1583921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583752
  · exact cover_1583921
#print axioms cover_1583751

def state_1583737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
theorem cover_1583737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583737 := by
  apply coveredState_split_literal (state := state_1583737) 0
    state_1583738 state_1583751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583738
  · exact cover_1583751
#print axioms cover_1583737

def state_1583960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 25)))
theorem cover_1583960 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583960 := by
  apply coveredState_split_literal (state := state_1583960) 4
    state_1583961 state_1583984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583961
  · exact cover_1583984
#print axioms cover_1583960

def state_1584054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 50)))
theorem cover_1584054 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584054 := by
  apply coveredState_split_literal (state := state_1584054) 1
    state_1584055 state_1584096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584055
  · exact cover_1584096
#print axioms cover_1584054

def state_1584034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 50)))
theorem cover_1584034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584034 := by
  apply coveredState_split_literal (state := state_1584034) 0
    state_1584035 state_1584054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584035
  · exact cover_1584054
#print axioms cover_1584034

def state_1584167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 36) else (if j.val < 3 then 98 else (if j.val < 4 then 54 else 102)))
theorem cover_1584167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584167 := by
  apply coveredState_split_literal (state := state_1584167) 0
    state_1584168 state_1584185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584168
  · exact cover_1584185
#print axioms cover_1584167

def state_1584166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 36) else (if j.val < 3 then 98 else (if j.val < 4 then 54 else 51)))
theorem cover_1584166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584166 := by
  apply coveredState_split_literal (state := state_1584166) 4
    state_1584167 state_1584244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584167
  · exact cover_1584244
#print axioms cover_1584166

def state_1584165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 36) else (if j.val < 3 then 49 else (if j.val < 4 then 54 else 51)))
theorem cover_1584165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584165 := by
  apply coveredState_split_literal (state := state_1584165) 2
    state_1584166 state_1584277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584166
  · exact cover_1584277
#print axioms cover_1584165

def state_1584164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 36) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
theorem cover_1584164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584164 := by
  apply coveredState_split_literal (state := state_1584164) 3
    state_1584165 state_1584308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584165
  · exact cover_1584308
#print axioms cover_1584164

def state_1584163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
theorem cover_1584163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584163 := by
  apply coveredState_split_literal (state := state_1584163) 1
    state_1584164 state_1584339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584164
  · exact cover_1584339
#print axioms cover_1584163

def state_1584143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
theorem cover_1584143 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584143 := by
  apply coveredState_split_literal (state := state_1584143) 0
    state_1584144 state_1584163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584144
  · exact cover_1584163
#print axioms cover_1584143

def state_1584033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 25)))
theorem cover_1584033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584033 := by
  apply coveredState_split_literal (state := state_1584033) 4
    state_1584034 state_1584143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584034
  · exact cover_1584143
#print axioms cover_1584033

def state_1583959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 25)))
theorem cover_1583959 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583959 := by
  apply coveredState_split_literal (state := state_1583959) 2
    state_1583960 state_1584033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583960
  · exact cover_1584033
#print axioms cover_1583959

def state_1583958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 25)))
theorem cover_1583958 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583958 := by
  apply coveredState_split_literal (state := state_1583958) 1
    state_1583959 state_1584390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583959
  · exact cover_1584390
#print axioms cover_1583958

def state_1583940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 25)))
theorem cover_1583940 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583940 := by
  apply coveredState_split_literal (state := state_1583940) 0
    state_1583941 state_1583958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583941
  · exact cover_1583958
#print axioms cover_1583940

def state_1583736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 25)))
theorem cover_1583736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583736 := by
  apply coveredState_split_literal (state := state_1583736) 3
    state_1583737 state_1583940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583737
  · exact cover_1583940
#print axioms cover_1583736

def state_1583672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 12)))
theorem cover_1583672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583672 := by
  apply coveredState_split_literal (state := state_1583672) 4
    state_1583673 state_1583736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583673
  · exact cover_1583736
#print axioms cover_1583672

def state_1584514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 27 else 25)))
theorem cover_1584514 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584514 := by
  apply coveredState_split_literal (state := state_1584514) 2
    state_1584515 state_1584576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584515
  · exact cover_1584576
#print axioms cover_1584514

def state_1584513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 27 else 25)))
theorem cover_1584513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584513 := by
  apply coveredState_split_literal (state := state_1584513) 1
    state_1584514 state_1584585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584514
  · exact cover_1584585
#print axioms cover_1584513

def state_1584501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 27 else 25)))
theorem cover_1584501 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584501 := by
  apply coveredState_split_literal (state := state_1584501) 0
    state_1584502 state_1584513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584502
  · exact cover_1584513
#print axioms cover_1584501

def state_1584453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 25)))
theorem cover_1584453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584453 := by
  apply coveredState_split_literal (state := state_1584453) 3
    state_1584454 state_1584501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584454
  · exact cover_1584501
#print axioms cover_1584453

def state_1584417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 12)))
theorem cover_1584417 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584417 := by
  apply coveredState_split_literal (state := state_1584417) 4
    state_1584418 state_1584453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584418
  · exact cover_1584453
#print axioms cover_1584417

def state_1583671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_1583671 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583671 := by
  apply coveredState_split_literal (state := state_1583671) 2
    state_1583672 state_1584417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583672
  · exact cover_1584417
#print axioms cover_1583671

def state_1577241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_1577241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577241 := by
  apply coveredState_split_literal (state := state_1577241) 1
    state_1577242 state_1583671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577242
  · exact cover_1583671
#print axioms cover_1577241

def state_1577177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_1577177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577177 := by
  apply coveredState_split_literal (state := state_1577177) 0
    state_1577178 state_1577241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577178
  · exact cover_1577241
#print axioms cover_1577177

def state_1584761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 104)))
theorem cover_1584761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584761 := by
  apply coveredState_split_literal (state := state_1584761) 1
    state_1584762 state_1584763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584762
  · exact cover_1584763
#print axioms cover_1584761

def state_1584713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 104)))
theorem cover_1584713 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584713 := by
  apply coveredState_split_literal (state := state_1584713) 0
    state_1584714 state_1584761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584714
  · exact cover_1584761
#print axioms cover_1584713

def state_1584712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 52)))
theorem cover_1584712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584712 := by
  apply coveredState_split_literal (state := state_1584712) 4
    state_1584713 state_1584826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584713
  · exact cover_1584826
#print axioms cover_1584712

def state_1584711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 52)))
theorem cover_1584711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584711 := by
  apply coveredState_split_literal (state := state_1584711) 3
    state_1584712 state_1584835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584712
  · exact cover_1584835
#print axioms cover_1584711

def state_1584710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 52)))
theorem cover_1584710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584710 := by
  apply coveredState_split_literal (state := state_1584710) 2
    state_1584711 state_1584862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584711
  · exact cover_1584862
#print axioms cover_1584710

def state_1584882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 104)))
theorem cover_1584882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584882 := by
  apply coveredState_split_literal (state := state_1584882) 0
    state_1584883 state_1584932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584883
  · exact cover_1584932
#print axioms cover_1584882
end Mub6.Numerical.CircleFullD0.Forest
