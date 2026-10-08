import D0FullInterface
import D0ForestAssembly0322
import D0ForestChunk1248
import D0ForestChunk1249
import D0ForestChunk1250
import D0ForestChunk1251
import D0ForestChunk1252
import D0ForestChunk1253
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1600454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 49)))
theorem cover_1600454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600454 := by
  apply coveredState_split_literal (state := state_1600454) 4
    state_1600455 state_1600478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600455
  · exact cover_1600478
#print axioms cover_1600454

def state_1600232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 49)))
theorem cover_1600232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600232 := by
  apply coveredState_split_literal (state := state_1600232) 3
    state_1600233 state_1600454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600233
  · exact cover_1600454
#print axioms cover_1600232

def state_1600584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 60 else 99)))
theorem cover_1600584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600584 := by
  apply coveredState_split_literal (state := state_1600584) 2
    state_1600585 state_1600592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600585
  · exact cover_1600592
#print axioms cover_1600584

def state_1600560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 60 else 49)))
theorem cover_1600560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600560 := by
  apply coveredState_split_literal (state := state_1600560) 4
    state_1600561 state_1600584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600561
  · exact cover_1600584
#print axioms cover_1600560

def state_1600559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 49)))
theorem cover_1600559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600559 := by
  apply coveredState_split_literal (state := state_1600559) 3
    state_1600560 state_1600651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600560
  · exact cover_1600651
#print axioms cover_1600559

def state_1600231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 49)))
theorem cover_1600231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600231 := by
  apply coveredState_split_literal (state := state_1600231) 1
    state_1600232 state_1600559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600232
  · exact cover_1600559
#print axioms cover_1600231

def state_1600205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 49)))
theorem cover_1600205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600205 := by
  apply coveredState_split_literal (state := state_1600205) 0
    state_1600206 state_1600231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600206
  · exact cover_1600231
#print axioms cover_1600205

def state_1600185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 49)))
theorem cover_1600185 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600185 := by
  apply coveredState_split_literal (state := state_1600185) 2
    state_1600186 state_1600205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600186
  · exact cover_1600205
#print axioms cover_1600185

def state_1600151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 24)))
theorem cover_1600151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600151 := by
  apply coveredState_split_literal (state := state_1600151) 4
    state_1600152 state_1600185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600152
  · exact cover_1600185
#print axioms cover_1600151

def state_1600150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
theorem cover_1600150 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600150 := by
  apply coveredState_split_literal (state := state_1600150) 3
    state_1600151 state_1600670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600151
  · exact cover_1600670
#print axioms cover_1600150

def state_1600149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
theorem cover_1600149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600149 := by
  apply coveredState_split_literal (state := state_1600149) 1
    state_1600150 state_1600699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600150
  · exact cover_1600699
#print axioms cover_1600149

def state_1600147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
theorem cover_1600147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600147 := by
  apply coveredState_split_literal (state := state_1600147) 0
    state_1600148 state_1600149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600148
  · exact cover_1600149
#print axioms cover_1600147

def state_1600853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 80) else (if j.val < 3 then 103 else (if j.val < 4 then 60 else 100)))
theorem cover_1600853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600853 := by
  apply coveredState_split_literal (state := state_1600853) 3
    state_1600854 state_1600911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600854
  · exact cover_1600911
#print axioms cover_1600853

def state_1600852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 60 else 100)))
theorem cover_1600852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600852 := by
  apply coveredState_split_literal (state := state_1600852) 1
    state_1600853 state_1600958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600853
  · exact cover_1600958
#print axioms cover_1600852

def state_1600796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 60 else 100)))
theorem cover_1600796 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600796 := by
  apply coveredState_split_literal (state := state_1600796) 0
    state_1600797 state_1600852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600797
  · exact cover_1600852
#print axioms cover_1600796

def state_1600768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 60 else 100)))
theorem cover_1600768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600768 := by
  apply coveredState_split_literal (state := state_1600768) 2
    state_1600769 state_1600796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600769
  · exact cover_1600796
#print axioms cover_1600768

def state_1601003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 60 else 101)))
theorem cover_1601003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601003 := by
  apply coveredState_split_literal (state := state_1601003) 2
    state_1601004 state_1601009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601004
  · exact cover_1601009
#print axioms cover_1601003

def state_1600767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 60 else 50)))
theorem cover_1600767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600767 := by
  apply coveredState_split_literal (state := state_1600767) 4
    state_1600768 state_1601003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600768
  · exact cover_1601003
#print axioms cover_1600767

def state_1601068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 50)))
theorem cover_1601068 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601068 := by
  apply coveredState_split_literal (state := state_1601068) 4
    state_1601069 state_1601120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601069
  · exact cover_1601120
#print axioms cover_1601068

def state_1600766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 50)))
theorem cover_1600766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600766 := by
  apply coveredState_split_literal (state := state_1600766) 3
    state_1600767 state_1601068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600767
  · exact cover_1601068
#print axioms cover_1600766

def state_1601134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 60 else 50)))
theorem cover_1601134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601134 := by
  apply coveredState_split_literal (state := state_1601134) 4
    state_1601135 state_1601184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601135
  · exact cover_1601184
#print axioms cover_1601134

def state_1601133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 50)))
theorem cover_1601133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601133 := by
  apply coveredState_split_literal (state := state_1601133) 3
    state_1601134 state_1601203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601134
  · exact cover_1601203
#print axioms cover_1601133

def state_1600765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 50)))
theorem cover_1600765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600765 := by
  apply coveredState_split_literal (state := state_1600765) 1
    state_1600766 state_1601133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600766
  · exact cover_1601133
#print axioms cover_1600765

def state_1600733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 50)))
theorem cover_1600733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600733 := by
  apply coveredState_split_literal (state := state_1600733) 0
    state_1600734 state_1600765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600734
  · exact cover_1600765
#print axioms cover_1600733

def state_1600732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 25)))
theorem cover_1600732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600732 := by
  apply coveredState_split_literal (state := state_1600732) 4
    state_1600733 state_1601230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600733
  · exact cover_1601230
#print axioms cover_1600732

def state_1600716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 25)))
theorem cover_1600716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600716 := by
  apply coveredState_split_literal (state := state_1600716) 2
    state_1600717 state_1600732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600717
  · exact cover_1600732
#print axioms cover_1600716

def state_1600715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
theorem cover_1600715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600715 := by
  apply coveredState_split_literal (state := state_1600715) 3
    state_1600716 state_1601263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600716
  · exact cover_1601263
#print axioms cover_1600715

def state_1600714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
theorem cover_1600714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600714 := by
  apply coveredState_split_literal (state := state_1600714) 1
    state_1600715 state_1601294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600715
  · exact cover_1601294
#print axioms cover_1600714

def state_1600700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
theorem cover_1600700 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600700 := by
  apply coveredState_split_literal (state := state_1600700) 0
    state_1600701 state_1600714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600701
  · exact cover_1600714
#print axioms cover_1600700

def state_1600146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 12)))
theorem cover_1600146 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600146 := by
  apply coveredState_split_literal (state := state_1600146) 4
    state_1600147 state_1600700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600147
  · exact cover_1600700
#print axioms cover_1600146

def state_1600138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1600138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600138 := by
  apply coveredState_split_literal (state := state_1600138) 2
    state_1600139 state_1600146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600139
  · exact cover_1600146
#print axioms cover_1600138

def state_1597136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1597136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597136 := by
  apply coveredState_split_literal (state := state_1597136) 3
    state_1597137 state_1600138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597137
  · exact cover_1600138
#print axioms cover_1597136
end Mub6.Numerical.CircleFullD0.Forest
