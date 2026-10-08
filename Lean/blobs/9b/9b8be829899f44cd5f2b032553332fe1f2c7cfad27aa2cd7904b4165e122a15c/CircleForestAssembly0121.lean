import CircleFullInterface
import CircleForestAssembly0105
import CircleForestAssembly0111
import CircleForestAssembly0116
import CircleForestAssembly0119
import CircleForestAssembly0120
import CircleForestChunk0467
import CircleForestChunk0470
import CircleForestChunk0471
import CircleForestChunk0472
import CircleForestChunk0473
import CircleForestChunk0474
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1050602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 4)))
theorem cover_1050602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050602 := by
  apply coveredState_split_literal (state := state_1050602) 2
    state_1050603 state_1050610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050603
  · exact cover_1050610
#print axioms cover_1050602

def state_1050534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1050534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050534 := by
  apply coveredState_split_literal (state := state_1050534) 3
    state_1050535 state_1050602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050535
  · exact cover_1050602
#print axioms cover_1050534

def state_1050322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1050322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050322 := by
  apply coveredState_split_literal (state := state_1050322) 1
    state_1050323 state_1050534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050323
  · exact cover_1050534
#print axioms cover_1050322

def state_1049914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1049914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049914 := by
  apply coveredState_split_literal (state := state_1049914) 0
    state_1049915 state_1050322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049915
  · exact cover_1050322
#print axioms cover_1049914

def state_1049913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_1049913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049913 := by
  apply coveredState_split_literal (state := state_1049913) 4
    state_1049914 state_1050683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049914
  · exact cover_1050683
#print axioms cover_1049913

def state_1049912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_1049912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049912 := by
  apply coveredState_split_literal (state := state_1049912) 3
    state_1049913 state_1050692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049913
  · exact cover_1050692
#print axioms cover_1049912

def state_1049886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1049886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049886 := by
  apply coveredState_split_literal (state := state_1049886) 2
    state_1049887 state_1049912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049887
  · exact cover_1049912
#print axioms cover_1049886

def state_1049885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1049885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049885 := by
  apply coveredState_split_literal (state := state_1049885) 1
    state_1049886 state_1050713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049886
  · exact cover_1050713
#print axioms cover_1049885

def state_1050756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1050756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050756 := by
  apply coveredState_split_literal (state := state_1050756) 1
    state_1050757 state_1050820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050757
  · exact cover_1050820
#print axioms cover_1050756

def state_1049884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1049884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049884 := by
  apply coveredState_split_literal (state := state_1049884) 0
    state_1049885 state_1050756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049885
  · exact cover_1050756
#print axioms cover_1049884

def state_1050850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1050850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050850 := by
  apply coveredState_split_literal (state := state_1050850) 1
    state_1050851 state_1050898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050851
  · exact cover_1050898
#print axioms cover_1050850

def state_1050849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1050849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050849 := by
  apply coveredState_split_literal (state := state_1050849) 0
    state_1050850 state_1050945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050850
  · exact cover_1050945
#print axioms cover_1050849

def state_1049883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1049883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049883 := by
  apply coveredState_split_literal (state := state_1049883) 4
    state_1049884 state_1050849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049884
  · exact cover_1050849
#print axioms cover_1049883

def state_1047743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1047743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047743 := by
  apply coveredState_split_literal (state := state_1047743) 3
    state_1047744 state_1049883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047744
  · exact cover_1049883
#print axioms cover_1047743

def state_1043813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1043813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043813 := by
  apply coveredState_split_literal (state := state_1043813) 2
    state_1043814 state_1047743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043814
  · exact cover_1047743
#print axioms cover_1043813

def state_1038473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1038473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038473 := by
  apply coveredState_split_literal (state := state_1038473) 1
    state_1038474 state_1043813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038474
  · exact cover_1043813
#print axioms cover_1038473

def state_939523 : State := rootState
theorem cover_939523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939523 := by
  apply coveredState_split_literal (state := state_939523) 0
    state_939524 state_1038473
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939524
  · exact cover_1038473
#print axioms cover_939523

def state_1302001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1302001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302001 := by
  apply coveredState_split_literal (state := state_1302001) 2
    state_1302002 state_1302045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302002
  · exact cover_1302045
#print axioms cover_1302001

def state_1301983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1301983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1301983 := by
  apply coveredState_split_literal (state := state_1301983) 1
    state_1301984 state_1302001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1301984
  · exact cover_1302001
#print axioms cover_1301983

def state_1302095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1302095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302095 := by
  apply coveredState_split_literal (state := state_1302095) 2
    state_1302096 state_1302105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302096
  · exact cover_1302105
#print axioms cover_1302095

def state_1302094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1302094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302094 := by
  apply coveredState_split_literal (state := state_1302094) 1
    state_1302095 state_1302160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302095
  · exact cover_1302160
#print axioms cover_1302094

def state_1301982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1301982 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1301982 := by
  apply coveredState_split_literal (state := state_1301982) 0
    state_1301983 state_1302094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1301983
  · exact cover_1302094
#print axioms cover_1301982

def state_1302215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1302215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302215 := by
  apply coveredState_split_literal (state := state_1302215) 0
    state_1302216 state_1302257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302216
  · exact cover_1302257
#print axioms cover_1302215

def state_1301981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1301981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1301981 := by
  apply coveredState_split_literal (state := state_1301981) 4
    state_1301982 state_1302215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1301982
  · exact cover_1302215
#print axioms cover_1301981

def state_1302396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1302396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302396 := by
  apply coveredState_split_literal (state := state_1302396) 3
    state_1302397 state_1302450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302397
  · exact cover_1302450
#print axioms cover_1302396

def state_1302364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1302364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302364 := by
  apply coveredState_split_literal (state := state_1302364) 1
    state_1302365 state_1302396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302365
  · exact cover_1302396
#print axioms cover_1302364

def state_1302354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_1302354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302354 := by
  apply coveredState_split_literal (state := state_1302354) 4
    state_1302355 state_1302364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302355
  · exact cover_1302364
#print axioms cover_1302354

def state_1302353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_1302353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302353 := by
  apply coveredState_split_literal (state := state_1302353) 3
    state_1302354 state_1302465
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302354
  · exact cover_1302465
#print axioms cover_1302353

def state_1302480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_1302480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302480 := by
  apply coveredState_split_literal (state := state_1302480) 2
    state_1302481 state_1302510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302481
  · exact cover_1302510
#print axioms cover_1302480

def state_1302479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_1302479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302479 := by
  apply coveredState_split_literal (state := state_1302479) 1
    state_1302480 state_1302565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302480
  · exact cover_1302565
#print axioms cover_1302479

def state_1302473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_1302473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302473 := by
  apply coveredState_split_literal (state := state_1302473) 4
    state_1302474 state_1302479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302474
  · exact cover_1302479
#print axioms cover_1302473

def state_1302673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 21) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 22)))
theorem cover_1302673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302673 := by
  apply coveredState_split_literal (state := state_1302673) 0
    state_1302674 state_1302733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302674
  · exact cover_1302733
#print axioms cover_1302673
end Mub6.Numerical.CircleFullD0.Forest
