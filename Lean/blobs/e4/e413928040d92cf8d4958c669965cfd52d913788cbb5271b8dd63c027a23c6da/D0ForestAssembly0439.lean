import D0FullInterface
import D0ForestAssembly0438
import D0ForestChunk1720
import D0ForestChunk1721
import D0ForestChunk1722
import D0ForestChunk1723
import D0ForestChunk1724
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2286281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 31)))
theorem cover_2286281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286281 := by
  apply coveredState_split_literal (state := state_2286281) 4
    state_2286282 state_2286321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286282
  · exact cover_2286321
#print axioms cover_2286281

def state_2286255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 31)))
theorem cover_2286255 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286255 := by
  apply coveredState_split_literal (state := state_2286255) 1
    state_2286256 state_2286281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286256
  · exact cover_2286281
#print axioms cover_2286255

def state_2286225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 21 else 31)))
theorem cover_2286225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286225 := by
  apply coveredState_split_literal (state := state_2286225) 3
    state_2286226 state_2286255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286226
  · exact cover_2286255
#print axioms cover_2286225

def state_2286224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 21 else 31)))
theorem cover_2286224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286224 := by
  apply coveredState_split_literal (state := state_2286224) 0
    state_2286225 state_2286440
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286225
  · exact cover_2286440
#print axioms cover_2286224

def state_2286212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 31)))
theorem cover_2286212 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286212 := by
  apply coveredState_split_literal (state := state_2286212) 2
    state_2286213 state_2286224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286213
  · exact cover_2286224
#print axioms cover_2286212

def state_2286170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 15)))
theorem cover_2286170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286170 := by
  apply coveredState_split_literal (state := state_2286170) 4
    state_2286171 state_2286212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286171
  · exact cover_2286212
#print axioms cover_2286170

def state_2286169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 15)))
theorem cover_2286169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286169 := by
  apply coveredState_split_literal (state := state_2286169) 1
    state_2286170 state_2286447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286170
  · exact cover_2286447
#print axioms cover_2286169

def state_2286137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 15)))
theorem cover_2286137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286137 := by
  apply coveredState_split_literal (state := state_2286137) 3
    state_2286138 state_2286169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286138
  · exact cover_2286169
#print axioms cover_2286137

def state_2286129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 15)))
theorem cover_2286129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286129 := by
  apply coveredState_split_literal (state := state_2286129) 2
    state_2286130 state_2286137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286130
  · exact cover_2286137
#print axioms cover_2286129

def state_2286128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 15)))
theorem cover_2286128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286128 := by
  apply coveredState_split_literal (state := state_2286128) 0
    state_2286129 state_2286508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286129
  · exact cover_2286508
#print axioms cover_2286128

def state_2286094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
theorem cover_2286094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286094 := by
  apply coveredState_split_literal (state := state_2286094) 4
    state_2286095 state_2286128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286095
  · exact cover_2286128
#print axioms cover_2286094

def state_2286093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
theorem cover_2286093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286093 := by
  apply coveredState_split_literal (state := state_2286093) 1
    state_2286094 state_2286517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286094
  · exact cover_2286517
#print axioms cover_2286093

def state_2286651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 62)))
theorem cover_2286651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286651 := by
  apply coveredState_split_literal (state := state_2286651) 2
    state_2286652 state_2286661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286652
  · exact cover_2286661
#print axioms cover_2286651

def state_2286736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 63)))
theorem cover_2286736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286736 := by
  apply coveredState_split_literal (state := state_2286736) 1
    state_2286737 state_2286762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286737
  · exact cover_2286762
#print axioms cover_2286736

def state_2286735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 63)))
theorem cover_2286735 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286735 := by
  apply coveredState_split_literal (state := state_2286735) 3
    state_2286736 state_2286825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286736
  · exact cover_2286825
#print axioms cover_2286735

def state_2286734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 63)))
theorem cover_2286734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286734 := by
  apply coveredState_split_literal (state := state_2286734) 0
    state_2286735 state_2286844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286735
  · exact cover_2286844
#print axioms cover_2286734

def state_2286716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 63)))
theorem cover_2286716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286716 := by
  apply coveredState_split_literal (state := state_2286716) 2
    state_2286717 state_2286734
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286717
  · exact cover_2286734
#print axioms cover_2286716

def state_2286650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
theorem cover_2286650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286650 := by
  apply coveredState_split_literal (state := state_2286650) 4
    state_2286651 state_2286716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286651
  · exact cover_2286716
#print axioms cover_2286650

def state_2286626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
theorem cover_2286626 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286626 := by
  apply coveredState_split_literal (state := state_2286626) 1
    state_2286627 state_2286650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286627
  · exact cover_2286650
#print axioms cover_2286626

def state_2286625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 31)))
theorem cover_2286625 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286625 := by
  apply coveredState_split_literal (state := state_2286625) 3
    state_2286626 state_2286859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286626
  · exact cover_2286859
#print axioms cover_2286625

def state_2286624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 31)))
theorem cover_2286624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286624 := by
  apply coveredState_split_literal (state := state_2286624) 0
    state_2286625 state_2286866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286625
  · exact cover_2286866
#print axioms cover_2286624

def state_2286616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 31)))
theorem cover_2286616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286616 := by
  apply coveredState_split_literal (state := state_2286616) 2
    state_2286617 state_2286624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286617
  · exact cover_2286624
#print axioms cover_2286616

def state_2286584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2286584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286584 := by
  apply coveredState_split_literal (state := state_2286584) 4
    state_2286585 state_2286616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286585
  · exact cover_2286616
#print axioms cover_2286584

def state_2286962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 58) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 63)))
theorem cover_2286962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286962 := by
  apply coveredState_split_literal (state := state_2286962) 0
    state_2286963 state_2287026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286963
  · exact cover_2287026
#print axioms cover_2286962

def state_2286948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 58) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 63)))
theorem cover_2286948 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286948 := by
  apply coveredState_split_literal (state := state_2286948) 2
    state_2286949 state_2286962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286949
  · exact cover_2286962
#print axioms cover_2286948

def state_2286912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 58) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
theorem cover_2286912 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286912 := by
  apply coveredState_split_literal (state := state_2286912) 4
    state_2286913 state_2286948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286913
  · exact cover_2286948
#print axioms cover_2286912

def state_2286911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
theorem cover_2286911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286911 := by
  apply coveredState_split_literal (state := state_2286911) 1
    state_2286912 state_2287055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286912
  · exact cover_2287055
#print axioms cover_2286911

def state_2286910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 31)))
theorem cover_2286910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286910 := by
  apply coveredState_split_literal (state := state_2286910) 3
    state_2286911 state_2287064
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286911
  · exact cover_2287064
#print axioms cover_2286910

def state_2286909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 31)))
theorem cover_2286909 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286909 := by
  apply coveredState_split_literal (state := state_2286909) 0
    state_2286910 state_2287093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286910
  · exact cover_2287093
#print axioms cover_2286909

def state_2286901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 31)))
theorem cover_2286901 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286901 := by
  apply coveredState_split_literal (state := state_2286901) 2
    state_2286902 state_2286909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286902
  · exact cover_2286909
#print axioms cover_2286901

def state_2286871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2286871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286871 := by
  apply coveredState_split_literal (state := state_2286871) 4
    state_2286872 state_2286901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286872
  · exact cover_2286901
#print axioms cover_2286871

def state_2286583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2286583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286583 := by
  apply coveredState_split_literal (state := state_2286583) 1
    state_2286584 state_2286871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286584
  · exact cover_2286871
#print axioms cover_2286583
end Mub6.Numerical.CircleFullD0.Forest
