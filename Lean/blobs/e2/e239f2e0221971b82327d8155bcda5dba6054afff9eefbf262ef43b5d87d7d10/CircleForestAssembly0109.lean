import CircleFullInterface
import CircleForestAssembly0108
import CircleForestChunk0432
import CircleForestChunk0433
import CircleForestChunk0434
import CircleForestChunk0435
import CircleForestChunk0436
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_179506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 29)))
theorem cover_179506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179506 := by
  apply coveredState_split_literal (state := state_179506) 2
    state_179507 state_179520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179507
  · exact cover_179520
#print axioms cover_179506

def state_179490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 29)))
theorem cover_179490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179490 := by
  apply coveredState_split_literal (state := state_179490) 1
    state_179491 state_179506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179491
  · exact cover_179506
#print axioms cover_179490

def state_179480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 14)))
theorem cover_179480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179480 := by
  apply coveredState_split_literal (state := state_179480) 4
    state_179481 state_179490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179481
  · exact cover_179490
#print axioms cover_179480

def state_179468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 14)))
theorem cover_179468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179468 := by
  apply coveredState_split_literal (state := state_179468) 3
    state_179469 state_179480
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179469
  · exact cover_179480
#print axioms cover_179468

def state_179196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 14)))
theorem cover_179196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179196 := by
  apply coveredState_split_literal (state := state_179196) 0
    state_179197 state_179468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179197
  · exact cover_179468
#print axioms cover_179196

def state_179732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 29)))
theorem cover_179732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179732 := by
  apply coveredState_split_literal (state := state_179732) 0
    state_179733 state_179786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179733
  · exact cover_179786
#print axioms cover_179732

def state_179731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 29)))
theorem cover_179731 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179731 := by
  apply coveredState_split_literal (state := state_179731) 2
    state_179732 state_179801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179732
  · exact cover_179801
#print axioms cover_179731

def state_179723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 29)))
theorem cover_179723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179723 := by
  apply coveredState_split_literal (state := state_179723) 1
    state_179724 state_179731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179724
  · exact cover_179731
#print axioms cover_179723

def state_179719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 14)))
theorem cover_179719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179719 := by
  apply coveredState_split_literal (state := state_179719) 4
    state_179720 state_179723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179720
  · exact cover_179723
#print axioms cover_179719

def state_179713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 14)))
theorem cover_179713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179713 := by
  apply coveredState_split_literal (state := state_179713) 3
    state_179714 state_179719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179714
  · exact cover_179719
#print axioms cover_179713

def state_179659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 14)))
theorem cover_179659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179659 := by
  apply coveredState_split_literal (state := state_179659) 0
    state_179660 state_179713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179660
  · exact cover_179713
#print axioms cover_179659

def state_179195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 14)))
theorem cover_179195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179195 := by
  apply coveredState_split_literal (state := state_179195) 2
    state_179196 state_179659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179196
  · exact cover_179659
#print axioms cover_179195

def state_179888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 29)))
theorem cover_179888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179888 := by
  apply coveredState_split_literal (state := state_179888) 0
    state_179889 state_179944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179889
  · exact cover_179944
#print axioms cover_179888

def state_179887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 29)))
theorem cover_179887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179887 := by
  apply coveredState_split_literal (state := state_179887) 1
    state_179888 state_179959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179888
  · exact cover_179959
#print axioms cover_179887

def state_179879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 29)))
theorem cover_179879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179879 := by
  apply coveredState_split_literal (state := state_179879) 2
    state_179880 state_179887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179880
  · exact cover_179887
#print axioms cover_179879

def state_179875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 14)))
theorem cover_179875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179875 := by
  apply coveredState_split_literal (state := state_179875) 4
    state_179876 state_179879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179876
  · exact cover_179879
#print axioms cover_179875

def state_179869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 14)))
theorem cover_179869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179869 := by
  apply coveredState_split_literal (state := state_179869) 3
    state_179870 state_179875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179870
  · exact cover_179875
#print axioms cover_179869

def state_179813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 14)))
theorem cover_179813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179813 := by
  apply coveredState_split_literal (state := state_179813) 0
    state_179814 state_179869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179814
  · exact cover_179869
#print axioms cover_179813

def state_179812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 14)))
theorem cover_179812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179812 := by
  apply coveredState_split_literal (state := state_179812) 2
    state_179813 state_179972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179813
  · exact cover_179972
#print axioms cover_179812

def state_179194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 14)))
theorem cover_179194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179194 := by
  apply coveredState_split_literal (state := state_179194) 1
    state_179195 state_179812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179195
  · exact cover_179812
#print axioms cover_179194

def state_180014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 15)))
theorem cover_180014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180014 := by
  apply coveredState_split_literal (state := state_180014) 3
    state_180015 state_180038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180015
  · exact cover_180038
#print axioms cover_180014

def state_180144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 99) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 60)))
theorem cover_180144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180144 := by
  apply coveredState_split_literal (state := state_180144) 2
    state_180145 state_180148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180145
  · exact cover_180148
#print axioms cover_180144

def state_180138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 60)))
theorem cover_180138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180138 := by
  apply coveredState_split_literal (state := state_180138) 1
    state_180139 state_180144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180139
  · exact cover_180144
#print axioms cover_180138

def state_180137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 30)))
theorem cover_180137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180137 := by
  apply coveredState_split_literal (state := state_180137) 4
    state_180138 state_180211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180138
  · exact cover_180211
#print axioms cover_180137

def state_180121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 30)))
theorem cover_180121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180121 := by
  apply coveredState_split_literal (state := state_180121) 3
    state_180122 state_180137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180122
  · exact cover_180137
#print axioms cover_180121

def state_180120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 30)))
theorem cover_180120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180120 := by
  apply coveredState_split_literal (state := state_180120) 0
    state_180121 state_180220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180121
  · exact cover_180220
#print axioms cover_180120

def state_180114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 30)))
theorem cover_180114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180114 := by
  apply coveredState_split_literal (state := state_180114) 2
    state_180115 state_180120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180115
  · exact cover_180120
#print axioms cover_180114

def state_180106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 30)))
theorem cover_180106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180106 := by
  apply coveredState_split_literal (state := state_180106) 1
    state_180107 state_180114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180107
  · exact cover_180114
#print axioms cover_180106

def state_180105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 15)))
theorem cover_180105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180105 := by
  apply coveredState_split_literal (state := state_180105) 4
    state_180106 state_180237
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180106
  · exact cover_180237
#print axioms cover_180105

def state_180097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 15)))
theorem cover_180097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180097 := by
  apply coveredState_split_literal (state := state_180097) 3
    state_180098 state_180105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180098
  · exact cover_180105
#print axioms cover_180097

def state_180013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 15)))
theorem cover_180013 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180013 := by
  apply coveredState_split_literal (state := state_180013) 0
    state_180014 state_180097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180014
  · exact cover_180097
#print axioms cover_180013

def state_180299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 30)))
theorem cover_180299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180299 := by
  apply coveredState_split_literal (state := state_180299) 3
    state_180300 state_180317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180300
  · exact cover_180317
#print axioms cover_180299
end Mub6.Numerical.CircleFullPrototype.Forest
