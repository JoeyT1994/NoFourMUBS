import D0FullInterface
import D0ForestAssembly0477
import D0ForestChunk1883
import D0ForestChunk1884
import D0ForestChunk1885
import D0ForestChunk1886
import D0ForestChunk1887
import D0ForestChunk1888
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2325044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 88)))
theorem cover_2325044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325044 := by
  apply coveredState_split_literal (state := state_2325044) 0
    state_2325045 state_2325130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325045
  · exact cover_2325130
#print axioms cover_2325044

def state_2325006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 88)))
theorem cover_2325006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325006 := by
  apply coveredState_split_literal (state := state_2325006) 3
    state_2325007 state_2325044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325007
  · exact cover_2325044
#print axioms cover_2325006

def state_2324498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 88)))
theorem cover_2324498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324498 := by
  apply coveredState_split_literal (state := state_2324498) 1
    state_2324499 state_2325006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324499
  · exact cover_2325006
#print axioms cover_2324498

def state_2325205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 229) else (if j.val < 3 then 174 else (if j.val < 4 then 251 else 176)))
theorem cover_2325205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325205 := by
  apply coveredState_split_literal (state := state_2325205) 0
    state_2325206 state_2325235
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325206
  · exact cover_2325235
#print axioms cover_2325205

def state_2325191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 229) else (if j.val < 3 then 174 else (if j.val < 4 then 125 else 176)))
theorem cover_2325191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325191 := by
  apply coveredState_split_literal (state := state_2325191) 3
    state_2325192 state_2325205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325192
  · exact cover_2325205
#print axioms cover_2325191

def state_2325183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 174 else (if j.val < 4 then 125 else 176)))
theorem cover_2325183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325183 := by
  apply coveredState_split_literal (state := state_2325183) 1
    state_2325184 state_2325191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325184
  · exact cover_2325191
#print axioms cover_2325183

def state_2325182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 176)))
theorem cover_2325182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325182 := by
  apply coveredState_split_literal (state := state_2325182) 2
    state_2325183 state_2325278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325183
  · exact cover_2325278
#print axioms cover_2325182

def state_2325314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 229) else (if j.val < 3 then 174 else (if j.val < 4 then 125 else 177)))
theorem cover_2325314 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325314 := by
  apply coveredState_split_literal (state := state_2325314) 3
    state_2325315 state_2325344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325315
  · exact cover_2325344
#print axioms cover_2325314

def state_2325300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 174 else (if j.val < 4 then 125 else 177)))
theorem cover_2325300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325300 := by
  apply coveredState_split_literal (state := state_2325300) 1
    state_2325301 state_2325314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325301
  · exact cover_2325314
#print axioms cover_2325300

def state_2325299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 177)))
theorem cover_2325299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325299 := by
  apply coveredState_split_literal (state := state_2325299) 2
    state_2325300 state_2325399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325300
  · exact cover_2325399
#print axioms cover_2325299

def state_2325181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 88)))
theorem cover_2325181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325181 := by
  apply coveredState_split_literal (state := state_2325181) 4
    state_2325182 state_2325299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325182
  · exact cover_2325299
#print axioms cover_2325181

def state_2325180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 88)))
theorem cover_2325180 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325180 := by
  apply coveredState_split_literal (state := state_2325180) 0
    state_2325181 state_2325412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325181
  · exact cover_2325412
#print axioms cover_2325180

def state_2325154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 88)))
theorem cover_2325154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325154 := by
  apply coveredState_split_literal (state := state_2325154) 3
    state_2325155 state_2325180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325155
  · exact cover_2325180
#print axioms cover_2325154

def state_2325514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 177)))
theorem cover_2325514 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325514 := by
  apply coveredState_split_literal (state := state_2325514) 2
    state_2325515 state_2325578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325515
  · exact cover_2325578
#print axioms cover_2325514

def state_2325476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 88)))
theorem cover_2325476 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325476 := by
  apply coveredState_split_literal (state := state_2325476) 4
    state_2325477 state_2325514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325477
  · exact cover_2325514
#print axioms cover_2325476

