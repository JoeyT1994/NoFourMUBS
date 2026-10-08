import D0FullInterface
import D0ForestAssembly0284
import D0ForestChunk1093
import D0ForestChunk1094
import D0ForestChunk1095
import D0ForestChunk1096
import D0ForestChunk1097
import D0ForestChunk1098
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1562392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 44)))
theorem cover_1562392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562392 := by
  apply coveredState_split_literal (state := state_1562392) 1
    state_1562393 state_1562568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562393
  · exact cover_1562568
#print axioms cover_1562392

def state_1562391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 21 else 44)))
theorem cover_1562391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562391 := by
  apply coveredState_split_literal (state := state_1562391) 3
    state_1562392 state_1562825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562392
  · exact cover_1562825
#print axioms cover_1562391

def state_1562899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 176)))
theorem cover_1562899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562899 := by
  apply coveredState_split_literal (state := state_1562899) 2
    state_1562900 state_1562949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562900
  · exact cover_1562949
#print axioms cover_1562899

def state_1562898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 88)))
theorem cover_1562898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562898 := by
  apply coveredState_split_literal (state := state_1562898) 4
    state_1562899 state_1562984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562899
  · exact cover_1562984
#print axioms cover_1562898

def state_1562862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 121) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 88)))
theorem cover_1562862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562862 := by
  apply coveredState_split_literal (state := state_1562862) 0
    state_1562863 state_1562898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562863
  · exact cover_1562898
#print axioms cover_1562862

def state_1562836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 88)))
theorem cover_1562836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562836 := by
  apply coveredState_split_literal (state := state_1562836) 1
    state_1562837 state_1562862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562837
  · exact cover_1562862
#print axioms cover_1562836

def state_1562835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 106 else (if j.val < 4 then 42 else 88)))
theorem cover_1562835 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562835 := by
  apply coveredState_split_literal (state := state_1562835) 3
    state_1562836 state_1563035
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562836
  · exact cover_1563035
#print axioms cover_1562835

def state_1562834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 88)))
theorem cover_1562834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562834 := by
  apply coveredState_split_literal (state := state_1562834) 2
    state_1562835 state_1563048
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562835
  · exact cover_1563048
#print axioms cover_1562834

def state_1562833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 44)))
theorem cover_1562833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562833 := by
  apply coveredState_split_literal (state := state_1562833) 4
    state_1562834 state_1563105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562834
  · exact cover_1563105
#print axioms cover_1562833

def state_1563154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 44)))
theorem cover_1563154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563154 := by
  apply coveredState_split_literal (state := state_1563154) 4
    state_1563155 state_1563218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563155
  · exact cover_1563218
#print axioms cover_1563154

def state_1562832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 44)))
theorem cover_1562832 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562832 := by
  apply coveredState_split_literal (state := state_1562832) 0
    state_1562833 state_1563154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562833
  · exact cover_1563154
#print axioms cover_1562832

def state_1563249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 122) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 88)))
theorem cover_1563249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563249 := by
  apply coveredState_split_literal (state := state_1563249) 4
    state_1563250 state_1563283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563250
  · exact cover_1563283
#print axioms cover_1563249

def state_1563363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 212 else (if j.val < 4 then 84 else 177)))
theorem cover_1563363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563363 := by
  apply coveredState_split_literal (state := state_1563363) 3
    state_1563364 state_1563425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563364
  · exact cover_1563425
#print axioms cover_1563363

def state_1563362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 177)))
theorem cover_1563362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563362 := by
  apply coveredState_split_literal (state := state_1563362) 2
    state_1563363 state_1563436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563363
  · exact cover_1563436
#print axioms cover_1563362

def state_1563318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 88)))
theorem cover_1563318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563318 := by
  apply coveredState_split_literal (state := state_1563318) 4
    state_1563319 state_1563362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563319
  · exact cover_1563362
#print axioms cover_1563318

def state_1563248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 122) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 88)))
theorem cover_1563248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563248 := by
  apply coveredState_split_literal (state := state_1563248) 0
    state_1563249 state_1563318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563249
  · exact cover_1563318
