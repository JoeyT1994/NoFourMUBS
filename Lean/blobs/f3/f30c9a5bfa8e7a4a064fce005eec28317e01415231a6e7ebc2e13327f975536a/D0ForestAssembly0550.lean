import D0FullInterface
import D0ForestAssembly0549
import D0ForestChunk2170
import D0ForestChunk2171
import D0ForestChunk2172
import D0ForestChunk2173
import D0ForestChunk2174
import D0ForestChunk2175
import D0ForestChunk2176
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2601478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2601478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601478 := by
  apply coveredState_split_literal (state := state_2601478) 0
    state_2601479 state_2601520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601479
  · exact cover_2601520
#print axioms cover_2601478

def state_2601628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2601628 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601628 := by
  apply coveredState_split_literal (state := state_2601628) 2
    state_2601629 state_2601658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601629
  · exact cover_2601658
#print axioms cover_2601628

def state_2601570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2601570 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601570 := by
  apply coveredState_split_literal (state := state_2601570) 1
    state_2601571 state_2601628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601571
  · exact cover_2601628
#print axioms cover_2601570

def state_2601706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2601706 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601706 := by
  apply coveredState_split_literal (state := state_2601706) 2
    state_2601707 state_2601724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601707
  · exact cover_2601724
#print axioms cover_2601706

def state_2601873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_2601873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601873 := by
  apply coveredState_split_literal (state := state_2601873) 0
    state_2601874 state_2601929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601874
  · exact cover_2601929
#print axioms cover_2601873

def state_2601851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_2601851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601851 := by
  apply coveredState_split_literal (state := state_2601851) 4
    state_2601852 state_2601873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601852
  · exact cover_2601873
#print axioms cover_2601851

def state_2601835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_2601835 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601835 := by
  apply coveredState_split_literal (state := state_2601835) 3
    state_2601836 state_2601851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601836
  · exact cover_2601851
#print axioms cover_2601835

def state_2601783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2601783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601783 := by
  apply coveredState_split_literal (state := state_2601783) 2
    state_2601784 state_2601835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601784
  · exact cover_2601835
#print axioms cover_2601783

def state_2601705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2601705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601705 := by
  apply coveredState_split_literal (state := state_2601705) 1
    state_2601706 state_2601783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601706
  · exact cover_2601783
#print axioms cover_2601705

def state_2601569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2601569 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601569 := by
  apply coveredState_split_literal (state := state_2601569) 0
    state_2601570 state_2601705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601570
  · exact cover_2601705
#print axioms cover_2601569

def state_2601477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_2601477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601477 := by
  apply coveredState_split_literal (state := state_2601477) 4
    state_2601478 state_2601569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601478
  · exact cover_2601569
#print axioms cover_2601477

def state_2601963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2601963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601963 := by
  apply coveredState_split_literal (state := state_2601963) 0
    state_2601964 state_2602023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601964
  · exact cover_2602023
#print axioms cover_2601963

def state_2602075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_2602075 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602075 := by
  apply coveredState_split_literal (state := state_2602075) 2
    state_2602076 state_2602109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602076
  · exact cover_2602109
#print axioms cover_2602075

def state_2602074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_2602074 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602074 := by
  apply coveredState_split_literal (state := state_2602074) 4
    state_2602075 state_2602164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602075
  · exact cover_2602164
#print axioms cover_2602074

def state_2602073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_2602073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602073 := by
  apply coveredState_split_literal (state := state_2602073) 3
    state_2602074 state_2602197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602074
  · exact cover_2602197
#print axioms cover_2602073

def state_2602072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2602072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602072 := by
  apply coveredState_split_literal (state := state_2602072) 2
    state_2602073 state_2602210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602073
  · exact cover_2602210
#print axioms cover_2602072

def state_2602071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2602071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602071 := by
  apply coveredState_split_literal (state := state_2602071) 1
    state_2602072 state_2602263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602072
  · exact cover_2602263
#print axioms cover_2602071

def state_2602322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2602322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602322 := by
  apply coveredState_split_literal (state := state_2602322) 1
    state_2602323 state_2602376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602323
  · exact cover_2602376
#print axioms cover_2602322

def state_2602070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2602070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602070 := by
  apply coveredState_split_literal (state := state_2602070) 0
    state_2602071 state_2602322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602071
  · exact cover_2602322
#print axioms cover_2602070

def state_2601962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_2601962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601962 := by
  apply coveredState_split_literal (state := state_2601962) 4
    state_2601963 state_2602070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601963
  · exact cover_2602070
#print axioms cover_2601962

def state_2601476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2601476 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601476 := by
  apply coveredState_split_literal (state := state_2601476) 3
    state_2601477 state_2601962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601477
  · exact cover_2601962
#print axioms cover_2601476

def state_2600942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2600942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2600942 := by
  apply coveredState_split_literal (state := state_2600942) 2
    state_2600943 state_2601476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600943
  · exact cover_2601476
#print axioms cover_2600942

def state_2602454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2602454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602454 := by
  apply coveredState_split_literal (state := state_2602454) 1
    state_2602455 state_2602488
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602455
  · exact cover_2602488
#print axioms cover_2602454

def state_2602426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2602426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602426 := by
  apply coveredState_split_literal (state := state_2602426) 0
    state_2602427 state_2602454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602427
  · exact cover_2602454
#print axioms cover_2602426

def state_2602520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2602520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602520 := by
  apply coveredState_split_literal (state := state_2602520) 1
    state_2602521 state_2602558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602521
  · exact cover_2602558
#print axioms cover_2602520

def state_2602652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_2602652 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602652 := by
  apply coveredState_split_literal (state := state_2602652) 3
    state_2602653 state_2602678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602653
  · exact cover_2602678
#print axioms cover_2602652

def state_2602805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2602805 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602805 := by
  apply coveredState_split_literal (state := state_2602805) 2
    state_2602806 state_2602845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602806
  · exact cover_2602845
#print axioms cover_2602805

def state_2602781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2602781 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602781 := by
  apply coveredState_split_literal (state := state_2602781) 0
    state_2602782 state_2602805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602782
  · exact cover_2602805
#print axioms cover_2602781

def state_2602765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_2602765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602765 := by
  apply coveredState_split_literal (state := state_2602765) 4
    state_2602766 state_2602781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602766
  · exact cover_2602781
#print axioms cover_2602765

def state_2602723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_2602723 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602723 := by
  apply coveredState_split_literal (state := state_2602723) 3
    state_2602724 state_2602765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602724
  · exact cover_2602765
#print axioms cover_2602723

def state_2602651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2602651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602651 := by
  apply coveredState_split_literal (state := state_2602651) 2
    state_2602652 state_2602723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602652
  · exact cover_2602723
#print axioms cover_2602651

def state_2602589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2602589 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602589 := by
  apply coveredState_split_literal (state := state_2602589) 1
    state_2602590 state_2602651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602590
  · exact cover_2602651
#print axioms cover_2602589
end Mub6.Numerical.CircleFullD0.Forest
