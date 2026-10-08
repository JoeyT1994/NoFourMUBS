import D0FullInterface
import D0ForestAssembly0343
import D0ForestChunk1329
import D0ForestChunk1330
import D0ForestChunk1331
import D0ForestChunk1332
import D0ForestChunk1333
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1619752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_1619752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619752 := by
  apply coveredState_split_literal (state := state_1619752) 3
    state_1619753 state_1619760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619753
  · exact cover_1619760
#print axioms cover_1619752

def state_1619560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1619560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619560 := by
  apply coveredState_split_literal (state := state_1619560) 2
    state_1619561 state_1619752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619561
  · exact cover_1619752
#print axioms cover_1619560

def state_1619879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1619879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619879 := by
  apply coveredState_split_literal (state := state_1619879) 2
    state_1619880 state_1619935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619880
  · exact cover_1619935
#print axioms cover_1619879

def state_1619559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1619559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619559 := by
  apply coveredState_split_literal (state := state_1619559) 1
    state_1619560 state_1619879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619560
  · exact cover_1619879
#print axioms cover_1619559

def state_1618073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1618073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618073 := by
  apply coveredState_split_literal (state := state_1618073) 0
    state_1618074 state_1619559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618074
  · exact cover_1619559
#print axioms cover_1618073

def state_1620014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1620014 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620014 := by
  apply coveredState_split_literal (state := state_1620014) 2
    state_1620015 state_1620078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620015
  · exact cover_1620078
#print axioms cover_1620014

def state_1619974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1619974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619974 := by
  apply coveredState_split_literal (state := state_1619974) 1
    state_1619975 state_1620014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619975
  · exact cover_1620014
#print axioms cover_1619974

def state_1619956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1619956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619956 := by
  apply coveredState_split_literal (state := state_1619956) 0
    state_1619957 state_1619974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619957
  · exact cover_1619974
#print axioms cover_1619956

def state_1618072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1618072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618072 := by
  apply coveredState_split_literal (state := state_1618072) 4
    state_1618073 state_1619956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618073
  · exact cover_1619956
#print axioms cover_1618072

def state_1620211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 96 else 32)))
theorem cover_1620211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620211 := by
  apply coveredState_split_literal (state := state_1620211) 1
    state_1620212 state_1620263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620212
  · exact cover_1620263
#print axioms cover_1620211

def state_1620210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 32)))
theorem cover_1620210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620210 := by
  apply coveredState_split_literal (state := state_1620210) 3
    state_1620211 state_1620300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620211
  · exact cover_1620300
#print axioms cover_1620210

def state_1620209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 16)))
theorem cover_1620209 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620209 := by
  apply coveredState_split_literal (state := state_1620209) 4
    state_1620210 state_1620315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620210
  · exact cover_1620315
#print axioms cover_1620209

def state_1620199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 16)))
theorem cover_1620199 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620199 := by
  apply coveredState_split_literal (state := state_1620199) 0
    state_1620200 state_1620209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620200
  · exact cover_1620209
#print axioms cover_1620199

def state_1620195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 48 else 16)))
theorem cover_1620195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620195 := by
  apply coveredState_split_literal (state := state_1620195) 2
    state_1620196 state_1620199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620196
  · exact cover_1620199
#print axioms cover_1620195

def state_1620161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 48 else 16)))
theorem cover_1620161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620161 := by
  apply coveredState_split_literal (state := state_1620161) 1
    state_1620162 state_1620195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620162
  · exact cover_1620195
#print axioms cover_1620161

def state_1620160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 16)))
theorem cover_1620160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620160 := by
  apply coveredState_split_literal (state := state_1620160) 3
    state_1620161 state_1620350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620161
  · exact cover_1620350
#print axioms cover_1620160

def state_1620159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 8)))
theorem cover_1620159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620159 := by
  apply coveredState_split_literal (state := state_1620159) 4
    state_1620160 state_1620357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620160
  · exact cover_1620357
#print axioms cover_1620159

def state_1620442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 96 else 65)))
theorem cover_1620442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620442 := by
  apply coveredState_split_literal (state := state_1620442) 3
    state_1620443 state_1620490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620443
  · exact cover_1620490
#print axioms cover_1620442

def state_1620440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 96 else 32)))
theorem cover_1620440 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620440 := by
  apply coveredState_split_literal (state := state_1620440) 4
    state_1620441 state_1620442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620441
  · exact cover_1620442
#print axioms cover_1620440

def state_1620439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 96 else 32)))
theorem cover_1620439 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620439 := by
  apply coveredState_split_literal (state := state_1620439) 0
    state_1620440 state_1620507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620440
  · exact cover_1620507
#print axioms cover_1620439

def state_1620425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 51 else (if j.val < 4 then 96 else 32)))
theorem cover_1620425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620425 := by
  apply coveredState_split_literal (state := state_1620425) 2
    state_1620426 state_1620439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620426
  · exact cover_1620439
#print axioms cover_1620425

def state_1620403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 96 else 32)))
theorem cover_1620403 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620403 := by
  apply coveredState_split_literal (state := state_1620403) 1
    state_1620404 state_1620425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620404
  · exact cover_1620425
#print axioms cover_1620403

def state_1620402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 32)))
theorem cover_1620402 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620402 := by
  apply coveredState_split_literal (state := state_1620402) 3
    state_1620403 state_1620534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620403
  · exact cover_1620534
#print axioms cover_1620402

def state_1620551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 33)))
theorem cover_1620551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620551 := by
  apply coveredState_split_literal (state := state_1620551) 3
    state_1620552 state_1620605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620552
  · exact cover_1620605
#print axioms cover_1620551

def state_1620401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 16)))
theorem cover_1620401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620401 := by
  apply coveredState_split_literal (state := state_1620401) 4
    state_1620402 state_1620551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620402
  · exact cover_1620551
#print axioms cover_1620401

def state_1620400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 16)))
theorem cover_1620400 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620400 := by
  apply coveredState_split_literal (state := state_1620400) 0
    state_1620401 state_1620616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620401
  · exact cover_1620616
#print axioms cover_1620400

def state_1620396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 48 else 16)))
theorem cover_1620396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620396 := by
  apply coveredState_split_literal (state := state_1620396) 2
    state_1620397 state_1620400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620397
  · exact cover_1620400
#print axioms cover_1620396

def state_1620386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 48 else 16)))
theorem cover_1620386 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620386 := by
  apply coveredState_split_literal (state := state_1620386) 1
    state_1620387 state_1620396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620387
  · exact cover_1620396
#print axioms cover_1620386

def state_1620385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 16)))
theorem cover_1620385 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620385 := by
  apply coveredState_split_literal (state := state_1620385) 3
    state_1620386 state_1620639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620386
  · exact cover_1620639
#print axioms cover_1620385

def state_1620384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 8)))
theorem cover_1620384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620384 := by
  apply coveredState_split_literal (state := state_1620384) 4
    state_1620385 state_1620648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620385
  · exact cover_1620648
#print axioms cover_1620384

def state_1620158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 8)))
theorem cover_1620158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620158 := by
  apply coveredState_split_literal (state := state_1620158) 0
    state_1620159 state_1620384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620159
  · exact cover_1620384
#print axioms cover_1620158

def state_1620157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 8)))
theorem cover_1620157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620157 := by
  apply coveredState_split_literal (state := state_1620157) 3
    state_1620158 state_1620677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620158
  · exact cover_1620677
#print axioms cover_1620157
end Mub6.Numerical.CircleFullD0.Forest
