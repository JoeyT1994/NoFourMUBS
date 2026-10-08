import D0FullInterface
import D0ForestAssembly0422
import D0ForestAssembly0423
import D0ForestChunk1655
import D0ForestChunk1657
import D0ForestChunk1658
import D0ForestChunk1659
import D0ForestChunk1660
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2270599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 29)))
theorem cover_2270599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270599 := by
  apply coveredState_split_literal (state := state_2270599) 3
    state_2270600 state_2270821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270600
  · exact cover_2270821
#print axioms cover_2270599

def state_2270577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 29)))
theorem cover_2270577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270577 := by
  apply coveredState_split_literal (state := state_2270577) 2
    state_2270578 state_2270599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270578
  · exact cover_2270599
#print axioms cover_2270577

def state_2269677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2269677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269677 := by
  apply coveredState_split_literal (state := state_2269677) 4
    state_2269678 state_2270577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269678
  · exact cover_2270577
#print axioms cover_2269677

def state_2269549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2269549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269549 := by
  apply coveredState_split_literal (state := state_2269549) 0
    state_2269550 state_2269677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269550
  · exact cover_2269677
#print axioms cover_2269549

def state_2268173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2268173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268173 := by
  apply coveredState_split_literal (state := state_2268173) 1
    state_2268174 state_2269549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268174
  · exact cover_2269549
#print axioms cover_2268173

def state_2270907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 28)))
theorem cover_2270907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270907 := by
  apply coveredState_split_literal (state := state_2270907) 1
    state_2270908 state_2270951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270908
  · exact cover_2270951
#print axioms cover_2270907

def state_2270972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 46 else 28)))
theorem cover_2270972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270972 := by
  apply coveredState_split_literal (state := state_2270972) 1
    state_2270973 state_2271010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270973
  · exact cover_2271010
#print axioms cover_2270972

def state_2270906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 46 else 28)))
theorem cover_2270906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270906 := by
  apply coveredState_split_literal (state := state_2270906) 2
    state_2270907 state_2270972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270907
  · exact cover_2270972
#print axioms cover_2270906

def state_2270905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 28)))
theorem cover_2270905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270905 := by
  apply coveredState_split_literal (state := state_2270905) 3
    state_2270906 state_2271073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270906
  · exact cover_2271073
#print axioms cover_2270905

def state_2270904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 14)))
theorem cover_2270904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270904 := by
  apply coveredState_split_literal (state := state_2270904) 4
    state_2270905 state_2271098
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270905
  · exact cover_2271098
#print axioms cover_2270904

def state_2271109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 14)))
theorem cover_2271109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271109 := by
  apply coveredState_split_literal (state := state_2271109) 4
    state_2271110 state_2271171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271110
  · exact cover_2271171
#print axioms cover_2271109

def state_2270903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 14)))
theorem cover_2270903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270903 := by
  apply coveredState_split_literal (state := state_2270903) 0
    state_2270904 state_2271109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270904
  · exact cover_2271109
#print axioms cover_2270903

def state_2271220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 46 else 28)))
theorem cover_2271220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271220 := by
  apply coveredState_split_literal (state := state_2271220) 2
    state_2271221 state_2271232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271221
  · exact cover_2271232
#print axioms cover_2271220

def state_2271219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 28)))
theorem cover_2271219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271219 := by
  apply coveredState_split_literal (state := state_2271219) 3
    state_2271220 state_2271287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271220
  · exact cover_2271287
#print axioms cover_2271219

def state_2271218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 14)))
theorem cover_2271218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271218 := by
  apply coveredState_split_literal (state := state_2271218) 4
    state_2271219 state_2271300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271219
  · exact cover_2271300
#print axioms cover_2271218

def state_2271186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 14)))
theorem cover_2271186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271186 := by
  apply coveredState_split_literal (state := state_2271186) 0
    state_2271187 state_2271218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271187
  · exact cover_2271218
#print axioms cover_2271186

def state_2270902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 14)))
theorem cover_2270902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270902 := by
  apply coveredState_split_literal (state := state_2270902) 1
    state_2270903 state_2271186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2270903
  · exact cover_2271186
#print axioms cover_2270902

def state_2268172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 14)))
theorem cover_2268172 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268172 := by
  apply coveredState_split_literal (state := state_2268172) 3
    state_2268173 state_2270902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268173
  · exact cover_2270902
#print axioms cover_2268172

def state_2271337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
theorem cover_2271337 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271337 := by
  apply coveredState_split_literal (state := state_2271337) 4
    state_2271338 state_2271355
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271338
  · exact cover_2271355
#print axioms cover_2271337

def state_2271313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
theorem cover_2271313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271313 := by
  apply coveredState_split_literal (state := state_2271313) 0
    state_2271314 state_2271337
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271314
  · exact cover_2271337
#print axioms cover_2271313

def state_2271428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 22 else 28)))
theorem cover_2271428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271428 := by
  apply coveredState_split_literal (state := state_2271428) 3
    state_2271429 state_2271454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271429
  · exact cover_2271454
#print axioms cover_2271428

def state_2271427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 28)))
theorem cover_2271427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271427 := by
  apply coveredState_split_literal (state := state_2271427) 2
    state_2271428 state_2271505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271428
  · exact cover_2271505
#print axioms cover_2271427

def state_2271520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 29)))
theorem cover_2271520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271520 := by
  apply coveredState_split_literal (state := state_2271520) 4
    state_2271521 state_2271560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271521
  · exact cover_2271560
#print axioms cover_2271520

def state_2271512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 29)))
theorem cover_2271512 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271512 := by
  apply coveredState_split_literal (state := state_2271512) 0
    state_2271513 state_2271520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271513
  · exact cover_2271520
#print axioms cover_2271512

def state_2271601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 29)))
theorem cover_2271601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271601 := by
  apply coveredState_split_literal (state := state_2271601) 4
    state_2271602 state_2271653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271602
  · exact cover_2271653
#print axioms cover_2271601

def state_2271593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 29)))
theorem cover_2271593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271593 := by
  apply coveredState_split_literal (state := state_2271593) 0
    state_2271594 state_2271601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271594
  · exact cover_2271601
#print axioms cover_2271593

def state_2271511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 22 else 29)))
theorem cover_2271511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271511 := by
  apply coveredState_split_literal (state := state_2271511) 3
    state_2271512 state_2271593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271512
  · exact cover_2271593
#print axioms cover_2271511

def state_2271510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 29)))
theorem cover_2271510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271510 := by
  apply coveredState_split_literal (state := state_2271510) 2
    state_2271511 state_2271678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271511
  · exact cover_2271678
#print axioms cover_2271510

def state_2271426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
theorem cover_2271426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271426 := by
  apply coveredState_split_literal (state := state_2271426) 4
    state_2271427 state_2271510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271427
  · exact cover_2271510
#print axioms cover_2271426

def state_2271414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
theorem cover_2271414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271414 := by
  apply coveredState_split_literal (state := state_2271414) 0
    state_2271415 state_2271426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271415
  · exact cover_2271426
#print axioms cover_2271414

def state_2271312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
theorem cover_2271312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271312 := by
  apply coveredState_split_literal (state := state_2271312) 1
    state_2271313 state_2271414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271313
  · exact cover_2271414
#print axioms cover_2271312

def state_2271757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 14)))
theorem cover_2271757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271757 := by
  apply coveredState_split_literal (state := state_2271757) 4
    state_2271758 state_2271793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2271758
  · exact cover_2271793
#print axioms cover_2271757
end Mub6.Numerical.CircleFullD0.Forest
