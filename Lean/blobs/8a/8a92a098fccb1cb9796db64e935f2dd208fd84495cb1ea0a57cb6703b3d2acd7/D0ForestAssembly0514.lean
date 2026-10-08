import D0FullInterface
import D0ForestAssembly0513
import D0ForestChunk2019
import D0ForestChunk2021
import D0ForestChunk2022
import D0ForestChunk2023
import D0ForestChunk2024
import D0ForestChunk2025
import D0ForestChunk2026
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2565583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_2565583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565583 := by
  apply coveredState_split_literal (state := state_2565583) 3
    state_2565584 state_2565839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565584
  · exact cover_2565839
#print axioms cover_2565583

def state_2565563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_2565563 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565563 := by
  apply coveredState_split_literal (state := state_2565563) 0
    state_2565564 state_2565583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565564
  · exact cover_2565583
#print axioms cover_2565563

def state_2565469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_2565469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565469 := by
  apply coveredState_split_literal (state := state_2565469) 4
    state_2565470 state_2565563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565470
  · exact cover_2565563
#print axioms cover_2565469

def state_2566010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_2566010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566010 := by
  apply coveredState_split_literal (state := state_2566010) 4
    state_2566011 state_2566026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566011
  · exact cover_2566026
#print axioms cover_2566010

def state_2565468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_2565468 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565468 := by
  apply coveredState_split_literal (state := state_2565468) 1
    state_2565469 state_2566010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565469
  · exact cover_2566010
#print axioms cover_2565468

def state_2565467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 23)))
theorem cover_2565467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565467 := by
  apply coveredState_split_literal (state := state_2565467) 3
    state_2565468 state_2566085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565468
  · exact cover_2566085
#print axioms cover_2565467

def state_2565291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
theorem cover_2565291 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565291 := by
  apply coveredState_split_literal (state := state_2565291) 2
    state_2565292 state_2565467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565292
  · exact cover_2565467
#print axioms cover_2565291

def state_2565279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
theorem cover_2565279 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565279 := by
  apply coveredState_split_literal (state := state_2565279) 0
    state_2565280 state_2565291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565280
  · exact cover_2565291
#print axioms cover_2565279

def state_2565257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_2565257 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565257 := by
  apply coveredState_split_literal (state := state_2565257) 4
    state_2565258 state_2565279
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565258
  · exact cover_2565279
#print axioms cover_2565257

def state_2565256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_2565256 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565256 := by
  apply coveredState_split_literal (state := state_2565256) 1
    state_2565257 state_2566120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565257
  · exact cover_2566120
#print axioms cover_2565256

def state_2565255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 11)))
theorem cover_2565255 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565255 := by
  apply coveredState_split_literal (state := state_2565255) 3
    state_2565256 state_2566137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565256
  · exact cover_2566137
#print axioms cover_2565255

def state_2566221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 46)))
theorem cover_2566221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566221 := by
  apply coveredState_split_literal (state := state_2566221) 3
    state_2566222 state_2566283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566222
  · exact cover_2566283
#print axioms cover_2566221

def state_2566215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 46)))
theorem cover_2566215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566215 := by
  apply coveredState_split_literal (state := state_2566215) 0
    state_2566216 state_2566221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566216
  · exact cover_2566221
#print axioms cover_2566215

def state_2566293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 56 else 47)))
theorem cover_2566293 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566293 := by
  apply coveredState_split_literal (state := state_2566293) 2
    state_2566294 state_2566347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566294
  · exact cover_2566347
#print axioms cover_2566293

def state_2566292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 47)))
theorem cover_2566292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566292 := by
  apply coveredState_split_literal (state := state_2566292) 3
    state_2566293 state_2566366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566293
  · exact cover_2566366
#print axioms cover_2566292

def state_2566288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 47)))
theorem cover_2566288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566288 := by
  apply coveredState_split_literal (state := state_2566288) 0
    state_2566289 state_2566292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566289
  · exact cover_2566292
#print axioms cover_2566288

def state_2566214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 23)))
theorem cover_2566214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566214 := by
  apply coveredState_split_literal (state := state_2566214) 4
    state_2566215 state_2566288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566215
  · exact cover_2566288
#print axioms cover_2566214

def state_2566170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 23)))
theorem cover_2566170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566170 := by
  apply coveredState_split_literal (state := state_2566170) 1
    state_2566171 state_2566214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566171
  · exact cover_2566214
#print axioms cover_2566170

def state_2566169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 28 else 23)))
theorem cover_2566169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566169 := by
  apply coveredState_split_literal (state := state_2566169) 2
    state_2566170 state_2566383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566170
  · exact cover_2566383
#print axioms cover_2566169

def state_2566168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 23)))
theorem cover_2566168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566168 := by
  apply coveredState_split_literal (state := state_2566168) 3
    state_2566169 state_2566400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566169
  · exact cover_2566400
#print axioms cover_2566168

def state_2566166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 23)))
theorem cover_2566166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566166 := by
  apply coveredState_split_literal (state := state_2566166) 0
    state_2566167 state_2566168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566167
  · exact cover_2566168
#print axioms cover_2566166

def state_2566148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
theorem cover_2566148 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566148 := by
  apply coveredState_split_literal (state := state_2566148) 4
    state_2566149 state_2566166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566149
  · exact cover_2566166
#print axioms cover_2566148

def state_2566436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 28 else 23)))
theorem cover_2566436 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566436 := by
  apply coveredState_split_literal (state := state_2566436) 2
    state_2566437 state_2566454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566437
  · exact cover_2566454
#print axioms cover_2566436

def state_2566435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 23)))
theorem cover_2566435 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566435 := by
  apply coveredState_split_literal (state := state_2566435) 3
    state_2566436 state_2566503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566436
  · exact cover_2566503
#print axioms cover_2566435

def state_2566431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 23)))
theorem cover_2566431 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566431 := by
  apply coveredState_split_literal (state := state_2566431) 0
    state_2566432 state_2566435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566432
  · exact cover_2566435
#print axioms cover_2566431

def state_2566413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
theorem cover_2566413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566413 := by
  apply coveredState_split_literal (state := state_2566413) 4
    state_2566414 state_2566431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566414
  · exact cover_2566431
#print axioms cover_2566413

def state_2566147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
theorem cover_2566147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566147 := by
  apply coveredState_split_literal (state := state_2566147) 1
    state_2566148 state_2566413
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566148
  · exact cover_2566413
#print axioms cover_2566147

def state_2566146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 11)))
theorem cover_2566146 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566146 := by
  apply coveredState_split_literal (state := state_2566146) 3
    state_2566147 state_2566506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566147
  · exact cover_2566506
#print axioms cover_2566146

def state_2565254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_2565254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565254 := by
  apply coveredState_split_literal (state := state_2565254) 2
    state_2565255 state_2566146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565255
  · exact cover_2566146
#print axioms cover_2565254

def state_2565242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_2565242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565242 := by
  apply coveredState_split_literal (state := state_2565242) 4
    state_2565243 state_2565254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565243
  · exact cover_2565254
#print axioms cover_2565242

def state_2565241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_2565241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565241 := by
  apply coveredState_split_literal (state := state_2565241) 1
    state_2565242 state_2566509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565242
  · exact cover_2566509
#print axioms cover_2565241

def state_2566720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 47)))
theorem cover_2566720 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566720 := by
  apply coveredState_split_literal (state := state_2566720) 4
    state_2566721 state_2566784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566721
  · exact cover_2566784
#print axioms cover_2566720
end Mub6.Numerical.CircleFullD0.Forest