#print axioms cover_1563248

def state_1563247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 88)))
theorem cover_1563247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563247 := by
  apply coveredState_split_literal (state := state_1563247) 1
    state_1563248 state_1563481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563248
  · exact cover_1563481
#print axioms cover_1563247

def state_1563246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 106 else (if j.val < 4 then 42 else 88)))
theorem cover_1563246 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563246 := by
  apply coveredState_split_literal (state := state_1563246) 3
    state_1563247 state_1563504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563247
  · exact cover_1563504
#print axioms cover_1563246

def state_1563581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 107 else (if j.val < 4 then 85 else 88)))
theorem cover_1563581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563581 := by
  apply coveredState_split_literal (state := state_1563581) 1
    state_1563582 state_1563617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563582
  · exact cover_1563617
#print axioms cover_1563581

def state_1563521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 107 else (if j.val < 4 then 42 else 88)))
theorem cover_1563521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563521 := by
  apply coveredState_split_literal (state := state_1563521) 3
    state_1563522 state_1563581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563522
  · exact cover_1563581
#print axioms cover_1563521

def state_1563245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 88)))
theorem cover_1563245 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563245 := by
  apply coveredState_split_literal (state := state_1563245) 2
    state_1563246 state_1563521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563246
  · exact cover_1563521
#print axioms cover_1563245

def state_1563662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 178)))
theorem cover_1563662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563662 := by
  apply coveredState_split_literal (state := state_1563662) 2
    state_1563663 state_1563724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563663
  · exact cover_1563724
#print axioms cover_1563662

def state_1563661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 89)))
theorem cover_1563661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563661 := by
  apply coveredState_split_literal (state := state_1563661) 4
    state_1563662 state_1563763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563662
  · exact cover_1563763
#print axioms cover_1563661

def state_1563651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 122) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 89)))
theorem cover_1563651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563651 := by
  apply coveredState_split_literal (state := state_1563651) 0
    state_1563652 state_1563661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563652
  · exact cover_1563661
#print axioms cover_1563651

def state_1563790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 123) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 89)))
theorem cover_1563790 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563790 := by
  apply coveredState_split_literal (state := state_1563790) 4
    state_1563791 state_1563828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563791
  · exact cover_1563828
#print axioms cover_1563790

def state_1563774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 123) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 89)))
theorem cover_1563774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563774 := by
  apply coveredState_split_literal (state := state_1563774) 0
    state_1563775 state_1563790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563775
  · exact cover_1563790
#print axioms cover_1563774

def state_1563650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 89)))
theorem cover_1563650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563650 := by
  apply coveredState_split_literal (state := state_1563650) 1
    state_1563651 state_1563774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563651
  · exact cover_1563774
#print axioms cover_1563650

def state_1563649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 106 else (if j.val < 4 then 42 else 89)))
theorem cover_1563649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563649 := by
  apply coveredState_split_literal (state := state_1563649) 3
    state_1563650 state_1563881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563650
  · exact cover_1563881
#print axioms cover_1563649

def state_1563911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 107 else (if j.val < 4 then 84 else 89)))
theorem cover_1563911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563911 := by
  apply coveredState_split_literal (state := state_1563911) 1
    state_1563912 state_1563951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563912
  · exact cover_1563951
#print axioms cover_1563911

def state_1563996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 107 else (if j.val < 4 then 85 else 89)))
theorem cover_1563996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563996 := by
  apply coveredState_split_literal (state := state_1563996) 1
    state_1563997 state_1564014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563997
  · exact cover_1564014
#print axioms cover_1563996

def state_1563910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 107 else (if j.val < 4 then 42 else 89)))
theorem cover_1563910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563910 := by
  apply coveredState_split_literal (state := state_1563910) 3
    state_1563911 state_1563996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563911
  · exact cover_1563996
#print axioms cover_1563910

def state_1563648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 89)))
theorem cover_1563648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563648 := by
  apply coveredState_split_literal (state := state_1563648) 2
    state_1563649 state_1563910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563649
  · exact cover_1563910
#print axioms cover_1563648
end Mub6.Numerical.CircleFullD0.Forest
