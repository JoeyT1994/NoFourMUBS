import CircleFullInterface
import CircleForestAssembly0017
import CircleForestAssembly0018
import CircleForestChunk0075
import CircleForestChunk0076
import CircleForestChunk0077
import CircleForestChunk0078
import CircleForestChunk0079
import CircleForestChunk0080
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_16477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_16477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16477 := by
  apply coveredState_split_literal (state := state_16477) 3
    state_16478 state_16965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16478
  · exact cover_16965
#print axioms cover_16477

def state_16273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_16273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16273 := by
  apply coveredState_split_literal (state := state_16273) 2
    state_16274 state_16477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16274
  · exact cover_16477
#print axioms cover_16273

def state_15945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_15945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15945 := by
  apply coveredState_split_literal (state := state_15945) 1
    state_15946 state_16273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15946
  · exact cover_16273
#print axioms cover_15945

def state_17984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
theorem cover_17984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17984 := by
  apply coveredState_split_literal (state := state_17984) 1
    state_17985 state_18026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17985
  · exact cover_18026
#print axioms cover_17984

def state_17983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_17983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17983 := by
  apply coveredState_split_literal (state := state_17983) 4
    state_17984 state_18055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17984
  · exact cover_18055
#print axioms cover_17983

def state_17943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_17943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17943 := by
  apply coveredState_split_literal (state := state_17943) 3
    state_17944 state_17983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17944
  · exact cover_17983
#print axioms cover_17943

def state_17907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_17907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17907 := by
  apply coveredState_split_literal (state := state_17907) 2
    state_17908 state_17943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17908
  · exact cover_17943
#print axioms cover_17907

def state_18102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
theorem cover_18102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18102 := by
  apply coveredState_split_literal (state := state_18102) 2
    state_18103 state_18144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18103
  · exact cover_18144
#print axioms cover_18102

def state_18078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_18078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18078 := by
  apply coveredState_split_literal (state := state_18078) 4
    state_18079 state_18102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18079
  · exact cover_18102
#print axioms cover_18078

def state_18077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_18077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18077 := by
  apply coveredState_split_literal (state := state_18077) 3
    state_18078 state_18173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18078
  · exact cover_18173
#print axioms cover_18077

def state_18212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_18212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18212 := by
  apply coveredState_split_literal (state := state_18212) 2
    state_18213 state_18276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18213
  · exact cover_18276
#print axioms cover_18212

def state_18211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_18211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18211 := by
  apply coveredState_split_literal (state := state_18211) 1
    state_18212 state_18295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18212
  · exact cover_18295
#print axioms cover_18211

def state_18210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_18210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18210 := by
  apply coveredState_split_literal (state := state_18210) 0
    state_18211 state_18316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18211
  · exact cover_18316
#print axioms cover_18210

def state_18326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 10)))
theorem cover_18326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18326 := by
  apply coveredState_split_literal (state := state_18326) 2
    state_18327 state_18374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18327
  · exact cover_18374
#print axioms cover_18326

def state_18404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 10)))
theorem cover_18404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18404 := by
  apply coveredState_split_literal (state := state_18404) 4
    state_18405 state_18462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18405
  · exact cover_18462
#print axioms cover_18404

def state_18400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 10)))
theorem cover_18400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18400 := by
  apply coveredState_split_literal (state := state_18400) 3
    state_18401 state_18404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18401
  · exact cover_18404
#print axioms cover_18400

def state_18399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 10)))
theorem cover_18399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18399 := by
  apply coveredState_split_literal (state := state_18399) 2
    state_18400 state_18495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18400
  · exact cover_18495
#print axioms cover_18399

def state_18325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 10)))
theorem cover_18325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18325 := by
  apply coveredState_split_literal (state := state_18325) 1
    state_18326 state_18399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18326
  · exact cover_18399
#print axioms cover_18325

def state_18324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 10)))
theorem cover_18324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18324 := by
  apply coveredState_split_literal (state := state_18324) 0
    state_18325 state_18542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18325
  · exact cover_18542
#print axioms cover_18324

def state_18323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_18323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18323 := by
  apply coveredState_split_literal (state := state_18323) 4
    state_18324 state_18559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18324
  · exact cover_18559
#print axioms cover_18323

def state_18209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
theorem cover_18209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18209 := by
  apply coveredState_split_literal (state := state_18209) 4
    state_18210 state_18323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18210
  · exact cover_18323
#print axioms cover_18209

def state_18654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 9)))
theorem cover_18654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18654 := by
  apply coveredState_split_literal (state := state_18654) 3
    state_18655 state_18712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18655
  · exact cover_18712
#print axioms cover_18654

def state_18650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 4)))
theorem cover_18650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18650 := by
  apply coveredState_split_literal (state := state_18650) 4
    state_18651 state_18654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18651
  · exact cover_18654
#print axioms cover_18650

def state_18596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 4)))
theorem cover_18596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18596 := by
  apply coveredState_split_literal (state := state_18596) 2
    state_18597 state_18650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18597
  · exact cover_18650
#print axioms cover_18596

def state_18745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 4)))
theorem cover_18745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18745 := by
  apply coveredState_split_literal (state := state_18745) 2
    state_18746 state_18771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18746
  · exact cover_18771
#print axioms cover_18745

def state_18595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 4)))
theorem cover_18595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18595 := by
  apply coveredState_split_literal (state := state_18595) 1
    state_18596 state_18745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18596
  · exact cover_18745
#print axioms cover_18595

def state_18594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 4)))
theorem cover_18594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18594 := by
  apply coveredState_split_literal (state := state_18594) 0
    state_18595 state_18818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18595
  · exact cover_18818
#print axioms cover_18594

def state_18593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
theorem cover_18593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18593 := by
  apply coveredState_split_literal (state := state_18593) 3
    state_18594 state_18835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18594
  · exact cover_18835
#print axioms cover_18593

def state_18922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 58) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
theorem cover_18922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18922 := by
  apply coveredState_split_literal (state := state_18922) 2
    state_18923 state_18952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18923
  · exact cover_18952
#print axioms cover_18922

def state_19029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 59 else (if j.val < 4 then 40 else 40)))
theorem cover_19029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19029 := by
  apply coveredState_split_literal (state := state_19029) 0
    state_19030 state_19067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19030
  · exact cover_19067
#print axioms cover_19029

def state_19028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 59 else (if j.val < 4 then 40 else 20)))
theorem cover_19028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19028 := by
  apply coveredState_split_literal (state := state_19028) 4
    state_19029 state_19104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19029
  · exact cover_19104
#print axioms cover_19028

def state_19209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 113 else 59) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 41)))
theorem cover_19209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19209 := by
  apply coveredState_split_literal (state := state_19209) 1
    state_19210 state_19225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19210
  · exact cover_19225
#print axioms cover_19209
end Mub6.Numerical.CircleFullPrototype.Forest
