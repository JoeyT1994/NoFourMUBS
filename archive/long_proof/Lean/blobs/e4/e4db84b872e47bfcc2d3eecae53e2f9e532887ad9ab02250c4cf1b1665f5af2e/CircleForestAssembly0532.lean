import CircleFullInterface
import CircleForestAssembly0530
import CircleForestAssembly0531
import CircleForestChunk2090
import CircleForestChunk2093
import CircleForestChunk2097
import CircleForestChunk2098
import CircleForestChunk2099
import CircleForestChunk2100
import CircleForestChunk2101
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2583792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 8)))
theorem cover_2583792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583792 := by
  apply coveredState_split_literal (state := state_2583792) 0
    state_2583793 state_2583888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583793
  · exact cover_2583888
#print axioms cover_2583792

def state_2583456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 12 else 8)))
theorem cover_2583456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583456 := by
  apply coveredState_split_literal (state := state_2583456) 3
    state_2583457 state_2583792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583457
  · exact cover_2583792
#print axioms cover_2583456

def state_2582962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 8)))
theorem cover_2582962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582962 := by
  apply coveredState_split_literal (state := state_2582962) 2
    state_2582963 state_2583456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582963
  · exact cover_2583456
#print axioms cover_2582962

def state_2583972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 46 else (if j.val < 4 then 24 else 18)))
theorem cover_2583972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583972 := by
  apply coveredState_split_literal (state := state_2583972) 3
    state_2583973 state_2584010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583973
  · exact cover_2584010
#print axioms cover_2583972

def state_2584037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 47 else (if j.val < 4 then 24 else 18)))
theorem cover_2584037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584037 := by
  apply coveredState_split_literal (state := state_2584037) 3
    state_2584038 state_2584071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584038
  · exact cover_2584071
#print axioms cover_2584037

def state_2583971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 18)))
theorem cover_2583971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583971 := by
  apply coveredState_split_literal (state := state_2583971) 2
    state_2583972 state_2584037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583972
  · exact cover_2584037
#print axioms cover_2583971

def state_2584122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 19)))
theorem cover_2584122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584122 := by
  apply coveredState_split_literal (state := state_2584122) 2
    state_2584123 state_2584136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584123
  · exact cover_2584136
#print axioms cover_2584122

def state_2583970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
theorem cover_2583970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583970 := by
  apply coveredState_split_literal (state := state_2583970) 4
    state_2583971 state_2584122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583971
  · exact cover_2584122
#print axioms cover_2583970

def state_2583969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
theorem cover_2583969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583969 := by
  apply coveredState_split_literal (state := state_2583969) 1
    state_2583970 state_2584191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583970
  · exact cover_2584191
#print axioms cover_2583969

def state_2583968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
theorem cover_2583968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583968 := by
  apply coveredState_split_literal (state := state_2583968) 0
    state_2583969 state_2584196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583969
  · exact cover_2584196
#print axioms cover_2583968

def state_2584238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 9)))
theorem cover_2584238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584238 := by
  apply coveredState_split_literal (state := state_2584238) 1
    state_2584239 state_2584294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584239
  · exact cover_2584294
#print axioms cover_2584238

def state_2584237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 9)))
theorem cover_2584237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584237 := by
  apply coveredState_split_literal (state := state_2584237) 0
    state_2584238 state_2584305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584238
  · exact cover_2584305
#print axioms cover_2584237

def state_2583967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 12 else 9)))
theorem cover_2583967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583967 := by
  apply coveredState_split_literal (state := state_2583967) 3
    state_2583968 state_2584237
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583968
  · exact cover_2584237
#print axioms cover_2583967

def state_2583925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 9)))
theorem cover_2583925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583925 := by
  apply coveredState_split_literal (state := state_2583925) 2
    state_2583926 state_2583967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583926
  · exact cover_2583967
#print axioms cover_2583925

def state_2582961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
theorem cover_2582961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582961 := by
  apply coveredState_split_literal (state := state_2582961) 4
    state_2582962 state_2583925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582962
  · exact cover_2583925
#print axioms cover_2582961

def state_2582960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
theorem cover_2582960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582960 := by
  apply coveredState_split_literal (state := state_2582960) 3
    state_2582961 state_2584318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582961
  · exact cover_2584318
#print axioms cover_2582960

def state_2582928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2582928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582928 := by
  apply coveredState_split_literal (state := state_2582928) 2
    state_2582929 state_2582960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582929
  · exact cover_2582960
#print axioms cover_2582928

def state_2584387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
theorem cover_2584387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584387 := by
  apply coveredState_split_literal (state := state_2584387) 3
    state_2584388 state_2584447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584388
  · exact cover_2584447
#print axioms cover_2584387

def state_2584371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2584371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584371 := by
  apply coveredState_split_literal (state := state_2584371) 2
    state_2584372 state_2584387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584372
  · exact cover_2584387
#print axioms cover_2584371

def state_2582927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2582927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582927 := by
  apply coveredState_split_literal (state := state_2582927) 1
    state_2582928 state_2584371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582928
  · exact cover_2584371
#print axioms cover_2582927

def state_2582287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2582287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582287 := by
  apply coveredState_split_literal (state := state_2582287) 0
    state_2582288 state_2582927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582288
  · exact cover_2582927
#print axioms cover_2582287

def state_2584513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 5)))
theorem cover_2584513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584513 := by
  apply coveredState_split_literal (state := state_2584513) 3
    state_2584514 state_2584571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584514
  · exact cover_2584571
#print axioms cover_2584513

def state_2584507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_2584507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584507 := by
  apply coveredState_split_literal (state := state_2584507) 2
    state_2584508 state_2584513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584508
  · exact cover_2584513
#print axioms cover_2584507

def state_2584506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_2584506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584506 := by
  apply coveredState_split_literal (state := state_2584506) 1
    state_2584507 state_2584580
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584507
  · exact cover_2584580
#print axioms cover_2584506

def state_2584464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_2584464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584464 := by
  apply coveredState_split_literal (state := state_2584464) 0
    state_2584465 state_2584506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584465
  · exact cover_2584506
#print axioms cover_2584464

def state_2582286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_2582286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582286 := by
  apply coveredState_split_literal (state := state_2582286) 4
    state_2582287 state_2584464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582287
  · exact cover_2584464
#print axioms cover_2582286

def state_2582285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2582285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582285 := by
  apply coveredState_split_literal (state := state_2582285) 3
    state_2582286 state_2584597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582286
  · exact cover_2584597
#print axioms cover_2582285

def state_2582271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2582271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582271 := by
  apply coveredState_split_literal (state := state_2582271) 2
    state_2582272 state_2582285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582272
  · exact cover_2582285
#print axioms cover_2582271

def state_2576617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2576617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576617 := by
  apply coveredState_split_literal (state := state_2576617) 1
    state_2576618 state_2582271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576618
  · exact cover_2582271
#print axioms cover_2576617

def state_2584706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
theorem cover_2584706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584706 := by
  apply coveredState_split_literal (state := state_2584706) 3
    state_2584707 state_2584750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584707
  · exact cover_2584750
#print axioms cover_2584706

def state_2584704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2584704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584704 := by
  apply coveredState_split_literal (state := state_2584704) 2
    state_2584705 state_2584706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584705
  · exact cover_2584706
#print axioms cover_2584704

def state_2584668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2584668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584668 := by
  apply coveredState_split_literal (state := state_2584668) 1
    state_2584669 state_2584704
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584669
  · exact cover_2584704
#print axioms cover_2584668
end Mub6.Numerical.CircleFullD0.Forest
