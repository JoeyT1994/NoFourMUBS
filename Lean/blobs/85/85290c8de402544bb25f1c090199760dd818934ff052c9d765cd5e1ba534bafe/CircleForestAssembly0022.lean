import CircleFullInterface
import CircleForestAssembly0021
import CircleForestChunk0087
import CircleForestChunk0088
import CircleForestChunk0089
import CircleForestChunk0090
import CircleForestChunk0091
import CircleForestChunk0092
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_20400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 20)))
theorem cover_20400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20400 := by
  apply coveredState_split_literal (state := state_20400) 0
    state_20401 state_20956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20401
  · exact cover_20956
#print axioms cover_20400

def state_21056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 42)))
theorem cover_21056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21056 := by
  apply coveredState_split_literal (state := state_21056) 0
    state_21057 state_21080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21057
  · exact cover_21080
#print axioms cover_21056

def state_21055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 21)))
theorem cover_21055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21055 := by
  apply coveredState_split_literal (state := state_21055) 4
    state_21056 state_21143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21056
  · exact cover_21143
#print axioms cover_21055

def state_21054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 15) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 21)))
theorem cover_21054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21054 := by
  apply coveredState_split_literal (state := state_21054) 1
    state_21055 state_21156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21055
  · exact cover_21156
#print axioms cover_21054

def state_21032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 21)))
theorem cover_21032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21032 := by
  apply coveredState_split_literal (state := state_21032) 2
    state_21033 state_21054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21033
  · exact cover_21054
#print axioms cover_21032

def state_21031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 21)))
theorem cover_21031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21031 := by
  apply coveredState_split_literal (state := state_21031) 0
    state_21032 state_21167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21032
  · exact cover_21167
#print axioms cover_21031

def state_20399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 10)))
theorem cover_20399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20399 := by
  apply coveredState_split_literal (state := state_20399) 4
    state_20400 state_21031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20400
  · exact cover_21031
#print axioms cover_20399

def state_21226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 10)))
theorem cover_21226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21226 := by
  apply coveredState_split_literal (state := state_21226) 4
    state_21227 state_21272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21227
  · exact cover_21272
#print axioms cover_21226

def state_20398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 10)))
theorem cover_20398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20398 := by
  apply coveredState_split_literal (state := state_20398) 3
    state_20399 state_21226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20399
  · exact cover_21226
#print axioms cover_20398

def state_21313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 20)))
theorem cover_21313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21313 := by
  apply coveredState_split_literal (state := state_21313) 3
    state_21314 state_21339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21314
  · exact cover_21339
#print axioms cover_21313

def state_21464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 114 else 60) else (if j.val < 3 then 61 else (if j.val < 4 then 41 else 41)))
theorem cover_21464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21464 := by
  apply coveredState_split_literal (state := state_21464) 3
    state_21465 state_21484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21465
  · exact cover_21484
#print axioms cover_21464

def state_21533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 115 else 60) else (if j.val < 3 then 61 else (if j.val < 4 then 83 else 41)))
theorem cover_21533 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21533 := by
  apply coveredState_split_literal (state := state_21533) 4
    state_21534 state_21561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21534
  · exact cover_21561
#print axioms cover_21533

def state_21529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 115 else 60) else (if j.val < 3 then 61 else (if j.val < 4 then 41 else 41)))
theorem cover_21529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21529 := by
  apply coveredState_split_literal (state := state_21529) 3
    state_21530 state_21533
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21530
  · exact cover_21533
#print axioms cover_21529

def state_21463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 60) else (if j.val < 3 then 61 else (if j.val < 4 then 41 else 41)))
theorem cover_21463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21463 := by
  apply coveredState_split_literal (state := state_21463) 0
    state_21464 state_21529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21464
  · exact cover_21529
#print axioms cover_21463

def state_21461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 60) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 41)))
theorem cover_21461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21461 := by
  apply coveredState_split_literal (state := state_21461) 2
    state_21462 state_21463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21462
  · exact cover_21463
