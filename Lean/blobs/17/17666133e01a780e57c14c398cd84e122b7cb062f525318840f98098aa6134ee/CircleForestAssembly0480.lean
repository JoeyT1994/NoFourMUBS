import CircleFullInterface
import CircleForestAssembly0473
import CircleForestAssembly0474
import CircleForestAssembly0479
import CircleForestChunk1891
import CircleForestChunk1892
import CircleForestChunk1893
import CircleForestChunk1894
import CircleForestChunk1895
import CircleForestChunk1896
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2327153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 58) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 44)))
theorem cover_2327153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327153 := by
  apply coveredState_split_literal (state := state_2327153) 0
    state_2327154 state_2327169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327154
  · exact cover_2327169
#print axioms cover_2327153

def state_2327085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 58) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
theorem cover_2327085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327085 := by
  apply coveredState_split_literal (state := state_2327085) 3
    state_2327086 state_2327153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327086
  · exact cover_2327153
#print axioms cover_2327085

def state_2327084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
theorem cover_2327084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327084 := by
  apply coveredState_split_literal (state := state_2327084) 1
    state_2327085 state_2327250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327085
  · exact cover_2327250
#print axioms cover_2327084

def state_2327066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 44)))
theorem cover_2327066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327066 := by
  apply coveredState_split_literal (state := state_2327066) 2
    state_2327067 state_2327084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327067
  · exact cover_2327084
#print axioms cover_2327066

def state_2327065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
theorem cover_2327065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327065 := by
  apply coveredState_split_literal (state := state_2327065) 4
    state_2327066 state_2327259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327066
  · exact cover_2327259
#print axioms cover_2327065

def state_2327047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
theorem cover_2327047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327047 := by
  apply coveredState_split_literal (state := state_2327047) 0
    state_2327048 state_2327065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327048
  · exact cover_2327065
#print axioms cover_2327047

def state_2326969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
theorem cover_2326969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326969 := by
  apply coveredState_split_literal (state := state_2326969) 3
    state_2326970 state_2327047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326970
  · exact cover_2327047
#print axioms cover_2326969

def state_2321577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
theorem cover_2321577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321577 := by
  apply coveredState_split_literal (state := state_2321577) 1
    state_2321578 state_2326969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321578
  · exact cover_2326969
#print axioms cover_2321577

def state_2321031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 22)))
theorem cover_2321031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321031 := by
  apply coveredState_split_literal (state := state_2321031) 2
    state_2321032 state_2321577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321032
  · exact cover_2321577
#print axioms cover_2321031

def state_2327302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 23)))
theorem cover_2327302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327302 := by
  apply coveredState_split_literal (state := state_2327302) 2
    state_2327303 state_2327342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327303
  · exact cover_2327342
#print axioms cover_2327302

def state_2321030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
theorem cover_2321030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321030 := by
  apply coveredState_split_literal (state := state_2321030) 4
    state_2321031 state_2327302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321031
  · exact cover_2327302
#print axioms cover_2321030

def state_2320950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
theorem cover_2320950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320950 := by
  apply coveredState_split_literal (state := state_2320950) 0
    state_2320951 state_2321030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320951
  · exact cover_2321030
#print axioms cover_2320950

def state_2319998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
theorem cover_2319998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319998 := by
  apply coveredState_split_literal (state := state_2319998) 3
    state_2319999 state_2320950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319999
  · exact cover_2320950
#print axioms cover_2319998

def state_2319997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
theorem cover_2319997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319997 := by
  apply coveredState_split_literal (state := state_2319997) 1
    state_2319998 state_2327379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2319998
  · exact cover_2327379
#print axioms cover_2319997

def state_2318173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 5)))
theorem cover_2318173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318173 := by
  apply coveredState_split_literal (state := state_2318173) 4
    state_2318174 state_2319997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318174
  · exact cover_2319997
#print axioms cover_2318173

