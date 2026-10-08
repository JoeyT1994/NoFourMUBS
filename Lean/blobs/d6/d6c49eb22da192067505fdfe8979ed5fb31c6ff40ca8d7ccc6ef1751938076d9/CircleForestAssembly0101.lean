import CircleFullInterface
import CircleForestAssembly0093
import CircleForestAssembly0100
import CircleForestChunk0403
import CircleForestChunk0404
import CircleForestChunk0405
import CircleForestChunk0406
import CircleForestChunk0407
import CircleForestChunk0408
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_164412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_164412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164412 := by
  apply coveredState_split_literal (state := state_164412) 2
    state_164413 state_166000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164413
  · exact cover_166000
#print axioms cover_164412

def state_172308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_172308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172308 := by
  apply coveredState_split_literal (state := state_172308) 1
    state_172309 state_172330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172309
  · exact cover_172330
#print axioms cover_172308

def state_172272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_172272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172272 := by
  apply coveredState_split_literal (state := state_172272) 0
    state_172273 state_172308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172273
  · exact cover_172308
#print axioms cover_172272

def state_172385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_172385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172385 := by
  apply coveredState_split_literal (state := state_172385) 0
    state_172386 state_172433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172386
  · exact cover_172433
#print axioms cover_172385

def state_172271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_172271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172271 := by
  apply coveredState_split_literal (state := state_172271) 4
    state_172272 state_172385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172272
  · exact cover_172385
#print axioms cover_172271

def state_172482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_172482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172482 := by
  apply coveredState_split_literal (state := state_172482) 4
    state_172483 state_172500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172483
  · exact cover_172500
#print axioms cover_172482

def state_172480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_172480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172480 := by
  apply coveredState_split_literal (state := state_172480) 3
    state_172481 state_172482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172481
  · exact cover_172482
#print axioms cover_172480

def state_172479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_172479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172479 := by
  apply coveredState_split_literal (state := state_172479) 1
    state_172480 state_172551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172480
  · exact cover_172551
#print axioms cover_172479

def state_172463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_172463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172463 := by
  apply coveredState_split_literal (state := state_172463) 4
    state_172464 state_172479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172464
  · exact cover_172479
#print axioms cover_172463

def state_172618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_172618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172618 := by
  apply coveredState_split_literal (state := state_172618) 2
    state_172619 state_172662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172619
  · exact cover_172662
#print axioms cover_172618

def state_172756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 23)))
theorem cover_172756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172756 := by
  apply coveredState_split_literal (state := state_172756) 0
    state_172757 state_172788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172757
  · exact cover_172788
#print axioms cover_172756

def state_172726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
theorem cover_172726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172726 := by
  apply coveredState_split_literal (state := state_172726) 4
    state_172727 state_172756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172727
  · exact cover_172756
#print axioms cover_172726

def state_172725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
theorem cover_172725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172725 := by
  apply coveredState_split_literal (state := state_172725) 1
    state_172726 state_172823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172726
  · exact cover_172823
#print axioms cover_172725

def state_172724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 11)))
theorem cover_172724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172724 := by
  apply coveredState_split_literal (state := state_172724) 3
    state_172725 state_172842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172725
  · exact cover_172842
#print axioms cover_172724

def state_172965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 49) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 23)))
theorem cover_172965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172965 := by
  apply coveredState_split_literal (state := state_172965) 4
    state_172966 state_173003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172966
  · exact cover_173003
#print axioms cover_172965

def state_172937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 23)))
theorem cover_172937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172937 := by
  apply coveredState_split_literal (state := state_172937) 1
    state_172938 state_172965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172938
  · exact cover_172965
#print axioms cover_172937

def state_172917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 23)))
theorem cover_172917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172917 := by
  apply coveredState_split_literal (state := state_172917) 3
    state_172918 state_172937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172918
  · exact cover_172937
#print axioms cover_172917

def state_172916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
theorem cover_172916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172916 := by
  apply coveredState_split_literal (state := state_172916) 2
    state_172917 state_173060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172917
  · exact cover_173060
#print axioms cover_172916

def state_173203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 37 else (if j.val < 4 then 59 else 47)))
theorem cover_173203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173203 := by
  apply coveredState_split_literal (state := state_173203) 4
    state_173204 state_173249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173204
  · exact cover_173249
#print axioms cover_173203

def state_173187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 37 else (if j.val < 4 then 29 else 47)))
theorem cover_173187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173187 := by
  apply coveredState_split_literal (state := state_173187) 3
    state_173188 state_173203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173188
  · exact cover_173203
#print axioms cover_173187

def state_173165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 47)))
theorem cover_173165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173165 := by
  apply coveredState_split_literal (state := state_173165) 2
    state_173166 state_173187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173166
  · exact cover_173187
#print axioms cover_173165

def state_173164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 47)))
theorem cover_173164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173164 := by
  apply coveredState_split_literal (state := state_173164) 0
    state_173165 state_173292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173165
  · exact cover_173292
#print axioms cover_173164

def state_173128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 23)))
theorem cover_173128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173128 := by
  apply coveredState_split_literal (state := state_173128) 4
    state_173129 state_173164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173129
  · exact cover_173164
#print axioms cover_173128

def state_173114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 23)))
theorem cover_173114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173114 := by
  apply coveredState_split_literal (state := state_173114) 1
    state_173115 state_173128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173115
  · exact cover_173128
#print axioms cover_173114

def state_173106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 23)))
theorem cover_173106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173106 := by
  apply coveredState_split_literal (state := state_173106) 3
    state_173107 state_173114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173107
  · exact cover_173114
#print axioms cover_173106

def state_173417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 99) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 95)))
theorem cover_173417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173417 := by
  apply coveredState_split_literal (state := state_173417) 0
    state_173418 state_173453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173418
  · exact cover_173453
#print axioms cover_173417

def state_173411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 95)))
theorem cover_173411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173411 := by
  apply coveredState_split_literal (state := state_173411) 1
    state_173412 state_173417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173412
  · exact cover_173417
#print axioms cover_173411

def state_173365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 47)))
theorem cover_173365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173365 := by
  apply coveredState_split_literal (state := state_173365) 4
    state_173366 state_173411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173366
  · exact cover_173411
#print axioms cover_173365

def state_173359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 38 else (if j.val < 4 then 29 else 47)))
theorem cover_173359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173359 := by
  apply coveredState_split_literal (state := state_173359) 3
    state_173360 state_173365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173360
  · exact cover_173365
#print axioms cover_173359

def state_173358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 47)))
theorem cover_173358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173358 := by
  apply coveredState_split_literal (state := state_173358) 2
    state_173359 state_173490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173359
  · exact cover_173490
#print axioms cover_173358

def state_173357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 47)))
theorem cover_173357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173357 := by
  apply coveredState_split_literal (state := state_173357) 0
    state_173358 state_173495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173358
  · exact cover_173495
#print axioms cover_173357

def state_173329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 23)))
theorem cover_173329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173329 := by
  apply coveredState_split_literal (state := state_173329) 4
    state_173330 state_173357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173330
  · exact cover_173357
#print axioms cover_173329
end Mub6.Numerical.CircleFullPrototype.Forest
