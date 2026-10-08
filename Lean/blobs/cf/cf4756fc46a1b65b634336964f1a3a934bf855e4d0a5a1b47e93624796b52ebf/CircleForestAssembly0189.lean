import CircleFullInterface
import CircleForestAssembly0183
import CircleForestAssembly0187
import CircleForestAssembly0188
import CircleForestChunk0700
import CircleForestChunk0707
import CircleForestChunk0708
import CircleForestChunk0709
import CircleForestChunk0710
import CircleForestChunk0711
import CircleForestChunk0712
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1470646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_1470646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470646 := by
  apply coveredState_split_literal (state := state_1470646) 4
    state_1470647 state_1470656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470647
  · exact cover_1470656
#print axioms cover_1470646

def state_1470632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_1470632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470632 := by
  apply coveredState_split_literal (state := state_1470632) 3
    state_1470633 state_1470646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470633
  · exact cover_1470646
#print axioms cover_1470632

def state_1470126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1470126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470126 := by
  apply coveredState_split_literal (state := state_1470126) 2
    state_1470127 state_1470632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470127
  · exact cover_1470632
#print axioms cover_1470126

def state_1469040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1469040 : CoveredState taoTables (toCarrier R carrier) T R targets
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
theorem cover_1469006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469006 := by
  apply coveredState_split_literal (state := state_1469006) 0
    state_1469007 state_1469040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469007
  · exact cover_1469040
#print axioms cover_1469006

def state_1470749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1470749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470749 := by
  apply coveredState_split_literal (state := state_1470749) 1
    state_1470750 state_1470781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470750
  · exact cover_1470781
#print axioms cover_1470749

def state_1470717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1470717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470717 := by
  apply coveredState_split_literal (state := state_1470717) 0
    state_1470718 state_1470749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470718
  · exact cover_1470749
#print axioms cover_1470717

def state_1469005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1469005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469005 := by
  apply coveredState_split_literal (state := state_1469005) 4
    state_1469006 state_1470717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469006
  · exact cover_1470717
#print axioms cover_1469005

def state_1470875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1470875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470875 := by
  apply coveredState_split_literal (state := state_1470875) 1
    state_1470876 state_1470931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470876
  · exact cover_1470931
#print axioms cover_1470875

def state_1470843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1470843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470843 := by
  apply coveredState_split_literal (state := state_1470843) 0
    state_1470844 state_1470875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470844
  · exact cover_1470875
#print axioms cover_1470843

def state_1471011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1471011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471011 := by
  apply coveredState_split_literal (state := state_1471011) 2
    state_1471012 state_1471065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471012
  · exact cover_1471065
#print axioms cover_1471011

def state_1471116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1471116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471116 := by
  apply coveredState_split_literal (state := state_1471116) 2
    state_1471117 state_1471156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471117
  · exact cover_1471156
#print axioms cover_1471116

def state_1471010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1471010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471010 := by
  apply coveredState_split_literal (state := state_1471010) 1
    state_1471011 state_1471116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471011
  · exact cover_1471116
#print axioms cover_1471010

def state_1470960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1470960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470960 := by
  apply coveredState_split_literal (state := state_1470960) 0
    state_1470961 state_1471010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470961
  · exact cover_1471010
#print axioms cover_1470960

def state_1470842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1470842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470842 := by
  apply coveredState_split_literal (state := state_1470842) 4
    state_1470843 state_1470960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470843
  · exact cover_1470960
#print axioms cover_1470842

def state_1469004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1469004 : CoveredState taoTables (toCarrier R carrier) T R targets
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
theorem cover_1466584 : CoveredState taoTables (toCarrier R carrier) T R targets
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
theorem cover_1458684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458684 := by
  apply coveredState_split_literal (state := state_1458684) 1
    state_1458685 state_1466584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458685
  · exact cover_1466584
#print axioms cover_1458684

def state_1471202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1471202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471202 := by
  apply coveredState_split_literal (state := state_1471202) 1
    state_1471203 state_1471226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471203
  · exact cover_1471226
#print axioms cover_1471202

def state_1471287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1471287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471287 := by
  apply coveredState_split_literal (state := state_1471287) 1
    state_1471288 state_1471313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471288
  · exact cover_1471313
#print axioms cover_1471287

def state_1471201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1471201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471201 := by
  apply coveredState_split_literal (state := state_1471201) 0
    state_1471202 state_1471287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471202
  · exact cover_1471287
#print axioms cover_1471201

def state_1471397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 6)))
theorem cover_1471397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471397 := by
  apply coveredState_split_literal (state := state_1471397) 4
    state_1471398 state_1471411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471398
  · exact cover_1471411
#print axioms cover_1471397

def state_1471375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_1471375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471375 := by
  apply coveredState_split_literal (state := state_1471375) 3
    state_1471376 state_1471397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471376
  · exact cover_1471397
#print axioms cover_1471375

def state_1471374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_1471374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471374 := by
  apply coveredState_split_literal (state := state_1471374) 0
    state_1471375 state_1471468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471375
  · exact cover_1471468
#print axioms cover_1471374

def state_1471373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_1471373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471373 := by
  apply coveredState_split_literal (state := state_1471373) 4
    state_1471374 state_1471477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471374
  · exact cover_1471477
#print axioms cover_1471373

def state_1471357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_1471357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471357 := by
  apply coveredState_split_literal (state := state_1471357) 3
    state_1471358 state_1471373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471358
  · exact cover_1471373
#print axioms cover_1471357

def state_1471356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1471356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471356 := by
  apply coveredState_split_literal (state := state_1471356) 2
    state_1471357 state_1471508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471357
  · exact cover_1471508
#print axioms cover_1471356

def state_1471642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 13)))
theorem cover_1471642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471642 := by
  apply coveredState_split_literal (state := state_1471642) 0
    state_1471643 state_1471702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471643
  · exact cover_1471702
#print axioms cover_1471642

def state_1471641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
theorem cover_1471641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471641 := by
  apply coveredState_split_literal (state := state_1471641) 2
    state_1471642 state_1471707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471642
  · exact cover_1471707
#print axioms cover_1471641

def state_1471637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 6)))
theorem cover_1471637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471637 := by
  apply coveredState_split_literal (state := state_1471637) 4
    state_1471638 state_1471641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471638
  · exact cover_1471641
#print axioms cover_1471637

def state_1471581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_1471581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471581 := by
  apply coveredState_split_literal (state := state_1471581) 3
    state_1471582 state_1471637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471582
  · exact cover_1471637
#print axioms cover_1471581

def state_1471580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_1471580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471580 := by
  apply coveredState_split_literal (state := state_1471580) 1
    state_1471581 state_1471736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471581
  · exact cover_1471736
#print axioms cover_1471580
end Mub6.Numerical.CircleFullD0.Forest
