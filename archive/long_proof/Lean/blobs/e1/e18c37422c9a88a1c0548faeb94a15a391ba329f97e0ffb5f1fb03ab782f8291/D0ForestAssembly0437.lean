import D0FullInterface
import D0ForestAssembly0435
import D0ForestAssembly0436
import D0ForestChunk1712
import D0ForestChunk1713
import D0ForestChunk1714
import D0ForestChunk1715
import D0ForestChunk1716
import D0ForestChunk1717
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2284241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 191 else (if j.val < 4 then 88 else 125)))
theorem cover_2284241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284241 := by
  apply coveredState_split_literal (state := state_2284241) 3
    state_2284242 state_2284317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284242
  · exact cover_2284317
#print axioms cover_2284241

def state_2284117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 125)))
theorem cover_2284117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284117 := by
  apply coveredState_split_literal (state := state_2284117) 2
    state_2284118 state_2284241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284118
  · exact cover_2284241
#print axioms cover_2284117

def state_2284095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 62)))
theorem cover_2284095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284095 := by
  apply coveredState_split_literal (state := state_2284095) 4
    state_2284096 state_2284117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284096
  · exact cover_2284117
#print axioms cover_2284095

def state_2283795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 62)))
theorem cover_2283795 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283795 := by
  apply coveredState_split_literal (state := state_2283795) 1
    state_2283796 state_2284095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283796
  · exact cover_2284095
#print axioms cover_2283795

def state_2283139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 62)))
theorem cover_2283139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283139 := by
  apply coveredState_split_literal (state := state_2283139) 0
    state_2283140 state_2283795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283140
  · exact cover_2283795
#print axioms cover_2283139

def state_2284415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 89 else 62)))
theorem cover_2284415 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284415 := by
  apply coveredState_split_literal (state := state_2284415) 1
    state_2284416 state_2284475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284416
  · exact cover_2284475
#print axioms cover_2284415

def state_2284526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 89 else 62)))
theorem cover_2284526 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284526 := by
  apply coveredState_split_literal (state := state_2284526) 1
    state_2284527 state_2284540
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284527
  · exact cover_2284540
#print axioms cover_2284526

def state_2284414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 89 else 62)))
theorem cover_2284414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284414 := by
  apply coveredState_split_literal (state := state_2284414) 0
    state_2284415 state_2284526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284415
  · exact cover_2284526
#print axioms cover_2284414

def state_2283138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 62)))
theorem cover_2283138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283138 := by
  apply coveredState_split_literal (state := state_2283138) 3
    state_2283139 state_2284414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283139
  · exact cover_2284414
#print axioms cover_2283138

def state_2282748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 62)))
theorem cover_2282748 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282748 := by
  apply coveredState_split_literal (state := state_2282748) 2
    state_2282749 state_2283138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282749
  · exact cover_2283138
#print axioms cover_2282748

def state_2284662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 63)))
theorem cover_2284662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284662 := by
  apply coveredState_split_literal (state := state_2284662) 4
    state_2284663 state_2284722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284663
  · exact cover_2284722
#print axioms cover_2284662

def state_2284661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 63)))
theorem cover_2284661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284661 := by
  apply coveredState_split_literal (state := state_2284661) 1
    state_2284662 state_2284733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284662
  · exact cover_2284733
#print axioms cover_2284661

def state_2284763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 126)))
theorem cover_2284763 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284763 := by
  apply coveredState_split_literal (state := state_2284763) 1
    state_2284764 state_2284771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284764
  · exact cover_2284771
#print axioms cover_2284763

def state_2284762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 126)))
theorem cover_2284762 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284762 := by
  apply coveredState_split_literal (state := state_2284762) 0
    state_2284763 state_2284834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284763
  · exact cover_2284834
#print axioms cover_2284762

def state_2284865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 126)))
theorem cover_2284865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284865 := by
  apply coveredState_split_literal (state := state_2284865) 0
    state_2284866 state_2284913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284866
  · exact cover_2284913
#print axioms cover_2284865

def state_2284761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 88 else 126)))
theorem cover_2284761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284761 := by
  apply coveredState_split_literal (state := state_2284761) 3
    state_2284762 state_2284865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284762
  · exact cover_2284865
