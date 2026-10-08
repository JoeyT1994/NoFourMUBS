import D0FullInterface
import D0ForestAssembly0008
import D0ForestChunk0018
import D0ForestChunk0019
import D0ForestChunk0020
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1466585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1466585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466585 := by
  apply coveredState_split_literal (state := state_1466585) 3
    state_1466586 state_1468697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466586
  · exact cover_1468697
#print axioms cover_1466585

def state_1469042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_1469042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469042 := by
  apply coveredState_split_literal (state := state_1469042) 3
    state_1469043 state_1469990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469043
  · exact cover_1469990
#print axioms cover_1469042

def state_1469041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1469041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469041 := by
  apply coveredState_split_literal (state := state_1469041) 2
    state_1469042 state_1470095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469042
  · exact cover_1470095
#print axioms cover_1469041

def state_1469040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1469040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469040 := by
  apply coveredState_split_literal (state := state_1469040) 1
    state_1469041 state_1470126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469041
  · exact cover_1470126
#print axioms cover_1469040

def state_1469006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1469006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469006 := by
  apply coveredState_split_literal (state := state_1469006) 0
    state_1469007 state_1469040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469007
  · exact cover_1469040
#print axioms cover_1469006

def state_1469005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1469005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469005 := by
  apply coveredState_split_literal (state := state_1469005) 4
    state_1469006 state_1470717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469006
  · exact cover_1470717
#print axioms cover_1469005

def state_1469004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1469004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469004 := by
  apply coveredState_split_literal (state := state_1469004) 3
    state_1469005 state_1470842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469005
  · exact cover_1470842
#print axioms cover_1469004

def state_1466584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1466584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466584 := by
  apply coveredState_split_literal (state := state_1466584) 2
    state_1466585 state_1469004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466585
  · exact cover_1469004
#print axioms cover_1466584

def state_1458684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1458684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458684 := by
  apply coveredState_split_literal (state := state_1458684) 1
    state_1458685 state_1466584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458685
  · exact cover_1466584
#print axioms cover_1458684

def state_1471974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 14)))
theorem cover_1471974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471974 := by
  apply coveredState_split_literal (state := state_1471974) 4
    state_1471975 state_1472578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471975
  · exact cover_1472578
#print axioms cover_1471974

def state_1471960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 14)))
theorem cover_1471960 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471960 := by
  apply coveredState_split_literal (state := state_1471960) 1
    state_1471961 state_1471974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471961
  · exact cover_1471974
#print axioms cover_1471960

def state_1471959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
theorem cover_1471959 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471959 := by
  apply coveredState_split_literal (state := state_1471959) 3
    state_1471960 state_1473325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471960
  · exact cover_1473325
#print axioms cover_1471959

def state_1471958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
theorem cover_1471958 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471958 := by
  apply coveredState_split_literal (state := state_1471958) 0
    state_1471959 state_1473832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471959
  · exact cover_1473832
#print axioms cover_1471958

def state_1471957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 7)))
theorem cover_1471957 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471957 := by
  apply coveredState_split_literal (state := state_1471957) 4
    state_1471958 state_1473849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471958
  · exact cover_1473849
#print axioms cover_1471957

def state_1471956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 7)))
theorem cover_1471956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471956 := by
  apply coveredState_split_literal (state := state_1471956) 2
    state_1471957 state_1473918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471957
  · exact cover_1473918
#print axioms cover_1471956

def state_1471788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_1471788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471788 := by
  apply coveredState_split_literal (state := state_1471788) 3
    state_1471789 state_1471956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471789
  · exact cover_1471956
#print axioms cover_1471788

def state_1475277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 58)))
theorem cover_1475277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475277 := by
  apply coveredState_split_literal (state := state_1475277) 2
    state_1475278 state_1476221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475278
  · exact cover_1476221
#print axioms cover_1475277

def state_1475276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 29)))
theorem cover_1475276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475276 := by
  apply coveredState_split_literal (state := state_1475276) 4
    state_1475277 state_1477058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475277
  · exact cover_1477058
#print axioms cover_1475276

def state_1477119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 29)))
theorem cover_1477119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477119 := by
  apply coveredState_split_literal (state := state_1477119) 4
    state_1477120 state_1478117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477120
  · exact cover_1478117
#print axioms cover_1477119

def state_1475275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
theorem cover_1475275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475275 := by
  apply coveredState_split_literal (state := state_1475275) 3
    state_1475276 state_1477119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475276
  · exact cover_1477119
#print axioms cover_1475275

def state_1475274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
theorem cover_1475274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475274 := by
  apply coveredState_split_literal (state := state_1475274) 1
    state_1475275 state_1478232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475275
  · exact cover_1478232
