import CircleFullInterface
import CircleForestAssembly0139
import CircleForestChunk0549
import CircleForestChunk0550
import CircleForestChunk0551
import CircleForestChunk0552
import CircleForestChunk0553
import CircleForestChunk0554
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_292463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_292463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292463 := by
  apply coveredState_split_literal (state := state_292463) 4
    state_292464 state_292859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292464
  · exact cover_292859
#print axioms cover_292463

def state_292303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_292303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292303 := by
  apply coveredState_split_literal (state := state_292303) 3
    state_292304 state_292463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292304
  · exact cover_292463
#print axioms cover_292303

def state_293460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_293460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293460 := by
  apply coveredState_split_literal (state := state_293460) 1
    state_293461 state_293500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293461
  · exact cover_293500
#print axioms cover_293460

def state_293434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_293434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293434 := by
  apply coveredState_split_literal (state := state_293434) 0
    state_293435 state_293460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293435
  · exact cover_293460
#print axioms cover_293434

def state_293533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_293533 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293533 := by
  apply coveredState_split_literal (state := state_293533) 2
    state_293534 state_293575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293534
  · exact cover_293575
#print axioms cover_293533

def state_293532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_293532 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293532 := by
  apply coveredState_split_literal (state := state_293532) 1
    state_293533 state_293600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293533
  · exact cover_293600
#print axioms cover_293532

def state_293702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
theorem cover_293702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293702 := by
  apply coveredState_split_literal (state := state_293702) 0
    state_293703 state_293718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293703
  · exact cover_293718
#print axioms cover_293702

def state_293701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 6)))
theorem cover_293701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293701 := by
  apply coveredState_split_literal (state := state_293701) 4
    state_293702 state_293771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293702
  · exact cover_293771
#print axioms cover_293701

def state_293810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 6)))
theorem cover_293810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293810 := by
  apply coveredState_split_literal (state := state_293810) 4
    state_293811 state_293850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293811
  · exact cover_293850
#print axioms cover_293810

def state_293700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_293700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293700 := by
  apply coveredState_split_literal (state := state_293700) 2
    state_293701 state_293810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293701
  · exact cover_293810
#print axioms cover_293700

def state_293699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_293699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293699 := by
  apply coveredState_split_literal (state := state_293699) 4
    state_293700 state_293911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293700
  · exact cover_293911
#print axioms cover_293699

def state_293698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_293698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293698 := by
  apply coveredState_split_literal (state := state_293698) 3
    state_293699 state_293918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293699
  · exact cover_293918
#print axioms cover_293698

def state_293697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_293697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293697 := by
  apply coveredState_split_literal (state := state_293697) 2
    state_293698 state_293953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293698
  · exact cover_293953
#print axioms cover_293697

def state_293647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_293647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293647 := by
  apply coveredState_split_literal (state := state_293647) 1
    state_293648 state_293697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293648
  · exact cover_293697
#print axioms cover_293647

def state_293531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_293531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293531 := by
  apply coveredState_split_literal (state := state_293531) 0
    state_293532 state_293647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293532
  · exact cover_293647
#print axioms cover_293531

def state_293433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_293433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293433 := by
  apply coveredState_split_literal (state := state_293433) 4
    state_293434 state_293531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293434
  · exact cover_293531
#print axioms cover_293433

def state_293968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_293968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293968 := by
  apply coveredState_split_literal (state := state_293968) 3
    state_293969 state_293986
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293969
  · exact cover_293986
#print axioms cover_293968

def state_293967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_293967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293967 := by
  apply coveredState_split_literal (state := state_293967) 2
    state_293968 state_294043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293968
  · exact cover_294043
#print axioms cover_293967

def state_293966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_293966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293966 := by
  apply coveredState_split_literal (state := state_293966) 1
    state_293967 state_294050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293967
  · exact cover_294050
#print axioms cover_293966

def state_294061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_294061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294061 := by
  apply coveredState_split_literal (state := state_294061) 1
    state_294062 state_294125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_294062
  · exact cover_294125
#print axioms cover_294061

def state_294060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_294060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294060 := by
  apply coveredState_split_literal (state := state_294060) 4
    state_294061 state_294132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_294061
  · exact cover_294132
#print axioms cover_294060

def state_294172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 4)))
theorem cover_294172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294172 := by
  apply coveredState_split_literal (state := state_294172) 4
    state_294173 state_294218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_294173
  · exact cover_294218
#print axioms cover_294172

def state_294171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 4)))
theorem cover_294171 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294171 := by
  apply coveredState_split_literal (state := state_294171) 3
    state_294172 state_294265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_294172
  · exact cover_294265
#print axioms cover_294171

def state_294288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 4)))
theorem cover_294288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294288 := by
  apply coveredState_split_literal (state := state_294288) 3
    state_294289 state_294338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_294289
  · exact cover_294338
#print axioms cover_294288

def state_294170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 4)))
theorem cover_294170 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294170 := by
  apply coveredState_split_literal (state := state_294170) 0
    state_294171 state_294288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_294171
  · exact cover_294288
#print axioms cover_294170

def state_294169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
theorem cover_294169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294169 := by
  apply coveredState_split_literal (state := state_294169) 2
    state_294170 state_294361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_294170
  · exact cover_294361
#print axioms cover_294169

def state_294168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
theorem cover_294168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294168 := by
  apply coveredState_split_literal (state := state_294168) 1
    state_294169 state_294402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_294169
  · exact cover_294402
#print axioms cover_294168

def state_294167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_294167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294167 := by
  apply coveredState_split_literal (state := state_294167) 4
    state_294168 state_294415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_294168
  · exact cover_294415
#print axioms cover_294167

def state_294059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_294059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294059 := by
  apply coveredState_split_literal (state := state_294059) 3
    state_294060 state_294167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_294060
  · exact cover_294167
#print axioms cover_294059

def state_294058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_294058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294058 := by
  apply coveredState_split_literal (state := state_294058) 2
    state_294059 state_294462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_294059
  · exact cover_294462
#print axioms cover_294058

def state_294057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_294057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294057 := by
  apply coveredState_split_literal (state := state_294057) 1
    state_294058 state_294511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_294058
  · exact cover_294511
#print axioms cover_294057

def state_293965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_293965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293965 := by
  apply coveredState_split_literal (state := state_293965) 0
    state_293966 state_294057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293966
  · exact cover_294057
#print axioms cover_293965
end Mub6.Numerical.CircleFullPrototype.Forest
