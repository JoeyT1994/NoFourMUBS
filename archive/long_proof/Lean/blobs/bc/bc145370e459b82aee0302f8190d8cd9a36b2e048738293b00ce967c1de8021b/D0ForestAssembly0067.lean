import D0FullInterface
import D0ForestAssembly0066
import D0ForestChunk0267
import D0ForestChunk0268
import D0ForestChunk0269
import D0ForestChunk0270
import D0ForestChunk0271
import D0ForestChunk0272
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1001911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 88)))
theorem cover_1001911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001911 := by
  apply coveredState_split_literal (state := state_1001911) 2
    state_1001912 state_1001991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001912
  · exact cover_1001991
#print axioms cover_1001911

def state_1001910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 88)))
theorem cover_1001910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001910 := by
  apply coveredState_split_literal (state := state_1001910) 1
    state_1001911 state_1001998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001911
  · exact cover_1001998
#print axioms cover_1001910

def state_1002011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 88)))
theorem cover_1002011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002011 := by
  apply coveredState_split_literal (state := state_1002011) 4
    state_1002012 state_1002027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002012
  · exact cover_1002027
#print axioms cover_1002011

def state_1002005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 88)))
theorem cover_1002005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002005 := by
  apply coveredState_split_literal (state := state_1002005) 0
    state_1002006 state_1002011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002006
  · exact cover_1002011
#print axioms cover_1002005

def state_1002004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 88)))
theorem cover_1002004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002004 := by
  apply coveredState_split_literal (state := state_1002004) 2
    state_1002005 state_1002082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002005
  · exact cover_1002082
#print axioms cover_1002004

def state_1002003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 88)))
theorem cover_1002003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002003 := by
  apply coveredState_split_literal (state := state_1002003) 1
    state_1002004 state_1002113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002004
  · exact cover_1002113
#print axioms cover_1002003

def state_1001909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 88)))
theorem cover_1001909 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001909 := by
  apply coveredState_split_literal (state := state_1001909) 3
    state_1001910 state_1002003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001910
  · exact cover_1002003
#print axioms cover_1001909

def state_1002126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 89)))
theorem cover_1002126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002126 := by
  apply coveredState_split_literal (state := state_1002126) 3
    state_1002127 state_1002188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002127
  · exact cover_1002188
#print axioms cover_1002126

def state_1001908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 44)))
theorem cover_1001908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001908 := by
  apply coveredState_split_literal (state := state_1001908) 4
    state_1001909 state_1002126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001909
  · exact cover_1002126
#print axioms cover_1001908

def state_1001884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 44)))
theorem cover_1001884 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001884 := by
  apply coveredState_split_literal (state := state_1001884) 0
    state_1001885 state_1001908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001885
  · exact cover_1001908
#print axioms cover_1001884

def state_1001762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 44)))
theorem cover_1001762 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001762 := by
  apply coveredState_split_literal (state := state_1001762) 1
    state_1001763 state_1001884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001763
  · exact cover_1001884
#print axioms cover_1001762

def state_1001761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 44)))
theorem cover_1001761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001761 := by
  apply coveredState_split_literal (state := state_1001761) 2
    state_1001762 state_1002243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001762
  · exact cover_1002243
#print axioms cover_1001761

def state_1002284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 106 else 88)))
theorem cover_1002284 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002284 := by
  apply coveredState_split_literal (state := state_1002284) 2
    state_1002285 state_1002312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002285
  · exact cover_1002312
#print axioms cover_1002284

def state_1002283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 88)))
theorem cover_1002283 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002283 := by
  apply coveredState_split_literal (state := state_1002283) 3
    state_1002284 state_1002367
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002284
  · exact cover_1002367
#print axioms cover_1002283

def state_1002282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 44)))
theorem cover_1002282 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002282 := by
  apply coveredState_split_literal (state := state_1002282) 4
    state_1002283 state_1002382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002283
  · exact cover_1002382
