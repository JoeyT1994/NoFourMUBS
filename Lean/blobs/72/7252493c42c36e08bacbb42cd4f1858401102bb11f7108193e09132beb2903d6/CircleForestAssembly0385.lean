import CircleFullInterface
import CircleForestAssembly0355
import CircleForestAssembly0358
import CircleForestAssembly0382
import CircleForestAssembly0383
import CircleForestAssembly0384
import CircleForestChunk1491
import CircleForestChunk1493
import CircleForestChunk1499
import CircleForestChunk1500
import CircleForestChunk1501
import CircleForestChunk1502
import CircleForestChunk1503
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1659262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_1659262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659262 := by
  apply coveredState_split_literal (state := state_1659262) 0
    state_1659263 state_1660678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659263
  · exact cover_1660678
#print axioms cover_1659262

def state_1659261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 11)))
theorem cover_1659261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659261 := by
  apply coveredState_split_literal (state := state_1659261) 3
    state_1659262 state_1660701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659262
  · exact cover_1660701
#print axioms cover_1659261

def state_1660783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 23)))
theorem cover_1660783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660783 := by
  apply coveredState_split_literal (state := state_1660783) 1
    state_1660784 state_1660815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660784
  · exact cover_1660815
#print axioms cover_1660783

def state_1660782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 28 else 23)))
theorem cover_1660782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660782 := by
  apply coveredState_split_literal (state := state_1660782) 2
    state_1660783 state_1660850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660783
  · exact cover_1660850
#print axioms cover_1660782

def state_1660781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 23)))
theorem cover_1660781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660781 := by
  apply coveredState_split_literal (state := state_1660781) 3
    state_1660782 state_1660861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660782
  · exact cover_1660861
#print axioms cover_1660781

def state_1660727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
theorem cover_1660727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660727 := by
  apply coveredState_split_literal (state := state_1660727) 4
    state_1660728 state_1660781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660728
  · exact cover_1660781
#print axioms cover_1660727

def state_1660922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 23)))
theorem cover_1660922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660922 := by
  apply coveredState_split_literal (state := state_1660922) 3
    state_1660923 state_1660974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660923
  · exact cover_1660974
#print axioms cover_1660922

def state_1660888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
theorem cover_1660888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660888 := by
  apply coveredState_split_literal (state := state_1660888) 4
    state_1660889 state_1660922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660889
  · exact cover_1660922
#print axioms cover_1660888

def state_1660726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
theorem cover_1660726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660726 := by
  apply coveredState_split_literal (state := state_1660726) 1
    state_1660727 state_1660888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660727
  · exact cover_1660888
#print axioms cover_1660726

def state_1660725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
theorem cover_1660725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660725 := by
  apply coveredState_split_literal (state := state_1660725) 0
    state_1660726 state_1660993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660726
  · exact cover_1660993
#print axioms cover_1660725

def state_1660724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 11)))
theorem cover_1660724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660724 := by
  apply coveredState_split_literal (state := state_1660724) 3
    state_1660725 state_1661034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1660725
  · exact cover_1661034
#print axioms cover_1660724

def state_1659260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_1659260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659260 := by
  apply coveredState_split_literal (state := state_1659260) 2
    state_1659261 state_1660724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659261
  · exact cover_1660724
#print axioms cover_1659260

def state_1659234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1659234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659234 := by
  apply coveredState_split_literal (state := state_1659234) 4
    state_1659235 state_1659260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659235
  · exact cover_1659260
#print axioms cover_1659234

def state_1661037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1661037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661037 := by
  apply coveredState_split_literal (state := state_1661037) 4
    state_1661038 state_1661055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661038
  · exact cover_1661055
#print axioms cover_1661037

def state_1659233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1659233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659233 := by
  apply coveredState_split_literal (state := state_1659233) 1
    state_1659234 state_1661037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659234
  · exact cover_1661037
#print axioms cover_1659233

def state_1658613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1658613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658613 := by
  apply coveredState_split_literal (state := state_1658613) 0
    state_1658614 state_1659233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658614
  · exact cover_1659233
#print axioms cover_1658613

def state_1658605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_1658605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658605 := by
  apply coveredState_split_literal (state := state_1658605) 4
    state_1658606 state_1658613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658606
  · exact cover_1658613
#print axioms cover_1658605

def state_1635041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_1635041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635041 := by
  apply coveredState_split_literal (state := state_1635041) 3
    state_1635042 state_1658605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635042
  · exact cover_1658605
#print axioms cover_1635041

def state_1631109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1631109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631109 := by
  apply coveredState_split_literal (state := state_1631109) 2
    state_1631110 state_1635041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631110
  · exact cover_1635041
#print axioms cover_1631109

def state_1661178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1661178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661178 := by
  apply coveredState_split_literal (state := state_1661178) 4
    state_1661179 state_1661210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661179
  · exact cover_1661210
#print axioms cover_1661178

def state_1661177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1661177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661177 := by
  apply coveredState_split_literal (state := state_1661177) 1
    state_1661178 state_1661243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661178
  · exact cover_1661243
#print axioms cover_1661177

def state_1661176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
theorem cover_1661176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661176 := by
  apply coveredState_split_literal (state := state_1661176) 3
    state_1661177 state_1661250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661177
  · exact cover_1661250
#print axioms cover_1661176

def state_1661120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1661120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661120 := by
  apply coveredState_split_literal (state := state_1661120) 2
    state_1661121 state_1661176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661121
  · exact cover_1661176
#print axioms cover_1661120

def state_1661119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1661119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661119 := by
  apply coveredState_split_literal (state := state_1661119) 0
    state_1661120 state_1661269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661120
  · exact cover_1661269
#print axioms cover_1661119

def state_1661118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_1661118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661118 := by
  apply coveredState_split_literal (state := state_1661118) 4
    state_1661119 state_1661308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661119
  · exact cover_1661308
#print axioms cover_1661118

def state_1661117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1661117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661117 := by
  apply coveredState_split_literal (state := state_1661117) 3
    state_1661118 state_1661333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661118
  · exact cover_1661333
#print axioms cover_1661117

def state_1661347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_1661347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661347 := by
  apply coveredState_split_literal (state := state_1661347) 4
    state_1661348 state_1661409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661348
  · exact cover_1661409
#print axioms cover_1661347

def state_1661346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_1661346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661346 := by
  apply coveredState_split_literal (state := state_1661346) 3
    state_1661347 state_1661442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661347
  · exact cover_1661442
#print axioms cover_1661346

def state_1661116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1661116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661116 := by
  apply coveredState_split_literal (state := state_1661116) 2
    state_1661117 state_1661346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661117
  · exact cover_1661346
#print axioms cover_1661116

def state_1631108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1631108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631108 := by
  apply coveredState_split_literal (state := state_1631108) 1
    state_1631109 state_1661116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631109
  · exact cover_1661116
#print axioms cover_1631108

def state_1620084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1620084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620084 := by
  apply coveredState_split_literal (state := state_1620084) 0
    state_1620085 state_1631108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620085
  · exact cover_1631108
#print axioms cover_1620084

def state_1661456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1661456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661456 := by
  apply coveredState_split_literal (state := state_1661456) 1
    state_1661457 state_1661516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661457
  · exact cover_1661516
#print axioms cover_1661456
end Mub6.Numerical.CircleFullD0.Forest
