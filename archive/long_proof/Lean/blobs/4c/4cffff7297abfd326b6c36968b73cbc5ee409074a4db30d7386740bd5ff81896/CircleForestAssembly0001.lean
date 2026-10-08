import CircleFullInterface
import CircleForestChunk0001
import CircleForestChunk0002
import CircleForestChunk0003
import CircleForestChunk0004
import CircleForestChunk0005
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_47 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_47 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_47 := by
  apply coveredState_split_literal (state := state_47) 0
    state_48 state_93
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48
  · exact cover_93
#print axioms cover_47

def state_19 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_19 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_19 := by
  apply coveredState_split_literal (state := state_19) 4
    state_20 state_47
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20
  · exact cover_47
#print axioms cover_19

def state_115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_115 := by
  apply coveredState_split_literal (state := state_115) 0
    state_116 state_161
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_116
  · exact cover_161
#print axioms cover_115

def state_230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
theorem cover_230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_230 := by
  apply coveredState_split_literal (state := state_230) 4
    state_231 state_240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_231
  · exact cover_240
#print axioms cover_230

def state_220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_220 := by
  apply coveredState_split_literal (state := state_220) 3
    state_221 state_230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_221
  · exact cover_230
#print axioms cover_220

def state_219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_219 := by
  apply coveredState_split_literal (state := state_219) 2
    state_220 state_295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_220
  · exact cover_295
#print axioms cover_219

def state_218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_218 := by
  apply coveredState_split_literal (state := state_218) 1
    state_219 state_302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_219
  · exact cover_302
#print axioms cover_218

def state_186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_186 := by
  apply coveredState_split_literal (state := state_186) 0
    state_187 state_218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_187
  · exact cover_218
#print axioms cover_186

def state_114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_114 := by
  apply coveredState_split_literal (state := state_114) 4
    state_115 state_186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_115
  · exact cover_186
#print axioms cover_114

def state_18 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_18 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_18 := by
  apply coveredState_split_literal (state := state_18) 3
    state_19 state_114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19
  · exact cover_114
#print axioms cover_18

def state_313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_313 := by
  apply coveredState_split_literal (state := state_313) 0
    state_314 state_349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_314
  · exact cover_349
#print axioms cover_313

def state_384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_384 := by
  apply coveredState_split_literal (state := state_384) 0
    state_385 state_424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385
  · exact cover_424
#print axioms cover_384

def state_312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_312 := by
  apply coveredState_split_literal (state := state_312) 4
    state_313 state_384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_313
  · exact cover_384
#print axioms cover_312

def state_503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_503 := by
  apply coveredState_split_literal (state := state_503) 3
    state_504 state_513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_504
  · exact cover_513
#print axioms cover_503

def state_489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_489 := by
  apply coveredState_split_literal (state := state_489) 2
    state_490 state_503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_490
  · exact cover_503
#print axioms cover_489

def state_473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_473 := by
  apply coveredState_split_literal (state := state_473) 1
    state_474 state_489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_474
  · exact cover_489
#print axioms cover_473

def state_472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_472 := by
  apply coveredState_split_literal (state := state_472) 0
    state_473 state_570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_473
  · exact cover_570
#print axioms cover_472

def state_595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_595 := by
  apply coveredState_split_literal (state := state_595) 0
    state_596 state_659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_596
  · exact cover_659
#print axioms cover_595

def state_471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_471 := by
  apply coveredState_split_literal (state := state_471) 4
    state_472 state_595
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_472
  · exact cover_595
#print axioms cover_471

def state_311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_311 := by
  apply coveredState_split_literal (state := state_311) 3
    state_312 state_471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_312
  · exact cover_471
#print axioms cover_311

def state_17 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_17 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_17 := by
  apply coveredState_split_literal (state := state_17) 2
    state_18 state_311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18
  · exact cover_311
#print axioms cover_17

def state_683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_683 := by
  apply coveredState_split_literal (state := state_683) 0
    state_684 state_719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_684
  · exact cover_719
#print axioms cover_683

def state_785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_785 := by
  apply coveredState_split_literal (state := state_785) 3
    state_786 state_847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_786
  · exact cover_847
#print axioms cover_785

def state_777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_777 := by
  apply coveredState_split_literal (state := state_777) 2
    state_778 state_785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_778
  · exact cover_785
#print axioms cover_777

def state_753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_753 := by
  apply coveredState_split_literal (state := state_753) 1
    state_754 state_777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_754
  · exact cover_777
#print axioms cover_753

def state_752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_752 := by
  apply coveredState_split_literal (state := state_752) 0
    state_753 state_852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_753
  · exact cover_852
#print axioms cover_752

def state_682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_682 := by
  apply coveredState_split_literal (state := state_682) 4
    state_683 state_752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_683
  · exact cover_752
#print axioms cover_682

def state_876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_876 := by
  apply coveredState_split_literal (state := state_876) 0
    state_877 state_912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_877
  · exact cover_912
#print axioms cover_876

def state_959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_959 := by
  apply coveredState_split_literal (state := state_959) 0
    state_960 state_1019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960
  · exact cover_1019
#print axioms cover_959

def state_875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_875 := by
  apply coveredState_split_literal (state := state_875) 4
    state_876 state_959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_876
  · exact cover_959
#print axioms cover_875

def state_681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_681 := by
  apply coveredState_split_literal (state := state_681) 3
    state_682 state_875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_682
  · exact cover_875
#print axioms cover_681

def state_1043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1043 := by
  apply coveredState_split_literal (state := state_1043) 1
    state_1044 state_1059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044
  · exact cover_1059
#print axioms cover_1043
end Mub6.Numerical.CircleFullPrototype.Forest
