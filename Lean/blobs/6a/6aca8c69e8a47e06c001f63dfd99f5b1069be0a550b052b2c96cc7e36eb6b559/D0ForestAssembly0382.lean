import D0FullInterface
import D0ForestAssembly0364
import D0ForestAssembly0376
import D0ForestAssembly0377
import D0ForestAssembly0381
import D0ForestChunk1489
import D0ForestChunk1490
import D0ForestChunk1491
import D0ForestChunk1492
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1658102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 22)))
theorem cover_1658102 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658102 := by
  apply coveredState_split_literal (state := state_1658102) 4
    state_1658103 state_1658140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658103
  · exact cover_1658140
#print axioms cover_1658102

def state_1658101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 22)))
theorem cover_1658101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658101 := by
  apply coveredState_split_literal (state := state_1658101) 1
    state_1658102 state_1658167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658102
  · exact cover_1658167
#print axioms cover_1658101

def state_1658100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 22)))
theorem cover_1658100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658100 := by
  apply coveredState_split_literal (state := state_1658100) 0
    state_1658101 state_1658176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658101
  · exact cover_1658176
#print axioms cover_1658100

def state_1658092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 22)))
theorem cover_1658092 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658092 := by
  apply coveredState_split_literal (state := state_1658092) 2
    state_1658093 state_1658100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658093
  · exact cover_1658100
#print axioms cover_1658092

def state_1658082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 22)))
theorem cover_1658082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658082 := by
  apply coveredState_split_literal (state := state_1658082) 3
    state_1658083 state_1658092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658083
  · exact cover_1658092
#print axioms cover_1658082

def state_1658081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
theorem cover_1658081 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658081 := by
  apply coveredState_split_literal (state := state_1658081) 4
    state_1658082 state_1658189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658082
  · exact cover_1658189
#print axioms cover_1658081

def state_1657783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
theorem cover_1657783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657783 := by
  apply coveredState_split_literal (state := state_1657783) 1
    state_1657784 state_1658081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657784
  · exact cover_1658081
#print axioms cover_1657783

def state_1657782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
theorem cover_1657782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657782 := by
  apply coveredState_split_literal (state := state_1657782) 0
    state_1657783 state_1658206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657783
  · exact cover_1658206
#print axioms cover_1657782

def state_1658267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 22)))
theorem cover_1658267 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658267 := by
  apply coveredState_split_literal (state := state_1658267) 0
    state_1658268 state_1658327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658268
  · exact cover_1658327
#print axioms cover_1658267

def state_1658225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 22)))
theorem cover_1658225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658225 := by
  apply coveredState_split_literal (state := state_1658225) 1
    state_1658226 state_1658267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658226
  · exact cover_1658267
#print axioms cover_1658225

def state_1658224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 22)))
theorem cover_1658224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658224 := by
  apply coveredState_split_literal (state := state_1658224) 2
    state_1658225 state_1658332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658225
  · exact cover_1658332
#print axioms cover_1658224

def state_1658222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 22)))
theorem cover_1658222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658222 := by
  apply coveredState_split_literal (state := state_1658222) 3
    state_1658223 state_1658224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658223
  · exact cover_1658224
#print axioms cover_1658222

def state_1658221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
theorem cover_1658221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658221 := by
  apply coveredState_split_literal (state := state_1658221) 4
    state_1658222 state_1658347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658222
  · exact cover_1658347
#print axioms cover_1658221

def state_1658358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 22)))
theorem cover_1658358 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658358 := by
  apply coveredState_split_literal (state := state_1658358) 0
    state_1658359 state_1658422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658359
  · exact cover_1658422
#print axioms cover_1658358

def state_1658357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 22)))
theorem cover_1658357 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658357 := by
  apply coveredState_split_literal (state := state_1658357) 2
    state_1658358 state_1658435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658358
  · exact cover_1658435
#print axioms cover_1658357

def state_1658355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 22)))
theorem cover_1658355 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658355 := by
  apply coveredState_split_literal (state := state_1658355) 3
    state_1658356 state_1658357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658356
  · exact cover_1658357
#print axioms cover_1658355

def state_1658354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
theorem cover_1658354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658354 := by
  apply coveredState_split_literal (state := state_1658354) 4
    state_1658355 state_1658448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658355
  · exact cover_1658448
#print axioms cover_1658354

def state_1658220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
theorem cover_1658220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658220 := by
  apply coveredState_split_literal (state := state_1658220) 1
    state_1658221 state_1658354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658221
  · exact cover_1658354
#print axioms cover_1658220

def state_1658219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
theorem cover_1658219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658219 := by
  apply coveredState_split_literal (state := state_1658219) 0
    state_1658220 state_1658451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658220
  · exact cover_1658451
#print axioms cover_1658219

def state_1657781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 11)))
theorem cover_1657781 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657781 := by
  apply coveredState_split_literal (state := state_1657781) 2
    state_1657782 state_1658219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657782
  · exact cover_1658219
#print axioms cover_1657781

def state_1653937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 5)))
theorem cover_1653937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653937 := by
  apply coveredState_split_literal (state := state_1653937) 4
    state_1653938 state_1657781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653938
  · exact cover_1657781
#print axioms cover_1653937

def state_1652835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1652835 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652835 := by
  apply coveredState_split_literal (state := state_1652835) 3
    state_1652836 state_1653937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652836
  · exact cover_1653937
#print axioms cover_1652835

def state_1658513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1658513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658513 := by
  apply coveredState_split_literal (state := state_1658513) 0
    state_1658514 state_1658569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658514
  · exact cover_1658569
#print axioms cover_1658513

def state_1658473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 10)))
theorem cover_1658473 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658473 := by
  apply coveredState_split_literal (state := state_1658473) 2
    state_1658474 state_1658513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658474
  · exact cover_1658513
#print axioms cover_1658473

def state_1658472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 5)))
theorem cover_1658472 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658472 := by
  apply coveredState_split_literal (state := state_1658472) 4
    state_1658473 state_1658584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658473
  · exact cover_1658584
#print axioms cover_1658472

def state_1658468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1658468 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658468 := by
  apply coveredState_split_literal (state := state_1658468) 3
    state_1658469 state_1658472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658469
  · exact cover_1658472
#print axioms cover_1658468

def state_1652834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1652834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652834 := by
  apply coveredState_split_literal (state := state_1652834) 1
    state_1652835 state_1658468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652835
  · exact cover_1658468
#print axioms cover_1652834

def state_1640874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1640874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640874 := by
  apply coveredState_split_literal (state := state_1640874) 0
    state_1640875 state_1652834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640875
  · exact cover_1652834
#print axioms cover_1640874

def state_1635042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_1635042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635042 := by
  apply coveredState_split_literal (state := state_1635042) 4
    state_1635043 state_1640874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635043
  · exact cover_1640874
#print axioms cover_1635042

def state_1658775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 57 else (if j.val < 4 then 28 else 47)))
theorem cover_1658775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658775 := by
  apply coveredState_split_literal (state := state_1658775) 3
    state_1658776 state_1658821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658776
  · exact cover_1658821
#print axioms cover_1658775

def state_1658771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
theorem cover_1658771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658771 := by
  apply coveredState_split_literal (state := state_1658771) 2
    state_1658772 state_1658775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658772
  · exact cover_1658775
#print axioms cover_1658771

def state_1658769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
theorem cover_1658769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658769 := by
  apply coveredState_split_literal (state := state_1658769) 0
    state_1658770 state_1658771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658770
  · exact cover_1658771
#print axioms cover_1658769
end Mub6.Numerical.CircleFullD0.Forest
