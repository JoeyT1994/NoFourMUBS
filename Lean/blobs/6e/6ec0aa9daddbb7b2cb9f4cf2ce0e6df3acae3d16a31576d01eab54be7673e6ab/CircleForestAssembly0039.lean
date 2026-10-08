import CircleFullInterface
import CircleForestAssembly0032
import CircleForestAssembly0035
import CircleForestAssembly0037
import CircleForestAssembly0038
import CircleForestChunk0152
import CircleForestChunk0153
import CircleForestChunk0154
import CircleForestChunk0155
import CircleForestChunk0156
import CircleForestChunk0157
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_54321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_54321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54321 := by
  apply coveredState_split_literal (state := state_54321) 0
    state_54322 state_56315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54322
  · exact cover_56315
#print axioms cover_54321

def state_51367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_51367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51367 := by
  apply coveredState_split_literal (state := state_51367) 4
    state_51368 state_54321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51368
  · exact cover_54321
#print axioms cover_51367

def state_45481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_45481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45481 := by
  apply coveredState_split_literal (state := state_45481) 3
    state_45482 state_51367
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45482
  · exact cover_51367
#print axioms cover_45481

def state_57963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
theorem cover_57963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57963 := by
  apply coveredState_split_literal (state := state_57963) 1
    state_57964 state_57997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57964
  · exact cover_57997
#print axioms cover_57963

def state_57947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
theorem cover_57947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57947 := by
  apply coveredState_split_literal (state := state_57947) 0
    state_57948 state_57963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57948
  · exact cover_57963
#print axioms cover_57947

def state_57937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 4)))
theorem cover_57937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57937 := by
  apply coveredState_split_literal (state := state_57937) 3
    state_57938 state_57947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57938
  · exact cover_57947
#print axioms cover_57937

def state_58075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
theorem cover_58075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58075 := by
  apply coveredState_split_literal (state := state_58075) 1
    state_58076 state_58115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58076
  · exact cover_58115
#print axioms cover_58075

def state_58163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
theorem cover_58163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58163 := by
  apply coveredState_split_literal (state := state_58163) 4
    state_58164 state_58223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58164
  · exact cover_58223
#print axioms cover_58163

def state_58276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 8)))
theorem cover_58276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58276 := by
  apply coveredState_split_literal (state := state_58276) 4
    state_58277 state_58302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58277
  · exact cover_58302
#print axioms cover_58276

def state_58275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 8)))
theorem cover_58275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58275 := by
  apply coveredState_split_literal (state := state_58275) 1
    state_58276 state_58353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58276
  · exact cover_58353
#print axioms cover_58275

def state_58434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 37) else (if j.val < 3 then 53 else (if j.val < 4 then 47 else 17)))
theorem cover_58434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58434 := by
  apply coveredState_split_literal (state := state_58434) 4
    state_58435 state_58452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58435
  · exact cover_58452
#print axioms cover_58434

def state_58424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 18) else (if j.val < 3 then 53 else (if j.val < 4 then 47 else 17)))
theorem cover_58424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58424 := by
  apply coveredState_split_literal (state := state_58424) 1
    state_58425 state_58434
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58425
  · exact cover_58434
#print axioms cover_58424

def state_58423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 53 else (if j.val < 4 then 47 else 17)))
theorem cover_58423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58423 := by
  apply coveredState_split_literal (state := state_58423) 0
    state_58424 state_58499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58424
  · exact cover_58499
#print axioms cover_58423

def state_58411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 26 else (if j.val < 4 then 47 else 17)))
theorem cover_58411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58411 := by
  apply coveredState_split_literal (state := state_58411) 2
    state_58412 state_58423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58412
  · exact cover_58423
#print axioms cover_58411

def state_58385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 17)))
theorem cover_58385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58385 := by
  apply coveredState_split_literal (state := state_58385) 3
    state_58386 state_58411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58386
  · exact cover_58411
#print axioms cover_58385

