import D0FullInterface
import D0ForestChunk0808
import D0ForestChunk0809
import D0ForestChunk0810
import D0ForestChunk0811
import D0ForestChunk0812
import D0ForestChunk0813
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1494698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 29)))
theorem cover_1494698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494698 := by
  apply coveredState_split_literal (state := state_1494698) 4
    state_1494699 state_1494750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494699
  · exact cover_1494750
#print axioms cover_1494698

def state_1494856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 80 else (if j.val < 4 then 101 else 59)))
theorem cover_1494856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494856 := by
  apply coveredState_split_literal (state := state_1494856) 4
    state_1494857 state_1494878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494857
  · exact cover_1494878
#print axioms cover_1494856

def state_1494855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 40 else (if j.val < 4 then 101 else 59)))
theorem cover_1494855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494855 := by
  apply coveredState_split_literal (state := state_1494855) 2
    state_1494856 state_1494931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494856
  · exact cover_1494931
#print axioms cover_1494855

def state_1494854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 101 else 59)))
theorem cover_1494854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494854 := by
  apply coveredState_split_literal (state := state_1494854) 1
    state_1494855 state_1494940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494855
  · exact cover_1494940
#print axioms cover_1494854

def state_1494828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 50 else 59)))
theorem cover_1494828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494828 := by
  apply coveredState_split_literal (state := state_1494828) 3
    state_1494829 state_1494854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494829
  · exact cover_1494854
#print axioms cover_1494828

def state_1494812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 50 else 59)))
theorem cover_1494812 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494812 := by
  apply coveredState_split_literal (state := state_1494812) 0
    state_1494813 state_1494828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494813
  · exact cover_1494828
#print axioms cover_1494812

def state_1494811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 59)))
theorem cover_1494811 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494811 := by
  apply coveredState_split_literal (state := state_1494811) 2
    state_1494812 state_1494989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494812
  · exact cover_1494989
#print axioms cover_1494811

def state_1494809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 29)))
theorem cover_1494809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494809 := by
  apply coveredState_split_literal (state := state_1494809) 4
    state_1494810 state_1494811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494810
  · exact cover_1494811
#print axioms cover_1494809

def state_1494697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 29)))
theorem cover_1494697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494697 := by
  apply coveredState_split_literal (state := state_1494697) 1
    state_1494698 state_1494809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494698
  · exact cover_1494809
#print axioms cover_1494697

def state_1495046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 58)))
theorem cover_1495046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495046 := by
  apply coveredState_split_literal (state := state_1495046) 1
    state_1495047 state_1495110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495047
  · exact cover_1495110
#print axioms cover_1495046

def state_1495186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 84) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 117)))
theorem cover_1495186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495186 := by
  apply coveredState_split_literal (state := state_1495186) 0
    state_1495187 state_1495218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495187
  · exact cover_1495218
#print axioms cover_1495186

def state_1495162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 84) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 117)))
theorem cover_1495162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495162 := by
  apply coveredState_split_literal (state := state_1495162) 2
    state_1495163 state_1495186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495163
  · exact cover_1495186
#print axioms cover_1495162

def state_1495152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 84) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 58)))
theorem cover_1495152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495152 := by
  apply coveredState_split_literal (state := state_1495152) 4
    state_1495153 state_1495162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495153
  · exact cover_1495162
#print axioms cover_1495152

def state_1495151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 58)))
theorem cover_1495151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495151 := by
  apply coveredState_split_literal (state := state_1495151) 1
    state_1495152 state_1495259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495152
  · exact cover_1495259
#print axioms cover_1495151

def state_1495045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 58)))
theorem cover_1495045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495045 := by
  apply coveredState_split_literal (state := state_1495045) 3
    state_1495046 state_1495151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495046
  · exact cover_1495151
#print axioms cover_1495045

def state_1494993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 58)))
theorem cover_1494993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494993 := by
  apply coveredState_split_literal (state := state_1494993) 0
    state_1494994 state_1495045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494994
  · exact cover_1495045
