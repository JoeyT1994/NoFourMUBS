import D0FullInterface
import D0ForestAssembly0345
import D0ForestAssembly0348
import D0ForestAssembly0349
import D0ForestChunk1355
import D0ForestChunk1356
import D0ForestChunk1357
import D0ForestChunk1358
import D0ForestChunk1359
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1625511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 17)))
theorem cover_1625511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625511 := by
  apply coveredState_split_literal (state := state_1625511) 4
    state_1625512 state_1625987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625512
  · exact cover_1625987
#print axioms cover_1625511

def state_1625161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 17)))
theorem cover_1625161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625161 := by
  apply coveredState_split_literal (state := state_1625161) 0
    state_1625162 state_1625511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625162
  · exact cover_1625511
#print axioms cover_1625161

def state_1624813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 17)))
theorem cover_1624813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624813 := by
  apply coveredState_split_literal (state := state_1624813) 2
    state_1624814 state_1625161
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624814
  · exact cover_1625161
#print axioms cover_1624813

def state_1624717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 17)))
theorem cover_1624717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624717 := by
  apply coveredState_split_literal (state := state_1624717) 1
    state_1624718 state_1624813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624718
  · exact cover_1624813
#print axioms cover_1624717

def state_1626185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 49 else 17)))
theorem cover_1626185 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626185 := by
  apply coveredState_split_literal (state := state_1626185) 0
    state_1626186 state_1626205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626186
  · exact cover_1626205
#print axioms cover_1626185

def state_1626320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 53 else (if j.val < 4 then 98 else 34)))
theorem cover_1626320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626320 := by
  apply coveredState_split_literal (state := state_1626320) 2
    state_1626321 state_1626360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626321
  · exact cover_1626360
#print axioms cover_1626320

def state_1626308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 98 else 34)))
theorem cover_1626308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626308 := by
  apply coveredState_split_literal (state := state_1626308) 1
    state_1626309 state_1626320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626309
  · exact cover_1626320
#print axioms cover_1626308

def state_1626307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 49 else 34)))
theorem cover_1626307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626307 := by
  apply coveredState_split_literal (state := state_1626307) 3
    state_1626308 state_1626399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626308
  · exact cover_1626399
#print axioms cover_1626307

def state_1626414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 102) else (if j.val < 3 then 53 else (if j.val < 4 then 98 else 35)))
theorem cover_1626414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626414 := by
  apply coveredState_split_literal (state := state_1626414) 2
    state_1626415 state_1626434
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626415
  · exact cover_1626434
#print axioms cover_1626414

def state_1626505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 107 else (if j.val < 4 then 98 else 35)))
theorem cover_1626505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626505 := by
  apply coveredState_split_literal (state := state_1626505) 0
    state_1626506 state_1626519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626506
  · exact cover_1626519
#print axioms cover_1626505

def state_1626479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 53 else (if j.val < 4 then 98 else 35)))
theorem cover_1626479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626479 := by
  apply coveredState_split_literal (state := state_1626479) 2
    state_1626480 state_1626505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626480
  · exact cover_1626505
#print axioms cover_1626479

def state_1626413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 98 else 35)))
theorem cover_1626413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626413 := by
  apply coveredState_split_literal (state := state_1626413) 1
    state_1626414 state_1626479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626414
  · exact cover_1626479
#print axioms cover_1626413

def state_1626412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 49 else 35)))
theorem cover_1626412 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626412 := by
  apply coveredState_split_literal (state := state_1626412) 3
    state_1626413 state_1626572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626413
  · exact cover_1626572
#print axioms cover_1626412

def state_1626306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 49 else 17)))
theorem cover_1626306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626306 := by
  apply coveredState_split_literal (state := state_1626306) 4
    state_1626307 state_1626412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626307
  · exact cover_1626412
#print axioms cover_1626306

def state_1626260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 49 else 17)))
theorem cover_1626260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626260 := by
  apply coveredState_split_literal (state := state_1626260) 0
    state_1626261 state_1626306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626261
  · exact cover_1626306
#print axioms cover_1626260

def state_1626184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 49 else 17)))
theorem cover_1626184 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626184 := by
  apply coveredState_split_literal (state := state_1626184) 2
    state_1626185 state_1626260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626185
  · exact cover_1626260
