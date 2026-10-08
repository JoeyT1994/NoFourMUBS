import D0FullInterface
import D0ForestAssembly0546
import D0ForestChunk2157
import D0ForestChunk2158
import D0ForestChunk2159
import D0ForestChunk2160
import D0ForestChunk2161
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2598417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
theorem cover_2598417 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598417 := by
  apply coveredState_split_literal (state := state_2598417) 3
    state_2598418 state_2598451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598418
  · exact cover_2598451
#print axioms cover_2598417

def state_2598407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2598407 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598407 := by
  apply coveredState_split_literal (state := state_2598407) 2
    state_2598408 state_2598417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598408
  · exact cover_2598417
#print axioms cover_2598407

def state_2598406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2598406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598406 := by
  apply coveredState_split_literal (state := state_2598406) 1
    state_2598407 state_2598486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598407
  · exact cover_2598486
#print axioms cover_2598406

def state_2598405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_2598405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598405 := by
  apply coveredState_split_literal (state := state_2598405) 4
    state_2598406 state_2598529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598406
  · exact cover_2598529
#print axioms cover_2598405

def state_2598404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2598404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598404 := by
  apply coveredState_split_literal (state := state_2598404) 3
    state_2598405 state_2598536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598405
  · exact cover_2598536
#print axioms cover_2598404

def state_2598396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2598396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598396 := by
  apply coveredState_split_literal (state := state_2598396) 2
    state_2598397 state_2598404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598397
  · exact cover_2598404
#print axioms cover_2598396

def state_2598395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2598395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598395 := by
  apply coveredState_split_literal (state := state_2598395) 1
    state_2598396 state_2598547
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598396
  · exact cover_2598547
#print axioms cover_2598395

def state_2598317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2598317 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598317 := by
  apply coveredState_split_literal (state := state_2598317) 0
    state_2598318 state_2598395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598318
  · exact cover_2598395
#print axioms cover_2598317

def state_2598626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_2598626 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598626 := by
  apply coveredState_split_literal (state := state_2598626) 4
    state_2598627 state_2598644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598627
  · exact cover_2598644
#print axioms cover_2598626

def state_2598625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_2598625 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598625 := by
  apply coveredState_split_literal (state := state_2598625) 3
    state_2598626 state_2598699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598626
  · exact cover_2598699
#print axioms cover_2598625

def state_2598619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2598619 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598619 := by
  apply coveredState_split_literal (state := state_2598619) 2
    state_2598620 state_2598625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598620
  · exact cover_2598625
#print axioms cover_2598619

def state_2598571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2598571 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598571 := by
  apply coveredState_split_literal (state := state_2598571) 1
    state_2598572 state_2598619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598572
  · exact cover_2598619
#print axioms cover_2598571

def state_2598570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2598570 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598570 := by
  apply coveredState_split_literal (state := state_2598570) 0
    state_2598571 state_2598702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598571
  · exact cover_2598702
#print axioms cover_2598570

def state_2598316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_2598316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598316 := by
  apply coveredState_split_literal (state := state_2598316) 4
    state_2598317 state_2598570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598317
  · exact cover_2598570
#print axioms cover_2598316

def state_2597848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2597848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597848 := by
  apply coveredState_split_literal (state := state_2597848) 3
    state_2597849 state_2598316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597849
  · exact cover_2598316
#print axioms cover_2597848

def state_2598828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_2598828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598828 := by
  apply coveredState_split_literal (state := state_2598828) 4
    state_2598829 state_2598846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598829
  · exact cover_2598846
#print axioms cover_2598828

def state_2598826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_2598826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598826 := by
  apply coveredState_split_literal (state := state_2598826) 3
    state_2598827 state_2598828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598827
  · exact cover_2598828
#print axioms cover_2598826

def state_2598825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2598825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598825 := by
  apply coveredState_split_literal (state := state_2598825) 2
    state_2598826 state_2598901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598826
  · exact cover_2598901
#print axioms cover_2598825

def state_2598785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2598785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598785 := by
  apply coveredState_split_literal (state := state_2598785) 1
    state_2598786 state_2598825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598786
  · exact cover_2598825
#print axioms cover_2598785

def state_2598784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2598784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598784 := by
  apply coveredState_split_literal (state := state_2598784) 0
    state_2598785 state_2598902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598785
  · exact cover_2598902
#print axioms cover_2598784

def state_2598720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_2598720 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598720 := by
  apply coveredState_split_literal (state := state_2598720) 4
    state_2598721 state_2598784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598721
  · exact cover_2598784
#print axioms cover_2598720

def state_2598917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_2598917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598917 := by
  apply coveredState_split_literal (state := state_2598917) 3
    state_2598918 state_2598973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598918
  · exact cover_2598973
#print axioms cover_2598917

def state_2599018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_2599018 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599018 := by
  apply coveredState_split_literal (state := state_2599018) 3
    state_2599019 state_2599062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599019
  · exact cover_2599062
#print axioms cover_2599018

def state_2598916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2598916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598916 := by
  apply coveredState_split_literal (state := state_2598916) 2
    state_2598917 state_2599018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598917
  · exact cover_2599018
#print axioms cover_2598916

def state_2598915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2598915 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598915 := by
  apply coveredState_split_literal (state := state_2598915) 1
    state_2598916 state_2599117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598916
  · exact cover_2599117
#print axioms cover_2598915

def state_2599169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_2599169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599169 := by
  apply coveredState_split_literal (state := state_2599169) 2
    state_2599170 state_2599227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599170
  · exact cover_2599227
#print axioms cover_2599169

def state_2599168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_2599168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599168 := by
  apply coveredState_split_literal (state := state_2599168) 1
    state_2599169 state_2599240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599169
  · exact cover_2599240
#print axioms cover_2599168

def state_2599167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_2599167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599167 := by
  apply coveredState_split_literal (state := state_2599167) 4
    state_2599168 state_2599263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599168
  · exact cover_2599263
#print axioms cover_2599167

def state_2599166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_2599166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599166 := by
  apply coveredState_split_literal (state := state_2599166) 3
    state_2599167 state_2599304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599167
  · exact cover_2599304
#print axioms cover_2599166

def state_2599165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2599165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599165 := by
  apply coveredState_split_literal (state := state_2599165) 2
    state_2599166 state_2599345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599166
  · exact cover_2599345
#print axioms cover_2599165

def state_2599164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2599164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599164 := by
  apply coveredState_split_literal (state := state_2599164) 1
    state_2599165 state_2599368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599165
  · exact cover_2599368
#print axioms cover_2599164

def state_2598914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2598914 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598914 := by
  apply coveredState_split_literal (state := state_2598914) 0
    state_2598915 state_2599164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598915
  · exact cover_2599164
#print axioms cover_2598914
end Mub6.Numerical.CircleFullD0.Forest
