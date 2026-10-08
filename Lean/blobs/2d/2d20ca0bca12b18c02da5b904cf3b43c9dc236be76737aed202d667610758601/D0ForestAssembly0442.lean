import D0FullInterface
import D0ForestAssembly0440
import D0ForestAssembly0441
import D0ForestChunk1724
import D0ForestChunk1725
import D0ForestChunk1726
import D0ForestChunk1732
import D0ForestChunk1733
import D0ForestChunk1734
import D0ForestChunk1735
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2287582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
theorem cover_2287582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287582 := by
  apply coveredState_split_literal (state := state_2287582) 3
    state_2287583 state_2288952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287583
  · exact cover_2288952
#print axioms cover_2287582

def state_2287562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
theorem cover_2287562 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287562 := by
  apply coveredState_split_literal (state := state_2287562) 1
    state_2287563 state_2287582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287563
  · exact cover_2287582
#print axioms cover_2287562

def state_2287254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_2287254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287254 := by
  apply coveredState_split_literal (state := state_2287254) 2
    state_2287255 state_2287562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287255
  · exact cover_2287562
#print axioms cover_2287254

def state_2287230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_2287230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287230 := by
  apply coveredState_split_literal (state := state_2287230) 0
    state_2287231 state_2287254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287231
  · exact cover_2287254
#print axioms cover_2287230

def state_2287168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_2287168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287168 := by
  apply coveredState_split_literal (state := state_2287168) 4
    state_2287169 state_2287230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287169
  · exact cover_2287230
#print axioms cover_2287168

def state_2287167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2287167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287167 := by
  apply coveredState_split_literal (state := state_2287167) 3
    state_2287168 state_2288981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287168
  · exact cover_2288981
#print axioms cover_2287167

def state_2289082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 47)))
theorem cover_2289082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289082 := by
  apply coveredState_split_literal (state := state_2289082) 0
    state_2289083 state_2289142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289083
  · exact cover_2289142
#print axioms cover_2289082

def state_2289081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 47)))
theorem cover_2289081 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289081 := by
  apply coveredState_split_literal (state := state_2289081) 1
    state_2289082 state_2289183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289082
  · exact cover_2289183
#print axioms cover_2289081

def state_2289065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 23)))
theorem cover_2289065 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289065 := by
  apply coveredState_split_literal (state := state_2289065) 4
    state_2289066 state_2289081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289066
  · exact cover_2289081
#print axioms cover_2289065

def state_2289264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 49 else 94)))
theorem cover_2289264 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289264 := by
  apply coveredState_split_literal (state := state_2289264) 3
    state_2289265 state_2289300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289265
  · exact cover_2289300
#print axioms cover_2289264

def state_2289263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 49 else 47)))
theorem cover_2289263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289263 := by
  apply coveredState_split_literal (state := state_2289263) 4
    state_2289264 state_2289329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289264
  · exact cover_2289329
#print axioms cover_2289263

def state_2289237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 47)))
theorem cover_2289237 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289237 := by
  apply coveredState_split_literal (state := state_2289237) 2
    state_2289238 state_2289263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289238
  · exact cover_2289263
#print axioms cover_2289237

def state_2289211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 47)))
theorem cover_2289211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289211 := by
  apply coveredState_split_literal (state := state_2289211) 0
    state_2289212 state_2289237
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289212
  · exact cover_2289237
#print axioms cover_2289211

def state_2289210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 47)))
theorem cover_2289210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289210 := by
  apply coveredState_split_literal (state := state_2289210) 1
    state_2289211 state_2289372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289211
  · exact cover_2289372
#print axioms cover_2289210

def state_2289186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 23)))
theorem cover_2289186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289186 := by
  apply coveredState_split_literal (state := state_2289186) 4
    state_2289187 state_2289210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289187
  · exact cover_2289210
#print axioms cover_2289186

def state_2289064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 23)))
theorem cover_2289064 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289064 := by
  apply coveredState_split_literal (state := state_2289064) 3
    state_2289065 state_2289186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289065
  · exact cover_2289186
#print axioms cover_2289064

def state_2289383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 47)))
theorem cover_2289383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289383 := by
  apply coveredState_split_literal (state := state_2289383) 0
    state_2289384 state_2289429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289384
  · exact cover_2289429
#print axioms cover_2289383

def state_2289382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 47)))
theorem cover_2289382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289382 := by
  apply coveredState_split_literal (state := state_2289382) 1
    state_2289383 state_2289476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289383
  · exact cover_2289476
#print axioms cover_2289382

def state_2289380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 23)))
theorem cover_2289380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289380 := by
  apply coveredState_split_literal (state := state_2289380) 4
    state_2289381 state_2289382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289381
  · exact cover_2289382
#print axioms cover_2289380

def state_2289379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 23)))
theorem cover_2289379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289379 := by
  apply coveredState_split_literal (state := state_2289379) 3
    state_2289380 state_2289477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289380
  · exact cover_2289477
#print axioms cover_2289379

def state_2289063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
theorem cover_2289063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289063 := by
  apply coveredState_split_literal (state := state_2289063) 2
    state_2289064 state_2289379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289064
  · exact cover_2289379
#print axioms cover_2289063

def state_2289057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
theorem cover_2289057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289057 := by
  apply coveredState_split_literal (state := state_2289057) 0
    state_2289058 state_2289063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289058
  · exact cover_2289063
#print axioms cover_2289057

def state_2289056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
theorem cover_2289056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289056 := by
  apply coveredState_split_literal (state := state_2289056) 1
    state_2289057 state_2289536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289057
  · exact cover_2289536
#print axioms cover_2289056

def state_2289054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 11)))
theorem cover_2289054 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289054 := by
  apply coveredState_split_literal (state := state_2289054) 4
    state_2289055 state_2289056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289055
  · exact cover_2289056
#print axioms cover_2289054

def state_2289537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 11)))
theorem cover_2289537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289537 := by
  apply coveredState_split_literal (state := state_2289537) 4
    state_2289538 state_2289545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289538
  · exact cover_2289545
#print axioms cover_2289537

def state_2289053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
theorem cover_2289053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289053 := by
  apply coveredState_split_literal (state := state_2289053) 3
    state_2289054 state_2289537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289054
  · exact cover_2289537
#print axioms cover_2289053

def state_2289033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_2289033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289033 := by
  apply coveredState_split_literal (state := state_2289033) 2
    state_2289034 state_2289053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289034
  · exact cover_2289053
#print axioms cover_2289033

def state_2289021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_2289021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289021 := by
  apply coveredState_split_literal (state := state_2289021) 0
    state_2289022 state_2289033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289022
  · exact cover_2289033
#print axioms cover_2289021

def state_2289019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_2289019 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289019 := by
  apply coveredState_split_literal (state := state_2289019) 4
    state_2289020 state_2289021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289020
  · exact cover_2289021
#print axioms cover_2289019

def state_2289018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2289018 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289018 := by
  apply coveredState_split_literal (state := state_2289018) 3
    state_2289019 state_2289604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289019
  · exact cover_2289604
#print axioms cover_2289018

def state_2287166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2287166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287166 := by
  apply coveredState_split_literal (state := state_2287166) 1
    state_2287167 state_2289018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287167
  · exact cover_2289018
#print axioms cover_2287166

def state_2287154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_2287154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287154 := by
  apply coveredState_split_literal (state := state_2287154) 4
    state_2287155 state_2287166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287155
  · exact cover_2287166
#print axioms cover_2287154
end Mub6.Numerical.CircleFullD0.Forest
