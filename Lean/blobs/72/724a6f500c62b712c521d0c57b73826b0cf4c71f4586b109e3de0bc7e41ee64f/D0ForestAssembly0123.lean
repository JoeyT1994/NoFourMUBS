import D0FullInterface
import D0ForestAssembly0121
import D0ForestAssembly0122
import D0ForestChunk0473
import D0ForestChunk0477
import D0ForestChunk0478
import D0ForestChunk0479
import D0ForestChunk0480
import D0ForestChunk0481
import D0ForestChunk0482
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1302472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_1302472 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302472 := by
  apply coveredState_split_literal (state := state_1302472) 3
    state_1302473 state_1302590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302473
  · exact cover_1302590
#print axioms cover_1302472

def state_1302352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1302352 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302352 := by
  apply coveredState_split_literal (state := state_1302352) 2
    state_1302353 state_1302472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302353
  · exact cover_1302472
#print axioms cover_1302352

def state_1302306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1302306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302306 := by
  apply coveredState_split_literal (state := state_1302306) 1
    state_1302307 state_1302352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302307
  · exact cover_1302352
#print axioms cover_1302306

def state_1303353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1303353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303353 := by
  apply coveredState_split_literal (state := state_1303353) 2
    state_1303354 state_1303395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303354
  · exact cover_1303395
#print axioms cover_1303353

def state_1303335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1303335 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303335 := by
  apply coveredState_split_literal (state := state_1303335) 1
    state_1303336 state_1303353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303336
  · exact cover_1303353
#print axioms cover_1303335

def state_1302305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1302305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302305 := by
  apply coveredState_split_literal (state := state_1302305) 0
    state_1302306 state_1303335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302306
  · exact cover_1303335
#print axioms cover_1302305

def state_1303497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1303497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303497 := by
  apply coveredState_split_literal (state := state_1303497) 3
    state_1303498 state_1303517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303498
  · exact cover_1303517
#print axioms cover_1303497

def state_1303461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1303461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303461 := by
  apply coveredState_split_literal (state := state_1303461) 2
    state_1303462 state_1303497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303462
  · exact cover_1303497
#print axioms cover_1303461

def state_1303433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1303433 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303433 := by
  apply coveredState_split_literal (state := state_1303433) 1
    state_1303434 state_1303461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303434
  · exact cover_1303461
#print axioms cover_1303433

def state_1303602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1303602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303602 := by
  apply coveredState_split_literal (state := state_1303602) 2
    state_1303603 state_1303636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303603
  · exact cover_1303636
#print axioms cover_1303602

def state_1303574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1303574 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303574 := by
  apply coveredState_split_literal (state := state_1303574) 1
    state_1303575 state_1303602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303575
  · exact cover_1303602
#print axioms cover_1303574

def state_1303432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1303432 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303432 := by
  apply coveredState_split_literal (state := state_1303432) 0
    state_1303433 state_1303574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303433
  · exact cover_1303574
#print axioms cover_1303432

def state_1302304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1302304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302304 := by
  apply coveredState_split_literal (state := state_1302304) 4
    state_1302305 state_1303432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302305
  · exact cover_1303432
#print axioms cover_1302304

def state_1301980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1301980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1301980 := by
  apply coveredState_split_literal (state := state_1301980) 3
    state_1301981 state_1302304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1301981
  · exact cover_1302304
#print axioms cover_1301980

def state_1303707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_1303707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303707 := by
  apply coveredState_split_literal (state := state_1303707) 3
    state_1303708 state_1303741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303708
  · exact cover_1303741
#print axioms cover_1303707

def state_1303706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1303706 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303706 := by
  apply coveredState_split_literal (state := state_1303706) 2
    state_1303707 state_1303796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303707
  · exact cover_1303796
#print axioms cover_1303706

def state_1303705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1303705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303705 := by
  apply coveredState_split_literal (state := state_1303705) 1
    state_1303706 state_1303835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303706
  · exact cover_1303835
#print axioms cover_1303705

def state_1303683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1303683 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303683 := by
  apply coveredState_split_literal (state := state_1303683) 0
    state_1303684 state_1303705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303684
  · exact cover_1303705
#print axioms cover_1303683

def state_1303901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1303901 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303901 := by
  apply coveredState_split_literal (state := state_1303901) 2
    state_1303902 state_1303963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303902
  · exact cover_1303963
#print axioms cover_1303901

def state_1303867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1303867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303867 := by
  apply coveredState_split_literal (state := state_1303867) 1
    state_1303868 state_1303901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303868
  · exact cover_1303901
#print axioms cover_1303867

def state_1304044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_1304044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304044 := by
  apply coveredState_split_literal (state := state_1304044) 0
    state_1304045 state_1304056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304045
  · exact cover_1304056
#print axioms cover_1304044

def state_1304043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_1304043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304043 := by
  apply coveredState_split_literal (state := state_1304043) 4
    state_1304044 state_1304111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304044
  · exact cover_1304111
#print axioms cover_1304043

def state_1304041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_1304041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304041 := by
  apply coveredState_split_literal (state := state_1304041) 3
    state_1304042 state_1304043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304042
  · exact cover_1304043
#print axioms cover_1304041

def state_1303999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1303999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303999 := by
  apply coveredState_split_literal (state := state_1303999) 2
    state_1304000 state_1304041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304000
  · exact cover_1304041
#print axioms cover_1303999

def state_1303998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1303998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303998 := by
  apply coveredState_split_literal (state := state_1303998) 1
    state_1303999 state_1304112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303999
  · exact cover_1304112
#print axioms cover_1303998

def state_1303866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1303866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303866 := by
  apply coveredState_split_literal (state := state_1303866) 0
    state_1303867 state_1303998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303867
  · exact cover_1303998
#print axioms cover_1303866

def state_1303682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1303682 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303682 := by
  apply coveredState_split_literal (state := state_1303682) 4
    state_1303683 state_1303866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303683
  · exact cover_1303866
#print axioms cover_1303682

def state_1304271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 10)))
theorem cover_1304271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304271 := by
  apply coveredState_split_literal (state := state_1304271) 0
    state_1304272 state_1304325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304272
  · exact cover_1304325
#print axioms cover_1304271

def state_1304359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 21) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 22)))
theorem cover_1304359 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304359 := by
  apply coveredState_split_literal (state := state_1304359) 4
    state_1304360 state_1304423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304360
  · exact cover_1304423
#print axioms cover_1304359

def state_1304358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 22)))
theorem cover_1304358 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304358 := by
  apply coveredState_split_literal (state := state_1304358) 2
    state_1304359 state_1304424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304359
  · exact cover_1304424
#print axioms cover_1304358

def state_1304357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 22)))
theorem cover_1304357 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304357 := by
  apply coveredState_split_literal (state := state_1304357) 0
    state_1304358 state_1304425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304358
  · exact cover_1304425
#print axioms cover_1304357

def state_1304502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 43) else (if j.val < 3 then 48 else (if j.val < 4 then 58 else 44)))
theorem cover_1304502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304502 := by
  apply coveredState_split_literal (state := state_1304502) 2
    state_1304503 state_1304556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304503
  · exact cover_1304556
#print axioms cover_1304502
end Mub6.Numerical.CircleFullD0.Forest
