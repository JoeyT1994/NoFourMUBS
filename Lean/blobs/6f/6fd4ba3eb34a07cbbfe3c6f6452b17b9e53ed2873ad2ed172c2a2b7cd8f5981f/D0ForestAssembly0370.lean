import D0FullInterface
import D0ForestAssembly0368
import D0ForestAssembly0369
import D0ForestChunk1441
import D0ForestChunk1442
import D0ForestChunk1443
import D0ForestChunk1444
import D0ForestChunk1445
import D0ForestChunk1446
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1645165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1645165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645165 := by
  apply coveredState_split_literal (state := state_1645165) 3
    state_1645166 state_1646577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645166
  · exact cover_1646577
#print axioms cover_1645165

def state_1645083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1645083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645083 := by
  apply coveredState_split_literal (state := state_1645083) 0
    state_1645084 state_1645165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645084
  · exact cover_1645165
#print axioms cover_1645083

def state_1646653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 20)))
theorem cover_1646653 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646653 := by
  apply coveredState_split_literal (state := state_1646653) 2
    state_1646654 state_1646695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646654
  · exact cover_1646695
#print axioms cover_1646653

def state_1646652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 10)))
theorem cover_1646652 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646652 := by
  apply coveredState_split_literal (state := state_1646652) 4
    state_1646653 state_1646724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646653
  · exact cover_1646724
#print axioms cover_1646652

def state_1646651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1646651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646651 := by
  apply coveredState_split_literal (state := state_1646651) 3
    state_1646652 state_1646743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646652
  · exact cover_1646743
#print axioms cover_1646651

def state_1646776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 52 else 20)))
theorem cover_1646776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646776 := by
  apply coveredState_split_literal (state := state_1646776) 4
    state_1646777 state_1646806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646777
  · exact cover_1646806
#print axioms cover_1646776

def state_1646758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 52 else 20)))
theorem cover_1646758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646758 := by
  apply coveredState_split_literal (state := state_1646758) 2
    state_1646759 state_1646776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646759
  · exact cover_1646776
#print axioms cover_1646758

def state_1646757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 20)))
theorem cover_1646757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646757 := by
  apply coveredState_split_literal (state := state_1646757) 3
    state_1646758 state_1646855
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646758
  · exact cover_1646855
#print axioms cover_1646757

def state_1646756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 20)))
theorem cover_1646756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646756 := by
  apply coveredState_split_literal (state := state_1646756) 0
    state_1646757 state_1646862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646757
  · exact cover_1646862
#print axioms cover_1646756

def state_1646755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 20)))
theorem cover_1646755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646755 := by
  apply coveredState_split_literal (state := state_1646755) 1
    state_1646756 state_1646885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646756
  · exact cover_1646885
#print axioms cover_1646755

def state_1647006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 104 else 41)))
theorem cover_1647006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647006 := by
  apply coveredState_split_literal (state := state_1647006) 2
    state_1647007 state_1647038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647007
  · exact cover_1647038
#print axioms cover_1647006

def state_1646998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 104 else 41)))
theorem cover_1646998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646998 := by
  apply coveredState_split_literal (state := state_1646998) 0
    state_1646999 state_1647006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646999
  · exact cover_1647006
#print axioms cover_1646998

def state_1646997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 41)))
theorem cover_1646997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646997 := by
  apply coveredState_split_literal (state := state_1646997) 3
    state_1646998 state_1647081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646998
  · exact cover_1647081
#print axioms cover_1646997

def state_1646996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 41)))
theorem cover_1646996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646996 := by
  apply coveredState_split_literal (state := state_1646996) 1
    state_1646997 state_1647096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646997
  · exact cover_1647096
#print axioms cover_1646996

def state_1646950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 20)))
theorem cover_1646950 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646950 := by
  apply coveredState_split_literal (state := state_1646950) 4
    state_1646951 state_1646996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646951
  · exact cover_1646996
#print axioms cover_1646950

def state_1647152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 41)))
theorem cover_1647152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647152 := by
  apply coveredState_split_literal (state := state_1647152) 3
    state_1647153 state_1647208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647153
  · exact cover_1647208