#print axioms cover_1494993

def state_1494992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 58)))
theorem cover_1494992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494992 := by
  apply coveredState_split_literal (state := state_1494992) 2
    state_1494993 state_1495276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494993
  · exact cover_1495276
#print axioms cover_1494992

def state_1495373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 80 else (if j.val < 4 then 102 else 118)))
theorem cover_1495373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495373 := by
  apply coveredState_split_literal (state := state_1495373) 0
    state_1495374 state_1495421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495374
  · exact cover_1495421
#print axioms cover_1495373

def state_1495372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 80 else (if j.val < 4 then 102 else 59)))
theorem cover_1495372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495372 := by
  apply coveredState_split_literal (state := state_1495372) 4
    state_1495373 state_1495438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495373
  · exact cover_1495438
#print axioms cover_1495372

def state_1495371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 59)))
theorem cover_1495371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495371 := by
  apply coveredState_split_literal (state := state_1495371) 2
    state_1495372 state_1495455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495372
  · exact cover_1495455
#print axioms cover_1495371

def state_1495353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 59)))
theorem cover_1495353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495353 := by
  apply coveredState_split_literal (state := state_1495353) 1
    state_1495354 state_1495371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495354
  · exact cover_1495371
#print axioms cover_1495353

def state_1495717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 85) else (if j.val < 3 then 81 else (if j.val < 4 then 207 else 118)))
theorem cover_1495717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495717 := by
  apply coveredState_split_literal (state := state_1495717) 1
    state_1495718 state_1495745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495718
  · exact cover_1495745
#print axioms cover_1495717

def state_1495657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 85) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 118)))
theorem cover_1495657 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495657 := by
  apply coveredState_split_literal (state := state_1495657) 3
    state_1495658 state_1495717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495658
  · exact cover_1495717
#print axioms cover_1495657

def state_1495611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 118)))
theorem cover_1495611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495611 := by
  apply coveredState_split_literal (state := state_1495611) 0
    state_1495612 state_1495657
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495612
  · exact cover_1495657
#print axioms cover_1495611

def state_1495610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 59)))
theorem cover_1495610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495610 := by
  apply coveredState_split_literal (state := state_1495610) 4
    state_1495611 state_1495796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495611
  · exact cover_1495796
#print axioms cover_1495610

def state_1495562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 59)))
theorem cover_1495562 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495562 := by
  apply coveredState_split_literal (state := state_1495562) 2
    state_1495563 state_1495610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495563
  · exact cover_1495610
#print axioms cover_1495562

def state_1495518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 59)))
theorem cover_1495518 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495518 := by
  apply coveredState_split_literal (state := state_1495518) 1
    state_1495519 state_1495562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495519
  · exact cover_1495562
#print axioms cover_1495518

def state_1495352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 59)))
theorem cover_1495352 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495352 := by
  apply coveredState_split_literal (state := state_1495352) 3
    state_1495353 state_1495518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495353
  · exact cover_1495518
#print axioms cover_1495352

def state_1495304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 59)))
theorem cover_1495304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495304 := by
  apply coveredState_split_literal (state := state_1495304) 0
    state_1495305 state_1495352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495305
  · exact cover_1495352
#print axioms cover_1495304

def state_1495863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 59)))
theorem cover_1495863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495863 := by
  apply coveredState_split_literal (state := state_1495863) 3
    state_1495864 state_1495877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495864
  · exact cover_1495877
#print axioms cover_1495863

def state_1495859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 59)))
theorem cover_1495859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495859 := by
  apply coveredState_split_literal (state := state_1495859) 0
    state_1495860 state_1495863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495860
  · exact cover_1495863
#print axioms cover_1495859

def state_1495303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 59)))
theorem cover_1495303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495303 := by
  apply coveredState_split_literal (state := state_1495303) 2
    state_1495304 state_1495859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495304
  · exact cover_1495859
#print axioms cover_1495303
end Mub6.Numerical.CircleFullD0.Forest