#print axioms cover_2284761

def state_2284934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 191 else (if j.val < 4 then 88 else 126)))
theorem cover_2284934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284934 := by
  apply coveredState_split_literal (state := state_2284934) 3
    state_2284935 state_2284964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284935
  · exact cover_2284964
#print axioms cover_2284934

def state_2284760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 126)))
theorem cover_2284760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284760 := by
  apply coveredState_split_literal (state := state_2284760) 2
    state_2284761 state_2284934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284761
  · exact cover_2284934
#print axioms cover_2284760

def state_2284759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 63)))
theorem cover_2284759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284759 := by
  apply coveredState_split_literal (state := state_2284759) 4
    state_2284760 state_2285007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284760
  · exact cover_2285007
#print axioms cover_2284759

def state_2285011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 126)))
theorem cover_2285011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285011 := by
  apply coveredState_split_literal (state := state_2285011) 0
    state_2285012 state_2285055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285012
  · exact cover_2285055
#print axioms cover_2285011

def state_2285076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 126)))
theorem cover_2285076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285076 := by
  apply coveredState_split_literal (state := state_2285076) 0
    state_2285077 state_2285122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285077
  · exact cover_2285122
#print axioms cover_2285076

def state_2285010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 190 else (if j.val < 4 then 88 else 126)))
theorem cover_2285010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285010 := by
  apply coveredState_split_literal (state := state_2285010) 3
    state_2285011 state_2285076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285011
  · exact cover_2285076
#print axioms cover_2285010

def state_2285158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 191 else (if j.val < 4 then 176 else 126)))
theorem cover_2285158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285158 := by
  apply coveredState_split_literal (state := state_2285158) 0
    state_2285159 state_2285220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285159
  · exact cover_2285220
#print axioms cover_2285158

def state_2285266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 115) else (if j.val < 3 then 191 else (if j.val < 4 then 177 else 126)))
theorem cover_2285266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285266 := by
  apply coveredState_split_literal (state := state_2285266) 1
    state_2285267 state_2285320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285267
  · exact cover_2285320
#print axioms cover_2285266

def state_2285341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 175 else 115) else (if j.val < 3 then 191 else (if j.val < 4 then 177 else 126)))
theorem cover_2285341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285341 := by
  apply coveredState_split_literal (state := state_2285341) 1
    state_2285342 state_2285393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285342
  · exact cover_2285393
#print axioms cover_2285341

def state_2285265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 191 else (if j.val < 4 then 177 else 126)))
theorem cover_2285265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285265 := by
  apply coveredState_split_literal (state := state_2285265) 0
    state_2285266 state_2285341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285266
  · exact cover_2285341
#print axioms cover_2285265

def state_2285157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 191 else (if j.val < 4 then 88 else 126)))
theorem cover_2285157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285157 := by
  apply coveredState_split_literal (state := state_2285157) 3
    state_2285158 state_2285265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285158
  · exact cover_2285265
#print axioms cover_2285157

def state_2285009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 126)))
theorem cover_2285009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285009 := by
  apply coveredState_split_literal (state := state_2285009) 2
    state_2285010 state_2285157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285010
  · exact cover_2285157
#print axioms cover_2285009

def state_2285008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 63)))
theorem cover_2285008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285008 := by
  apply coveredState_split_literal (state := state_2285008) 4
    state_2285009 state_2285418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285009
  · exact cover_2285418
#print axioms cover_2285008

def state_2284758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 63)))
theorem cover_2284758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284758 := by
  apply coveredState_split_literal (state := state_2284758) 1
    state_2284759 state_2285008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284759
  · exact cover_2285008
#print axioms cover_2284758

def state_2284660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 63)))
theorem cover_2284660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284660 := by
  apply coveredState_split_literal (state := state_2284660) 0
    state_2284661 state_2284758
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284661
  · exact cover_2284758
#print axioms cover_2284660

def state_2285455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 89 else 63)))
theorem cover_2285455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285455 := by
  apply coveredState_split_literal (state := state_2285455) 1
    state_2285456 state_2285477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285456
  · exact cover_2285477
#print axioms cover_2285455
end Mub6.Numerical.CircleFullD0.Forest
