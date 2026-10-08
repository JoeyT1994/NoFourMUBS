import D0FullInterface
import D0ForestAssembly0233
import D0ForestChunk0889
import D0ForestChunk0890
import D0ForestChunk0891
import D0ForestChunk0892
import D0ForestChunk0893
import D0ForestChunk0894
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1513839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 61)))
theorem cover_1513839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513839 := by
  apply coveredState_split_literal (state := state_1513839) 4
    state_1513840 state_1514073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513840
  · exact cover_1514073
#print axioms cover_1513839

def state_1513838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 53 else 61)))
theorem cover_1513838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513838 := by
  apply coveredState_split_literal (state := state_1513838) 3
    state_1513839 state_1514096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513839
  · exact cover_1514096
#print axioms cover_1513838

def state_1514179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 85 else (if j.val < 4 then 107 else 61)))
theorem cover_1514179 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514179 := by
  apply coveredState_split_literal (state := state_1514179) 4
    state_1514180 state_1514215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514180
  · exact cover_1514215
#print axioms cover_1514179

def state_1514157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 85 else (if j.val < 4 then 53 else 61)))
theorem cover_1514157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514157 := by
  apply coveredState_split_literal (state := state_1514157) 3
    state_1514158 state_1514179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514158
  · exact cover_1514179
#print axioms cover_1514157

def state_1513837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
theorem cover_1513837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513837 := by
  apply coveredState_split_literal (state := state_1513837) 2
    state_1513838 state_1514157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513838
  · exact cover_1514157
#print axioms cover_1513837

def state_1514260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 178) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 122)))
theorem cover_1514260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514260 := by
  apply coveredState_split_literal (state := state_1514260) 3
    state_1514261 state_1514322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514261
  · exact cover_1514322
#print axioms cover_1514260

def state_1514259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 122)))
theorem cover_1514259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514259 := by
  apply coveredState_split_literal (state := state_1514259) 1
    state_1514260 state_1514361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514260
  · exact cover_1514361
#print axioms cover_1514259

def state_1514249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 122)))
theorem cover_1514249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514249 := by
  apply coveredState_split_literal (state := state_1514249) 0
    state_1514250 state_1514259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514250
  · exact cover_1514259
#print axioms cover_1514249

def state_1514388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 123)))
theorem cover_1514388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514388 := by
  apply coveredState_split_literal (state := state_1514388) 1
    state_1514389 state_1514426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514389
  · exact cover_1514426
#print axioms cover_1514388

def state_1514372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 123)))
theorem cover_1514372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514372 := by
  apply coveredState_split_literal (state := state_1514372) 0
    state_1514373 state_1514388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514373
  · exact cover_1514388
#print axioms cover_1514372

def state_1514248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 61)))
theorem cover_1514248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514248 := by
  apply coveredState_split_literal (state := state_1514248) 4
    state_1514249 state_1514372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514249
  · exact cover_1514372
#print axioms cover_1514248

def state_1514479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 107 else 61)))
theorem cover_1514479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514479 := by
  apply coveredState_split_literal (state := state_1514479) 4
    state_1514480 state_1514517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514480
  · exact cover_1514517
#print axioms cover_1514479

def state_1514247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 53 else 61)))
theorem cover_1514247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514247 := by
  apply coveredState_split_literal (state := state_1514247) 3
    state_1514248 state_1514479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514248
  · exact cover_1514479
#print axioms cover_1514247

def state_1514592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 85 else (if j.val < 4 then 107 else 61)))
theorem cover_1514592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514592 := by
  apply coveredState_split_literal (state := state_1514592) 4
    state_1514593 state_1514610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514593
  · exact cover_1514610
#print axioms cover_1514592

def state_1514560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 85 else (if j.val < 4 then 53 else 61)))
theorem cover_1514560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514560 := by
  apply coveredState_split_literal (state := state_1514560) 3
    state_1514561 state_1514592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514561
  · exact cover_1514592
#print axioms cover_1514560