#print axioms cover_1475274

def state_1475273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
theorem cover_1475273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475273 := by
  apply coveredState_split_literal (state := state_1475273) 0
    state_1475274 state_1478351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475274
  · exact cover_1478351
#print axioms cover_1475273

def state_1475272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 29)))
theorem cover_1475272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475272 := by
  apply coveredState_split_literal (state := state_1475272) 2
    state_1475273 state_1478436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475273
  · exact cover_1478436
#print axioms cover_1475272

def state_1474762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 14)))
theorem cover_1474762 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474762 := by
  apply coveredState_split_literal (state := state_1474762) 4
    state_1474763 state_1475272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474763
  · exact cover_1475272
#print axioms cover_1474762

def state_1474761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
theorem cover_1474761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474761 := by
  apply coveredState_split_literal (state := state_1474761) 3
    state_1474762 state_1479239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474762
  · exact cover_1479239
#print axioms cover_1474761

def state_1474760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
theorem cover_1474760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474760 := by
  apply coveredState_split_literal (state := state_1474760) 1
    state_1474761 state_1479898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474761
  · exact cover_1479898
#print axioms cover_1474760

def state_1474759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
theorem cover_1474759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474759 := by
  apply coveredState_split_literal (state := state_1474759) 0
    state_1474760 state_1479937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474760
  · exact cover_1479937
#print axioms cover_1474759

def state_1474758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 7)))
theorem cover_1474758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474758 := by
  apply coveredState_split_literal (state := state_1474758) 4
    state_1474759 state_1480004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474759
  · exact cover_1480004
#print axioms cover_1474758

def state_1474757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 7)))
theorem cover_1474757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474757 := by
  apply coveredState_split_literal (state := state_1474757) 2
    state_1474758 state_1480259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474758
  · exact cover_1480259
#print axioms cover_1474757

def state_1474519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_1474519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474519 := by
  apply coveredState_split_literal (state := state_1474519) 3
    state_1474520 state_1474757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474520
  · exact cover_1474757
#print axioms cover_1474519

def state_1471787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_1471787 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471787 := by
  apply coveredState_split_literal (state := state_1471787) 1
    state_1471788 state_1474519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471788
  · exact cover_1474519
#print axioms cover_1471787

def state_1471786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_1471786 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471786 := by
  apply coveredState_split_literal (state := state_1471786) 0
    state_1471787 state_1480970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471787
  · exact cover_1480970
#print axioms cover_1471786

def state_1471578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_1471578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471578 := by
  apply coveredState_split_literal (state := state_1471578) 4
    state_1471579 state_1471786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471579
  · exact cover_1471786
#print axioms cover_1471578

def state_1471528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_1471528 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471528 := by
  apply coveredState_split_literal (state := state_1471528) 3
    state_1471529 state_1471578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471529
  · exact cover_1471578
#print axioms cover_1471528

def state_1471527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1471527 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471527 := by
  apply coveredState_split_literal (state := state_1471527) 2
    state_1471528 state_1481019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471528
  · exact cover_1481019
#print axioms cover_1471527

def state_1471355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1471355 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471355 := by
  apply coveredState_split_literal (state := state_1471355) 1
    state_1471356 state_1471527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471356
  · exact cover_1471527
#print axioms cover_1471355

def state_1471354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1471354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471354 := by
  apply coveredState_split_literal (state := state_1471354) 0
    state_1471355 state_1481106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471355
  · exact cover_1481106
#print axioms cover_1471354

def state_1471200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1471200 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471200 := by
  apply coveredState_split_literal (state := state_1471200) 4
    state_1471201 state_1471354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471201
  · exact cover_1471354
#print axioms cover_1471200

def state_1481823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
theorem cover_1481823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481823 := by
  apply coveredState_split_literal (state := state_1481823) 1
    state_1481824 state_1482265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481824
  · exact cover_1482265
#print axioms cover_1481823

def state_1481822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 52)))
theorem cover_1481822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481822 := by
  apply coveredState_split_literal (state := state_1481822) 2
    state_1481823 state_1482990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481823
  · exact cover_1482990
#print axioms cover_1481822

def state_1481821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 26)))
theorem cover_1481821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481821 := by
  apply coveredState_split_literal (state := state_1481821) 4
    state_1481822 state_1483031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481822
  · exact cover_1483031
#print axioms cover_1481821

def state_1481791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
theorem cover_1481791 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481791 := by
  apply coveredState_split_literal (state := state_1481791) 3
    state_1481792 state_1481821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481792
  · exact cover_1481821
#print axioms cover_1481791

