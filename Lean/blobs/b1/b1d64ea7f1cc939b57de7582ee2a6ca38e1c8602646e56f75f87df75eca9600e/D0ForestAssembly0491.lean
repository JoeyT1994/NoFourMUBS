import D0FullInterface
import D0ForestAssembly0490
import D0ForestChunk1929
import D0ForestChunk1930
import D0ForestChunk1931
import D0ForestChunk1932
import D0ForestChunk1933
import D0ForestChunk1934
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2336181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2336181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336181 := by
  apply coveredState_split_literal (state := state_2336181) 0
    state_2336182 state_2336347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336182
  · exact cover_2336347
#print axioms cover_2336181

def state_2336131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_2336131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336131 := by
  apply coveredState_split_literal (state := state_2336131) 4
    state_2336132 state_2336181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336132
  · exact cover_2336181
#print axioms cover_2336131

def state_2336109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2336109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336109 := by
  apply coveredState_split_literal (state := state_2336109) 3
    state_2336110 state_2336131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336110
  · exact cover_2336131
#print axioms cover_2336109

def state_2335969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2335969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335969 := by
  apply coveredState_split_literal (state := state_2335969) 2
    state_2335970 state_2336109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335970
  · exact cover_2336109
#print axioms cover_2335969

def state_2336359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_2336359 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336359 := by
  apply coveredState_split_literal (state := state_2336359) 3
    state_2336360 state_2336375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336360
  · exact cover_2336375
#print axioms cover_2336359

def state_2336629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 43)))
theorem cover_2336629 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336629 := by
  apply coveredState_split_literal (state := state_2336629) 1
    state_2336630 state_2336645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336630
  · exact cover_2336645
#print axioms cover_2336629

def state_2336625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 21)))
theorem cover_2336625 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336625 := by
  apply coveredState_split_literal (state := state_2336625) 4
    state_2336626 state_2336629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336626
  · exact cover_2336629
#print axioms cover_2336625

def state_2336605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 21)))
theorem cover_2336605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336605 := by
  apply coveredState_split_literal (state := state_2336605) 2
    state_2336606 state_2336625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336606
  · exact cover_2336625
#print axioms cover_2336605

def state_2336604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 21)))
theorem cover_2336604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336604 := by
  apply coveredState_split_literal (state := state_2336604) 0
    state_2336605 state_2336700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336605
  · exact cover_2336700
#print axioms cover_2336604

def state_2336572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 21)))
theorem cover_2336572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336572 := by
  apply coveredState_split_literal (state := state_2336572) 3
    state_2336573 state_2336604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336573
  · exact cover_2336604
#print axioms cover_2336572

def state_2336571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 21)))
theorem cover_2336571 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336571 := by
  apply coveredState_split_literal (state := state_2336571) 1
    state_2336572 state_2336709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336572
  · exact cover_2336709
#print axioms cover_2336571

def state_2336565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 10)))
theorem cover_2336565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336565 := by
  apply coveredState_split_literal (state := state_2336565) 4
    state_2336566 state_2336571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336566
  · exact cover_2336571
#print axioms cover_2336565

def state_2336535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_2336535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336535 := by
  apply coveredState_split_literal (state := state_2336535) 2
    state_2336536 state_2336565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336536
  · exact cover_2336565
#print axioms cover_2336535

def state_2336534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_2336534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336534 := by
  apply coveredState_split_literal (state := state_2336534) 0
    state_2336535 state_2336758
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336535
  · exact cover_2336758
#print axioms cover_2336534

def state_2336490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
theorem cover_2336490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336490 := by
  apply coveredState_split_literal (state := state_2336490) 3
    state_2336491 state_2336534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336491
  · exact cover_2336534
#print axioms cover_2336490

def state_2336489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
theorem cover_2336489 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336489 := by
  apply coveredState_split_literal (state := state_2336489) 1
    state_2336490 state_2336773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336490
  · exact cover_2336773
#print axioms cover_2336489

def state_2337003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 44)))
theorem cover_2337003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337003 := by
  apply coveredState_split_literal (state := state_2337003) 4
    state_2337004 state_2337059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337004
  · exact cover_2337059
#print axioms cover_2337003

def state_2337002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 44)))
theorem cover_2337002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337002 := by
  apply coveredState_split_literal (state := state_2337002) 0
    state_2337003 state_2337096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337003
  · exact cover_2337096
#print axioms cover_2337002

def state_2336938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
theorem cover_2336938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336938 := by
  apply coveredState_split_literal (state := state_2336938) 3
    state_2336939 state_2337002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336939
  · exact cover_2337002
#print axioms cover_2336938

def state_2336916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
theorem cover_2336916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336916 := by
  apply coveredState_split_literal (state := state_2336916) 1
    state_2336917 state_2336938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336917
  · exact cover_2336938
#print axioms cover_2336916

def state_2336906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 44)))
theorem cover_2336906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336906 := by
  apply coveredState_split_literal (state := state_2336906) 2
    state_2336907 state_2336916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336907
  · exact cover_2336916
#print axioms cover_2336906

def state_2336905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
theorem cover_2336905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336905 := by
  apply coveredState_split_literal (state := state_2336905) 4
    state_2336906 state_2337107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336906
  · exact cover_2337107
#print axioms cover_2336905

def state_2336904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
theorem cover_2336904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336904 := by
  apply coveredState_split_literal (state := state_2336904) 0
    state_2336905 state_2337146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336905
  · exact cover_2337146
#print axioms cover_2336904

def state_2336842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
theorem cover_2336842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336842 := by
  apply coveredState_split_literal (state := state_2336842) 3
    state_2336843 state_2336904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336843
  · exact cover_2336904
#print axioms cover_2336842

def state_2337166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
theorem cover_2337166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337166 := by
  apply coveredState_split_literal (state := state_2337166) 4
    state_2337167 state_2337214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337167
  · exact cover_2337214
#print axioms cover_2337166

def state_2337165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
theorem cover_2337165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337165 := by
  apply coveredState_split_literal (state := state_2337165) 0
    state_2337166 state_2337239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337166
  · exact cover_2337239
#print axioms cover_2337165

def state_2337157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
theorem cover_2337157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337157 := by
  apply coveredState_split_literal (state := state_2337157) 3
    state_2337158 state_2337165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337158
  · exact cover_2337165
#print axioms cover_2337157

def state_2336841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
theorem cover_2336841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336841 := by
  apply coveredState_split_literal (state := state_2336841) 1
    state_2336842 state_2337157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336842
  · exact cover_2337157
#print axioms cover_2336841

def state_2336831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 22)))
theorem cover_2336831 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336831 := by
  apply coveredState_split_literal (state := state_2336831) 2
    state_2336832 state_2336841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336832
  · exact cover_2336841
#print axioms cover_2336831

def state_2336830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
theorem cover_2336830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336830 := by
  apply coveredState_split_literal (state := state_2336830) 4
    state_2336831 state_2337242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336831
  · exact cover_2337242
#print axioms cover_2336830

def state_2336829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
theorem cover_2336829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336829 := by
  apply coveredState_split_literal (state := state_2336829) 0
    state_2336830 state_2337277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336830
  · exact cover_2337277
#print axioms cover_2336829

def state_2336793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
theorem cover_2336793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336793 := by
  apply coveredState_split_literal (state := state_2336793) 3
    state_2336794 state_2336829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336794
  · exact cover_2336829
#print axioms cover_2336793
end Mub6.Numerical.CircleFullD0.Forest
