import D0FullInterface
import D0ForestAssembly0189
import D0ForestAssembly0240
import D0ForestAssembly0251
import D0ForestAssembly0291
import D0ForestChunk1122
import D0ForestChunk1123
import D0ForestChunk1124
import D0ForestChunk1125
import D0ForestChunk1126
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1569782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1569782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569782 := by
  apply coveredState_split_literal (state := state_1569782) 1
    state_1569783 state_1569924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569783
  · exact cover_1569924
#print axioms cover_1569782

def state_1569582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1569582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569582 := by
  apply coveredState_split_literal (state := state_1569582) 0
    state_1569583 state_1569782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569583
  · exact cover_1569782
#print axioms cover_1569582

def state_1569975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1569975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569975 := by
  apply coveredState_split_literal (state := state_1569975) 2
    state_1569976 state_1570019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569976
  · exact cover_1570019
#print axioms cover_1569975

def state_1569974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1569974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569974 := by
  apply coveredState_split_literal (state := state_1569974) 1
    state_1569975 state_1570052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569975
  · exact cover_1570052
#print axioms cover_1569974

def state_1569973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1569973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569973 := by
  apply coveredState_split_literal (state := state_1569973) 0
    state_1569974 state_1570093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569974
  · exact cover_1570093
#print axioms cover_1569973

def state_1569581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1569581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569581 := by
  apply coveredState_split_literal (state := state_1569581) 4
    state_1569582 state_1569973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569582
  · exact cover_1569973
#print axioms cover_1569581

def state_1530899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1530899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530899 := by
  apply coveredState_split_literal (state := state_1530899) 3
    state_1530900 state_1569581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530900
  · exact cover_1569581
#print axioms cover_1530899

def state_1520461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1520461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520461 := by
  apply coveredState_split_literal (state := state_1520461) 2
    state_1520462 state_1530899
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520462
  · exact cover_1530899
#print axioms cover_1520461

def state_1471197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1471197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471197 := by
  apply coveredState_split_literal (state := state_1471197) 1
    state_1471198 state_1520461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471198
  · exact cover_1520461
#print axioms cover_1471197

def state_1458683 : State := rootState
theorem cover_1458683 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458683 := by
  apply coveredState_split_literal (state := state_1458683) 0
    state_1458684 state_1471197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458684
  · exact cover_1471197
#print axioms cover_1458683

def state_1570137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1570137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570137 := by
  apply coveredState_split_literal (state := state_1570137) 0
    state_1570138 state_1570195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570138
  · exact cover_1570195
#print axioms cover_1570137

def state_1570218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1570218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570218 := by
  apply coveredState_split_literal (state := state_1570218) 2
    state_1570219 state_1570224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570219
  · exact cover_1570224
#print axioms cover_1570218

def state_1570217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1570217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570217 := by
  apply coveredState_split_literal (state := state_1570217) 1
    state_1570218 state_1570283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570218
  · exact cover_1570283
#print axioms cover_1570217

def state_1570298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1570298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570298 := by
  apply coveredState_split_literal (state := state_1570298) 1
    state_1570299 state_1570352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570299
  · exact cover_1570352
#print axioms cover_1570298

def state_1570216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1570216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570216 := by
  apply coveredState_split_literal (state := state_1570216) 0
    state_1570217 state_1570298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570217
  · exact cover_1570298
#print axioms cover_1570216

def state_1570136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1570136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570136 := by
  apply coveredState_split_literal (state := state_1570136) 4
    state_1570137 state_1570216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570137
  · exact cover_1570216
#print axioms cover_1570136

def state_1570424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_1570424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570424 := by
  apply coveredState_split_literal (state := state_1570424) 3
    state_1570425 state_1570482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570425
  · exact cover_1570482
#print axioms cover_1570424

def state_1570412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1570412 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570412 := by
  apply coveredState_split_literal (state := state_1570412) 2
    state_1570413 state_1570424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570413
  · exact cover_1570424
#print axioms cover_1570412

def state_1570411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1570411 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570411 := by
  apply coveredState_split_literal (state := state_1570411) 1
    state_1570412 state_1570489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570412
  · exact cover_1570489
#print axioms cover_1570411

def state_1570517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_1570517 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570517 := by
  apply coveredState_split_literal (state := state_1570517) 3
    state_1570518 state_1570537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570518
  · exact cover_1570537
#print axioms cover_1570517

def state_1570509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1570509 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570509 := by
  apply coveredState_split_literal (state := state_1570509) 2
    state_1570510 state_1570517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570510
  · exact cover_1570517
#print axioms cover_1570509

def state_1570508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1570508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570508 := by
  apply coveredState_split_literal (state := state_1570508) 1
    state_1570509 state_1570590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570509
  · exact cover_1570590
#print axioms cover_1570508

def state_1570410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1570410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570410 := by
  apply coveredState_split_literal (state := state_1570410) 0
    state_1570411 state_1570508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570411
  · exact cover_1570508
#print axioms cover_1570410

def state_1570776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 51 else 51)))
theorem cover_1570776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570776 := by
  apply coveredState_split_literal (state := state_1570776) 1
    state_1570777 state_1570836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570777
  · exact cover_1570836
#print axioms cover_1570776

def state_1570774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 51 else 51)))
theorem cover_1570774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570774 := by
  apply coveredState_split_literal (state := state_1570774) 0
    state_1570775 state_1570776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570775
  · exact cover_1570776
#print axioms cover_1570774

def state_1570760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 51 else 25)))
theorem cover_1570760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570760 := by
  apply coveredState_split_literal (state := state_1570760) 4
    state_1570761 state_1570774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570761
  · exact cover_1570774
#print axioms cover_1570760

def state_1570742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 25 else 25)))
theorem cover_1570742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570742 := by
  apply coveredState_split_literal (state := state_1570742) 3
    state_1570743 state_1570760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570743
  · exact cover_1570760
#print axioms cover_1570742

def state_1570734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 25)))
theorem cover_1570734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570734 := by
  apply coveredState_split_literal (state := state_1570734) 2
    state_1570735 state_1570742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570735
  · exact cover_1570742
#print axioms cover_1570734

def state_1570733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 25)))
theorem cover_1570733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570733 := by
  apply coveredState_split_literal (state := state_1570733) 1
    state_1570734 state_1570841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570734
  · exact cover_1570841
#print axioms cover_1570733

def state_1570865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 47 else (if j.val < 4 then 51 else 51)))
theorem cover_1570865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570865 := by
  apply coveredState_split_literal (state := state_1570865) 2
    state_1570866 state_1570881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570866
  · exact cover_1570881
#print axioms cover_1570865

def state_1570864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 51 else 51)))
theorem cover_1570864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570864 := by
  apply coveredState_split_literal (state := state_1570864) 1
    state_1570865 state_1570934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570865
  · exact cover_1570934
#print axioms cover_1570864

def state_1570863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 51 else 51)))
theorem cover_1570863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570863 := by
  apply coveredState_split_literal (state := state_1570863) 0
    state_1570864 state_1570951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570864
  · exact cover_1570951
#print axioms cover_1570863
end Mub6.Numerical.CircleFullD0.Forest
