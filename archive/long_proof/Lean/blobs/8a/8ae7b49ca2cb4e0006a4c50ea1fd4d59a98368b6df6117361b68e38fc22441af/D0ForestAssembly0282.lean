import D0FullInterface
import D0ForestAssembly0281
import D0ForestChunk1081
import D0ForestChunk1082
import D0ForestChunk1083
import D0ForestChunk1084
import D0ForestChunk1085
import D0ForestChunk1086
import D0ForestChunk1087
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1559023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 22)))
theorem cover_1559023 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559023 := by
  apply coveredState_split_literal (state := state_1559023) 2
    state_1559024 state_1559721
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559024
  · exact cover_1559721
#print axioms cover_1559023

def state_1559860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 23)))
theorem cover_1559860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559860 := by
  apply coveredState_split_literal (state := state_1559860) 2
    state_1559861 state_1559918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559861
  · exact cover_1559918
#print axioms cover_1559860

def state_1559022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
theorem cover_1559022 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559022 := by
  apply coveredState_split_literal (state := state_1559022) 4
    state_1559023 state_1559860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559023
  · exact cover_1559860
#print axioms cover_1559022

def state_1560046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 177)))
theorem cover_1560046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560046 := by
  apply coveredState_split_literal (state := state_1560046) 2
    state_1560047 state_1560098
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560047
  · exact cover_1560098
#print axioms cover_1560046

def state_1560044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 88)))
theorem cover_1560044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560044 := by
  apply coveredState_split_literal (state := state_1560044) 4
    state_1560045 state_1560046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560045
  · exact cover_1560046
#print axioms cover_1560044

def state_1560043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 121) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 88)))
theorem cover_1560043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560043 := by
  apply coveredState_split_literal (state := state_1560043) 0
    state_1560044 state_1560141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560044
  · exact cover_1560141
#print axioms cover_1560043

def state_1560027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 88)))
theorem cover_1560027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560027 := by
  apply coveredState_split_literal (state := state_1560027) 1
    state_1560028 state_1560043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560028
  · exact cover_1560043
#print axioms cover_1560027

def state_1560192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 121) else (if j.val < 3 then 104 else (if j.val < 4 then 83 else 88)))
theorem cover_1560192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560192 := by
  apply coveredState_split_literal (state := state_1560192) 0
    state_1560193 state_1560250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560193
  · exact cover_1560250
#print axioms cover_1560192

def state_1560174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 104 else (if j.val < 4 then 83 else 88)))
theorem cover_1560174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560174 := by
  apply coveredState_split_literal (state := state_1560174) 1
    state_1560175 state_1560192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560175
  · exact cover_1560192
#print axioms cover_1560174

def state_1560026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 88)))
theorem cover_1560026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560026 := by
  apply coveredState_split_literal (state := state_1560026) 3
    state_1560027 state_1560174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560027
  · exact cover_1560174
#print axioms cover_1560026

def state_1560365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 211 else (if j.val < 4 then 83 else 176)))
theorem cover_1560365 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560365 := by
  apply coveredState_split_literal (state := state_1560365) 3
    state_1560366 state_1560391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560366
  · exact cover_1560391
#print axioms cover_1560365

def state_1560363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 176)))
theorem cover_1560363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560363 := by
  apply coveredState_split_literal (state := state_1560363) 2
    state_1560364 state_1560365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560364
  · exact cover_1560365
#print axioms cover_1560363

def state_1560443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 210 else (if j.val < 4 then 83 else 177)))
theorem cover_1560443 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560443 := by
  apply coveredState_split_literal (state := state_1560443) 3
    state_1560444 state_1560491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560444
  · exact cover_1560491
#print axioms cover_1560443

def state_1560442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 177)))
theorem cover_1560442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560442 := by
  apply coveredState_split_literal (state := state_1560442) 2
    state_1560443 state_1560510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560443
  · exact cover_1560510
#print axioms cover_1560442

def state_1560362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 88)))
theorem cover_1560362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560362 := by
  apply coveredState_split_literal (state := state_1560362) 4
    state_1560363 state_1560442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560363
  · exact cover_1560442
#print axioms cover_1560362

