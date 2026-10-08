import CircleFullInterface
import CircleForestAssembly0013
import CircleForestAssembly0016
import CircleForestAssembly0018
import CircleForestAssembly0020
import CircleForestChunk0089
import CircleForestChunk0090
import CircleForestChunk0091
import CircleForestChunk0092
import CircleForestChunk0093
import CircleForestChunk0094
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_958895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 27 else (if j.val < 4 then 38 else 27)))
theorem cover_958895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958895 := by
  apply coveredState_split_literal (state := state_958895) 2
    state_958896 state_958915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958896
  · exact cover_958915
#print axioms cover_958895

def state_958894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
theorem cover_958894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958894 := by
  apply coveredState_split_literal (state := state_958894) 3
    state_958895 state_958968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958895
  · exact cover_958968
#print axioms cover_958894

def state_958987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 54 else (if j.val < 4 then 38 else 27)))
theorem cover_958987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958987 := by
  apply coveredState_split_literal (state := state_958987) 4
    state_958988 state_959039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958988
  · exact cover_959039
#print axioms cover_958987

def state_959067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 55 else (if j.val < 4 then 38 else 54)))
theorem cover_959067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959067 := by
  apply coveredState_split_literal (state := state_959067) 0
    state_959068 state_959121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959068
  · exact cover_959121
#print axioms cover_959067

def state_959132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 55 else (if j.val < 4 then 38 else 55)))
theorem cover_959132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959132 := by
  apply coveredState_split_literal (state := state_959132) 0
    state_959133 state_959192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959133
  · exact cover_959192
#print axioms cover_959132

def state_959066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 55 else (if j.val < 4 then 38 else 27)))
theorem cover_959066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959066 := by
  apply coveredState_split_literal (state := state_959066) 4
    state_959067 state_959132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959067
  · exact cover_959132
#print axioms cover_959066

def state_958986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 27 else (if j.val < 4 then 38 else 27)))
theorem cover_958986 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958986 := by
  apply coveredState_split_literal (state := state_958986) 2
    state_958987 state_959066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958987
  · exact cover_959066
#print axioms cover_958986

def state_958985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
theorem cover_958985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958985 := by
  apply coveredState_split_literal (state := state_958985) 3
    state_958986 state_959215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958986
  · exact cover_959215
#print axioms cover_958985

def state_958893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
theorem cover_958893 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958893 := by
  apply coveredState_split_literal (state := state_958893) 1
    state_958894 state_958985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958894
  · exact cover_958985
#print axioms cover_958893

def state_958892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
theorem cover_958892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958892 := by
  apply coveredState_split_literal (state := state_958892) 0
    state_958893 state_959252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958893
  · exact cover_959252
#print axioms cover_958892

def state_958504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 27)))
theorem cover_958504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958504 := by
  apply coveredState_split_literal (state := state_958504) 3
    state_958505 state_958892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958505
  · exact cover_958892
#print axioms cover_958504

def state_958424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 13)))
theorem cover_958424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958424 := by
  apply coveredState_split_literal (state := state_958424) 4
    state_958425 state_958504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958425
  · exact cover_958504
#print axioms cover_958424

def state_956888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_956888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956888 := by
  apply coveredState_split_literal (state := state_956888) 2
    state_956889 state_958424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956889
  · exact cover_958424
#print axioms cover_956888

def state_956708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_956708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956708 := by
  apply coveredState_split_literal (state := state_956708) 1
    state_956709 state_956888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956709
  · exact cover_956888
#print axioms cover_956708

def state_954210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_954210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954210 := by
  apply coveredState_split_literal (state := state_954210) 0
    state_954211 state_956708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954211
  · exact cover_956708
#print axioms cover_954210

def state_951542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
theorem cover_951542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951542 := by
  apply coveredState_split_literal (state := state_951542) 3
    state_951543 state_954210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951543
  · exact cover_954210
#print axioms cover_951542

def state_951404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 6)))
theorem cover_951404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951404 := by
  apply coveredState_split_literal (state := state_951404) 4
    state_951405 state_951542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951405
  · exact cover_951542
#print axioms cover_951404

def state_942384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_942384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942384 := by
  apply coveredState_split_literal (state := state_942384) 2
    state_942385 state_951404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942385
  · exact cover_951404
#print axioms cover_942384

def state_959390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 27)))
theorem cover_959390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959390 := by
  apply coveredState_split_literal (state := state_959390) 0
    state_959391 state_959406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959391
  · exact cover_959406
#print axioms cover_959390

def state_959491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 27)))
theorem cover_959491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959491 := by
  apply coveredState_split_literal (state := state_959491) 4
    state_959492 state_959547
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959492
  · exact cover_959547
#print axioms cover_959491

def state_959584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 54)))
theorem cover_959584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959584 := by
  apply coveredState_split_literal (state := state_959584) 0
    state_959585 state_959614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959585
  · exact cover_959614
#print axioms cover_959584

def state_959721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 109)))
theorem cover_959721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959721 := by
  apply coveredState_split_literal (state := state_959721) 0
    state_959722 state_959739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959722
  · exact cover_959739
#print axioms cover_959721

def state_959720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 109)))
theorem cover_959720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959720 := by
  apply coveredState_split_literal (state := state_959720) 3
    state_959721 state_959796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959721
  · exact cover_959796
#print axioms cover_959720

def state_959710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 54)))
theorem cover_959710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959710 := by
  apply coveredState_split_literal (state := state_959710) 4
    state_959711 state_959720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959711
  · exact cover_959720
#print axioms cover_959710

def state_959676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 54)))
theorem cover_959676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959676 := by
  apply coveredState_split_literal (state := state_959676) 2
    state_959677 state_959710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959677
  · exact cover_959710
#print axioms cover_959676

def state_959675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 54)))
theorem cover_959675 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959675 := by
  apply coveredState_split_literal (state := state_959675) 1
    state_959676 state_959813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959676
  · exact cover_959813
#print axioms cover_959675

def state_959659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 54)))
theorem cover_959659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959659 := by
  apply coveredState_split_literal (state := state_959659) 0
    state_959660 state_959675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959660
  · exact cover_959675
#print axioms cover_959659

def state_959583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 54)))
theorem cover_959583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959583 := by
  apply coveredState_split_literal (state := state_959583) 3
    state_959584 state_959659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959584
  · exact cover_959659
#print axioms cover_959583

def state_959837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 55)))
theorem cover_959837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959837 := by
  apply coveredState_split_literal (state := state_959837) 1
    state_959838 state_959881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959838
  · exact cover_959881
#print axioms cover_959837

def state_959823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 55)))
theorem cover_959823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959823 := by
  apply coveredState_split_literal (state := state_959823) 0
    state_959824 state_959837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959824
  · exact cover_959837
#print axioms cover_959823

def state_959949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 110)))
theorem cover_959949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959949 := by
  apply coveredState_split_literal (state := state_959949) 0
    state_959950 state_959975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959950
  · exact cover_959975
#print axioms cover_959949

def state_959948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 110)))
theorem cover_959948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959948 := by
  apply coveredState_split_literal (state := state_959948) 3
    state_959949 state_960026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959949
  · exact cover_960026
#print axioms cover_959948
end Mub6.Numerical.CircleFullD0.Forest
