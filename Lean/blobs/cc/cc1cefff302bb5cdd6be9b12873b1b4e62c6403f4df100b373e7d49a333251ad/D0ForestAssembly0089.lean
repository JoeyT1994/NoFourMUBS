import D0FullInterface
import D0ForestAssembly0087
import D0ForestAssembly0088
import D0ForestChunk0355
import D0ForestChunk0358
import D0ForestChunk0359
import D0ForestChunk0360
import D0ForestChunk0361
import D0ForestChunk0362
import D0ForestChunk0363
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1023541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 102)))
theorem cover_1023541 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023541 := by
  apply coveredState_split_literal (state := state_1023541) 2
    state_1023542 state_1023585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023542
  · exact cover_1023585
#print axioms cover_1023541

def state_1023540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 51)))
theorem cover_1023540 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023540 := by
  apply coveredState_split_literal (state := state_1023540) 4
    state_1023541 state_1023636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023541
  · exact cover_1023636
#print axioms cover_1023540

def state_1023762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 206 else 204)))
theorem cover_1023762 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023762 := by
  apply coveredState_split_literal (state := state_1023762) 2
    state_1023763 state_1023810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023763
  · exact cover_1023810
#print axioms cover_1023762

def state_1023827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 207 else 204)))
theorem cover_1023827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023827 := by
  apply coveredState_split_literal (state := state_1023827) 2
    state_1023828 state_1023865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023828
  · exact cover_1023865
#print axioms cover_1023827

def state_1023761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 204)))
theorem cover_1023761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023761 := by
  apply coveredState_split_literal (state := state_1023761) 3
    state_1023762 state_1023827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023762
  · exact cover_1023827
#print axioms cover_1023761

def state_1023906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 205)))
theorem cover_1023906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023906 := by
  apply coveredState_split_literal (state := state_1023906) 3
    state_1023907 state_1023952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023907
  · exact cover_1023952
#print axioms cover_1023906

def state_1023760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
theorem cover_1023760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023760 := by
  apply coveredState_split_literal (state := state_1023760) 4
    state_1023761 state_1023906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023761
  · exact cover_1023906
#print axioms cover_1023760

def state_1024058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 207 else 204)))
theorem cover_1024058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024058 := by
  apply coveredState_split_literal (state := state_1024058) 2
    state_1024059 state_1024088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024059
  · exact cover_1024088
#print axioms cover_1024058

def state_1024006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 204)))
theorem cover_1024006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024006 := by
  apply coveredState_split_literal (state := state_1024006) 3
    state_1024007 state_1024058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024007
  · exact cover_1024058
#print axioms cover_1024006

def state_1024210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 252) else (if j.val < 3 then 151 else (if j.val < 4 then 207 else 205)))
theorem cover_1024210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024210 := by
  apply coveredState_split_literal (state := state_1024210) 0
    state_1024211 state_1024270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024211
  · exact cover_1024270
#print axioms cover_1024210

def state_1024209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 151 else (if j.val < 4 then 207 else 205)))
theorem cover_1024209 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024209 := by
  apply coveredState_split_literal (state := state_1024209) 1
    state_1024210 state_1024291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024210
  · exact cover_1024291
#print axioms cover_1024209

def state_1024191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 207 else 205)))
theorem cover_1024191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024191 := by
  apply coveredState_split_literal (state := state_1024191) 2
    state_1024192 state_1024209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024192
  · exact cover_1024209
#print axioms cover_1024191

def state_1024135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 205)))
theorem cover_1024135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024135 := by
  apply coveredState_split_literal (state := state_1024135) 3
    state_1024136 state_1024191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024136
  · exact cover_1024191
#print axioms cover_1024135

def state_1024005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
theorem cover_1024005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024005 := by
  apply coveredState_split_literal (state := state_1024005) 4
    state_1024006 state_1024135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024006
  · exact cover_1024135
#print axioms cover_1024005

