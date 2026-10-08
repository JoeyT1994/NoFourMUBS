import D0FullInterface
import D0ForestAssembly0054
import D0ForestAssembly0055
import D0ForestChunk0226
import D0ForestChunk0227
import D0ForestChunk0228
import D0ForestChunk0229
import D0ForestChunk0230
import D0ForestChunk0231
import D0ForestChunk0232
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_991930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 44)))
theorem cover_991930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991930 := by
  apply coveredState_split_literal (state := state_991930) 2
    state_991931 state_991966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991931
  · exact cover_991966
#print axioms cover_991930

def state_991860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 44)))
theorem cover_991860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991860 := by
  apply coveredState_split_literal (state := state_991860) 1
    state_991861 state_991930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991861
  · exact cover_991930
#print axioms cover_991860

def state_992168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 45)))
theorem cover_992168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992168 := by
  apply coveredState_split_literal (state := state_992168) 4
    state_992169 state_992228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992169
  · exact cover_992228
#print axioms cover_992168

def state_992167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 45)))
theorem cover_992167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992167 := by
  apply coveredState_split_literal (state := state_992167) 0
    state_992168 state_992241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992168
  · exact cover_992241
#print axioms cover_992167

def state_992159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 45)))
theorem cover_992159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992159 := by
  apply coveredState_split_literal (state := state_992159) 2
    state_992160 state_992167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992160
  · exact cover_992167
#print axioms cover_992159

def state_992155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 45)))
theorem cover_992155 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992155 := by
  apply coveredState_split_literal (state := state_992155) 1
    state_992156 state_992159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992156
  · exact cover_992159
#print axioms cover_992155

def state_991859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 22)))
theorem cover_991859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991859 := by
  apply coveredState_split_literal (state := state_991859) 4
    state_991860 state_992155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991860
  · exact cover_992155
#print axioms cover_991859

def state_991789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 22)))
theorem cover_991789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991789 := by
  apply coveredState_split_literal (state := state_991789) 3
    state_991790 state_991859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991790
  · exact cover_991859
#print axioms cover_991789

def state_991788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 22)))
theorem cover_991788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991788 := by
  apply coveredState_split_literal (state := state_991788) 0
    state_991789 state_992250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991789
  · exact cover_992250
#print axioms cover_991788

def state_991760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
theorem cover_991760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991760 := by
  apply coveredState_split_literal (state := state_991760) 2
    state_991761 state_991788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991761
  · exact cover_991788
#print axioms cover_991760

def state_991746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
theorem cover_991746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991746 := by
  apply coveredState_split_literal (state := state_991746) 1
    state_991747 state_991760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991747
  · exact cover_991760
#print axioms cover_991746

def state_991745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 11)))
theorem cover_991745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991745 := by
  apply coveredState_split_literal (state := state_991745) 4
    state_991746 state_992273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991746
  · exact cover_992273
#print axioms cover_991745

def state_991711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_991711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991711 := by
  apply coveredState_split_literal (state := state_991711) 3
    state_991712 state_991745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991712
  · exact cover_991745
#print axioms cover_991711

def state_990679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_990679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990679 := by
  apply coveredState_split_literal (state := state_990679) 0
    state_990680 state_991711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990680
  · exact cover_991711
#print axioms cover_990679

def state_992301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
theorem cover_992301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992301 := by
  apply coveredState_split_literal (state := state_992301) 3
    state_992302 state_992303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992302
  · exact cover_992303
#print axioms cover_992301

def state_992371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 22)))
theorem cover_992371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992371 := by
  apply coveredState_split_literal (state := state_992371) 2
    state_992372 state_992435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992372
  · exact cover_992435
#print axioms cover_992371

def state_992369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 22)))
theorem cover_992369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992369 := by
  apply coveredState_split_literal (state := state_992369) 1
    state_992370 state_992371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992370
  · exact cover_992371
#print axioms cover_992369

def state_992368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 11)))
theorem cover_992368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992368 := by
  apply coveredState_split_literal (state := state_992368) 4
    state_992369 state_992436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992369
  · exact cover_992436
#print axioms cover_992368

def state_992366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
theorem cover_992366 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992366 := by
  apply coveredState_split_literal (state := state_992366) 3
    state_992367 state_992368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992367
  · exact cover_992368
#print axioms cover_992366

def state_992300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
theorem cover_992300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992300 := by
  apply coveredState_split_literal (state := state_992300) 0
    state_992301 state_992366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992301
  · exact cover_992366
#print axioms cover_992300

def state_990678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_990678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990678 := by
  apply coveredState_split_literal (state := state_990678) 2
    state_990679 state_992300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990679
  · exact cover_992300
#print axioms cover_990678

def state_982030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_982030 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982030 := by
  apply coveredState_split_literal (state := state_982030) 4
    state_982031 state_990678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982031
  · exact cover_990678
#print axioms cover_982030

def state_992572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 41)))
theorem cover_992572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992572 := by
  apply coveredState_split_literal (state := state_992572) 2
    state_992573 state_992590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992573
  · exact cover_992590
#print axioms cover_992572

def state_992566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 20)))
theorem cover_992566 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992566 := by
  apply coveredState_split_literal (state := state_992566) 4
    state_992567 state_992572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992567
  · exact cover_992572
#print axioms cover_992566

def state_992565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 20)))
theorem cover_992565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992565 := by
  apply coveredState_split_literal (state := state_992565) 3
    state_992566 state_992639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992566
  · exact cover_992639
#print axioms cover_992565

def state_992501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 20)))
theorem cover_992501 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992501 := by
  apply coveredState_split_literal (state := state_992501) 1
    state_992502 state_992565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992502
  · exact cover_992565
#print axioms cover_992501

def state_992467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 20)))
theorem cover_992467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992467 := by
  apply coveredState_split_literal (state := state_992467) 0
    state_992468 state_992501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992468
  · exact cover_992501
#print axioms cover_992467

def state_992443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 20)))
theorem cover_992443 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992443 := by
  apply coveredState_split_literal (state := state_992443) 2
    state_992444 state_992467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992444
  · exact cover_992467
#print axioms cover_992443

def state_992763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 52 else 42)))
theorem cover_992763 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992763 := by
  apply coveredState_split_literal (state := state_992763) 0
    state_992764 state_992783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992764
  · exact cover_992783
#print axioms cover_992763

def state_993012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 107) else (if j.val < 3 then 70 else (if j.val < 4 then 104 else 85)))
theorem cover_993012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993012 := by
  apply coveredState_split_literal (state := state_993012) 3
    state_993013 state_993070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993013
  · exact cover_993070
#print axioms cover_993012

def state_992964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 70 else (if j.val < 4 then 104 else 85)))
theorem cover_992964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992964 := by
  apply coveredState_split_literal (state := state_992964) 0
    state_992965 state_993012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992965
  · exact cover_993012
#print axioms cover_992964

def state_992963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 85)))
theorem cover_992963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992963 := by
  apply coveredState_split_literal (state := state_992963) 2
    state_992964 state_993085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992964
  · exact cover_993085
#print axioms cover_992963
end Mub6.Numerical.CircleFullD0.Forest
