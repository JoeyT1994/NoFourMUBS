import CircleFullInterface
import CircleForestAssembly0124
import CircleForestAssembly0128
import CircleForestAssembly0129
import CircleForestAssembly0130
import CircleForestChunk0515
import CircleForestChunk0516
import CircleForestChunk0517
import CircleForestChunk0518
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_284117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 12)))
theorem cover_284117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284117 := by
  apply coveredState_split_literal (state := state_284117) 0
    state_284118 state_284539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284118
  · exact cover_284539
#print axioms cover_284117

def state_284116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 12)))
theorem cover_284116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284116 := by
  apply coveredState_split_literal (state := state_284116) 3
    state_284117 state_285184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284117
  · exact cover_285184
#print axioms cover_284116

def state_283420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_283420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283420 := by
  apply coveredState_split_literal (state := state_283420) 2
    state_283421 state_284116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283421
  · exact cover_284116
#print axioms cover_283420

def state_285285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 24)))
theorem cover_285285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285285 := by
  apply coveredState_split_literal (state := state_285285) 2
    state_285286 state_285327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285286
  · exact cover_285327
#print axioms cover_285285

def state_285284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 12)))
theorem cover_285284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285284 := by
  apply coveredState_split_literal (state := state_285284) 4
    state_285285 state_285350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285285
  · exact cover_285350
#print axioms cover_285284

def state_285264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 12)))
theorem cover_285264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285264 := by
  apply coveredState_split_literal (state := state_285264) 0
    state_285265 state_285284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285265
  · exact cover_285284
#print axioms cover_285264

def state_285263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 12)))
theorem cover_285263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285263 := by
  apply coveredState_split_literal (state := state_285263) 3
    state_285264 state_285377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285264
  · exact cover_285377
#print axioms cover_285263

def state_285227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_285227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285227 := by
  apply coveredState_split_literal (state := state_285227) 2
    state_285228 state_285263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285228
  · exact cover_285263
#print axioms cover_285227

def state_283419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_283419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283419 := by
  apply coveredState_split_literal (state := state_283419) 1
    state_283420 state_285227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283420
  · exact cover_285227
#print axioms cover_283419

def state_283418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_283418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283418 := by
  apply coveredState_split_literal (state := state_283418) 4
    state_283419 state_285406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283419
  · exact cover_285406
#print axioms cover_283418

def state_283334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_283334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283334 := by
  apply coveredState_split_literal (state := state_283334) 0
    state_283335 state_283418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283335
  · exact cover_283418
#print axioms cover_283334

def state_283333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
theorem cover_283333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283333 := by
  apply coveredState_split_literal (state := state_283333) 4
    state_283334 state_285441
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283334
  · exact cover_285441
#print axioms cover_283333

def state_283087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_283087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283087 := by
  apply coveredState_split_literal (state := state_283087) 3
    state_283088 state_283333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283088
  · exact cover_283333
#print axioms cover_283087

def state_285524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 6)))
theorem cover_285524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285524 := by
  apply coveredState_split_literal (state := state_285524) 4
    state_285525 state_285578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285525
  · exact cover_285578
#print axioms cover_285524

def state_285523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_285523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285523 := by
  apply coveredState_split_literal (state := state_285523) 2
    state_285524 state_285593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285524
  · exact cover_285593
#print axioms cover_285523

def state_285501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_285501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285501 := by
  apply coveredState_split_literal (state := state_285501) 0
    state_285502 state_285523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285502
  · exact cover_285523
#print axioms cover_285501

def state_285500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_285500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285500 := by
  apply coveredState_split_literal (state := state_285500) 4
    state_285501 state_285594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285501
  · exact cover_285594
#print axioms cover_285500

def state_285442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_285442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285442 := by
  apply coveredState_split_literal (state := state_285442) 3
    state_285443 state_285500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285443
  · exact cover_285500
#print axioms cover_285442

def state_283086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_283086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283086 := by
  apply coveredState_split_literal (state := state_283086) 2
    state_283087 state_285442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283087
  · exact cover_285442
#print axioms cover_283086

def state_282926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_282926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282926 := by
  apply coveredState_split_literal (state := state_282926) 1
    state_282927 state_283086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282927
  · exact cover_283086
#print axioms cover_282926

def state_282532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_282532 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282532 := by
  apply coveredState_split_literal (state := state_282532) 0
    state_282533 state_282926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282533
  · exact cover_282926
#print axioms cover_282532

def state_279718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_279718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279718 := by
  apply coveredState_split_literal (state := state_279718) 4
    state_279719 state_282532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279719
  · exact cover_282532
#print axioms cover_279718

def state_279594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_279594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279594 := by
  apply coveredState_split_literal (state := state_279594) 3
    state_279595 state_279718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279595
  · exact cover_279718
#print axioms cover_279594

def state_285642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_285642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285642 := by
  apply coveredState_split_literal (state := state_285642) 0
    state_285643 state_285676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285643
  · exact cover_285676
#print axioms cover_285642

def state_285610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_285610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285610 := by
  apply coveredState_split_literal (state := state_285610) 4
    state_285611 state_285642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285611
  · exact cover_285642
#print axioms cover_285610

def state_285724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_285724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285724 := by
  apply coveredState_split_literal (state := state_285724) 0
    state_285725 state_285770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285725
  · exact cover_285770
#print axioms cover_285724

def state_285798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_285798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285798 := by
  apply coveredState_split_literal (state := state_285798) 1
    state_285799 state_285852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285799
  · exact cover_285852
#print axioms cover_285798

def state_285797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_285797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285797 := by
  apply coveredState_split_literal (state := state_285797) 0
    state_285798 state_285887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285798
  · exact cover_285887
#print axioms cover_285797

def state_285723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_285723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285723 := by
  apply coveredState_split_literal (state := state_285723) 4
    state_285724 state_285797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285724
  · exact cover_285797
#print axioms cover_285723

def state_285609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_285609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285609 := by
  apply coveredState_split_literal (state := state_285609) 3
    state_285610 state_285723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285610
  · exact cover_285723
#print axioms cover_285609

def state_279593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_279593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279593 := by
  apply coveredState_split_literal (state := state_279593) 2
    state_279594 state_285609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279594
  · exact cover_285609
#print axioms cover_279593

def state_272557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_272557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272557 := by
  apply coveredState_split_literal (state := state_272557) 1
    state_272558 state_279593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272558
  · exact cover_279593
#print axioms cover_272557
end Mub6.Numerical.CircleFullPrototype.Forest
