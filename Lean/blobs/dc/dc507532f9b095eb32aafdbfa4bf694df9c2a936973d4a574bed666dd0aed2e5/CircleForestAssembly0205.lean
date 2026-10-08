import CircleFullInterface
import CircleForestAssembly0204
import CircleForestChunk0773
import CircleForestChunk0774
import CircleForestChunk0775
import CircleForestChunk0776
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1486511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 14)))
theorem cover_1486511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486511 := by
  apply coveredState_split_literal (state := state_1486511) 2
    state_1486512 state_1486523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486512
  · exact cover_1486523
#print axioms cover_1486511

def state_1486499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 14)))
theorem cover_1486499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486499 := by
  apply coveredState_split_literal (state := state_1486499) 1
    state_1486500 state_1486511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486500
  · exact cover_1486511
#print axioms cover_1486499

def state_1486479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
theorem cover_1486479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486479 := by
  apply coveredState_split_literal (state := state_1486479) 3
    state_1486480 state_1486499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486480
  · exact cover_1486499
#print axioms cover_1486479

def state_1486478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
theorem cover_1486478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486478 := by
  apply coveredState_split_literal (state := state_1486478) 0
    state_1486479 state_1486642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486479
  · exact cover_1486642
#print axioms cover_1486478

def state_1486477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 7)))
theorem cover_1486477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486477 := by
  apply coveredState_split_literal (state := state_1486477) 4
    state_1486478 state_1486643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486478
  · exact cover_1486643
#print axioms cover_1486477

def state_1486467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
theorem cover_1486467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486467 := by
  apply coveredState_split_literal (state := state_1486467) 2
    state_1486468 state_1486477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486468
  · exact cover_1486477
#print axioms cover_1486467

def state_1486449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
theorem cover_1486449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486449 := by
  apply coveredState_split_literal (state := state_1486449) 1
    state_1486450 state_1486467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486450
  · exact cover_1486467
#print axioms cover_1486449

def state_1486676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 7)))
theorem cover_1486676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486676 := by
  apply coveredState_split_literal (state := state_1486676) 4
    state_1486677 state_1486740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486677
  · exact cover_1486740
#print axioms cover_1486676

def state_1486670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 7)))
theorem cover_1486670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486670 := by
  apply coveredState_split_literal (state := state_1486670) 2
    state_1486671 state_1486676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486671
  · exact cover_1486676
#print axioms cover_1486670

def state_1486652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 7)))
theorem cover_1486652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486652 := by
  apply coveredState_split_literal (state := state_1486652) 1
    state_1486653 state_1486670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486653
  · exact cover_1486670
#print axioms cover_1486652

def state_1486448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1486448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486448 := by
  apply coveredState_split_literal (state := state_1486448) 3
    state_1486449 state_1486652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486449
  · exact cover_1486652
#print axioms cover_1486448

def state_1486447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1486447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486447 := by
  apply coveredState_split_literal (state := state_1486447) 0
    state_1486448 state_1486741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486448
  · exact cover_1486741
#print axioms cover_1486447

def state_1481335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_1481335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481335 := by
  apply coveredState_split_literal (state := state_1481335) 4
    state_1481336 state_1486447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481336
  · exact cover_1486447
#print axioms cover_1481335

def state_1481334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_1481334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481334 := by
  apply coveredState_split_literal (state := state_1481334) 3
    state_1481335 state_1486742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481335
  · exact cover_1486742
#print axioms cover_1481334

def state_1486781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 13)))
theorem cover_1486781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486781 := by
  apply coveredState_split_literal (state := state_1486781) 0
    state_1486782 state_1486831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486782
  · exact cover_1486831
#print axioms cover_1486781

def state_1486907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 27)))
theorem cover_1486907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486907 := by
  apply coveredState_split_literal (state := state_1486907) 1
    state_1486908 state_1486929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486908
  · exact cover_1486929
#print axioms cover_1486907

def state_1486895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 27)))
theorem cover_1486895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486895 := by
  apply coveredState_split_literal (state := state_1486895) 3
    state_1486896 state_1486907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486896
  · exact cover_1486907
#print axioms cover_1486895

def state_1486875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 27)))
theorem cover_1486875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486875 := by
  apply coveredState_split_literal (state := state_1486875) 0
    state_1486876 state_1486895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486876
  · exact cover_1486895
#print axioms cover_1486875

def state_1487006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 38) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 27)))
theorem cover_1487006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487006 := by
  apply coveredState_split_literal (state := state_1487006) 4
    state_1487007 state_1487016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487007
  · exact cover_1487016
#print axioms cover_1487006

def state_1487005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 38) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 27)))
theorem cover_1487005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487005 := by
  apply coveredState_split_literal (state := state_1487005) 2
    state_1487006 state_1487077
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487006
  · exact cover_1487077
#print axioms cover_1487005

def state_1487004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 27)))
theorem cover_1487004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487004 := by
  apply coveredState_split_literal (state := state_1487004) 1
    state_1487005 state_1487082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487005
  · exact cover_1487082
#print axioms cover_1487004

def state_1486992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 27)))
theorem cover_1486992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486992 := by
  apply coveredState_split_literal (state := state_1486992) 3
    state_1486993 state_1487004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486993
  · exact cover_1487004
#print axioms cover_1486992

def state_1486976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 27)))
theorem cover_1486976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486976 := by
  apply coveredState_split_literal (state := state_1486976) 0
    state_1486977 state_1486992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486977
  · exact cover_1486992
#print axioms cover_1486976

def state_1486874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 27)))
theorem cover_1486874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486874 := by
  apply coveredState_split_literal (state := state_1486874) 1
    state_1486875 state_1486976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486875
  · exact cover_1486976
#print axioms cover_1486874

def state_1486860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 13)))
theorem cover_1486860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486860 := by
  apply coveredState_split_literal (state := state_1486860) 4
    state_1486861 state_1486874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486861
  · exact cover_1486874
#print axioms cover_1486860

def state_1486859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 13)))
theorem cover_1486859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486859 := by
  apply coveredState_split_literal (state := state_1486859) 2
    state_1486860 state_1487105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486860
  · exact cover_1487105
#print axioms cover_1486859

def state_1486847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 13)))
theorem cover_1486847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486847 := by
  apply coveredState_split_literal (state := state_1486847) 3
    state_1486848 state_1486859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486848
  · exact cover_1486859
#print axioms cover_1486847

def state_1486846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 13)))
theorem cover_1486846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486846 := by
  apply coveredState_split_literal (state := state_1486846) 0
    state_1486847 state_1487112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486847
  · exact cover_1487112
#print axioms cover_1486846

def state_1486780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 13)))
theorem cover_1486780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486780 := by
  apply coveredState_split_literal (state := state_1486780) 1
    state_1486781 state_1486846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486781
  · exact cover_1486846
#print axioms cover_1486780

def state_1486778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 6)))
theorem cover_1486778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486778 := by
  apply coveredState_split_literal (state := state_1486778) 4
    state_1486779 state_1486780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486779
  · exact cover_1486780
#print axioms cover_1486778

def state_1487201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 17) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
theorem cover_1487201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487201 := by
  apply coveredState_split_literal (state := state_1487201) 0
    state_1487202 state_1487223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487202
  · exact cover_1487223
#print axioms cover_1487201

def state_1487195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
theorem cover_1487195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487195 := by
  apply coveredState_split_literal (state := state_1487195) 1
    state_1487196 state_1487201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487196
  · exact cover_1487201
#print axioms cover_1487195
end Mub6.Numerical.CircleFullD0.Forest