#print axioms cover_21461

def state_21659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 115 else 61) else (if j.val < 3 then 60 else (if j.val < 4 then 41 else 41)))
theorem cover_21659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21659 := by
  apply coveredState_split_literal (state := state_21659) 3
    state_21660 state_21689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21660
  · exact cover_21689
#print axioms cover_21659

def state_21599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 61) else (if j.val < 3 then 60 else (if j.val < 4 then 41 else 41)))
theorem cover_21599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21599 := by
  apply coveredState_split_literal (state := state_21599) 0
    state_21600 state_21659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21600
  · exact cover_21659
#print axioms cover_21599

def state_21598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 61) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 41)))
theorem cover_21598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21598 := by
  apply coveredState_split_literal (state := state_21598) 2
    state_21599 state_21726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21599
  · exact cover_21726
#print axioms cover_21598

def state_21460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 41)))
theorem cover_21460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21460 := by
  apply coveredState_split_literal (state := state_21460) 1
    state_21461 state_21598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21461
  · exact cover_21598
#print axioms cover_21460

def state_21426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 20)))
theorem cover_21426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21426 := by
  apply coveredState_split_literal (state := state_21426) 4
    state_21427 state_21460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21427
  · exact cover_21460
#print axioms cover_21426

def state_21390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 20)))
theorem cover_21390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21390 := by
  apply coveredState_split_literal (state := state_21390) 3
    state_21391 state_21426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21391
  · exact cover_21426
#print axioms cover_21390

def state_21312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 20)))
theorem cover_21312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21312 := by
  apply coveredState_split_literal (state := state_21312) 0
    state_21313 state_21390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21313
  · exact cover_21390
#print axioms cover_21312

def state_21311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 20)))
theorem cover_21311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21311 := by
  apply coveredState_split_literal (state := state_21311) 2
    state_21312 state_21777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21312
  · exact cover_21777
#print axioms cover_21311

def state_21310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 20)))
theorem cover_21310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21310 := by
  apply coveredState_split_literal (state := state_21310) 1
    state_21311 state_21800
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21311
  · exact cover_21800
#print axioms cover_21310

def state_21842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 41)))
theorem cover_21842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21842 := by
  apply coveredState_split_literal (state := state_21842) 1
    state_21843 state_21888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21843
  · exact cover_21888
#print axioms cover_21842

def state_21836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 20)))
theorem cover_21836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21836 := by
  apply coveredState_split_literal (state := state_21836) 4
    state_21837 state_21842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21837
  · exact cover_21842
#print axioms cover_21836

def state_21828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 20)))
theorem cover_21828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21828 := by
  apply coveredState_split_literal (state := state_21828) 3
    state_21829 state_21836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21829
  · exact cover_21836
#print axioms cover_21828

def state_21827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 20)))
theorem cover_21827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21827 := by
  apply coveredState_split_literal (state := state_21827) 0
    state_21828 state_21935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21828
  · exact cover_21935
#print axioms cover_21827

def state_21826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 20)))
theorem cover_21826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21826 := by
  apply coveredState_split_literal (state := state_21826) 2
    state_21827 state_21948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21827
  · exact cover_21948
#print axioms cover_21826

def state_21825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 20)))
theorem cover_21825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21825 := by
  apply coveredState_split_literal (state := state_21825) 1
    state_21826 state_21961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21826
  · exact cover_21961
#print axioms cover_21825

def state_21309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 20)))
theorem cover_21309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21309 := by
  apply coveredState_split_literal (state := state_21309) 0
    state_21310 state_21825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21310
  · exact cover_21825
#print axioms cover_21309

def state_22032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 42)))
theorem cover_22032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22032 := by
  apply coveredState_split_literal (state := state_22032) 1
    state_22033 state_22074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22033
  · exact cover_22074
#print axioms cover_22032
end Mub6.Numerical.CircleFullPrototype.Forest
