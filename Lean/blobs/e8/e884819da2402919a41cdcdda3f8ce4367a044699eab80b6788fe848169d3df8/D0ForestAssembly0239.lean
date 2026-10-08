import D0FullInterface
import D0ForestAssembly0199
import D0ForestAssembly0208
import D0ForestAssembly0213
import D0ForestAssembly0238
import D0ForestChunk0909
import D0ForestChunk0910
import D0ForestChunk0911
import D0ForestChunk0912
import D0ForestChunk0913
import D0ForestChunk0914
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1518969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 7)))
theorem cover_1518969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518969 := by
  apply coveredState_split_literal (state := state_1518969) 4
    state_1518970 state_1518975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518970
  · exact cover_1518975
#print axioms cover_1518969

def state_1518968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 7)))
theorem cover_1518968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518968 := by
  apply coveredState_split_literal (state := state_1518968) 3
    state_1518969 state_1519092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518969
  · exact cover_1519092
#print axioms cover_1518968

def state_1519181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 28 else 31)))
theorem cover_1519181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519181 := by
  apply coveredState_split_literal (state := state_1519181) 0
    state_1519182 state_1519243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519182
  · exact cover_1519243
#print axioms cover_1519181

def state_1519161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 28 else 15)))
theorem cover_1519161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519161 := by
  apply coveredState_split_literal (state := state_1519161) 4
    state_1519162 state_1519181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519162
  · exact cover_1519181
#print axioms cover_1519161

def state_1519160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 14 else 15)))
theorem cover_1519160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519160 := by
  apply coveredState_split_literal (state := state_1519160) 3
    state_1519161 state_1519266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519161
  · exact cover_1519266
#print axioms cover_1519160

def state_1519159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 15)))
theorem cover_1519159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519159 := by
  apply coveredState_split_literal (state := state_1519159) 2
    state_1519160 state_1519283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519160
  · exact cover_1519283
#print axioms cover_1519159

def state_1519296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 28 else 31)))
theorem cover_1519296 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519296 := by
  apply coveredState_split_literal (state := state_1519296) 1
    state_1519297 state_1519356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519297
  · exact cover_1519356
#print axioms cover_1519296

def state_1519288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 28 else 15)))
theorem cover_1519288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519288 := by
  apply coveredState_split_literal (state := state_1519288) 4
    state_1519289 state_1519296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519289
  · exact cover_1519296
#print axioms cover_1519288

def state_1519287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 14 else 15)))
theorem cover_1519287 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519287 := by
  apply coveredState_split_literal (state := state_1519287) 3
    state_1519288 state_1519377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519288
  · exact cover_1519377
#print axioms cover_1519287

def state_1519286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 15)))
theorem cover_1519286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519286 := by
  apply coveredState_split_literal (state := state_1519286) 2
    state_1519287 state_1519380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519287
  · exact cover_1519380
#print axioms cover_1519286

def state_1519158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 15)))
theorem cover_1519158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519158 := by
  apply coveredState_split_literal (state := state_1519158) 1
    state_1519159 state_1519286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519159
  · exact cover_1519286
#print axioms cover_1519158

def state_1519110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 15)))
theorem cover_1519110 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519110 := by
  apply coveredState_split_literal (state := state_1519110) 0
    state_1519111 state_1519158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519111
  · exact cover_1519158
#print axioms cover_1519110

def state_1519094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 7)))
theorem cover_1519094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519094 := by
  apply coveredState_split_literal (state := state_1519094) 4
    state_1519095 state_1519110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519095
  · exact cover_1519110
#print axioms cover_1519094

def state_1519093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 7)))
theorem cover_1519093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519093 := by
  apply coveredState_split_literal (state := state_1519093) 3
    state_1519094 state_1519395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519094
  · exact cover_1519395
#print axioms cover_1519093

def state_1518967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_1518967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518967 := by
  apply coveredState_split_literal (state := state_1518967) 2
    state_1518968 state_1519093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518968
  · exact cover_1519093
#print axioms cover_1518967

def state_1518749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_1518749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518749 := by
  apply coveredState_split_literal (state := state_1518749) 1
    state_1518750 state_1518967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518750
  · exact cover_1518967
#print axioms cover_1518749

def state_1519409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_1519409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519409 := by
  apply coveredState_split_literal (state := state_1519409) 2
    state_1519410 state_1519433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519410
  · exact cover_1519433
#print axioms cover_1519409

def state_1519495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 7)))
theorem cover_1519495 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519495 := by
  apply coveredState_split_literal (state := state_1519495) 4
    state_1519496 state_1519511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519496
  · exact cover_1519511
#print axioms cover_1519495

def state_1519494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 7)))
theorem cover_1519494 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519494 := by
  apply coveredState_split_literal (state := state_1519494) 3
    state_1519495 state_1519568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519495
  · exact cover_1519568
#print axioms cover_1519494

def state_1519478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_1519478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519478 := by
  apply coveredState_split_literal (state := state_1519478) 2
    state_1519479 state_1519494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519479
  · exact cover_1519494
#print axioms cover_1519478

def state_1519408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_1519408 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519408 := by
  apply coveredState_split_literal (state := state_1519408) 1
    state_1519409 state_1519478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519409
  · exact cover_1519478
#print axioms cover_1519408

def state_1518748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_1518748 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518748 := by
  apply coveredState_split_literal (state := state_1518748) 0
    state_1518749 state_1519408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518749
  · exact cover_1519408
#print axioms cover_1518748

def state_1518690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_1518690 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518690 := by
  apply coveredState_split_literal (state := state_1518690) 4
    state_1518691 state_1518748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518691
  · exact cover_1518748
#print axioms cover_1518690

def state_1493864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1493864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493864 := by
  apply coveredState_split_literal (state := state_1493864) 3
    state_1493865 state_1518690
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493865
  · exact cover_1518690
#print axioms cover_1493864

def state_1489312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1489312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489312 := by
  apply coveredState_split_literal (state := state_1489312) 2
    state_1489313 state_1493864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489313
  · exact cover_1493864
#print axioms cover_1489312

def state_1481332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1481332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481332 := by
  apply coveredState_split_literal (state := state_1481332) 1
    state_1481333 state_1489312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481333
  · exact cover_1489312
#print axioms cover_1481332

def state_1519637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1519637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519637 := by
  apply coveredState_split_literal (state := state_1519637) 2
    state_1519638 state_1519659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519638
  · exact cover_1519659
#print axioms cover_1519637

def state_1519581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1519581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519581 := by
  apply coveredState_split_literal (state := state_1519581) 1
    state_1519582 state_1519637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519582
  · exact cover_1519637
#print axioms cover_1519581

def state_1481331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1481331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481331 := by
  apply coveredState_split_literal (state := state_1481331) 0
    state_1481332 state_1519581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481332
  · exact cover_1519581
#print axioms cover_1481331

def state_1481141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1481141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481141 := by
  apply coveredState_split_literal (state := state_1481141) 4
    state_1481142 state_1481331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481142
  · exact cover_1481331
#print axioms cover_1481141

def state_1471199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1471199 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471199 := by
  apply coveredState_split_literal (state := state_1471199) 3
    state_1471200 state_1481141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471200
  · exact cover_1481141
#print axioms cover_1471199

def state_1519787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1519787 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519787 := by
  apply coveredState_split_literal (state := state_1519787) 2
    state_1519788 state_1519839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519788
  · exact cover_1519839
#print axioms cover_1519787
end Mub6.Numerical.CircleFullD0.Forest
