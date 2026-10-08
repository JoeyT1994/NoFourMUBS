import D0FullInterface
import D0ForestAssembly0227
import D0ForestAssembly0228
import D0ForestChunk0865
import D0ForestChunk0867
import D0ForestChunk0868
import D0ForestChunk0869
import D0ForestChunk0870
import D0ForestChunk0871
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1508778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 60)))
theorem cover_1508778 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508778 := by
  apply coveredState_split_literal (state := state_1508778) 3
    state_1508779 state_1508786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508779
  · exact cover_1508786
#print axioms cover_1508778

def state_1508777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 60)))
theorem cover_1508777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508777 := by
  apply coveredState_split_literal (state := state_1508777) 1
    state_1508778 state_1508885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508778
  · exact cover_1508885
#print axioms cover_1508777

def state_1508776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 60)))
theorem cover_1508776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508776 := by
  apply coveredState_split_literal (state := state_1508776) 0
    state_1508777 state_1508920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508777
  · exact cover_1508920
#print axioms cover_1508776

def state_1508933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 61)))
theorem cover_1508933 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508933 := by
  apply coveredState_split_literal (state := state_1508933) 0
    state_1508934 state_1508979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508934
  · exact cover_1508979
#print axioms cover_1508933

def state_1508775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 30)))
theorem cover_1508775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508775 := by
  apply coveredState_split_literal (state := state_1508775) 4
    state_1508776 state_1508933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508776
  · exact cover_1508933
#print axioms cover_1508775

def state_1508403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 30)))
theorem cover_1508403 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508403 := by
  apply coveredState_split_literal (state := state_1508403) 2
    state_1508404 state_1508775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508404
  · exact cover_1508775
#print axioms cover_1508403

def state_1508307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 30)))
theorem cover_1508307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508307 := by
  apply coveredState_split_literal (state := state_1508307) 3
    state_1508308 state_1508403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508308
  · exact cover_1508403
#print axioms cover_1508307

def state_1509038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 30)))
theorem cover_1509038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509038 := by
  apply coveredState_split_literal (state := state_1509038) 2
    state_1509039 state_1509074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509039
  · exact cover_1509074
#print axioms cover_1509038

def state_1509010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 30)))
theorem cover_1509010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509010 := by
  apply coveredState_split_literal (state := state_1509010) 3
    state_1509011 state_1509038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509011
  · exact cover_1509038
#print axioms cover_1509010

def state_1508306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 30)))
theorem cover_1508306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508306 := by
  apply coveredState_split_literal (state := state_1508306) 1
    state_1508307 state_1509010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508307
  · exact cover_1509010
#print axioms cover_1508306

def state_1508305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 30)))
theorem cover_1508305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508305 := by
  apply coveredState_split_literal (state := state_1508305) 0
    state_1508306 state_1509129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508306
  · exact cover_1509129
#print axioms cover_1508305

def state_1509158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 31)))
theorem cover_1509158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509158 := by
  apply coveredState_split_literal (state := state_1509158) 0
    state_1509159 state_1509210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509159
  · exact cover_1509210
#print axioms cover_1509158

def state_1508304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 15)))
theorem cover_1508304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508304 := by
  apply coveredState_split_literal (state := state_1508304) 4
    state_1508305 state_1509158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508305
  · exact cover_1509158
#print axioms cover_1508304

def state_1508303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 15)))
theorem cover_1508303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508303 := by
  apply coveredState_split_literal (state := state_1508303) 2
    state_1508304 state_1509225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508304
  · exact cover_1509225
#print axioms cover_1508303

def state_1508275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 15)))
theorem cover_1508275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508275 := by
  apply coveredState_split_literal (state := state_1508275) 3
    state_1508276 state_1508303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508276
  · exact cover_1508303
#print axioms cover_1508275

def state_1508274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 15)))
theorem cover_1508274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508274 := by
  apply coveredState_split_literal (state := state_1508274) 1
    state_1508275 state_1509244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508275
  · exact cover_1509244
#print axioms cover_1508274

def state_1507684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 15)))
theorem cover_1507684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507684 := by
  apply coveredState_split_literal (state := state_1507684) 0
    state_1507685 state_1508274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507685
  · exact cover_1508274
#print axioms cover_1507684

def state_1507546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 7)))
theorem cover_1507546 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507546 := by
  apply coveredState_split_literal (state := state_1507546) 4
    state_1507547 state_1507684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507547
  · exact cover_1507684
#print axioms cover_1507546

def state_1509316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
theorem cover_1509316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509316 := by
  apply coveredState_split_literal (state := state_1509316) 0
    state_1509317 state_1509322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509317
  · exact cover_1509322
#print axioms cover_1509316

def state_1509310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 14)))
theorem cover_1509310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509310 := by
  apply coveredState_split_literal (state := state_1509310) 4
    state_1509311 state_1509316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509311
  · exact cover_1509316
#print axioms cover_1509310

def state_1509309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 14)))
theorem cover_1509309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509309 := by
  apply coveredState_split_literal (state := state_1509309) 3
    state_1509310 state_1509385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509310
  · exact cover_1509385
#print axioms cover_1509309

def state_1509308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1509308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509308 := by
  apply coveredState_split_literal (state := state_1509308) 2
    state_1509309 state_1509392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509309
  · exact cover_1509392
#print axioms cover_1509308

def state_1509307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1509307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509307 := by
  apply coveredState_split_literal (state := state_1509307) 1
    state_1509308 state_1509423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509308
  · exact cover_1509423
#print axioms cover_1509307

def state_1509493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 14)))
theorem cover_1509493 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509493 := by
  apply coveredState_split_literal (state := state_1509493) 3
    state_1509494 state_1509553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509494
  · exact cover_1509553
#print axioms cover_1509493

def state_1509431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1509431 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509431 := by
  apply coveredState_split_literal (state := state_1509431) 2
    state_1509432 state_1509493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509432
  · exact cover_1509493
#print axioms cover_1509431

def state_1509430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1509430 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509430 := by
  apply coveredState_split_literal (state := state_1509430) 1
    state_1509431 state_1509568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509431
  · exact cover_1509568
#print axioms cover_1509430

def state_1509306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1509306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509306 := by
  apply coveredState_split_literal (state := state_1509306) 0
    state_1509307 state_1509430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509307
  · exact cover_1509430
#print axioms cover_1509306

def state_1509652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
theorem cover_1509652 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509652 := by
  apply coveredState_split_literal (state := state_1509652) 3
    state_1509653 state_1509714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509653
  · exact cover_1509714
#print axioms cover_1509652

def state_1509651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
theorem cover_1509651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509651 := by
  apply coveredState_split_literal (state := state_1509651) 1
    state_1509652 state_1509759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509652
  · exact cover_1509759
#print axioms cover_1509651

def state_1509641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
theorem cover_1509641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509641 := by
  apply coveredState_split_literal (state := state_1509641) 0
    state_1509642 state_1509651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509642
  · exact cover_1509651
#print axioms cover_1509641

def state_1509800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
theorem cover_1509800 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509800 := by
  apply coveredState_split_literal (state := state_1509800) 1
    state_1509801 state_1509850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509801
  · exact cover_1509850
#print axioms cover_1509800

def state_1509786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
theorem cover_1509786 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509786 := by
  apply coveredState_split_literal (state := state_1509786) 0
    state_1509787 state_1509800
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509787
  · exact cover_1509800
#print axioms cover_1509786
end Mub6.Numerical.CircleFullD0.Forest
