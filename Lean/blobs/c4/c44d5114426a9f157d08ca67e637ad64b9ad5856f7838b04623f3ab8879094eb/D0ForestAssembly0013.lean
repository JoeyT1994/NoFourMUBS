import D0FullInterface
import D0ForestAssembly0005
import D0ForestAssembly0012
import D0ForestChunk0057
import D0ForestChunk0058
import D0ForestChunk0059
import D0ForestChunk0060
import D0ForestChunk0061
import D0ForestChunk0062
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_950296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 13)))
theorem cover_950296 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950296 := by
  apply coveredState_split_literal (state := state_950296) 1
    state_950297 state_950436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950297
  · exact cover_950436
#print axioms cover_950296

def state_950194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
theorem cover_950194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950194 := by
  apply coveredState_split_literal (state := state_950194) 2
    state_950195 state_950296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950195
  · exact cover_950296
#print axioms cover_950194

def state_942774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
theorem cover_942774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942774 := by
  apply coveredState_split_literal (state := state_942774) 0
    state_942775 state_950194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942775
  · exact cover_950194
#print axioms cover_942774

def state_951162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 13)))
theorem cover_951162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951162 := by
  apply coveredState_split_literal (state := state_951162) 4
    state_951163 state_951222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951163
  · exact cover_951222
#print axioms cover_951162

def state_951144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 13)))
theorem cover_951144 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951144 := by
  apply coveredState_split_literal (state := state_951144) 1
    state_951145 state_951162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951145
  · exact cover_951162
#print axioms cover_951144

def state_951134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 13)))
theorem cover_951134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951134 := by
  apply coveredState_split_literal (state := state_951134) 2
    state_951135 state_951144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951135
  · exact cover_951144
#print axioms cover_951134

def state_951330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 27)))
theorem cover_951330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951330 := by
  apply coveredState_split_literal (state := state_951330) 0
    state_951331 state_951394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951331
  · exact cover_951394
#print axioms cover_951330

def state_951329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 27)))
theorem cover_951329 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951329 := by
  apply coveredState_split_literal (state := state_951329) 3
    state_951330 state_951399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951330
  · exact cover_951399
#print axioms cover_951329

def state_951311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 13)))
theorem cover_951311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951311 := by
  apply coveredState_split_literal (state := state_951311) 4
    state_951312 state_951329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951312
  · exact cover_951329
#print axioms cover_951311

def state_951289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 13)))
theorem cover_951289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951289 := by
  apply coveredState_split_literal (state := state_951289) 1
    state_951290 state_951311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951290
  · exact cover_951311
#print axioms cover_951289

def state_951281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 13)))
theorem cover_951281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951281 := by
  apply coveredState_split_literal (state := state_951281) 2
    state_951282 state_951289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951282
  · exact cover_951289
#print axioms cover_951281

def state_951133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 13)))
theorem cover_951133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951133 := by
  apply coveredState_split_literal (state := state_951133) 0
    state_951134 state_951281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951134
  · exact cover_951281
#print axioms cover_951133

def state_942773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 13)))
theorem cover_942773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942773 := by
  apply coveredState_split_literal (state := state_942773) 3
    state_942774 state_951133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942774
  · exact cover_951133
#print axioms cover_942773

def state_942385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 6)))
theorem cover_942385 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942385 := by
  apply coveredState_split_literal (state := state_942385) 4
    state_942386 state_942773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942386
  · exact cover_942773
#print axioms cover_942385

def state_951465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 12)))
theorem cover_951465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951465 := by
  apply coveredState_split_literal (state := state_951465) 0
    state_951466 state_951503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951466
  · exact cover_951503
#print axioms cover_951465

def state_951405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
theorem cover_951405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951405 := by
  apply coveredState_split_literal (state := state_951405) 3
    state_951406 state_951465
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951406
  · exact cover_951465
#print axioms cover_951405

def state_951666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 53)))
theorem cover_951666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951666 := by
  apply coveredState_split_literal (state := state_951666) 3
    state_951667 state_951684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951667
  · exact cover_951684
#print axioms cover_951666

def state_951660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 53)))
theorem cover_951660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951660 := by
  apply coveredState_split_literal (state := state_951660) 1
    state_951661 state_951666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951661
  · exact cover_951666
#print axioms cover_951660

def state_951608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 26)))
theorem cover_951608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951608 := by
  apply coveredState_split_literal (state := state_951608) 4
    state_951609 state_951660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951609
  · exact cover_951660
#print axioms cover_951608

def state_951607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 26)))
theorem cover_951607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951607 := by
  apply coveredState_split_literal (state := state_951607) 2
    state_951608 state_951733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951608
  · exact cover_951733
#print axioms cover_951607

def state_951573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 26)))
theorem cover_951573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951573 := by
  apply coveredState_split_literal (state := state_951573) 0
    state_951574 state_951607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951574
  · exact cover_951607
#print axioms cover_951573

def state_951547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 26)))
theorem cover_951547 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951547 := by
  apply coveredState_split_literal (state := state_951547) 3
    state_951548 state_951573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951548
  · exact cover_951573
#print axioms cover_951547

def state_951546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 13)))
theorem cover_951546 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951546 := by
  apply coveredState_split_literal (state := state_951546) 4
    state_951547 state_951762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951547
  · exact cover_951762
#print axioms cover_951546

def state_951545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_951545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951545 := by
  apply coveredState_split_literal (state := state_951545) 2
    state_951546 state_951777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951546
  · exact cover_951777
#print axioms cover_951545

def state_951891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 34 else 53)))
theorem cover_951891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951891 := by
  apply coveredState_split_literal (state := state_951891) 0
    state_951892 state_951911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951892
  · exact cover_951911
#print axioms cover_951891

def state_952014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 53)))
theorem cover_952014 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952014 := by
  apply coveredState_split_literal (state := state_952014) 4
    state_952015 state_952036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952015
  · exact cover_952036
#print axioms cover_952014

def state_952144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 85) else (if j.val < 3 then 104 else (if j.val < 4 then 70 else 107)))
theorem cover_952144 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952144 := by
  apply coveredState_split_literal (state := state_952144) 2
    state_952145 state_952202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952145
  · exact cover_952202
#print axioms cover_952144

def state_952096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 104 else (if j.val < 4 then 70 else 107)))
theorem cover_952096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952096 := by
  apply coveredState_split_literal (state := state_952096) 0
    state_952097 state_952144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952097
  · exact cover_952144
#print axioms cover_952096

def state_952095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 107)))
theorem cover_952095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952095 := by
  apply coveredState_split_literal (state := state_952095) 3
    state_952096 state_952217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952096
  · exact cover_952217
#print axioms cover_952095

def state_952087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 53)))
theorem cover_952087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952087 := by
  apply coveredState_split_literal (state := state_952087) 4
    state_952088 state_952095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952088
  · exact cover_952095
#print axioms cover_952087

def state_952013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 53)))
theorem cover_952013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952013 := by
  apply coveredState_split_literal (state := state_952013) 1
    state_952014 state_952087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952014
  · exact cover_952087
#print axioms cover_952013

def state_952270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 53)))
theorem cover_952270 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952270 := by
  apply coveredState_split_literal (state := state_952270) 1
    state_952271 state_952304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952271
  · exact cover_952304
#print axioms cover_952270
end Mub6.Numerical.CircleFullD0.Forest