def state_1481790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
theorem cover_1481790 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481790 := by
  apply coveredState_split_literal (state := state_1481790) 0
    state_1481791 state_1483088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481791
  · exact cover_1483088
#print axioms cover_1481790

def state_1481789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
theorem cover_1481789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481789 := by
  apply coveredState_split_literal (state := state_1481789) 1
    state_1481790 state_1483123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481790
  · exact cover_1483123
#print axioms cover_1481789

def state_1481701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 26)))
theorem cover_1481701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481701 := by
  apply coveredState_split_literal (state := state_1481701) 2
    state_1481702 state_1481789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481702
  · exact cover_1481789
#print axioms cover_1481701

def state_1481700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 13)))
theorem cover_1481700 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481700 := by
  apply coveredState_split_literal (state := state_1481700) 4
    state_1481701 state_1483862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481701
  · exact cover_1483862
#print axioms cover_1481700

def state_1481664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1481664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481664 := by
  apply coveredState_split_literal (state := state_1481664) 3
    state_1481665 state_1481700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481665
  · exact cover_1481700
#print axioms cover_1481664

def state_1481663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1481663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481663 := by
  apply coveredState_split_literal (state := state_1481663) 0
    state_1481664 state_1483947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481664
  · exact cover_1483947
#print axioms cover_1481663

def state_1481653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_1481653 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481653 := by
  apply coveredState_split_literal (state := state_1481653) 2
    state_1481654 state_1481663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481654
  · exact cover_1481663
#print axioms cover_1481653

def state_1481652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_1481652 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481652 := by
  apply coveredState_split_literal (state := state_1481652) 1
    state_1481653 state_1483968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481653
  · exact cover_1483968
#print axioms cover_1481652

def state_1481338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_1481338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481338 := by
  apply coveredState_split_literal (state := state_1481338) 4
    state_1481339 state_1481652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481339
  · exact cover_1481652
#print axioms cover_1481338

def state_1484864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 13)))
theorem cover_1484864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484864 := by
  apply coveredState_split_literal (state := state_1484864) 4
    state_1484865 state_1485820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484865
  · exact cover_1485820
#print axioms cover_1484864

def state_1484863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 13)))
theorem cover_1484863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484863 := by
  apply coveredState_split_literal (state := state_1484863) 3
    state_1484864 state_1485939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484864
  · exact cover_1485939
#print axioms cover_1484863

def state_1484862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 13)))
theorem cover_1484862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484862 := by
  apply coveredState_split_literal (state := state_1484862) 0
    state_1484863 state_1485962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484863
  · exact cover_1485962
#print axioms cover_1484862

def state_1484852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
theorem cover_1484852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484852 := by
  apply coveredState_split_literal (state := state_1484852) 2
    state_1484853 state_1484862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484853
  · exact cover_1484862
#print axioms cover_1484852

def state_1484851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
theorem cover_1484851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484851 := by
  apply coveredState_split_literal (state := state_1484851) 1
    state_1484852 state_1486003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484852
  · exact cover_1486003
#print axioms cover_1484851

def state_1484715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
theorem cover_1484715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484715 := by
  apply coveredState_split_literal (state := state_1484715) 4
    state_1484716 state_1484851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484716
  · exact cover_1484851
#print axioms cover_1484715

def state_1481337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1481337 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481337 := by
  apply coveredState_split_literal (state := state_1481337) 3
    state_1481338 state_1484715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481338
  · exact cover_1484715
#print axioms cover_1481337

def state_1481336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1481336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481336 := by
  apply coveredState_split_literal (state := state_1481336) 0
    state_1481337 state_1486404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481337
  · exact cover_1486404
#print axioms cover_1481336

def state_1481335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_1481335 : CoveredState d0Tables (toCarrier R carrier) T R targets
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
theorem cover_1481334 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481334 := by
  apply coveredState_split_literal (state := state_1481334) 3
    state_1481335 state_1486742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481335
  · exact cover_1486742
#print axioms cover_1481334

def state_1486777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
theorem cover_1486777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486777 := by
  apply coveredState_split_literal (state := state_1486777) 3
    state_1486778 state_1487143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486778
  · exact cover_1487143
#print axioms cover_1486777

def state_1486776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1486776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486776 := by
  apply coveredState_split_literal (state := state_1486776) 2
    state_1486777 state_1488132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486777
  · exact cover_1488132
#print axioms cover_1486776

def state_1486775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1486775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486775 := by
  apply coveredState_split_literal (state := state_1486775) 0
    state_1486776 state_1488155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486776
  · exact cover_1488155
#print axioms cover_1486775
end Mub6.Numerical.CircleFullD0.Forest
