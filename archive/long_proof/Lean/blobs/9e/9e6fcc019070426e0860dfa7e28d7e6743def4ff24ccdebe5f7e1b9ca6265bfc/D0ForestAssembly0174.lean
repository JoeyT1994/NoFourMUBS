import D0FullInterface
import D0ForestAssembly0173
import D0ForestChunk0661
import D0ForestChunk0662
import D0ForestChunk0663
import D0ForestChunk0664
import D0ForestChunk0665
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1459709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
theorem cover_1459709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459709 := by
  apply coveredState_split_literal (state := state_1459709) 0
    state_1459710 state_1459715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459710
  · exact cover_1459715
#print axioms cover_1459709

def state_1459708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 29)))
theorem cover_1459708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459708 := by
  apply coveredState_split_literal (state := state_1459708) 2
    state_1459709 state_1459794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459709
  · exact cover_1459794
#print axioms cover_1459708

def state_1459470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 14)))
theorem cover_1459470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459470 := by
  apply coveredState_split_literal (state := state_1459470) 4
    state_1459471 state_1459708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459471
  · exact cover_1459708
#print axioms cover_1459470

def state_1459430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 14)))
theorem cover_1459430 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459430 := by
  apply coveredState_split_literal (state := state_1459430) 1
    state_1459431 state_1459470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459431
  · exact cover_1459470
#print axioms cover_1459430

def state_1459815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 14)))
theorem cover_1459815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459815 := by
  apply coveredState_split_literal (state := state_1459815) 1
    state_1459816 state_1459853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459816
  · exact cover_1459853
#print axioms cover_1459815

def state_1459429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
theorem cover_1459429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459429 := by
  apply coveredState_split_literal (state := state_1459429) 3
    state_1459430 state_1459815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459430
  · exact cover_1459815
#print axioms cover_1459429

def state_1459419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
theorem cover_1459419 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459419 := by
  apply coveredState_split_literal (state := state_1459419) 0
    state_1459420 state_1459429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459420
  · exact cover_1459429
#print axioms cover_1459419

def state_1459418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 7)))
theorem cover_1459418 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459418 := by
  apply coveredState_split_literal (state := state_1459418) 4
    state_1459419 state_1459902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459419
  · exact cover_1459902
#print axioms cover_1459418

def state_1459417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 7)))
theorem cover_1459417 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459417 := by
  apply coveredState_split_literal (state := state_1459417) 2
    state_1459418 state_1459931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459418
  · exact cover_1459931
#print axioms cover_1459417

def state_1459337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_1459337 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459337 := by
  apply coveredState_split_literal (state := state_1459337) 3
    state_1459338 state_1459417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459338
  · exact cover_1459417
#print axioms cover_1459337

def state_1460051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 43 else 57)))
theorem cover_1460051 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460051 := by
  apply coveredState_split_literal (state := state_1460051) 2
    state_1460052 state_1460111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460052
  · exact cover_1460111
#print axioms cover_1460051

def state_1460043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 43 else 28)))
theorem cover_1460043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460043 := by
  apply coveredState_split_literal (state := state_1460043) 4
    state_1460044 state_1460051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460044
  · exact cover_1460051
#print axioms cover_1460043

def state_1460027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 21 else 28)))
theorem cover_1460027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460027 := by
  apply coveredState_split_literal (state := state_1460027) 3
    state_1460028 state_1460043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460028
  · exact cover_1460043
#print axioms cover_1460027

def state_1460026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 21 else 28)))
theorem cover_1460026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460026 := by
  apply coveredState_split_literal (state := state_1460026) 1
    state_1460027 state_1460122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460027
  · exact cover_1460122
#print axioms cover_1460026

def state_1460018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 21 else 28)))
theorem cover_1460018 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460018 := by
  apply coveredState_split_literal (state := state_1460018) 0
    state_1460019 state_1460026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460019
  · exact cover_1460026
#print axioms cover_1460018

