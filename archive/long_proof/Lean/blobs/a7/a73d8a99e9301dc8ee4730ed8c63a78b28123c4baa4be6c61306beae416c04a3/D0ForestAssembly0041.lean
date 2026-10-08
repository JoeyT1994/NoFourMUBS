import D0FullInterface
import D0ForestAssembly0040
import D0ForestChunk0163
import D0ForestChunk0164
import D0ForestChunk0165
import D0ForestChunk0166
import D0ForestChunk0167
import D0ForestChunk0168
import D0ForestChunk0169
import D0ForestChunk0170
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_976747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 28)))
theorem cover_976747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976747 := by
  apply coveredState_split_literal (state := state_976747) 3
    state_976748 state_976829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976748
  · exact cover_976829
#print axioms cover_976747

def state_976746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 28)))
theorem cover_976746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976746 := by
  apply coveredState_split_literal (state := state_976746) 1
    state_976747 state_976844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976747
  · exact cover_976844
#print axioms cover_976746

def state_976855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 88) else (if j.val < 3 then 60 else (if j.val < 4 then 42 else 56)))
theorem cover_976855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976855 := by
  apply coveredState_split_literal (state := state_976855) 3
    state_976856 state_976909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976856
  · exact cover_976909
#print axioms cover_976855

def state_976854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 44) else (if j.val < 3 then 60 else (if j.val < 4 then 42 else 56)))
theorem cover_976854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976854 := by
  apply coveredState_split_literal (state := state_976854) 1
    state_976855 state_976938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976855
  · exact cover_976938
#print axioms cover_976854

def state_976853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 60 else (if j.val < 4 then 42 else 56)))
theorem cover_976853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976853 := by
  apply coveredState_split_literal (state := state_976853) 0
    state_976854 state_976953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976854
  · exact cover_976953
#print axioms cover_976853

def state_976979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 44) else (if j.val < 3 then 61 else (if j.val < 4 then 42 else 56)))
theorem cover_976979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976979 := by
  apply coveredState_split_literal (state := state_976979) 1
    state_976980 state_977033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976980
  · exact cover_977033
#print axioms cover_976979

def state_976978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 61 else (if j.val < 4 then 42 else 56)))
theorem cover_976978 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976978 := by
  apply coveredState_split_literal (state := state_976978) 0
    state_976979 state_977044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976979
  · exact cover_977044
#print axioms cover_976978

def state_976852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 56)))
theorem cover_976852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976852 := by
  apply coveredState_split_literal (state := state_976852) 2
    state_976853 state_976978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976853
  · exact cover_976978
#print axioms cover_976852

def state_977113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 61 else (if j.val < 4 then 42 else 57)))
theorem cover_977113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977113 := by
  apply coveredState_split_literal (state := state_977113) 0
    state_977114 state_977159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977114
  · exact cover_977159
#print axioms cover_977113

def state_977057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 57)))
theorem cover_977057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977057 := by
  apply coveredState_split_literal (state := state_977057) 2
    state_977058 state_977113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977058
  · exact cover_977113
#print axioms cover_977057

def state_976851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 28)))
theorem cover_976851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976851 := by
  apply coveredState_split_literal (state := state_976851) 4
    state_976852 state_977057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976852
  · exact cover_977057
#print axioms cover_976851

def state_977269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 44) else (if j.val < 3 then 61 else (if j.val < 4 then 43 else 57)))
theorem cover_977269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977269 := by
  apply coveredState_split_literal (state := state_977269) 1
    state_977270 state_977323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977270
  · exact cover_977323
#print axioms cover_977269

def state_977346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 44) else (if j.val < 3 then 61 else (if j.val < 4 then 43 else 57)))
theorem cover_977346 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977346 := by
  apply coveredState_split_literal (state := state_977346) 1
    state_977347 state_977404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977347
  · exact cover_977404
#print axioms cover_977346

def state_977268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 61 else (if j.val < 4 then 43 else 57)))
theorem cover_977268 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977268 := by
  apply coveredState_split_literal (state := state_977268) 0
    state_977269 state_977346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977269
  · exact cover_977346
#print axioms cover_977268

def state_977266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 30 else (if j.val < 4 then 43 else 57)))
theorem cover_977266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977266 := by
  apply coveredState_split_literal (state := state_977266) 2
    state_977267 state_977268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977267
  · exact cover_977268
#print axioms cover_977266

