import D0FullInterface
import D0ForestAssembly0006
import D0ForestChunk0030
import D0ForestChunk0031
import D0ForestChunk0032
import D0ForestChunk0033
import D0ForestChunk0034
import D0ForestChunk0035
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_945005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 84) else (if j.val < 3 then 101 else (if j.val < 4 then 33 else 53)))
theorem cover_945005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945005 := by
  apply coveredState_split_literal (state := state_945005) 4
    state_945006 state_945073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945006
  · exact cover_945073
#print axioms cover_945005

def state_945004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 101 else (if j.val < 4 then 33 else 53)))
theorem cover_945004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945004 := by
  apply coveredState_split_literal (state := state_945004) 1
    state_945005 state_945080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945005
  · exact cover_945080
#print axioms cover_945004

def state_944942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 50 else (if j.val < 4 then 33 else 53)))
theorem cover_944942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944942 := by
  apply coveredState_split_literal (state := state_944942) 2
    state_944943 state_945004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944943
  · exact cover_945004
#print axioms cover_944942

def state_945149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 101 else (if j.val < 4 then 33 else 53)))
theorem cover_945149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945149 := by
  apply coveredState_split_literal (state := state_945149) 1
    state_945150 state_945207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945150
  · exact cover_945207
#print axioms cover_945149

def state_945113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 50 else (if j.val < 4 then 33 else 53)))
theorem cover_945113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945113 := by
  apply coveredState_split_literal (state := state_945113) 2
    state_945114 state_945149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945114
  · exact cover_945149
#print axioms cover_945113

def state_944941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 50 else (if j.val < 4 then 33 else 53)))
theorem cover_944941 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944941 := by
  apply coveredState_split_literal (state := state_944941) 0
    state_944942 state_945113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944942
  · exact cover_945113
#print axioms cover_944941

def state_944923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 53)))
theorem cover_944923 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944923 := by
  apply coveredState_split_literal (state := state_944923) 3
    state_944924 state_944941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944924
  · exact cover_944941
#print axioms cover_944923

def state_944873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 26)))
theorem cover_944873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944873 := by
  apply coveredState_split_literal (state := state_944873) 4
    state_944874 state_944923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944874
  · exact cover_944923
#print axioms cover_944873

def state_944872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 26)))
theorem cover_944872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944872 := by
  apply coveredState_split_literal (state := state_944872) 1
    state_944873 state_945234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944873
  · exact cover_945234
#print axioms cover_944872

def state_945286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 33 else 53)))
theorem cover_945286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945286 := by
  apply coveredState_split_literal (state := state_945286) 0
    state_945287 state_945310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945287
  · exact cover_945310
#print axioms cover_945286

def state_945282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 53)))
theorem cover_945282 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945282 := by
  apply coveredState_split_literal (state := state_945282) 3
    state_945283 state_945286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945283
  · exact cover_945286
#print axioms cover_945282

def state_945266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 26)))
theorem cover_945266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945266 := by
  apply coveredState_split_literal (state := state_945266) 4
    state_945267 state_945282
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945267
  · exact cover_945282
#print axioms cover_945266

def state_945265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 26)))
theorem cover_945265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945265 := by
  apply coveredState_split_literal (state := state_945265) 1
    state_945266 state_945361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945266
  · exact cover_945361
#print axioms cover_945265

def state_944871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 26)))
theorem cover_944871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944871 := by
  apply coveredState_split_literal (state := state_944871) 2
    state_944872 state_945265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944872
  · exact cover_945265
#print axioms cover_944871

def state_944777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 26)))
theorem cover_944777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944777 := by
  apply coveredState_split_literal (state := state_944777) 0
    state_944778 state_944871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944778
  · exact cover_944871
#print axioms cover_944777

def state_945371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 26)))
theorem cover_945371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945371 := by
  apply coveredState_split_literal (state := state_945371) 2
    state_945372 state_945399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945372
  · exact cover_945399
#print axioms cover_945371

def state_945498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 101 else (if j.val < 4 then 34 else 53)))
theorem cover_945498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945498 := by
  apply coveredState_split_literal (state := state_945498) 1
    state_945499 state_945540
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945499
  · exact cover_945540
#print axioms cover_945498

def state_945492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 50 else (if j.val < 4 then 34 else 53)))
theorem cover_945492 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945492 := by
  apply coveredState_split_literal (state := state_945492) 2
    state_945493 state_945498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945493
  · exact cover_945498
#print axioms cover_945492

def state_945591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 101 else (if j.val < 4 then 34 else 53)))
theorem cover_945591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945591 := by
  apply coveredState_split_literal (state := state_945591) 1
    state_945592 state_945617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945592
  · exact cover_945617
#print axioms cover_945591

def state_945583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 50 else (if j.val < 4 then 34 else 53)))
theorem cover_945583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945583 := by
  apply coveredState_split_literal (state := state_945583) 2
    state_945584 state_945591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945584
  · exact cover_945591
#print axioms cover_945583

def state_945491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 50 else (if j.val < 4 then 34 else 53)))
theorem cover_945491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945491 := by
  apply coveredState_split_literal (state := state_945491) 0
    state_945492 state_945583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945492
  · exact cover_945583
#print axioms cover_945491

def state_945490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 53)))
theorem cover_945490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945490 := by
  apply coveredState_split_literal (state := state_945490) 3
    state_945491 state_945668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945491
  · exact cover_945668
#print axioms cover_945490

def state_945464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 26)))
theorem cover_945464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945464 := by
  apply coveredState_split_literal (state := state_945464) 4
    state_945465 state_945490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945465
  · exact cover_945490
#print axioms cover_945464

def state_945688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 34 else 53)))
theorem cover_945688 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945688 := by
  apply coveredState_split_literal (state := state_945688) 0
    state_945689 state_945708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945689
  · exact cover_945708
#print axioms cover_945688

def state_945687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 53)))
theorem cover_945687 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945687 := by
  apply coveredState_split_literal (state := state_945687) 3
    state_945688 state_945759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945688
  · exact cover_945759
#print axioms cover_945687

def state_945685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 26)))
theorem cover_945685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945685 := by
  apply coveredState_split_literal (state := state_945685) 4
    state_945686 state_945687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945686
  · exact cover_945687
#print axioms cover_945685

def state_945463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 26)))
theorem cover_945463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945463 := by
  apply coveredState_split_literal (state := state_945463) 1
    state_945464 state_945685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945464
  · exact cover_945685
#print axioms cover_945463

def state_945830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 84) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 106)))
theorem cover_945830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945830 := by
  apply coveredState_split_literal (state := state_945830) 3
    state_945831 state_945874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945831
  · exact cover_945874
#print axioms cover_945830

def state_945829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 84) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 53)))
theorem cover_945829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945829 := by
  apply coveredState_split_literal (state := state_945829) 4
    state_945830 state_945897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945830
  · exact cover_945897
#print axioms cover_945829

def state_945946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 85) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 107)))
theorem cover_945946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945946 := by
  apply coveredState_split_literal (state := state_945946) 3
    state_945947 state_945984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945947
  · exact cover_945984
#print axioms cover_945946

def state_945916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 85) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 53)))
theorem cover_945916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945916 := by
  apply coveredState_split_literal (state := state_945916) 4
    state_945917 state_945946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945917
  · exact cover_945946
#print axioms cover_945916

def state_945828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 53)))
theorem cover_945828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945828 := by
  apply coveredState_split_literal (state := state_945828) 1
    state_945829 state_945916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945829
  · exact cover_945916
#print axioms cover_945828
end Mub6.Numerical.CircleFullD0.Forest