#print axioms cover_1002282

def state_1002272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 44)))
theorem cover_1002272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002272 := by
  apply coveredState_split_literal (state := state_1002272) 0
    state_1002273 state_1002282
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002273
  · exact cover_1002282
#print axioms cover_1002272

def state_1002271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 44)))
theorem cover_1002271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002271 := by
  apply coveredState_split_literal (state := state_1002271) 1
    state_1002272 state_1002397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002272
  · exact cover_1002397
#print axioms cover_1002271

def state_1002458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 44)))
theorem cover_1002458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002458 := by
  apply coveredState_split_literal (state := state_1002458) 1
    state_1002459 state_1002498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002459
  · exact cover_1002498
#print axioms cover_1002458

def state_1002270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 44)))
theorem cover_1002270 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002270 := by
  apply coveredState_split_literal (state := state_1002270) 2
    state_1002271 state_1002458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002271
  · exact cover_1002458
#print axioms cover_1002270

def state_1001760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 44)))
theorem cover_1001760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001760 := by
  apply coveredState_split_literal (state := state_1001760) 3
    state_1001761 state_1002270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001761
  · exact cover_1002270
#print axioms cover_1001760

def state_1001759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
theorem cover_1001759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001759 := by
  apply coveredState_split_literal (state := state_1001759) 4
    state_1001760 state_1002555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001760
  · exact cover_1002555
#print axioms cover_1001759

def state_1001735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
theorem cover_1001735 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001735 := by
  apply coveredState_split_literal (state := state_1001735) 0
    state_1001736 state_1001759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001736
  · exact cover_1001759
#print axioms cover_1001735

def state_1001734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 22)))
theorem cover_1001734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001734 := by
  apply coveredState_split_literal (state := state_1001734) 2
    state_1001735 state_1002612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001735
  · exact cover_1002612
#print axioms cover_1001734

def state_1002630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
theorem cover_1002630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002630 := by
  apply coveredState_split_literal (state := state_1002630) 4
    state_1002631 state_1002692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002631
  · exact cover_1002692
#print axioms cover_1002630

def state_1002628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
theorem cover_1002628 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002628 := by
  apply coveredState_split_literal (state := state_1002628) 0
    state_1002629 state_1002630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002629
  · exact cover_1002630
#print axioms cover_1002628

def state_1002709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
theorem cover_1002709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002709 := by
  apply coveredState_split_literal (state := state_1002709) 4
    state_1002710 state_1002767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002710
  · exact cover_1002767
#print axioms cover_1002709

def state_1002701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
theorem cover_1002701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002701 := by
  apply coveredState_split_literal (state := state_1002701) 0
    state_1002702 state_1002709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002702
  · exact cover_1002709
#print axioms cover_1002701

def state_1002627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 22)))
theorem cover_1002627 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002627 := by
  apply coveredState_split_literal (state := state_1002627) 2
    state_1002628 state_1002701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002628
  · exact cover_1002701
#print axioms cover_1002627

def state_1001733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_1001733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001733 := by
  apply coveredState_split_literal (state := state_1001733) 3
    state_1001734 state_1002627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001734
  · exact cover_1002627
#print axioms cover_1001733

def state_1001701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_1001701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001701 := by
  apply coveredState_split_literal (state := state_1001701) 1
    state_1001702 state_1001733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001702
  · exact cover_1001733
#print axioms cover_1001701

def state_1001700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_1001700 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001700 := by
  apply coveredState_split_literal (state := state_1001700) 4
    state_1001701 state_1002774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001701
  · exact cover_1002774
#print axioms cover_1001700

def state_1002833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 88)))
theorem cover_1002833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002833 := by
  apply coveredState_split_literal (state := state_1002833) 3
    state_1002834 state_1002837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002834
  · exact cover_1002837
#print axioms cover_1002833
end Mub6.Numerical.CircleFullD0.Forest
