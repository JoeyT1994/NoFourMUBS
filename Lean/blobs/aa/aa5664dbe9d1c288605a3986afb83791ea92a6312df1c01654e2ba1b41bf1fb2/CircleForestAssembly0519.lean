import CircleFullInterface
import CircleForestChunk2042
import CircleForestChunk2043
import CircleForestChunk2044
import CircleForestChunk2045
import CircleForestChunk2046
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2570822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_2570822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570822 := by
  apply coveredState_split_literal (state := state_2570822) 1
    state_2570823 state_2570880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570823
  · exact cover_2570880
#print axioms cover_2570822

def state_2570821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_2570821 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570821 := by
  apply coveredState_split_literal (state := state_2570821) 4
    state_2570822 state_2570889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570822
  · exact cover_2570889
#print axioms cover_2570821

def state_2570771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_2570771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570771 := by
  apply coveredState_split_literal (state := state_2570771) 3
    state_2570772 state_2570821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570772
  · exact cover_2570821
#print axioms cover_2570771

def state_2570891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_2570891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570891 := by
  apply coveredState_split_literal (state := state_2570891) 4
    state_2570892 state_2570953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570892
  · exact cover_2570953
#print axioms cover_2570891

def state_2570890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_2570890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570890 := by
  apply coveredState_split_literal (state := state_2570890) 3
    state_2570891 state_2570958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570891
  · exact cover_2570958
#print axioms cover_2570890

def state_2570770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2570770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570770 := by
  apply coveredState_split_literal (state := state_2570770) 2
    state_2570771 state_2570890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570771
  · exact cover_2570890
#print axioms cover_2570770

def state_2570769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2570769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570769 := by
  apply coveredState_split_literal (state := state_2570769) 1
    state_2570770 state_2570971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570770
  · exact cover_2570971
#print axioms cover_2570769

def state_2571045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_2571045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571045 := by
  apply coveredState_split_literal (state := state_2571045) 1
    state_2571046 state_2571107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571046
  · exact cover_2571107
#print axioms cover_2571045

def state_2571122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_2571122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571122 := by
  apply coveredState_split_literal (state := state_2571122) 1
    state_2571123 state_2571182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571123
  · exact cover_2571182
#print axioms cover_2571122

def state_2571044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_2571044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571044 := by
  apply coveredState_split_literal (state := state_2571044) 3
    state_2571045 state_2571122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571045
  · exact cover_2571122
#print axioms cover_2571044

def state_2571043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_2571043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571043 := by
  apply coveredState_split_literal (state := state_2571043) 4
    state_2571044 state_2571193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571044
  · exact cover_2571193
#print axioms cover_2571043

def state_2571021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_2571021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571021 := by
  apply coveredState_split_literal (state := state_2571021) 2
    state_2571022 state_2571043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571022
  · exact cover_2571043
#print axioms cover_2571021

def state_2571020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_2571020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571020 := by
  apply coveredState_split_literal (state := state_2571020) 1
    state_2571021 state_2571206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571021
  · exact cover_2571206
#print axioms cover_2571020

def state_2571019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_2571019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571019 := by
  apply coveredState_split_literal (state := state_2571019) 0
    state_2571020 state_2571219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571020
  · exact cover_2571219
#print axioms cover_2571019

def state_2571018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_2571018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571018 := by
  apply coveredState_split_literal (state := state_2571018) 4
    state_2571019 state_2571280
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571019
  · exact cover_2571280
#print axioms cover_2571018

def state_2570986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_2570986 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570986 := by
  apply coveredState_split_literal (state := state_2570986) 3
    state_2570987 state_2571018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2570987
  · exact cover_2571018
#print axioms cover_2570986

def state_2571305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 12)))
theorem cover_2571305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571305 := by
  apply coveredState_split_literal (state := state_2571305) 1
    state_2571306 state_2571363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571306
  · exact cover_2571363
#print axioms cover_2571305

def state_2571380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 12)))
theorem cover_2571380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571380 := by
  apply coveredState_split_literal (state := state_2571380) 1
    state_2571381 state_2571420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571381
  · exact cover_2571420
#print axioms cover_2571380

def state_2571304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 12)))
theorem cover_2571304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571304 := by
  apply coveredState_split_literal (state := state_2571304) 2
    state_2571305 state_2571380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571305
  · exact cover_2571380
#print axioms cover_2571304

def state_2571303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 6)))
theorem cover_2571303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571303 := by
  apply coveredState_split_literal (state := state_2571303) 4
    state_2571304 state_2571449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571304
  · exact cover_2571449
#print axioms cover_2571303

def state_2571285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_2571285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571285 := by
  apply coveredState_split_literal (state := state_2571285) 3
    state_2571286 state_2571303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571286
  · exact cover_2571303
#print axioms cover_2571285

def state_2571284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_2571284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571284 := by
  apply coveredState_split_literal (state := state_2571284) 1
    state_2571285 state_2571458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571285
  · exact cover_2571458
#print axioms cover_2571284

def state_2571283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_2571283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571283 := by
  apply coveredState_split_literal (state := state_2571283) 0
    state_2571284 state_2571477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571284
  · exact cover_2571477
#print axioms cover_2571283

def state_2571282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_2571282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571282 := by
  apply coveredState_split_literal (state := state_2571282) 4
    state_2571283 state_2571536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571283
  · exact cover_2571536
#print axioms cover_2571282

def state_2571554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 24)))
theorem cover_2571554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571554 := by
  apply coveredState_split_literal (state := state_2571554) 4
    state_2571555 state_2571616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571555
  · exact cover_2571616
#print axioms cover_2571554

def state_2571553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 24)))
theorem cover_2571553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571553 := by
  apply coveredState_split_literal (state := state_2571553) 1
    state_2571554 state_2571623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571554
  · exact cover_2571623
#print axioms cover_2571553

def state_2571634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_2571634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571634 := by
  apply coveredState_split_literal (state := state_2571634) 0
    state_2571635 state_2571638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571635
  · exact cover_2571638
#print axioms cover_2571634

def state_2571633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_2571633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571633 := by
  apply coveredState_split_literal (state := state_2571633) 4
    state_2571634 state_2571699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571634
  · exact cover_2571699
#print axioms cover_2571633

def state_2571632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_2571632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571632 := by
  apply coveredState_split_literal (state := state_2571632) 1
    state_2571633 state_2571704
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571633
  · exact cover_2571704
#print axioms cover_2571632

def state_2571552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 24)))
theorem cover_2571552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571552 := by
  apply coveredState_split_literal (state := state_2571552) 3
    state_2571553 state_2571632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571553
  · exact cover_2571632
#print axioms cover_2571552

def state_2571713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 24)))
theorem cover_2571713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571713 := by
  apply coveredState_split_literal (state := state_2571713) 4
    state_2571714 state_2571775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571714
  · exact cover_2571775
#print axioms cover_2571713

def state_2571712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 24)))
theorem cover_2571712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571712 := by
  apply coveredState_split_literal (state := state_2571712) 1
    state_2571713 state_2571780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571713
  · exact cover_2571780
#print axioms cover_2571712
end Mub6.Numerical.CircleFullD0.Forest