def state_2327694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 88 else (if j.val < 4 then 63 else 43)))
theorem cover_2327694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327694 := by
  apply coveredState_split_literal (state := state_2327694) 4
    state_2327695 state_2327718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327695
  · exact cover_2327718
#print axioms cover_2327694

def state_2327693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 43)))
theorem cover_2327693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327693 := by
  apply coveredState_split_literal (state := state_2327693) 2
    state_2327694 state_2327765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327694
  · exact cover_2327765
#print axioms cover_2327693

def state_2327673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 43)))
theorem cover_2327673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327673 := by
  apply coveredState_split_literal (state := state_2327673) 0
    state_2327674 state_2327693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327674
  · exact cover_2327693
#print axioms cover_2327673

def state_2327633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 43)))
theorem cover_2327633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327633 := by
  apply coveredState_split_literal (state := state_2327633) 3
    state_2327634 state_2327673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327634
  · exact cover_2327673
#print axioms cover_2327633

def state_2327607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 43)))
theorem cover_2327607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327607 := by
  apply coveredState_split_literal (state := state_2327607) 1
    state_2327608 state_2327633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327608
  · exact cover_2327633
#print axioms cover_2327607

def state_2327577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 21)))
theorem cover_2327577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327577 := by
  apply coveredState_split_literal (state := state_2327577) 4
    state_2327578 state_2327607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327578
  · exact cover_2327607
#print axioms cover_2327577

def state_2327576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 21)))
theorem cover_2327576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327576 := by
  apply coveredState_split_literal (state := state_2327576) 2
    state_2327577 state_2327792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327577
  · exact cover_2327792
#print axioms cover_2327576

def state_2327564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 21)))
theorem cover_2327564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327564 := by
  apply coveredState_split_literal (state := state_2327564) 0
    state_2327565 state_2327576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327565
  · exact cover_2327576
#print axioms cover_2327564

def state_2327522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 21)))
theorem cover_2327522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327522 := by
  apply coveredState_split_literal (state := state_2327522) 3
    state_2327523 state_2327564
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327523
  · exact cover_2327564
#print axioms cover_2327522

def state_2327521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 21)))
theorem cover_2327521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327521 := by
  apply coveredState_split_literal (state := state_2327521) 1
    state_2327522 state_2327799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327522
  · exact cover_2327799
#print axioms cover_2327521

def state_2327489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 10)))
theorem cover_2327489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327489 := by
  apply coveredState_split_literal (state := state_2327489) 4
    state_2327490 state_2327521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327490
  · exact cover_2327521
#print axioms cover_2327489

def state_2327488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 10)))
theorem cover_2327488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327488 := by
  apply coveredState_split_literal (state := state_2327488) 2
    state_2327489 state_2327860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327489
  · exact cover_2327860
#print axioms cover_2327488

def state_2327478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 10)))
theorem cover_2327478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327478 := by
  apply coveredState_split_literal (state := state_2327478) 0
    state_2327479 state_2327488
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327479
  · exact cover_2327488
#print axioms cover_2327478

def state_2327444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 10)))
theorem cover_2327444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327444 := by
  apply coveredState_split_literal (state := state_2327444) 3
    state_2327445 state_2327478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327445
  · exact cover_2327478
#print axioms cover_2327444

def state_2327443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 10)))
theorem cover_2327443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327443 := by
  apply coveredState_split_literal (state := state_2327443) 1
    state_2327444 state_2327867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327444
  · exact cover_2327867
#print axioms cover_2327443

def state_2328003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 62 else 44)))
theorem cover_2328003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328003 := by
  apply coveredState_split_literal (state := state_2328003) 0
    state_2328004 state_2328013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328004
  · exact cover_2328013
#print axioms cover_2328003

def state_2328088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 88 else (if j.val < 4 then 63 else 88)))
theorem cover_2328088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328088 := by
  apply coveredState_split_literal (state := state_2328088) 1
    state_2328089 state_2328114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328089
  · exact cover_2328114
#print axioms cover_2328088
end Mub6.Numerical.CircleFullD0.Forest