#print axioms cover_1647152

def state_1647151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 41)))
theorem cover_1647151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647151 := by
  apply coveredState_split_literal (state := state_1647151) 1
    state_1647152 state_1647217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647152
  · exact cover_1647217
#print axioms cover_1647151

def state_1647125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 20)))
theorem cover_1647125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647125 := by
  apply coveredState_split_literal (state := state_1647125) 4
    state_1647126 state_1647151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647126
  · exact cover_1647151
#print axioms cover_1647125

def state_1646949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 52 else 20)))
theorem cover_1646949 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646949 := by
  apply coveredState_split_literal (state := state_1646949) 2
    state_1646950 state_1647125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646950
  · exact cover_1647125
#print axioms cover_1646949

def state_1646948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
theorem cover_1646948 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646948 := by
  apply coveredState_split_literal (state := state_1646948) 3
    state_1646949 state_1647232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646949
  · exact cover_1647232
#print axioms cover_1646948

def state_1647314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 117 else (if j.val < 4 then 104 else 41)))
theorem cover_1647314 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647314 := by
  apply coveredState_split_literal (state := state_1647314) 4
    state_1647315 state_1647372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647315
  · exact cover_1647372
#print axioms cover_1647314

def state_1647306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 104 else 41)))
theorem cover_1647306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647306 := by
  apply coveredState_split_literal (state := state_1647306) 2
    state_1647307 state_1647314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647307
  · exact cover_1647314
#print axioms cover_1647306

def state_1647305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 41)))
theorem cover_1647305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647305 := by
  apply coveredState_split_literal (state := state_1647305) 3
    state_1647306 state_1647397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647306
  · exact cover_1647397
#print axioms cover_1647305

def state_1647304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 41)))
theorem cover_1647304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647304 := by
  apply coveredState_split_literal (state := state_1647304) 0
    state_1647305 state_1647422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647305
  · exact cover_1647422
#print axioms cover_1647304

def state_1647303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 41)))
theorem cover_1647303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647303 := by
  apply coveredState_split_literal (state := state_1647303) 1
    state_1647304 state_1647433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647304
  · exact cover_1647433
#print axioms cover_1647303

def state_1647251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 20)))
theorem cover_1647251 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647251 := by
  apply coveredState_split_literal (state := state_1647251) 4
    state_1647252 state_1647303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647252
  · exact cover_1647303
#print axioms cover_1647251

def state_1647533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 40)))
theorem cover_1647533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647533 := by
  apply coveredState_split_literal (state := state_1647533) 0
    state_1647534 state_1647593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647534
  · exact cover_1647593
#print axioms cover_1647533

def state_1647491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 40)))
theorem cover_1647491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647491 := by
  apply coveredState_split_literal (state := state_1647491) 1
    state_1647492 state_1647533
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647492
  · exact cover_1647533
#print axioms cover_1647491

def state_1647603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 118 else (if j.val < 4 then 104 else 82)))
theorem cover_1647603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647603 := by
  apply coveredState_split_literal (state := state_1647603) 1
    state_1647604 state_1647639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647604
  · exact cover_1647639
#print axioms cover_1647603

def state_1647602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 118 else (if j.val < 4 then 104 else 41)))
theorem cover_1647602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647602 := by
  apply coveredState_split_literal (state := state_1647602) 4
    state_1647603 state_1647684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647603
  · exact cover_1647684
#print axioms cover_1647602

def state_1647739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 119 else (if j.val < 4 then 104 else 41)))
theorem cover_1647739 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647739 := by
  apply coveredState_split_literal (state := state_1647739) 4
    state_1647740 state_1647793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647740
  · exact cover_1647793
#print axioms cover_1647739

def state_1647601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 104 else 41)))
theorem cover_1647601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647601 := by
  apply coveredState_split_literal (state := state_1647601) 2
    state_1647602 state_1647739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647602
  · exact cover_1647739
#print axioms cover_1647601
end Mub6.Numerical.CircleFullD0.Forest