def state_1514246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
theorem cover_1514246 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514246 := by
  apply coveredState_split_literal (state := state_1514246) 2
    state_1514247 state_1514560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514247
  · exact cover_1514560
#print axioms cover_1514246

def state_1513836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
theorem cover_1513836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513836 := by
  apply coveredState_split_literal (state := state_1513836) 1
    state_1513837 state_1514246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513837
  · exact cover_1514246
#print axioms cover_1513836

def state_1514670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 88) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
theorem cover_1514670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514670 := by
  apply coveredState_split_literal (state := state_1514670) 2
    state_1514671 state_1514704
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514671
  · exact cover_1514704
#print axioms cover_1514670

def state_1514739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 61)))
theorem cover_1514739 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514739 := by
  apply coveredState_split_literal (state := state_1514739) 4
    state_1514740 state_1514783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514740
  · exact cover_1514783
#print axioms cover_1514739

def state_1514738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 53 else 61)))
theorem cover_1514738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514738 := by
  apply coveredState_split_literal (state := state_1514738) 3
    state_1514739 state_1514820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514739
  · exact cover_1514820
#print axioms cover_1514738

def state_1514871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 89) else (if j.val < 3 then 85 else (if j.val < 4 then 107 else 61)))
theorem cover_1514871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514871 := by
  apply coveredState_split_literal (state := state_1514871) 4
    state_1514872 state_1514895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514872
  · exact cover_1514895
#print axioms cover_1514871

def state_1514841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 89) else (if j.val < 3 then 85 else (if j.val < 4 then 53 else 61)))
theorem cover_1514841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514841 := by
  apply coveredState_split_literal (state := state_1514841) 3
    state_1514842 state_1514871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514842
  · exact cover_1514871
#print axioms cover_1514841

def state_1514737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 89) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
theorem cover_1514737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514737 := by
  apply coveredState_split_literal (state := state_1514737) 2
    state_1514738 state_1514841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514738
  · exact cover_1514841
#print axioms cover_1514737

def state_1514669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
theorem cover_1514669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514669 := by
  apply coveredState_split_literal (state := state_1514669) 1
    state_1514670 state_1514737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1514670
  · exact cover_1514737
#print axioms cover_1514669

def state_1513835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
theorem cover_1513835 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513835 := by
  apply coveredState_split_literal (state := state_1513835) 0
    state_1513836 state_1514669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513836
  · exact cover_1514669
#print axioms cover_1513835

def state_1513423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 30)))
theorem cover_1513423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513423 := by
  apply coveredState_split_literal (state := state_1513423) 4
    state_1513424 state_1513835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513424
  · exact cover_1513835
#print axioms cover_1513423

def state_1512989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 26 else 30)))
theorem cover_1512989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512989 := by
  apply coveredState_split_literal (state := state_1512989) 3
    state_1512990 state_1513423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512990
  · exact cover_1513423
#print axioms cover_1512989

def state_1512988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
theorem cover_1512988 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512988 := by
  apply coveredState_split_literal (state := state_1512988) 2
    state_1512989 state_1514938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512989
  · exact cover_1514938
#print axioms cover_1512988

def state_1515011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 61)))
theorem cover_1515011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515011 := by
  apply coveredState_split_literal (state := state_1515011) 0
    state_1515012 state_1515063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515012
  · exact cover_1515063
#print axioms cover_1515011

def state_1515001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 30)))
theorem cover_1515001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515001 := by
  apply coveredState_split_literal (state := state_1515001) 4
    state_1515002 state_1515011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515002
  · exact cover_1515011
#print axioms cover_1515001

def state_1515100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 90) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
theorem cover_1515100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515100 := by
  apply coveredState_split_literal (state := state_1515100) 2
    state_1515101 state_1515158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515101
  · exact cover_1515158
#print axioms cover_1515100

def state_1515099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
theorem cover_1515099 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515099 := by
  apply coveredState_split_literal (state := state_1515099) 1
    state_1515100 state_1515179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515100
  · exact cover_1515179
#print axioms cover_1515099
end Mub6.Numerical.CircleFullD0.Forest