def state_977218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 30 else (if j.val < 4 then 43 else 28)))
theorem cover_977218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977218 := by
  apply coveredState_split_literal (state := state_977218) 4
    state_977219 state_977266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977219
  · exact cover_977266
#print axioms cover_977218

def state_976850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 28)))
theorem cover_976850 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976850 := by
  apply coveredState_split_literal (state := state_976850) 3
    state_976851 state_977218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976851
  · exact cover_977218
#print axioms cover_976850

def state_976849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 28)))
theorem cover_976849 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976849 := by
  apply coveredState_split_literal (state := state_976849) 1
    state_976850 state_977429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976850
  · exact cover_977429
#print axioms cover_976849

def state_976745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 28)))
theorem cover_976745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976745 := by
  apply coveredState_split_literal (state := state_976745) 0
    state_976746 state_976849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976746
  · exact cover_976849
#print axioms cover_976745

def state_977624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 88) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 57)))
theorem cover_977624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977624 := by
  apply coveredState_split_literal (state := state_977624) 3
    state_977625 state_977688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977625
  · exact cover_977688
#print axioms cover_977624

def state_977623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 44) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 57)))
theorem cover_977623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977623 := by
  apply coveredState_split_literal (state := state_977623) 1
    state_977624 state_977733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977624
  · exact cover_977733
#print axioms cover_977623

def state_977743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 88) else (if j.val < 3 then 124 else (if j.val < 4 then 86 else 114)))
theorem cover_977743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977743 := by
  apply coveredState_split_literal (state := state_977743) 1
    state_977744 state_977797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977744
  · exact cover_977797
#print axioms cover_977743

def state_977742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 124 else (if j.val < 4 then 86 else 114)))
theorem cover_977742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977742 := by
  apply coveredState_split_literal (state := state_977742) 0
    state_977743 state_977832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977743
  · exact cover_977832
#print axioms cover_977742

def state_977846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 88) else (if j.val < 3 then 125 else (if j.val < 4 then 86 else 114)))
theorem cover_977846 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977846 := by
  apply coveredState_split_literal (state := state_977846) 1
    state_977847 state_977908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977847
  · exact cover_977908
#print axioms cover_977846

def state_977845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 125 else (if j.val < 4 then 86 else 114)))
theorem cover_977845 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977845 := by
  apply coveredState_split_literal (state := state_977845) 0
    state_977846 state_977917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977846
  · exact cover_977917
#print axioms cover_977845

def state_977741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 62 else (if j.val < 4 then 86 else 114)))
theorem cover_977741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977741 := by
  apply coveredState_split_literal (state := state_977741) 2
    state_977742 state_977845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977742
  · exact cover_977845
#print axioms cover_977741

def state_977740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 62 else (if j.val < 4 then 86 else 57)))
theorem cover_977740 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977740 := by
  apply coveredState_split_literal (state := state_977740) 4
    state_977741 state_977920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977741
  · exact cover_977920
#print axioms cover_977740

def state_978003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 88) else (if j.val < 3 then 125 else (if j.val < 4 then 87 else 114)))
theorem cover_978003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978003 := by
  apply coveredState_split_literal (state := state_978003) 1
    state_978004 state_978057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978004
  · exact cover_978057
#print axioms cover_978003

def state_978002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 125 else (if j.val < 4 then 87 else 114)))
theorem cover_978002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978002 := by
  apply coveredState_split_literal (state := state_978002) 0
    state_978003 state_978086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978003
  · exact cover_978086
#print axioms cover_978002

def state_977972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 62 else (if j.val < 4 then 87 else 114)))
theorem cover_977972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977972 := by
  apply coveredState_split_literal (state := state_977972) 2
    state_977973 state_978002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977973
  · exact cover_978002
#print axioms cover_977972

def state_978185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 88) else (if j.val < 3 then 125 else (if j.val < 4 then 87 else 115)))
theorem cover_978185 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978185 := by
  apply coveredState_split_literal (state := state_978185) 1
    state_978186 state_978227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978186
  · exact cover_978227
#print axioms cover_978185

def state_978127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 125 else (if j.val < 4 then 87 else 115)))
theorem cover_978127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978127 := by
  apply coveredState_split_literal (state := state_978127) 0
    state_978128 state_978185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978128
  · exact cover_978185
#print axioms cover_978127
end Mub6.Numerical.CircleFullD0.Forest