def state_58375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 8)))
theorem cover_58375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58375 := by
  apply coveredState_split_literal (state := state_58375) 4
    state_58376 state_58385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58376
  · exact cover_58385
#print axioms cover_58375

def state_58543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 53 else (if j.val < 4 then 47 else 17)))
theorem cover_58543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58543 := by
  apply coveredState_split_literal (state := state_58543) 1
    state_58544 state_58607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58544
  · exact cover_58607
#print axioms cover_58543

def state_58542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 53 else (if j.val < 4 then 47 else 17)))
theorem cover_58542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58542 := by
  apply coveredState_split_literal (state := state_58542) 0
    state_58543 state_58608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58543
  · exact cover_58608
#print axioms cover_58542

def state_58536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 26 else (if j.val < 4 then 47 else 17)))
theorem cover_58536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58536 := by
  apply coveredState_split_literal (state := state_58536) 2
    state_58537 state_58542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58537
  · exact cover_58542
#print axioms cover_58536

def state_58526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 17)))
theorem cover_58526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58526 := by
  apply coveredState_split_literal (state := state_58526) 3
    state_58527 state_58536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58527
  · exact cover_58536
#print axioms cover_58526

def state_58508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 8)))
theorem cover_58508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58508 := by
  apply coveredState_split_literal (state := state_58508) 4
    state_58509 state_58526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58509
  · exact cover_58526
#print axioms cover_58508

def state_58374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 8)))
theorem cover_58374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58374 := by
  apply coveredState_split_literal (state := state_58374) 1
    state_58375 state_58508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58375
  · exact cover_58508
#print axioms cover_58374

def state_58274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 8)))
theorem cover_58274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58274 := by
  apply coveredState_split_literal (state := state_58274) 0
    state_58275 state_58374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58275
  · exact cover_58374
#print axioms cover_58274

def state_58696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 8)))
theorem cover_58696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58696 := by
  apply coveredState_split_literal (state := state_58696) 4
    state_58697 state_58716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58697
  · exact cover_58716
#print axioms cover_58696

def state_58642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 8)))
theorem cover_58642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58642 := by
  apply coveredState_split_literal (state := state_58642) 1
    state_58643 state_58696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58643
  · exact cover_58696
#print axioms cover_58642

def state_58823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 18) else (if j.val < 3 then 27 else (if j.val < 4 then 47 else 17)))
theorem cover_58823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58823 := by
  apply coveredState_split_literal (state := state_58823) 1
    state_58824 state_58831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58824
  · exact cover_58831
#print axioms cover_58823

def state_58822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 27 else (if j.val < 4 then 47 else 17)))
theorem cover_58822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58822 := by
  apply coveredState_split_literal (state := state_58822) 0
    state_58823 state_58890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58823
  · exact cover_58890
#print axioms cover_58822

def state_58820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 17)))
theorem cover_58820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58820 := by
  apply coveredState_split_literal (state := state_58820) 3
    state_58821 state_58822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58821
  · exact cover_58822
#print axioms cover_58820

def state_58780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 8)))
theorem cover_58780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58780 := by
  apply coveredState_split_literal (state := state_58780) 4
    state_58781 state_58820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58781
  · exact cover_58820
#print axioms cover_58780

def state_59099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 38) else (if j.val < 3 then 54 else (if j.val < 4 then 95 else 34)))
theorem cover_59099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59099 := by
  apply coveredState_split_literal (state := state_59099) 1
    state_59100 state_59133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59100
  · exact cover_59133
#print axioms cover_59099

def state_59065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 54 else (if j.val < 4 then 95 else 34)))
theorem cover_59065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59065 := by
  apply coveredState_split_literal (state := state_59065) 0
    state_59066 state_59099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59066
  · exact cover_59099
#print axioms cover_59065

def state_59019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 54 else (if j.val < 4 then 47 else 34)))
theorem cover_59019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59019 := by
  apply coveredState_split_literal (state := state_59019) 3
    state_59020 state_59065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59020
  · exact cover_59065
#print axioms cover_59019
end Mub6.Numerical.CircleFullPrototype.Forest
