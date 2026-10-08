import D0FullInterface
import D0ForestAssembly0452
import D0ForestChunk1775
import D0ForestChunk1776
import D0ForestChunk1777
import D0ForestChunk1778
import D0ForestChunk1779
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2299150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
theorem cover_2299150 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299150 := by
  apply coveredState_split_literal (state := state_2299150) 1
    state_2299151 state_2299198
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299151
  · exact cover_2299198
#print axioms cover_2299150

def state_2299219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 90)))
theorem cover_2299219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299219 := by
  apply coveredState_split_literal (state := state_2299219) 0
    state_2299220 state_2299283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299220
  · exact cover_2299283
#print axioms cover_2299219

def state_2299341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 91)))
theorem cover_2299341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299341 := by
  apply coveredState_split_literal (state := state_2299341) 1
    state_2299342 state_2299393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299342
  · exact cover_2299393
#print axioms cover_2299341

def state_2299459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 72 else (if j.val < 4 then 54 else 91)))
theorem cover_2299459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299459 := by
  apply coveredState_split_literal (state := state_2299459) 3
    state_2299460 state_2299483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299460
  · exact cover_2299483
#print axioms cover_2299459

def state_2299592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 73 else (if j.val < 4 then 109 else 91)))
theorem cover_2299592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299592 := by
  apply coveredState_split_literal (state := state_2299592) 4
    state_2299593 state_2299638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299593
  · exact cover_2299638
#print axioms cover_2299592

def state_2299536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 73 else (if j.val < 4 then 54 else 91)))
theorem cover_2299536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299536 := by
  apply coveredState_split_literal (state := state_2299536) 3
    state_2299537 state_2299592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299537
  · exact cover_2299592
#print axioms cover_2299536

def state_2299458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 91)))
theorem cover_2299458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299458 := by
  apply coveredState_split_literal (state := state_2299458) 2
    state_2299459 state_2299536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299459
  · exact cover_2299536
#print axioms cover_2299458

def state_2299456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 91)))
theorem cover_2299456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299456 := by
  apply coveredState_split_literal (state := state_2299456) 1
    state_2299457 state_2299458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299457
  · exact cover_2299458
#print axioms cover_2299456

def state_2299340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 91)))
theorem cover_2299340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299340 := by
  apply coveredState_split_literal (state := state_2299340) 0
    state_2299341 state_2299456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299341
  · exact cover_2299456
#print axioms cover_2299340

def state_2299218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 45)))
theorem cover_2299218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299218 := by
  apply coveredState_split_literal (state := state_2299218) 4
    state_2299219 state_2299340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299219
  · exact cover_2299340
#print axioms cover_2299218

def state_2299674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 90)))
theorem cover_2299674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299674 := by
  apply coveredState_split_literal (state := state_2299674) 0
    state_2299675 state_2299682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299675
  · exact cover_2299682
#print axioms cover_2299674

def state_2299673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 45)))
theorem cover_2299673 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299673 := by
  apply coveredState_split_literal (state := state_2299673) 4
    state_2299674 state_2299739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299674
  · exact cover_2299739
#print axioms cover_2299673

def state_2299217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 27 else 45)))
theorem cover_2299217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299217 := by
  apply coveredState_split_literal (state := state_2299217) 3
    state_2299218 state_2299673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299218
  · exact cover_2299673
#print axioms cover_2299217

def state_2299880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 74 else (if j.val < 4 then 54 else 91)))
theorem cover_2299880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299880 := by
  apply coveredState_split_literal (state := state_2299880) 3
    state_2299881 state_2299906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299881
  · exact cover_2299906
#print axioms cover_2299880

def state_2299879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 91)))
theorem cover_2299879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299879 := by
  apply coveredState_split_literal (state := state_2299879) 2
    state_2299880 state_2299963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299880
  · exact cover_2299963
#print axioms cover_2299879