def state_1023759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
theorem cover_1023759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023759 := by
  apply coveredState_split_literal (state := state_1023759) 0
    state_1023760 state_1024005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023760
  · exact cover_1024005
#print axioms cover_1023759

def state_1023758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
theorem cover_1023758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023758 := by
  apply coveredState_split_literal (state := state_1023758) 1
    state_1023759 state_1024292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023759
  · exact cover_1024292
#print axioms cover_1023758

def state_1023698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 102)))
theorem cover_1023698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023698 := by
  apply coveredState_split_literal (state := state_1023698) 2
    state_1023699 state_1023758
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023699
  · exact cover_1023758
#print axioms cover_1023698

def state_1024346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 103)))
theorem cover_1024346 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024346 := by
  apply coveredState_split_literal (state := state_1024346) 0
    state_1024347 state_1024378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024347
  · exact cover_1024378
#print axioms cover_1024346

def state_1024345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 103)))
theorem cover_1024345 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024345 := by
  apply coveredState_split_literal (state := state_1024345) 1
    state_1024346 state_1024419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024346
  · exact cover_1024419
#print axioms cover_1024345

def state_1024321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 103)))
theorem cover_1024321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024321 := by
  apply coveredState_split_literal (state := state_1024321) 2
    state_1024322 state_1024345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024322
  · exact cover_1024345
#print axioms cover_1024321

def state_1023697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 51)))
theorem cover_1023697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023697 := by
  apply coveredState_split_literal (state := state_1023697) 4
    state_1023698 state_1024321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023698
  · exact cover_1024321
#print axioms cover_1023697

def state_1023539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
theorem cover_1023539 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023539 := by
  apply coveredState_split_literal (state := state_1023539) 3
    state_1023540 state_1023697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023540
  · exact cover_1023697
#print axioms cover_1023539

def state_1023477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
theorem cover_1023477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023477 := by
  apply coveredState_split_literal (state := state_1023477) 0
    state_1023478 state_1023539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023478
  · exact cover_1023539
#print axioms cover_1023477

def state_1022639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
theorem cover_1022639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022639 := by
  apply coveredState_split_literal (state := state_1022639) 1
    state_1022640 state_1023477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022640
  · exact cover_1023477
#print axioms cover_1022639

def state_1022577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 51)))
theorem cover_1022577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022577 := by
  apply coveredState_split_literal (state := state_1022577) 2
    state_1022578 state_1022639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022578
  · exact cover_1022639
#print axioms cover_1022577

def state_1021463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 25)))
theorem cover_1021463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021463 := by
  apply coveredState_split_literal (state := state_1021463) 4
    state_1021464 state_1022577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021464
  · exact cover_1022577
#print axioms cover_1021463

def state_1021343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1021343 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021343 := by
  apply coveredState_split_literal (state := state_1021343) 3
    state_1021344 state_1021463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021344
  · exact cover_1021463
#print axioms cover_1021343

def state_1021257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1021257 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021257 := by
  apply coveredState_split_literal (state := state_1021257) 0
    state_1021258 state_1021343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021258
  · exact cover_1021343
#print axioms cover_1021257

def state_1020453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1020453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020453 := by
  apply coveredState_split_literal (state := state_1020453) 1
    state_1020454 state_1021257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020454
  · exact cover_1021257
#print axioms cover_1020453

def state_1024511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 50)))
theorem cover_1024511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024511 := by
  apply coveredState_split_literal (state := state_1024511) 0
    state_1024512 state_1024521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024512
  · exact cover_1024521
#print axioms cover_1024511

def state_1024510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 50)))
theorem cover_1024510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024510 := by
  apply coveredState_split_literal (state := state_1024510) 1
    state_1024511 state_1024578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024511
  · exact cover_1024578
#print axioms cover_1024510

def state_1024509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 50)))
theorem cover_1024509 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024509 := by
  apply coveredState_split_literal (state := state_1024509) 2
    state_1024510 state_1024595
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1024510
  · exact cover_1024595
#print axioms cover_1024509
end Mub6.Numerical.CircleFullD0.Forest
