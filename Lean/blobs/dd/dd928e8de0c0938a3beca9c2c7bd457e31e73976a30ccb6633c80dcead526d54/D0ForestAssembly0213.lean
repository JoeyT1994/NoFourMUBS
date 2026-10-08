import D0FullInterface
import D0ForestAssembly0208
import D0ForestAssembly0211
import D0ForestAssembly0212
import D0ForestChunk0798
import D0ForestChunk0803
import D0ForestChunk0804
import D0ForestChunk0805
import D0ForestChunk0806
import D0ForestChunk0807
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1492266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
theorem cover_1492266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492266 := by
  apply coveredState_split_literal (state := state_1492266) 2
    state_1492267 state_1492300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492267
  · exact cover_1492300
#print axioms cover_1492266

def state_1493697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 7)))
theorem cover_1493697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493697 := by
  apply coveredState_split_literal (state := state_1493697) 2
    state_1493698 state_1493703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493698
  · exact cover_1493703
#print axioms cover_1493697

def state_1492265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1492265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492265 := by
  apply coveredState_split_literal (state := state_1492265) 3
    state_1492266 state_1493697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492266
  · exact cover_1493697
#print axioms cover_1492265

def state_1489405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1489405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489405 := by
  apply coveredState_split_literal (state := state_1489405) 1
    state_1489406 state_1492265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489406
  · exact cover_1492265
#print axioms cover_1489405

def state_1493766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1493766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493766 := by
  apply coveredState_split_literal (state := state_1493766) 1
    state_1493767 state_1493796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493767
  · exact cover_1493796
#print axioms cover_1493766

def state_1489404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1489404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489404 := by
  apply coveredState_split_literal (state := state_1489404) 0
    state_1489405 state_1493766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489405
  · exact cover_1493766
#print axioms cover_1489404

def state_1489314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_1489314 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489314 := by
  apply coveredState_split_literal (state := state_1489314) 4
    state_1489315 state_1489404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489315
  · exact cover_1489404
#print axioms cover_1489314

def state_1489313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_1489313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489313 := by
  apply coveredState_split_literal (state := state_1489313) 3
    state_1489314 state_1493833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489314
  · exact cover_1493833
#print axioms cover_1489313

def state_1493915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
theorem cover_1493915 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493915 := by
  apply coveredState_split_literal (state := state_1493915) 0
    state_1493916 state_1493937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493916
  · exact cover_1493937
#print axioms cover_1493915

def state_1493905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 6)))
theorem cover_1493905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493905 := by
  apply coveredState_split_literal (state := state_1493905) 4
    state_1493906 state_1493915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493906
  · exact cover_1493915
#print axioms cover_1493905

def state_1493869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
theorem cover_1493869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493869 := by
  apply coveredState_split_literal (state := state_1493869) 3
    state_1493870 state_1493905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493870
  · exact cover_1493905
#print axioms cover_1493869

def state_1493868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1493868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493868 := by
  apply coveredState_split_literal (state := state_1493868) 2
    state_1493869 state_1493984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493869
  · exact cover_1493984
#print axioms cover_1493868

def state_1493867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1493867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493867 := by
  apply coveredState_split_literal (state := state_1493867) 1
    state_1493868 state_1494001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493868
  · exact cover_1494001
#print axioms cover_1493867

def state_1493866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1493866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493866 := by
  apply coveredState_split_literal (state := state_1493866) 0
    state_1493867 state_1494012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493867
  · exact cover_1494012
#print axioms cover_1493866

def state_1494206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 40) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 57)))
theorem cover_1494206 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494206 := by
  apply coveredState_split_literal (state := state_1494206) 0
    state_1494207 state_1494240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494207
  · exact cover_1494240
#print axioms cover_1494206

def state_1494205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 40) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 57)))
theorem cover_1494205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494205 := by
  apply coveredState_split_literal (state := state_1494205) 2
    state_1494206 state_1494285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494206
  · exact cover_1494285
#print axioms cover_1494205

def state_1494299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 57)))
theorem cover_1494299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494299 := by
  apply coveredState_split_literal (state := state_1494299) 0
    state_1494300 state_1494331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494300
  · exact cover_1494331
#print axioms cover_1494299

def state_1494298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 41) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 57)))
theorem cover_1494298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494298 := by
  apply coveredState_split_literal (state := state_1494298) 2
    state_1494299 state_1494386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494299
  · exact cover_1494386
#print axioms cover_1494298

def state_1494204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 57)))
theorem cover_1494204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494204 := by
  apply coveredState_split_literal (state := state_1494204) 1
    state_1494205 state_1494298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494205
  · exact cover_1494298
#print axioms cover_1494204

def state_1494148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 28)))
theorem cover_1494148 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494148 := by
  apply coveredState_split_literal (state := state_1494148) 4
    state_1494149 state_1494204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494149
  · exact cover_1494204
#print axioms cover_1494148

def state_1494108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 28)))
theorem cover_1494108 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494108 := by
  apply coveredState_split_literal (state := state_1494108) 3
    state_1494109 state_1494148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494109
  · exact cover_1494148
#print axioms cover_1494108

def state_1494086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 28)))
theorem cover_1494086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494086 := by
  apply coveredState_split_literal (state := state_1494086) 0
    state_1494087 state_1494108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494087
  · exact cover_1494108
#print axioms cover_1494086

def state_1494541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 58)))
theorem cover_1494541 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494541 := by
  apply coveredState_split_literal (state := state_1494541) 4
    state_1494542 state_1494593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494542
  · exact cover_1494593
#print axioms cover_1494541

def state_1494501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 58)))
theorem cover_1494501 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494501 := by
  apply coveredState_split_literal (state := state_1494501) 3
    state_1494502 state_1494541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494502
  · exact cover_1494541
#print axioms cover_1494501

def state_1494459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 58)))
theorem cover_1494459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494459 := by
  apply coveredState_split_literal (state := state_1494459) 0
    state_1494460 state_1494501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494460
  · exact cover_1494501
#print axioms cover_1494459

def state_1494458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 41) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 58)))
theorem cover_1494458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494458 := by
  apply coveredState_split_literal (state := state_1494458) 2
    state_1494459 state_1494616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494459
  · exact cover_1494616
#print axioms cover_1494458

def state_1494444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 58)))
theorem cover_1494444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494444 := by
  apply coveredState_split_literal (state := state_1494444) 1
    state_1494445 state_1494458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494445
  · exact cover_1494458
#print axioms cover_1494444

def state_1494443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 29)))
theorem cover_1494443 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494443 := by
  apply coveredState_split_literal (state := state_1494443) 4
    state_1494444 state_1494633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494444
  · exact cover_1494633
#print axioms cover_1494443

def state_1494419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 29)))
theorem cover_1494419 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494419 := by
  apply coveredState_split_literal (state := state_1494419) 3
    state_1494420 state_1494443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494420
  · exact cover_1494443
#print axioms cover_1494419

def state_1494401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 29)))
theorem cover_1494401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494401 := by
  apply coveredState_split_literal (state := state_1494401) 0
    state_1494402 state_1494419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494402
  · exact cover_1494419
#print axioms cover_1494401

def state_1494085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 14)))
theorem cover_1494085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494085 := by
  apply coveredState_split_literal (state := state_1494085) 4
    state_1494086 state_1494401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494086
  · exact cover_1494401
#print axioms cover_1494085

def state_1494084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 14)))
theorem cover_1494084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494084 := by
  apply coveredState_split_literal (state := state_1494084) 2
    state_1494085 state_1494644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494085
  · exact cover_1494644
#print axioms cover_1494084
end Mub6.Numerical.CircleFullD0.Forest