def state_1560554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 211 else (if j.val < 4 then 167 else 176)))
theorem cover_1560554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560554 := by
  apply coveredState_split_literal (state := state_1560554) 1
    state_1560555 state_1560590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560555
  · exact cover_1560590
#print axioms cover_1560554

def state_1560544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 211 else (if j.val < 4 then 83 else 176)))
theorem cover_1560544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560544 := by
  apply coveredState_split_literal (state := state_1560544) 3
    state_1560545 state_1560554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560545
  · exact cover_1560554
#print axioms cover_1560544

def state_1560542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 176)))
theorem cover_1560542 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560542 := by
  apply coveredState_split_literal (state := state_1560542) 2
    state_1560543 state_1560544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560543
  · exact cover_1560544
#print axioms cover_1560542

def state_1560638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 210 else (if j.val < 4 then 83 else 177)))
theorem cover_1560638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560638 := by
  apply coveredState_split_literal (state := state_1560638) 3
    state_1560639 state_1560656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560639
  · exact cover_1560656
#print axioms cover_1560638

def state_1560637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 177)))
theorem cover_1560637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560637 := by
  apply coveredState_split_literal (state := state_1560637) 2
    state_1560638 state_1560709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560638
  · exact cover_1560709
#print axioms cover_1560637

def state_1560541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 88)))
theorem cover_1560541 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560541 := by
  apply coveredState_split_literal (state := state_1560541) 4
    state_1560542 state_1560637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560542
  · exact cover_1560637
#print axioms cover_1560541

def state_1560361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 121) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 88)))
theorem cover_1560361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560361 := by
  apply coveredState_split_literal (state := state_1560361) 0
    state_1560362 state_1560541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560362
  · exact cover_1560541
#print axioms cover_1560361

def state_1560315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 88)))
theorem cover_1560315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560315 := by
  apply coveredState_split_literal (state := state_1560315) 1
    state_1560316 state_1560361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560316
  · exact cover_1560361
#print axioms cover_1560315

def state_1560285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 88)))
theorem cover_1560285 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560285 := by
  apply coveredState_split_literal (state := state_1560285) 3
    state_1560286 state_1560315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560286
  · exact cover_1560315
#print axioms cover_1560285

def state_1560025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 88)))
theorem cover_1560025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560025 := by
  apply coveredState_split_literal (state := state_1560025) 2
    state_1560026 state_1560285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560026
  · exact cover_1560285
#print axioms cover_1560025

def state_1560770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 89)))
theorem cover_1560770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560770 := by
  apply coveredState_split_literal (state := state_1560770) 2
    state_1560771 state_1560830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560771
  · exact cover_1560830
#print axioms cover_1560770

def state_1560024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 44)))
theorem cover_1560024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560024 := by
  apply coveredState_split_literal (state := state_1560024) 4
    state_1560025 state_1560770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560025
  · exact cover_1560770
#print axioms cover_1560024

def state_1560023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 44)))
theorem cover_1560023 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560023 := by
  apply coveredState_split_literal (state := state_1560023) 0
    state_1560024 state_1560869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560024
  · exact cover_1560869
#print axioms cover_1560023

def state_1560931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 88)))
theorem cover_1560931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560931 := by
  apply coveredState_split_literal (state := state_1560931) 3
    state_1560932 state_1560985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560932
  · exact cover_1560985
#print axioms cover_1560931

def state_1561074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 177)))
theorem cover_1561074 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561074 := by
  apply coveredState_split_literal (state := state_1561074) 2
    state_1561075 state_1561114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561075
  · exact cover_1561114
#print axioms cover_1561074

def state_1561040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 88)))
theorem cover_1561040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561040 := by
  apply coveredState_split_literal (state := state_1561040) 4
    state_1561041 state_1561074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561041
  · exact cover_1561074
#print axioms cover_1561040

def state_1561183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 177)))
theorem cover_1561183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561183 := by
  apply coveredState_split_literal (state := state_1561183) 2
    state_1561184 state_1561233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561184
  · exact cover_1561233
#print axioms cover_1561183
end Mub6.Numerical.CircleFullD0.Forest
