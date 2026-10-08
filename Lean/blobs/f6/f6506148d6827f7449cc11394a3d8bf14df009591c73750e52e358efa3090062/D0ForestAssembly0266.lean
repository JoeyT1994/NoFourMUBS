import D0FullInterface
import D0ForestAssembly0265
import D0ForestChunk1018
import D0ForestChunk1019
import D0ForestChunk1020
import D0ForestChunk1021
import D0ForestChunk1022
import D0ForestChunk1023
import D0ForestChunk1024
import D0ForestChunk1025
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1545263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 118) else (if j.val < 3 then 207 else (if j.val < 4 then 81 else 85)))
theorem cover_1545263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545263 := by
  apply coveredState_split_literal (state := state_1545263) 4
    state_1545264 state_1545291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545264
  · exact cover_1545291
#print axioms cover_1545263

def state_1545203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 118) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 85)))
theorem cover_1545203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545203 := by
  apply coveredState_split_literal (state := state_1545203) 2
    state_1545204 state_1545263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545204
  · exact cover_1545263
#print axioms cover_1545203

def state_1545157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 118) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 85)))
theorem cover_1545157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545157 := by
  apply coveredState_split_literal (state := state_1545157) 0
    state_1545158 state_1545203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545158
  · exact cover_1545203
#print axioms cover_1545157

def state_1545156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 85)))
theorem cover_1545156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545156 := by
  apply coveredState_split_literal (state := state_1545156) 1
    state_1545157 state_1545342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545157
  · exact cover_1545342
#print axioms cover_1545156

def state_1545108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 85)))
theorem cover_1545108 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545108 := by
  apply coveredState_split_literal (state := state_1545108) 3
    state_1545109 state_1545156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545109
  · exact cover_1545156
#print axioms cover_1545108

def state_1545064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 42)))
theorem cover_1545064 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545064 := by
  apply coveredState_split_literal (state := state_1545064) 4
    state_1545065 state_1545108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545065
  · exact cover_1545108
#print axioms cover_1545064

def state_1544898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 42)))
theorem cover_1544898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544898 := by
  apply coveredState_split_literal (state := state_1544898) 2
    state_1544899 state_1545064
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544899
  · exact cover_1545064
#print axioms cover_1544898

def state_1544850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 42)))
theorem cover_1544850 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544850 := by
  apply coveredState_split_literal (state := state_1544850) 0
    state_1544851 state_1544898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544851
  · exact cover_1544898
#print axioms cover_1544850

def state_1545409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 42)))
theorem cover_1545409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545409 := by
  apply coveredState_split_literal (state := state_1545409) 2
    state_1545410 state_1545423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545410
  · exact cover_1545423
#print axioms cover_1545409

def state_1545405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 42)))
theorem cover_1545405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545405 := by
  apply coveredState_split_literal (state := state_1545405) 0
    state_1545406 state_1545409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545406
  · exact cover_1545409
#print axioms cover_1545405

def state_1544849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 42)))
theorem cover_1544849 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544849 := by
  apply coveredState_split_literal (state := state_1544849) 3
    state_1544850 state_1545405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544850
  · exact cover_1545405
#print axioms cover_1544849

def state_1544537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 42)))
theorem cover_1544537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544537 := by
  apply coveredState_split_literal (state := state_1544537) 1
    state_1544538 state_1544849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544538
  · exact cover_1544849
#print axioms cover_1544537

def state_1545600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 102 else (if j.val < 4 then 80 else 86)))
theorem cover_1545600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545600 := by
  apply coveredState_split_literal (state := state_1545600) 0
    state_1545601 state_1545624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545601
  · exact cover_1545624
#print axioms cover_1545600

def state_1545540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 80 else 86)))
theorem cover_1545540 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545540 := by
  apply coveredState_split_literal (state := state_1545540) 1
    state_1545541 state_1545600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545541
  · exact cover_1545600
#print axioms cover_1545540

def state_1545763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 205 else (if j.val < 4 then 81 else 173)))
theorem cover_1545763 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545763 := by
  apply coveredState_split_literal (state := state_1545763) 3
    state_1545764 state_1545817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545764
  · exact cover_1545817
#print axioms cover_1545763

