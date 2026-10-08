import D0FullInterface
import D0ForestAssembly0433
import D0ForestChunk1699
import D0ForestChunk1700
import D0ForestChunk1701
import D0ForestChunk1702
import D0ForestChunk1703
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2280960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
theorem cover_2280960 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280960 := by
  apply coveredState_split_literal (state := state_2280960) 1
    state_2280961 state_2280974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280961
  · exact cover_2280974
#print axioms cover_2280960

def state_2280838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
theorem cover_2280838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280838 := by
  apply coveredState_split_literal (state := state_2280838) 0
    state_2280839 state_2280960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280839
  · exact cover_2280960
#print axioms cover_2280838

def state_2281157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 61)))
theorem cover_2281157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281157 := by
  apply coveredState_split_literal (state := state_2281157) 0
    state_2281158 state_2281219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281158
  · exact cover_2281219
#print axioms cover_2281157

def state_2280837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 44 else 61)))
theorem cover_2280837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280837 := by
  apply coveredState_split_literal (state := state_2280837) 3
    state_2280838 state_2281157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280838
  · exact cover_2281157
#print axioms cover_2280837

def state_2280836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 61)))
theorem cover_2280836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280836 := by
  apply coveredState_split_literal (state := state_2280836) 2
    state_2280837 state_2281280
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280837
  · exact cover_2281280
#print axioms cover_2280836

def state_2280678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
theorem cover_2280678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280678 := by
  apply coveredState_split_literal (state := state_2280678) 4
    state_2280679 state_2280836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280679
  · exact cover_2280836
#print axioms cover_2280678

def state_2281424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 114) else (if j.val < 3 then 189 else (if j.val < 4 then 88 else 123)))
theorem cover_2281424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281424 := by
  apply coveredState_split_literal (state := state_2281424) 3
    state_2281425 state_2281444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281425
  · exact cover_2281444
#print axioms cover_2281424

def state_2281408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 114) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 123)))
theorem cover_2281408 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281408 := by
  apply coveredState_split_literal (state := state_2281408) 2
    state_2281409 state_2281424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281409
  · exact cover_2281424
#print axioms cover_2281408

def state_2281384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 114) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
theorem cover_2281384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281384 := by
  apply coveredState_split_literal (state := state_2281384) 4
    state_2281385 state_2281408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281385
  · exact cover_2281408
#print axioms cover_2281384

def state_2281383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
theorem cover_2281383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281383 := by
  apply coveredState_split_literal (state := state_2281383) 1
    state_2281384 state_2281493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281384
  · exact cover_2281493
#print axioms cover_2281383

def state_2281367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
theorem cover_2281367 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281367 := by
  apply coveredState_split_literal (state := state_2281367) 0
    state_2281368 state_2281383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281368
  · exact cover_2281383
#print axioms cover_2281367

def state_2281524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 61)))
theorem cover_2281524 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281524 := by
  apply coveredState_split_literal (state := state_2281524) 1
    state_2281525 state_2281582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281525
  · exact cover_2281582
#print axioms cover_2281524

def state_2281500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 61)))
theorem cover_2281500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281500 := by
  apply coveredState_split_literal (state := state_2281500) 0
    state_2281501 state_2281524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281501
  · exact cover_2281524
#print axioms cover_2281500

def state_2281366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 44 else 61)))
theorem cover_2281366 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281366 := by
  apply coveredState_split_literal (state := state_2281366) 3
    state_2281367 state_2281500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281367
  · exact cover_2281500
#print axioms cover_2281366

def state_2281595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 61)))
theorem cover_2281595 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281595 := by
  apply coveredState_split_literal (state := state_2281595) 3
    state_2281596 state_2281633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281596
  · exact cover_2281633
#print axioms cover_2281595

def state_2281365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 61)))
theorem cover_2281365 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281365 := by
  apply coveredState_split_literal (state := state_2281365) 2
    state_2281366 state_2281595
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281366
  · exact cover_2281595
#print axioms cover_2281365

def state_2281311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
theorem cover_2281311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281311 := by
  apply coveredState_split_literal (state := state_2281311) 4
    state_2281312 state_2281365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281312
  · exact cover_2281365
#print axioms cover_2281311

def state_2280677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
theorem cover_2280677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280677 := by
  apply coveredState_split_literal (state := state_2280677) 1
    state_2280678 state_2281311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280678
  · exact cover_2281311
#print axioms cover_2280677

def state_2281677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
theorem cover_2281677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281677 := by
  apply coveredState_split_literal (state := state_2281677) 0
    state_2281678 state_2281739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281678
  · exact cover_2281739
#print axioms cover_2281677

def state_2281676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 44 else 61)))
theorem cover_2281676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281676 := by
  apply coveredState_split_literal (state := state_2281676) 3
    state_2281677 state_2281746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281677
  · exact cover_2281746
#print axioms cover_2281676

def state_2281675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 61)))
theorem cover_2281675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281675 := by
  apply coveredState_split_literal (state := state_2281675) 2
    state_2281676 state_2281759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281676
  · exact cover_2281759
#print axioms cover_2281675

def state_2281661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
theorem cover_2281661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281661 := by
  apply coveredState_split_literal (state := state_2281661) 4
    state_2281662 state_2281675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281662
  · exact cover_2281675
#print axioms cover_2281661

def state_2281788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
theorem cover_2281788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281788 := by
  apply coveredState_split_literal (state := state_2281788) 0
    state_2281789 state_2281844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281789
  · exact cover_2281844
#print axioms cover_2281788

def state_2281787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 44 else 61)))
theorem cover_2281787 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281787 := by
  apply coveredState_split_literal (state := state_2281787) 3
    state_2281788 state_2281855
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281788
  · exact cover_2281855
#print axioms cover_2281787

def state_2281905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 61)))
theorem cover_2281905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281905 := by
  apply coveredState_split_literal (state := state_2281905) 0
    state_2281906 state_2281963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281906
  · exact cover_2281963
#print axioms cover_2281905

def state_2281904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 61)))
theorem cover_2281904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281904 := by
  apply coveredState_split_literal (state := state_2281904) 3
    state_2281905 state_2281976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281905
  · exact cover_2281976
#print axioms cover_2281904

def state_2281786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 61)))
theorem cover_2281786 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281786 := by
  apply coveredState_split_literal (state := state_2281786) 2
    state_2281787 state_2281904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281787
  · exact cover_2281904
#print axioms cover_2281786

def state_2281764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
theorem cover_2281764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281764 := by
  apply coveredState_split_literal (state := state_2281764) 4
    state_2281765 state_2281786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281765
  · exact cover_2281786
#print axioms cover_2281764

def state_2281660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
theorem cover_2281660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281660 := by
  apply coveredState_split_literal (state := state_2281660) 1
    state_2281661 state_2281764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2281661
  · exact cover_2281764
#print axioms cover_2281660

def state_2280676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
theorem cover_2280676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280676 := by
  apply coveredState_split_literal (state := state_2280676) 0
    state_2280677 state_2281660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280677
  · exact cover_2281660
#print axioms cover_2280676

def state_2282008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 45 else 30)))
theorem cover_2282008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282008 := by
  apply coveredState_split_literal (state := state_2282008) 1
    state_2282009 state_2282040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282009
  · exact cover_2282040
#print axioms cover_2282008

def state_2282007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 45 else 30)))
theorem cover_2282007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282007 := by
  apply coveredState_split_literal (state := state_2282007) 0
    state_2282008 state_2282083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282008
  · exact cover_2282083
#print axioms cover_2282007
end Mub6.Numerical.CircleFullD0.Forest
