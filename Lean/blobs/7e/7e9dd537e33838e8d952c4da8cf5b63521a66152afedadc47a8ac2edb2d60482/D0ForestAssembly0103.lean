import D0FullInterface
import D0ForestAssembly0100
import D0ForestAssembly0101
import D0ForestAssembly0102
import D0ForestChunk0408
import D0ForestChunk0413
import D0ForestChunk0415
import D0ForestChunk0416
import D0ForestChunk0417
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1037134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 63)))
theorem cover_1037134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037134 := by
  apply coveredState_split_literal (state := state_1037134) 1
    state_1037135 state_1037200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037135
  · exact cover_1037200
#print axioms cover_1037134

def state_1037122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 63)))
theorem cover_1037122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037122 := by
  apply coveredState_split_literal (state := state_1037122) 0
    state_1037123 state_1037134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037123
  · exact cover_1037134
#print axioms cover_1037122

def state_1037012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 31)))
theorem cover_1037012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037012 := by
  apply coveredState_split_literal (state := state_1037012) 4
    state_1037013 state_1037122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037013
  · exact cover_1037122
#print axioms cover_1037012

def state_1037011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 19 else 31)))
theorem cover_1037011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037011 := by
  apply coveredState_split_literal (state := state_1037011) 3
    state_1037012 state_1037247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037012
  · exact cover_1037247
#print axioms cover_1037011

def state_1037010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 31)))
theorem cover_1037010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037010 := by
  apply coveredState_split_literal (state := state_1037010) 2
    state_1037011 state_1037264
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037011
  · exact cover_1037264
#print axioms cover_1037010

def state_1036840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 31)))
theorem cover_1036840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036840 := by
  apply coveredState_split_literal (state := state_1036840) 1
    state_1036841 state_1037010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036841
  · exact cover_1037010
#print axioms cover_1036840

def state_1036822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 31)))
theorem cover_1036822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036822 := by
  apply coveredState_split_literal (state := state_1036822) 0
    state_1036823 state_1036840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036823
  · exact cover_1036840
#print axioms cover_1036822

def state_1036678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 15)))
theorem cover_1036678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036678 := by
  apply coveredState_split_literal (state := state_1036678) 4
    state_1036679 state_1036822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036679
  · exact cover_1036822
#print axioms cover_1036678

def state_1035930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 15)))
theorem cover_1035930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035930 := by
  apply coveredState_split_literal (state := state_1035930) 3
    state_1035931 state_1036678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035931
  · exact cover_1036678
#print axioms cover_1035930

def state_1035929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_1035929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035929 := by
  apply coveredState_split_literal (state := state_1035929) 2
    state_1035930 state_1037281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035930
  · exact cover_1037281
#print axioms cover_1035929

def state_1035421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_1035421 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035421 := by
  apply coveredState_split_literal (state := state_1035421) 1
    state_1035422 state_1035929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035422
  · exact cover_1035929
#print axioms cover_1035421

def state_1035403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_1035403 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035403 := by
  apply coveredState_split_literal (state := state_1035403) 0
    state_1035404 state_1035421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035404
  · exact cover_1035421
#print axioms cover_1035403

def state_1034865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 7)))
theorem cover_1034865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034865 := by
  apply coveredState_split_literal (state := state_1034865) 4
    state_1034866 state_1035403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034866
  · exact cover_1035403
#print axioms cover_1034865

def state_1034731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 7)))
theorem cover_1034731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034731 := by
  apply coveredState_split_literal (state := state_1034731) 3
    state_1034732 state_1034865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034732
  · exact cover_1034865
#print axioms cover_1034731

def state_1028531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_1028531 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028531 := by
  apply coveredState_split_literal (state := state_1028531) 2
    state_1028532 state_1034731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028532
  · exact cover_1034731
#print axioms cover_1028531

def state_1037389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
theorem cover_1037389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037389 := by
  apply coveredState_split_literal (state := state_1037389) 2
    state_1037390 state_1037417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037390
  · exact cover_1037417
#print axioms cover_1037389

def state_1037387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
theorem cover_1037387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037387 := by
  apply coveredState_split_literal (state := state_1037387) 0
    state_1037388 state_1037389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037388
  · exact cover_1037389
#print axioms cover_1037387

def state_1037373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 15)))
theorem cover_1037373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037373 := by
  apply coveredState_split_literal (state := state_1037373) 4
    state_1037374 state_1037387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037374
  · exact cover_1037387
#print axioms cover_1037373

def state_1037460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 15)))
theorem cover_1037460 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037460 := by
  apply coveredState_split_literal (state := state_1037460) 4
    state_1037461 state_1037468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037461
  · exact cover_1037468
#print axioms cover_1037460

def state_1037372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 15)))
theorem cover_1037372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037372 := by
  apply coveredState_split_literal (state := state_1037372) 3
    state_1037373 state_1037460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037373
  · exact cover_1037460
#print axioms cover_1037372

def state_1037371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 15)))
theorem cover_1037371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037371 := by
  apply coveredState_split_literal (state := state_1037371) 1
    state_1037372 state_1037529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037372
  · exact cover_1037529
#print axioms cover_1037371

def state_1037347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
theorem cover_1037347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037347 := by
  apply coveredState_split_literal (state := state_1037347) 2
    state_1037348 state_1037371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037348
  · exact cover_1037371
#print axioms cover_1037347

def state_1037343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
theorem cover_1037343 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037343 := by
  apply coveredState_split_literal (state := state_1037343) 0
    state_1037344 state_1037347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037344
  · exact cover_1037347
#print axioms cover_1037343

def state_1037331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 7)))
theorem cover_1037331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037331 := by
  apply coveredState_split_literal (state := state_1037331) 4
    state_1037332 state_1037343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037332
  · exact cover_1037343
#print axioms cover_1037331

def state_1037295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 7)))
theorem cover_1037295 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037295 := by
  apply coveredState_split_literal (state := state_1037295) 3
    state_1037296 state_1037331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037296
  · exact cover_1037331
#print axioms cover_1037295

def state_1037618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 31)))
theorem cover_1037618 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037618 := by
  apply coveredState_split_literal (state := state_1037618) 1
    state_1037619 state_1037682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037619
  · exact cover_1037682
#print axioms cover_1037618

def state_1037610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 31)))
theorem cover_1037610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037610 := by
  apply coveredState_split_literal (state := state_1037610) 0
    state_1037611 state_1037618
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037611
  · exact cover_1037618
#print axioms cover_1037610

def state_1037594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 15)))
theorem cover_1037594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037594 := by
  apply coveredState_split_literal (state := state_1037594) 4
    state_1037595 state_1037610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037595
  · exact cover_1037610
#print axioms cover_1037594

def state_1037568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 15)))
theorem cover_1037568 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037568 := by
  apply coveredState_split_literal (state := state_1037568) 3
    state_1037569 state_1037594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037569
  · exact cover_1037594
#print axioms cover_1037568

def state_1037567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_1037567 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037567 := by
  apply coveredState_split_literal (state := state_1037567) 2
    state_1037568 state_1037687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037568
  · exact cover_1037687
#print axioms cover_1037567

def state_1037566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_1037566 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037566 := by
  apply coveredState_split_literal (state := state_1037566) 1
    state_1037567 state_1037694
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037567
  · exact cover_1037694
#print axioms cover_1037566

def state_1037554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_1037554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037554 := by
  apply coveredState_split_literal (state := state_1037554) 0
    state_1037555 state_1037566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037555
  · exact cover_1037566
#print axioms cover_1037554
end Mub6.Numerical.CircleFullD0.Forest