def state_1545733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 205 else (if j.val < 4 then 81 else 86)))
theorem cover_1545733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545733 := by
  apply coveredState_split_literal (state := state_1545733) 4
    state_1545734 state_1545763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545734
  · exact cover_1545763
#print axioms cover_1545733

def state_1545709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 86)))
theorem cover_1545709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545709 := by
  apply coveredState_split_literal (state := state_1545709) 2
    state_1545710 state_1545733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545710
  · exact cover_1545733
#print axioms cover_1545709

def state_1545697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 86)))
theorem cover_1545697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545697 := by
  apply coveredState_split_literal (state := state_1545697) 0
    state_1545698 state_1545709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545698
  · exact cover_1545709
#print axioms cover_1545697

def state_1545677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 86)))
theorem cover_1545677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545677 := by
  apply coveredState_split_literal (state := state_1545677) 1
    state_1545678 state_1545697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545678
  · exact cover_1545697
#print axioms cover_1545677

def state_1545539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 86)))
theorem cover_1545539 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545539 := by
  apply coveredState_split_literal (state := state_1545539) 3
    state_1545540 state_1545677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545540
  · exact cover_1545677
#print axioms cover_1545539

def state_1545835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 80 else 87)))
theorem cover_1545835 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545835 := by
  apply coveredState_split_literal (state := state_1545835) 1
    state_1545836 state_1545845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545836
  · exact cover_1545845
#print axioms cover_1545835

def state_1545834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 87)))
theorem cover_1545834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545834 := by
  apply coveredState_split_literal (state := state_1545834) 3
    state_1545835 state_1545908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545835
  · exact cover_1545908
#print axioms cover_1545834

def state_1545538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 43)))
theorem cover_1545538 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545538 := by
  apply coveredState_split_literal (state := state_1545538) 4
    state_1545539 state_1545834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545539
  · exact cover_1545834
#print axioms cover_1545538

def state_1546106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 206 else (if j.val < 4 then 81 else 172)))
theorem cover_1546106 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546106 := by
  apply coveredState_split_literal (state := state_1546106) 3
    state_1546107 state_1546140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546107
  · exact cover_1546140
#print axioms cover_1546106

def state_1546249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 239) else (if j.val < 3 then 206 else (if j.val < 4 then 163 else 173)))
theorem cover_1546249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546249 := by
  apply coveredState_split_literal (state := state_1546249) 0
    state_1546250 state_1546265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546250
  · exact cover_1546265
#print axioms cover_1546249

def state_1546235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 206 else (if j.val < 4 then 163 else 173)))
theorem cover_1546235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546235 := by
  apply coveredState_split_literal (state := state_1546235) 1
    state_1546236 state_1546249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546236
  · exact cover_1546249
#print axioms cover_1546235

def state_1546183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 206 else (if j.val < 4 then 81 else 173)))
theorem cover_1546183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546183 := by
  apply coveredState_split_literal (state := state_1546183) 3
    state_1546184 state_1546235
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546184
  · exact cover_1546235
#print axioms cover_1546183

def state_1546105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 206 else (if j.val < 4 then 81 else 86)))
theorem cover_1546105 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546105 := by
  apply coveredState_split_literal (state := state_1546105) 4
    state_1546106 state_1546183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546106
  · exact cover_1546183
#print axioms cover_1546105

def state_1546335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 207 else (if j.val < 4 then 163 else 172)))
theorem cover_1546335 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546335 := by
  apply coveredState_split_literal (state := state_1546335) 1
    state_1546336 state_1546387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546336
  · exact cover_1546387
#print axioms cover_1546335

def state_1546317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 207 else (if j.val < 4 then 81 else 172)))
theorem cover_1546317 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546317 := by
  apply coveredState_split_literal (state := state_1546317) 3
    state_1546318 state_1546335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546318
  · exact cover_1546335
#print axioms cover_1546317

def state_1546316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 207 else (if j.val < 4 then 81 else 86)))
theorem cover_1546316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546316 := by
  apply coveredState_split_literal (state := state_1546316) 4
    state_1546317 state_1546402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546317
  · exact cover_1546402
#print axioms cover_1546316

def state_1546104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 86)))
theorem cover_1546104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546104 := by
  apply coveredState_split_literal (state := state_1546104) 2
    state_1546105 state_1546316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546105
  · exact cover_1546316
#print axioms cover_1546104
end Mub6.Numerical.CircleFullD0.Forest
