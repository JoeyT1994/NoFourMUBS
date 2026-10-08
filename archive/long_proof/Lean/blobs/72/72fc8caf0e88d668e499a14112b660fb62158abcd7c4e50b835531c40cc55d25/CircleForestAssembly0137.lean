import CircleFullInterface
import CircleForestAssembly0136
import CircleForestChunk0538
import CircleForestChunk0539
import CircleForestChunk0540
import CircleForestChunk0541
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_290213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 8)))
theorem cover_290213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290213 := by
  apply coveredState_split_literal (state := state_290213) 0
    state_290214 state_290563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290214
  · exact cover_290563
#print axioms cover_290213

def state_290212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 8)))
theorem cover_290212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290212 := by
  apply coveredState_split_literal (state := state_290212) 2
    state_290213 state_290700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290213
  · exact cover_290700
#print axioms cover_290212

def state_290032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 8)))
theorem cover_290032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290032 := by
  apply coveredState_split_literal (state := state_290032) 1
    state_290033 state_290212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290033
  · exact cover_290212
#print axioms cover_290032

def state_290829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 115 else 91) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 36)))
theorem cover_290829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290829 := by
  apply coveredState_split_literal (state := state_290829) 3
    state_290830 state_290889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290830
  · exact cover_290889
#print axioms cover_290829

def state_290803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 91) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 36)))
theorem cover_290803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290803 := by
  apply coveredState_split_literal (state := state_290803) 0
    state_290804 state_290829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290804
  · exact cover_290829
#print axioms cover_290803

def state_290787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 36)))
theorem cover_290787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290787 := by
  apply coveredState_split_literal (state := state_290787) 1
    state_290788 state_290803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290788
  · exact cover_290803
#print axioms cover_290787

def state_290786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 36)))
theorem cover_290786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290786 := by
  apply coveredState_split_literal (state := state_290786) 2
    state_290787 state_290910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290787
  · exact cover_290910
#print axioms cover_290786

def state_290785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 18)))
theorem cover_290785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290785 := by
  apply coveredState_split_literal (state := state_290785) 4
    state_290786 state_290927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290786
  · exact cover_290927
#print axioms cover_290785

def state_290745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 18)))
theorem cover_290745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290745 := by
  apply coveredState_split_literal (state := state_290745) 3
    state_290746 state_290785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290746
  · exact cover_290785
#print axioms cover_290745

def state_290729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 45) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 18)))
theorem cover_290729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290729 := by
  apply coveredState_split_literal (state := state_290729) 0
    state_290730 state_290745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290730
  · exact cover_290745
#print axioms cover_290729

def state_290715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 18)))
theorem cover_290715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290715 := by
  apply coveredState_split_literal (state := state_290715) 1
    state_290716 state_290729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290716
  · exact cover_290729
#print axioms cover_290715

def state_290714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 18)))
theorem cover_290714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290714 := by
  apply coveredState_split_literal (state := state_290714) 2
    state_290715 state_290928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290715
  · exact cover_290928
#print axioms cover_290714

def state_290713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 9)))
theorem cover_290713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290713 := by
  apply coveredState_split_literal (state := state_290713) 4
    state_290714 state_290937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290714
  · exact cover_290937
#print axioms cover_290713

def state_290712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 9)))
theorem cover_290712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290712 := by
  apply coveredState_split_literal (state := state_290712) 3
    state_290713 state_290938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290713
  · exact cover_290938
#print axioms cover_290712

def state_290980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 45) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 18)))
theorem cover_290980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290980 := by
  apply coveredState_split_literal (state := state_290980) 3
    state_290981 state_291006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290981
  · exact cover_291006
#print axioms cover_290980

def state_290966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 22) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 18)))
theorem cover_290966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290966 := by
  apply coveredState_split_literal (state := state_290966) 1
    state_290967 state_290980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290967
  · exact cover_290980
#print axioms cover_290966

def state_290965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 18)))
theorem cover_290965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290965 := by
  apply coveredState_split_literal (state := state_290965) 2
    state_290966 state_291051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290966
  · exact cover_291051
#print axioms cover_290965

def state_290964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 9)))
theorem cover_290964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290964 := by
  apply coveredState_split_literal (state := state_290964) 4
    state_290965 state_291072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290965
  · exact cover_291072
#print axioms cover_290964

def state_290963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 9)))
theorem cover_290963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290963 := by
  apply coveredState_split_literal (state := state_290963) 3
    state_290964 state_291103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290964
  · exact cover_291103
#print axioms cover_290963

def state_290711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 9)))
theorem cover_290711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290711 := by
  apply coveredState_split_literal (state := state_290711) 0
    state_290712 state_290963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290712
  · exact cover_290963
#print axioms cover_290711

def state_290710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 9)))
theorem cover_290710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290710 := by
  apply coveredState_split_literal (state := state_290710) 2
    state_290711 state_291126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290711
  · exact cover_291126
#print axioms cover_290710

def state_291172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 92) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 36)))
theorem cover_291172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291172 := by
  apply coveredState_split_literal (state := state_291172) 0
    state_291173 state_291200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291173
  · exact cover_291200
#print axioms cover_291172

def state_291171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 46) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 36)))
theorem cover_291171 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291171 := by
  apply coveredState_split_literal (state := state_291171) 1
    state_291172 state_291245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291172
  · exact cover_291245
#print axioms cover_291171

def state_291170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 36)))
theorem cover_291170 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291170 := by
  apply coveredState_split_literal (state := state_291170) 2
    state_291171 state_291250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291171
  · exact cover_291250
#print axioms cover_291170

def state_291169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 18)))
theorem cover_291169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291169 := by
  apply coveredState_split_literal (state := state_291169) 4
    state_291170 state_291295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291170
  · exact cover_291295
#print axioms cover_291169

def state_291155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 18)))
theorem cover_291155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291155 := by
  apply coveredState_split_literal (state := state_291155) 3
    state_291156 state_291169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291156
  · exact cover_291169
#print axioms cover_291155

def state_291145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 18)))
theorem cover_291145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291145 := by
  apply coveredState_split_literal (state := state_291145) 0
    state_291146 state_291155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291146
  · exact cover_291155
#print axioms cover_291145

def state_291144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 46) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 18)))
theorem cover_291144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291144 := by
  apply coveredState_split_literal (state := state_291144) 2
    state_291145 state_291300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291145
  · exact cover_291300
#print axioms cover_291144

def state_291143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 18)))
theorem cover_291143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291143 := by
  apply coveredState_split_literal (state := state_291143) 1
    state_291144 state_291329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291144
  · exact cover_291329
#print axioms cover_291143

def state_291142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 9)))
theorem cover_291142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291142 := by
  apply coveredState_split_literal (state := state_291142) 4
    state_291143 state_291348
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291143
  · exact cover_291348
#print axioms cover_291142

def state_291141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 9)))
theorem cover_291141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291141 := by
  apply coveredState_split_literal (state := state_291141) 3
    state_291142 state_291351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291142
  · exact cover_291351
#print axioms cover_291141

def state_291416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 36)))
theorem cover_291416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291416 := by
  apply coveredState_split_literal (state := state_291416) 2
    state_291417 state_291460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291417
  · exact cover_291460
#print axioms cover_291416
end Mub6.Numerical.CircleFullPrototype.Forest
