import D0FullInterface
import D0ForestAssembly0105
import D0ForestAssembly0106
import D0ForestChunk0430
import D0ForestChunk0431
import D0ForestChunk0432
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1040384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 7)))
theorem cover_1040384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040384 := by
  apply coveredState_split_literal (state := state_1040384) 4
    state_1040385 state_1040692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040385
  · exact cover_1040692
#print axioms cover_1040384

def state_1040234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_1040234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040234 := by
  apply coveredState_split_literal (state := state_1040234) 2
    state_1040235 state_1040384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040235
  · exact cover_1040384
#print axioms cover_1040234

def state_1040725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 57)))
theorem cover_1040725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040725 := by
  apply coveredState_split_literal (state := state_1040725) 2
    state_1040726 state_1040735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040726
  · exact cover_1040735
#print axioms cover_1040725

def state_1040723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 28)))
theorem cover_1040723 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040723 := by
  apply coveredState_split_literal (state := state_1040723) 4
    state_1040724 state_1040725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040724
  · exact cover_1040725
#print axioms cover_1040723

def state_1040722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 28)))
theorem cover_1040722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040722 := by
  apply coveredState_split_literal (state := state_1040722) 3
    state_1040723 state_1040790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040723
  · exact cover_1040790
#print axioms cover_1040722

def state_1040721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 28)))
theorem cover_1040721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040721 := by
  apply coveredState_split_literal (state := state_1040721) 1
    state_1040722 state_1040793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040722
  · exact cover_1040793
#print axioms cover_1040721

def state_1040720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 28)))
theorem cover_1040720 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040720 := by
  apply coveredState_split_literal (state := state_1040720) 0
    state_1040721 state_1040798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040721
  · exact cover_1040798
#print axioms cover_1040720

def state_1040718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 28)))
theorem cover_1040718 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040718 := by
  apply coveredState_split_literal (state := state_1040718) 2
    state_1040719 state_1040720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040719
  · exact cover_1040720
#print axioms cover_1040718

def state_1040802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 29)))
theorem cover_1040802 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040802 := by
  apply coveredState_split_literal (state := state_1040802) 1
    state_1040803 state_1040852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040803
  · exact cover_1040852
#print axioms cover_1040802

def state_1040801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 29)))
theorem cover_1040801 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040801 := by
  apply coveredState_split_literal (state := state_1040801) 0
    state_1040802 state_1040867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040802
  · exact cover_1040867
#print axioms cover_1040801

def state_1040799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 29)))
theorem cover_1040799 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040799 := by
  apply coveredState_split_literal (state := state_1040799) 2
    state_1040800 state_1040801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040800
  · exact cover_1040801
#print axioms cover_1040799

def state_1040717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 14)))
theorem cover_1040717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040717 := by
  apply coveredState_split_literal (state := state_1040717) 4
    state_1040718 state_1040799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040718
  · exact cover_1040799
#print axioms cover_1040717

def state_1040716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 14)))
theorem cover_1040716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040716 := by
  apply coveredState_split_literal (state := state_1040716) 3
    state_1040717 state_1040880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040717
  · exact cover_1040880
#print axioms cover_1040716

def state_1040715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 14)))
theorem cover_1040715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040715 := by
  apply coveredState_split_literal (state := state_1040715) 1
    state_1040716 state_1040891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040716
  · exact cover_1040891
#print axioms cover_1040715

def state_1040714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 14)))
theorem cover_1040714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040714 := by
  apply coveredState_split_literal (state := state_1040714) 0
    state_1040715 state_1040906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040715
  · exact cover_1040906
#print axioms cover_1040714

def state_1040713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 7)))
theorem cover_1040713 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040713 := by
  apply coveredState_split_literal (state := state_1040713) 4
    state_1040714 state_1040913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040714
  · exact cover_1040913
#print axioms cover_1040713

def state_1040699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 7)))
theorem cover_1040699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040699 := by
  apply coveredState_split_literal (state := state_1040699) 2
    state_1040700 state_1040713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040700
  · exact cover_1040713
#print axioms cover_1040699

def state_1040233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_1040233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040233 := by
  apply coveredState_split_literal (state := state_1040233) 3
    state_1040234 state_1040699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040234
  · exact cover_1040699
#print axioms cover_1040233

def state_1040037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_1040037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040037 := by
  apply coveredState_split_literal (state := state_1040037) 1
    state_1040038 state_1040233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040038
  · exact cover_1040233
#print axioms cover_1040037

def state_1040036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_1040036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040036 := by
  apply coveredState_split_literal (state := state_1040036) 0
    state_1040037 state_1040920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040037
  · exact cover_1040920
#print axioms cover_1040036

def state_1039950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_1039950 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039950 := by
  apply coveredState_split_literal (state := state_1039950) 4
    state_1039951 state_1040036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039951
  · exact cover_1040036
#print axioms cover_1039950

def state_1039860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_1039860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039860 := by
  apply coveredState_split_literal (state := state_1039860) 3
    state_1039861 state_1039950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039861
  · exact cover_1039950
#print axioms cover_1039860

def state_1039364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1039364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039364 := by
  apply coveredState_split_literal (state := state_1039364) 2
    state_1039365 state_1039860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039365
  · exact cover_1039860
#print axioms cover_1039364

def state_1039248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1039248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039248 := by
  apply coveredState_split_literal (state := state_1039248) 1
    state_1039249 state_1039364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039249
  · exact cover_1039364
#print axioms cover_1039248

def state_1039247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1039247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039247 := by
  apply coveredState_split_literal (state := state_1039247) 0
    state_1039248 state_1040937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039248
  · exact cover_1040937
#print axioms cover_1039247

def state_1039139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1039139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039139 := by
  apply coveredState_split_literal (state := state_1039139) 4
    state_1039140 state_1039247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039140
  · exact cover_1039247
#print axioms cover_1039139

def state_1041073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 32) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 32)))
theorem cover_1041073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041073 := by
  apply coveredState_split_literal (state := state_1041073) 0
    state_1041074 state_1041093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041074
  · exact cover_1041093
#print axioms cover_1041073

def state_1041072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 32) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 16)))
theorem cover_1041072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041072 := by
  apply coveredState_split_literal (state := state_1041072) 4
    state_1041073 state_1041156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041073
  · exact cover_1041156
#print axioms cover_1041072

def state_1041071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 16)))
theorem cover_1041071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041071 := by
  apply coveredState_split_literal (state := state_1041071) 1
    state_1041072 state_1041173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041072
  · exact cover_1041173
#print axioms cover_1041071

def state_1041061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 51 else (if j.val < 4 then 25 else 16)))
theorem cover_1041061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041061 := by
  apply coveredState_split_literal (state := state_1041061) 3
    state_1041062 state_1041071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041062
  · exact cover_1041071
#print axioms cover_1041061

def state_1041049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 16)))
theorem cover_1041049 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041049 := by
  apply coveredState_split_literal (state := state_1041049) 2
    state_1041050 state_1041061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041050
  · exact cover_1041061
#print axioms cover_1041049

def state_1041027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 16)))
theorem cover_1041027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041027 := by
  apply coveredState_split_literal (state := state_1041027) 0
    state_1041028 state_1041049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041028
  · exact cover_1041049
#print axioms cover_1041027
end Mub6.Numerical.CircleFullD0.Forest