def state_2325600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 176)))
theorem cover_2325600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325600 := by
  apply coveredState_split_literal (state := state_2325600) 2
    state_2325601 state_2325650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325601
  · exact cover_2325650
#print axioms cover_2325600

def state_2325677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 230) else (if j.val < 3 then 174 else (if j.val < 4 then 125 else 177)))
theorem cover_2325677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325677 := by
  apply coveredState_split_literal (state := state_2325677) 3
    state_2325678 state_2325687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325678
  · exact cover_2325687
#print axioms cover_2325677

def state_2325676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 174 else (if j.val < 4 then 125 else 177)))
theorem cover_2325676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325676 := by
  apply coveredState_split_literal (state := state_2325676) 1
    state_2325677 state_2325746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325677
  · exact cover_2325746
#print axioms cover_2325676

def state_2325675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 177)))
theorem cover_2325675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325675 := by
  apply coveredState_split_literal (state := state_2325675) 2
    state_2325676 state_2325753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325676
  · exact cover_2325753
#print axioms cover_2325675

def state_2325599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 88)))
theorem cover_2325599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325599 := by
  apply coveredState_split_literal (state := state_2325599) 4
    state_2325600 state_2325675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325600
  · exact cover_2325675
#print axioms cover_2325599

def state_2325475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 88)))
theorem cover_2325475 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325475 := by
  apply coveredState_split_literal (state := state_2325475) 0
    state_2325476 state_2325599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325476
  · exact cover_2325599
#print axioms cover_2325475

def state_2325453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 88)))
theorem cover_2325453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325453 := by
  apply coveredState_split_literal (state := state_2325453) 3
    state_2325454 state_2325475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325454
  · exact cover_2325475
#print axioms cover_2325453

def state_2325153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 88)))
theorem cover_2325153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325153 := by
  apply coveredState_split_literal (state := state_2325153) 1
    state_2325154 state_2325453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325154
  · exact cover_2325453
#print axioms cover_2325153

def state_2324497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 88)))
theorem cover_2324497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324497 := by
  apply coveredState_split_literal (state := state_2324497) 2
    state_2324498 state_2325153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324498
  · exact cover_2325153
#print axioms cover_2324497

def state_2325773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 89)))
theorem cover_2325773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325773 := by
  apply coveredState_split_literal (state := state_2325773) 1
    state_2325774 state_2325833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325774
  · exact cover_2325833
#print axioms cover_2325773

def state_2325884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 89)))
theorem cover_2325884 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325884 := by
  apply coveredState_split_literal (state := state_2325884) 1
    state_2325885 state_2325898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325885
  · exact cover_2325898
#print axioms cover_2325884

def state_2325772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 89)))
theorem cover_2325772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325772 := by
  apply coveredState_split_literal (state := state_2325772) 2
    state_2325773 state_2325884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325773
  · exact cover_2325884
#print axioms cover_2325772

def state_2324496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 44)))
theorem cover_2324496 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324496 := by
  apply coveredState_split_literal (state := state_2324496) 4
    state_2324497 state_2325772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324497
  · exact cover_2325772
#print axioms cover_2324496

def state_2324106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 44)))
theorem cover_2324106 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324106 := by
  apply coveredState_split_literal (state := state_2324106) 0
    state_2324107 state_2324496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324107
  · exact cover_2324496
#print axioms cover_2324106

def state_2326020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 63 else 88)))
theorem cover_2326020 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326020 := by
  apply coveredState_split_literal (state := state_2326020) 3
    state_2326021 state_2326080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326021
  · exact cover_2326080
#print axioms cover_2326020

def state_2326019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 63 else 88)))
theorem cover_2326019 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326019 := by
  apply coveredState_split_literal (state := state_2326019) 1
    state_2326020 state_2326091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326020
  · exact cover_2326091
#print axioms cover_2326019

def state_2326121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 174 else (if j.val < 4 then 126 else 176)))
theorem cover_2326121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326121 := by
  apply coveredState_split_literal (state := state_2326121) 1
    state_2326122 state_2326129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326122
  · exact cover_2326129
#print axioms cover_2326121
end Mub6.Numerical.CircleFullD0.Forest
