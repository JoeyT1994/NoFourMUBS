import D0FullInterface
import D0ForestAssembly0245
import D0ForestChunk0936
import D0ForestChunk0937
import D0ForestChunk0938
import D0ForestChunk0939
import D0ForestChunk0940
import D0ForestChunk0941
import D0ForestChunk0942
import D0ForestChunk0943
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1525795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 179 else (if j.val < 4 then 66 else 177)))
theorem cover_1525795 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525795 := by
  apply coveredState_split_literal (state := state_1525795) 1
    state_1525796 state_1525809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525796
  · exact cover_1525809
#print axioms cover_1525795

def state_1525643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 179 else (if j.val < 4 then 66 else 88)))
theorem cover_1525643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525643 := by
  apply coveredState_split_literal (state := state_1525643) 4
    state_1525644 state_1525795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525644
  · exact cover_1525795
#print axioms cover_1525643

def state_1525591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 89 else (if j.val < 4 then 66 else 88)))
theorem cover_1525591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525591 := by
  apply coveredState_split_literal (state := state_1525591) 2
    state_1525592 state_1525643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525592
  · exact cover_1525643
#print axioms cover_1525591

def state_1525389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 89 else (if j.val < 4 then 66 else 88)))
theorem cover_1525389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525389 := by
  apply coveredState_split_literal (state := state_1525389) 0
    state_1525390 state_1525591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525390
  · exact cover_1525591
#print axioms cover_1525389

def state_1525388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 88)))
theorem cover_1525388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525388 := by
  apply coveredState_split_literal (state := state_1525388) 3
    state_1525389 state_1525878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525389
  · exact cover_1525878
#print axioms cover_1525388

def state_1525917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 117) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 88)))
theorem cover_1525917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525917 := by
  apply coveredState_split_literal (state := state_1525917) 3
    state_1525918 state_1525973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525918
  · exact cover_1525973
#print axioms cover_1525917

def state_1525387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 88)))
theorem cover_1525387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525387 := by
  apply coveredState_split_literal (state := state_1525387) 1
    state_1525388 state_1525917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525388
  · exact cover_1525917
#print axioms cover_1525387

def state_1525386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 44)))
theorem cover_1525386 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525386 := by
  apply coveredState_split_literal (state := state_1525386) 4
    state_1525387 state_1525986
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525387
  · exact cover_1525986
#print axioms cover_1525386

def state_1525332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 44)))
theorem cover_1525332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525332 := by
  apply coveredState_split_literal (state := state_1525332) 2
    state_1525333 state_1525386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525333
  · exact cover_1525386
#print axioms cover_1525332

def state_1526050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 88)))
theorem cover_1526050 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526050 := by
  apply coveredState_split_literal (state := state_1526050) 1
    state_1526051 state_1526082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526051
  · exact cover_1526082
#print axioms cover_1526050

def state_1526049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 44)))
theorem cover_1526049 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526049 := by
  apply coveredState_split_literal (state := state_1526049) 4
    state_1526050 state_1526131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526050
  · exact cover_1526131
#print axioms cover_1526049

def state_1526041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 44)))
theorem cover_1526041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526041 := by
  apply coveredState_split_literal (state := state_1526041) 2
    state_1526042 state_1526049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526042
  · exact cover_1526049
#print axioms cover_1526041

def state_1525331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 44)))
theorem cover_1525331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525331 := by
  apply coveredState_split_literal (state := state_1525331) 0
    state_1525332 state_1526041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525332
  · exact cover_1526041
#print axioms cover_1525331

def state_1524381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
theorem cover_1524381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524381 := by
  apply coveredState_split_literal (state := state_1524381) 3
    state_1524382 state_1525331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524382
  · exact cover_1525331
#print axioms cover_1524381

def state_1524380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
theorem cover_1524380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524380 := by
  apply coveredState_split_literal (state := state_1524380) 1
    state_1524381 state_1526168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524381
  · exact cover_1526168
#print axioms cover_1524380

def state_1526229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 45)))
theorem cover_1526229 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526229 := by
  apply coveredState_split_literal (state := state_1526229) 1
    state_1526230 state_1526285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526230
  · exact cover_1526285
#print axioms cover_1526229

def state_1524379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 22)))
theorem cover_1524379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524379 := by
  apply coveredState_split_literal (state := state_1524379) 4
    state_1524380 state_1526229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524380
  · exact cover_1526229