def state_1460017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 21 else 28)))
theorem cover_1460017 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460017 := by
  apply coveredState_split_literal (state := state_1460017) 2
    state_1460018 state_1460129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460018
  · exact cover_1460129
#print axioms cover_1460017

def state_1460016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 21 else 14)))
theorem cover_1460016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460016 := by
  apply coveredState_split_literal (state := state_1460016) 4
    state_1460017 state_1460142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460017
  · exact cover_1460142
#print axioms cover_1460016

def state_1459998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
theorem cover_1459998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459998 := by
  apply coveredState_split_literal (state := state_1459998) 3
    state_1459999 state_1460016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459999
  · exact cover_1460016
#print axioms cover_1459998

def state_1459997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
theorem cover_1459997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459997 := by
  apply coveredState_split_literal (state := state_1459997) 1
    state_1459998 state_1460177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459998
  · exact cover_1460177
#print axioms cover_1459997

def state_1459989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
theorem cover_1459989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459989 := by
  apply coveredState_split_literal (state := state_1459989) 0
    state_1459990 state_1459997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459990
  · exact cover_1459997
#print axioms cover_1459989

def state_1459988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 7)))
theorem cover_1459988 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459988 := by
  apply coveredState_split_literal (state := state_1459988) 4
    state_1459989 state_1460182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459989
  · exact cover_1460182
#print axioms cover_1459988

def state_1459987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 7)))
theorem cover_1459987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459987 := by
  apply coveredState_split_literal (state := state_1459987) 2
    state_1459988 state_1460195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459988
  · exact cover_1460195
#print axioms cover_1459987

def state_1460243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 57)))
theorem cover_1460243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460243 := by
  apply coveredState_split_literal (state := state_1460243) 1
    state_1460244 state_1460305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460244
  · exact cover_1460305
#print axioms cover_1460243

def state_1460237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 57)))
theorem cover_1460237 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460237 := by
  apply coveredState_split_literal (state := state_1460237) 0
    state_1460238 state_1460243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460238
  · exact cover_1460243
#print axioms cover_1460237

def state_1460236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 57)))
theorem cover_1460236 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460236 := by
  apply coveredState_split_literal (state := state_1460236) 2
    state_1460237 state_1460328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460237
  · exact cover_1460328
#print axioms cover_1460236

def state_1460228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 28)))
theorem cover_1460228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460228 := by
  apply coveredState_split_literal (state := state_1460228) 4
    state_1460229 state_1460236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460229
  · exact cover_1460236
#print axioms cover_1460228

def state_1460227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 28)))
theorem cover_1460227 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460227 := by
  apply coveredState_split_literal (state := state_1460227) 3
    state_1460228 state_1460337
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460228
  · exact cover_1460337
#print axioms cover_1460227

def state_1460226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 28)))
theorem cover_1460226 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460226 := by
  apply coveredState_split_literal (state := state_1460226) 1
    state_1460227 state_1460354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460227
  · exact cover_1460354
#print axioms cover_1460226

def state_1460220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 28)))
theorem cover_1460220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460220 := by
  apply coveredState_split_literal (state := state_1460220) 0
    state_1460221 state_1460226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460221
  · exact cover_1460226
#print axioms cover_1460220

def state_1460219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 28)))
theorem cover_1460219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460219 := by
  apply coveredState_split_literal (state := state_1460219) 2
    state_1460220 state_1460361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460220
  · exact cover_1460361
#print axioms cover_1460219

def state_1460396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 58)))
theorem cover_1460396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460396 := by
  apply coveredState_split_literal (state := state_1460396) 3
    state_1460397 state_1460420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460397
  · exact cover_1460420
#print axioms cover_1460396

def state_1460395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 58)))
theorem cover_1460395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460395 := by
  apply coveredState_split_literal (state := state_1460395) 1
    state_1460396 state_1460471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460396
  · exact cover_1460471
#print axioms cover_1460395
end Mub6.Numerical.CircleFullD0.Forest