def state_2299873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 91)))
theorem cover_2299873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299873 := by
  apply coveredState_split_literal (state := state_2299873) 1
    state_2299874 state_2299879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299874
  · exact cover_2299879
#print axioms cover_2299873

def state_2299841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 91)))
theorem cover_2299841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299841 := by
  apply coveredState_split_literal (state := state_2299841) 0
    state_2299842 state_2299873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299842
  · exact cover_2299873
#print axioms cover_2299841

def state_2299781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 45)))
theorem cover_2299781 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299781 := by
  apply coveredState_split_literal (state := state_2299781) 4
    state_2299782 state_2299841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299782
  · exact cover_2299841
#print axioms cover_2299781

def state_2299780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 45)))
theorem cover_2299780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299780 := by
  apply coveredState_split_literal (state := state_2299780) 3
    state_2299781 state_2299970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299781
  · exact cover_2299970
#print axioms cover_2299780

def state_2299216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
theorem cover_2299216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299216 := by
  apply coveredState_split_literal (state := state_2299216) 2
    state_2299217 state_2299780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299217
  · exact cover_2299780
#print axioms cover_2299216

def state_2300039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 91)))
theorem cover_2300039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300039 := by
  apply coveredState_split_literal (state := state_2300039) 0
    state_2300040 state_2300049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300040
  · exact cover_2300049
#print axioms cover_2300039

def state_2300023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 45)))
theorem cover_2300023 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300023 := by
  apply coveredState_split_literal (state := state_2300023) 4
    state_2300024 state_2300039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300024
  · exact cover_2300039
#print axioms cover_2300023

def state_2300022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 27 else 45)))
theorem cover_2300022 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300022 := by
  apply coveredState_split_literal (state := state_2300022) 3
    state_2300023 state_2300104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300023
  · exact cover_2300104
#print axioms cover_2300022

def state_2300177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 106) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 91)))
theorem cover_2300177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300177 := by
  apply coveredState_split_literal (state := state_2300177) 2
    state_2300178 state_2300221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300178
  · exact cover_2300221
#print axioms cover_2300177

def state_2300176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 91)))
theorem cover_2300176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300176 := by
  apply coveredState_split_literal (state := state_2300176) 1
    state_2300177 state_2300252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300177
  · exact cover_2300252
#print axioms cover_2300176

def state_2300160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 91)))
theorem cover_2300160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300160 := by
  apply coveredState_split_literal (state := state_2300160) 0
    state_2300161 state_2300176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300161
  · exact cover_2300176
#print axioms cover_2300160

def state_2300130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 45)))
theorem cover_2300130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300130 := by
  apply coveredState_split_literal (state := state_2300130) 4
    state_2300131 state_2300160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300131
  · exact cover_2300160
#print axioms cover_2300130

def state_2300129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 45)))
theorem cover_2300129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300129 := by
  apply coveredState_split_literal (state := state_2300129) 3
    state_2300130 state_2300259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300130
  · exact cover_2300259
#print axioms cover_2300129

def state_2300021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
theorem cover_2300021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300021 := by
  apply coveredState_split_literal (state := state_2300021) 2
    state_2300022 state_2300129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300022
  · exact cover_2300129
#print axioms cover_2300021

def state_2299215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
theorem cover_2299215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299215 := by
  apply coveredState_split_literal (state := state_2299215) 1
    state_2299216 state_2300021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299216
  · exact cover_2300021
#print axioms cover_2299215

def state_2299149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
theorem cover_2299149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299149 := by
  apply coveredState_split_literal (state := state_2299149) 0
    state_2299150 state_2299215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299150
  · exact cover_2299215
#print axioms cover_2299149

def state_2298999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
theorem cover_2298999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298999 := by
  apply coveredState_split_literal (state := state_2298999) 4
    state_2299000 state_2299149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299000
  · exact cover_2299149
#print axioms cover_2298999
end Mub6.Numerical.CircleFullD0.Forest