#print axioms cover_1626184

def state_1626144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 49 else 17)))
theorem cover_1626144 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626144 := by
  apply coveredState_split_literal (state := state_1626144) 1
    state_1626145 state_1626184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626145
  · exact cover_1626184
#print axioms cover_1626144

def state_1624716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 17)))
theorem cover_1624716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624716 := by
  apply coveredState_split_literal (state := state_1624716) 3
    state_1624717 state_1626144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624717
  · exact cover_1626144
#print axioms cover_1624716

def state_1621206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 8)))
theorem cover_1621206 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621206 := by
  apply coveredState_split_literal (state := state_1621206) 4
    state_1621207 state_1624716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621207
  · exact cover_1624716
#print axioms cover_1621206

def state_1620872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 8)))
theorem cover_1620872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620872 := by
  apply coveredState_split_literal (state := state_1620872) 0
    state_1620873 state_1621206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620873
  · exact cover_1621206
#print axioms cover_1620872

def state_1626751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 48 else 17)))
theorem cover_1626751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626751 := by
  apply coveredState_split_literal (state := state_1626751) 4
    state_1626752 state_1626773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626752
  · exact cover_1626773
#print axioms cover_1626751

def state_1626750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
theorem cover_1626750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626750 := by
  apply coveredState_split_literal (state := state_1626750) 2
    state_1626751 state_1626824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626751
  · exact cover_1626824
#print axioms cover_1626750

def state_1626728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
theorem cover_1626728 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626728 := by
  apply coveredState_split_literal (state := state_1626728) 0
    state_1626729 state_1626750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626729
  · exact cover_1626750
#print axioms cover_1626728

def state_1626676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
theorem cover_1626676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626676 := by
  apply coveredState_split_literal (state := state_1626676) 1
    state_1626677 state_1626728
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626677
  · exact cover_1626728
#print axioms cover_1626676

def state_1626926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 102) else (if j.val < 3 then 54 else (if j.val < 4 then 98 else 35)))
theorem cover_1626926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626926 := by
  apply coveredState_split_literal (state := state_1626926) 0
    state_1626927 state_1626954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626927
  · exact cover_1626954
#print axioms cover_1626926

def state_1627020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 103) else (if j.val < 3 then 108 else (if j.val < 4 then 98 else 35)))
theorem cover_1627020 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627020 := by
  apply coveredState_split_literal (state := state_1627020) 4
    state_1627021 state_1627062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627021
  · exact cover_1627062
#print axioms cover_1627020

def state_1627019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 103) else (if j.val < 3 then 54 else (if j.val < 4 then 98 else 35)))
theorem cover_1627019 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627019 := by
  apply coveredState_split_literal (state := state_1627019) 2
    state_1627020 state_1627091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627020
  · exact cover_1627091
#print axioms cover_1627019

def state_1626999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 54 else (if j.val < 4 then 98 else 35)))
theorem cover_1626999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626999 := by
  apply coveredState_split_literal (state := state_1626999) 0
    state_1627000 state_1627019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627000
  · exact cover_1627019
#print axioms cover_1626999

def state_1626925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 98 else 35)))
theorem cover_1626925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626925 := by
  apply coveredState_split_literal (state := state_1626925) 1
    state_1626926 state_1626999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626926
  · exact cover_1626999
#print axioms cover_1626925

def state_1626924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 49 else 35)))
theorem cover_1626924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626924 := by
  apply coveredState_split_literal (state := state_1626924) 3
    state_1626925 state_1627108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626925
  · exact cover_1627108
#print axioms cover_1626924

def state_1626892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 49 else 17)))
theorem cover_1626892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626892 := by
  apply coveredState_split_literal (state := state_1626892) 4
    state_1626893 state_1626924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626893
  · exact cover_1626924
#print axioms cover_1626892

def state_1626891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 17)))
theorem cover_1626891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626891 := by
  apply coveredState_split_literal (state := state_1626891) 2
    state_1626892 state_1627135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626892
  · exact cover_1627135
#print axioms cover_1626891
end Mub6.Numerical.CircleFullD0.Forest