#print axioms cover_1524379

def state_1526309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 90 else (if j.val < 4 then 32 else 44)))
theorem cover_1526309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526309 := by
  apply coveredState_split_literal (state := state_1526309) 4
    state_1526310 state_1526361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526310
  · exact cover_1526361
#print axioms cover_1526309

def state_1526308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 32 else 44)))
theorem cover_1526308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526308 := by
  apply coveredState_split_literal (state := state_1526308) 2
    state_1526309 state_1526380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526309
  · exact cover_1526380
#print axioms cover_1526308

def state_1526307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 32 else 44)))
theorem cover_1526307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526307 := by
  apply coveredState_split_literal (state := state_1526307) 0
    state_1526308 state_1526383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526308
  · exact cover_1526383
#print axioms cover_1526307

def state_1526447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 180 else (if j.val < 4 then 66 else 176)))
theorem cover_1526447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526447 := by
  apply coveredState_split_literal (state := state_1526447) 1
    state_1526448 state_1526489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526448
  · exact cover_1526489
#print axioms cover_1526447

def state_1526446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 180 else (if j.val < 4 then 66 else 88)))
theorem cover_1526446 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526446 := by
  apply coveredState_split_literal (state := state_1526446) 4
    state_1526447 state_1526552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526447
  · exact cover_1526552
#print axioms cover_1526446

def state_1526445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 90 else (if j.val < 4 then 66 else 88)))
theorem cover_1526445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526445 := by
  apply coveredState_split_literal (state := state_1526445) 2
    state_1526446 state_1526599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526446
  · exact cover_1526599
#print axioms cover_1526445

def state_1526403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 90 else (if j.val < 4 then 66 else 88)))
theorem cover_1526403 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526403 := by
  apply coveredState_split_literal (state := state_1526403) 0
    state_1526404 state_1526445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526404
  · exact cover_1526445
#print axioms cover_1526403

def state_1526631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 180 else (if j.val < 4 then 67 else 88)))
theorem cover_1526631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526631 := by
  apply coveredState_split_literal (state := state_1526631) 4
    state_1526632 state_1526693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526632
  · exact cover_1526693
#print axioms cover_1526631

def state_1526630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 90 else (if j.val < 4 then 67 else 88)))
theorem cover_1526630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526630 := by
  apply coveredState_split_literal (state := state_1526630) 2
    state_1526631 state_1526716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526631
  · exact cover_1526716
#print axioms cover_1526630

def state_1526604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 90 else (if j.val < 4 then 67 else 88)))
theorem cover_1526604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526604 := by
  apply coveredState_split_literal (state := state_1526604) 0
    state_1526605 state_1526630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526605
  · exact cover_1526630
#print axioms cover_1526604

def state_1526402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 88)))
theorem cover_1526402 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526402 := by
  apply coveredState_split_literal (state := state_1526402) 3
    state_1526403 state_1526604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526403
  · exact cover_1526604
#print axioms cover_1526402

def state_1526784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 117) else (if j.val < 3 then 90 else (if j.val < 4 then 66 else 88)))
theorem cover_1526784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526784 := by
  apply coveredState_split_literal (state := state_1526784) 2
    state_1526785 state_1526848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526785
  · exact cover_1526848
#print axioms cover_1526784

def state_1526772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 117) else (if j.val < 3 then 90 else (if j.val < 4 then 66 else 88)))
theorem cover_1526772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526772 := by
  apply coveredState_split_literal (state := state_1526772) 0
    state_1526773 state_1526784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526773
  · exact cover_1526784
#print axioms cover_1526772

def state_1526863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 117) else (if j.val < 3 then 90 else (if j.val < 4 then 67 else 88)))
theorem cover_1526863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526863 := by
  apply coveredState_split_literal (state := state_1526863) 2
    state_1526864 state_1526893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526864
  · exact cover_1526893
#print axioms cover_1526863

def state_1526855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 117) else (if j.val < 3 then 90 else (if j.val < 4 then 67 else 88)))
theorem cover_1526855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526855 := by
  apply coveredState_split_literal (state := state_1526855) 0
    state_1526856 state_1526863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526856
  · exact cover_1526863
#print axioms cover_1526855
end Mub6.Numerical.CircleFullD0.Forest
