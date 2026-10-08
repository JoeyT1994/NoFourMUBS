import CircleFullInterface
import CircleForestAssembly0448
import CircleForestChunk1755
import CircleForestChunk1760
import CircleForestChunk1761
import CircleForestChunk1762
import CircleForestChunk1763
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2295368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 47)))
theorem cover_2295368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295368 := by
  apply coveredState_split_literal (state := state_2295368) 3
    state_2295369 state_2295468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295369
  · exact cover_2295468
#print axioms cover_2295368

def state_2295036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 23)))
theorem cover_2295036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295036 := by
  apply coveredState_split_literal (state := state_2295036) 4
    state_2295037 state_2295368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295037
  · exact cover_2295368
#print axioms cover_2295036

def state_2295537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 23)))
theorem cover_2295537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295537 := by
  apply coveredState_split_literal (state := state_2295537) 4
    state_2295538 state_2295579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295538
  · exact cover_2295579
#print axioms cover_2295537

def state_2295035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 23)))
theorem cover_2295035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295035 := by
  apply coveredState_split_literal (state := state_2295035) 2
    state_2295036 state_2295537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295036
  · exact cover_2295537
#print axioms cover_2295035

def state_2295034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 23)))
theorem cover_2295034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295034 := by
  apply coveredState_split_literal (state := state_2295034) 1
    state_2295035 state_2295622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295035
  · exact cover_2295622
#print axioms cover_2295034

def state_2295632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 23)))
theorem cover_2295632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295632 := by
  apply coveredState_split_literal (state := state_2295632) 2
    state_2295633 state_2295682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295633
  · exact cover_2295682
#print axioms cover_2295632

def state_2295631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 23)))
theorem cover_2295631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295631 := by
  apply coveredState_split_literal (state := state_2295631) 1
    state_2295632 state_2295711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295632
  · exact cover_2295711
#print axioms cover_2295631

def state_2295033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 23)))
theorem cover_2295033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295033 := by
  apply coveredState_split_literal (state := state_2295033) 0
    state_2295034 state_2295631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295034
  · exact cover_2295631
#print axioms cover_2295033

def state_2294877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 11)))
theorem cover_2294877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294877 := by
  apply coveredState_split_literal (state := state_2294877) 4
    state_2294878 state_2295033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294878
  · exact cover_2295033
#print axioms cover_2294877

def state_2294685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
theorem cover_2294685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294685 := by
  apply coveredState_split_literal (state := state_2294685) 3
    state_2294686 state_2294877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294686
  · exact cover_2294877
#print axioms cover_2294685

def state_2294489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_2294489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294489 := by
  apply coveredState_split_literal (state := state_2294489) 2
    state_2294490 state_2294685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294490
  · exact cover_2294685
#print axioms cover_2294489

def state_2294467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_2294467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294467 := by
  apply coveredState_split_literal (state := state_2294467) 4
    state_2294468 state_2294489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294468
  · exact cover_2294489
#print axioms cover_2294467

def state_2295770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_2295770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295770 := by
  apply coveredState_split_literal (state := state_2295770) 3
    state_2295771 state_2295782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295771
  · exact cover_2295782
#print axioms cover_2295770

def state_2295769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_2295769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295769 := by
  apply coveredState_split_literal (state := state_2295769) 1
    state_2295770 state_2295843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295770
  · exact cover_2295843
#print axioms cover_2295769

def state_2295747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_2295747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295747 := by
  apply coveredState_split_literal (state := state_2295747) 0
    state_2295748 state_2295769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295748
  · exact cover_2295769
#print axioms cover_2295747

def state_2295715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 10)))
theorem cover_2295715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295715 := by
  apply coveredState_split_literal (state := state_2295715) 2
    state_2295716 state_2295747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295716
  · exact cover_2295747
#print axioms cover_2295715

def state_2296057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 91)))
theorem cover_2296057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296057 := by
  apply coveredState_split_literal (state := state_2296057) 3
    state_2296058 state_2296093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296058
  · exact cover_2296093
#print axioms cover_2296057

def state_2296043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 91)))
theorem cover_2296043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296043 := by
  apply coveredState_split_literal (state := state_2296043) 0
    state_2296044 state_2296057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296044
  · exact cover_2296057
#print axioms cover_2296043

def state_2296042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 91)))
theorem cover_2296042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296042 := by
  apply coveredState_split_literal (state := state_2296042) 1
    state_2296043 state_2296150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296043
  · exact cover_2296150
#print axioms cover_2296042

def state_2296014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 45)))
theorem cover_2296014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296014 := by
  apply coveredState_split_literal (state := state_2296014) 4
    state_2296015 state_2296042
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296015
  · exact cover_2296042
#print axioms cover_2296014

def state_2295998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 53 else 45)))
theorem cover_2295998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295998 := by
  apply coveredState_split_literal (state := state_2295998) 2
    state_2295999 state_2296014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295999
  · exact cover_2296014
#print axioms cover_2295998

def state_2295952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 45)))
theorem cover_2295952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295952 := by
  apply coveredState_split_literal (state := state_2295952) 3
    state_2295953 state_2295998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295953
  · exact cover_2295998
#print axioms cover_2295952

def state_2295951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 45)))
theorem cover_2295951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295951 := by
  apply coveredState_split_literal (state := state_2295951) 1
    state_2295952 state_2296161
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295952
  · exact cover_2296161
#print axioms cover_2295951

def state_2296259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 71 else (if j.val < 4 then 107 else 91)))
theorem cover_2296259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296259 := by
  apply coveredState_split_literal (state := state_2296259) 4
    state_2296260 state_2296287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296260
  · exact cover_2296287
#print axioms cover_2296259

def state_2296223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 107 else 91)))
theorem cover_2296223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296223 := by
  apply coveredState_split_literal (state := state_2296223) 2
    state_2296224 state_2296259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296224
  · exact cover_2296259
#print axioms cover_2296223

def state_2296221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 91)))
theorem cover_2296221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296221 := by
  apply coveredState_split_literal (state := state_2296221) 3
    state_2296222 state_2296223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296222
  · exact cover_2296223
#print axioms cover_2296221

def state_2296220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 91)))
theorem cover_2296220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296220 := by
  apply coveredState_split_literal (state := state_2296220) 1
    state_2296221 state_2296344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296221
  · exact cover_2296344
#print axioms cover_2296220

def state_2296219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 91)))
theorem cover_2296219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296219 := by
  apply coveredState_split_literal (state := state_2296219) 0
    state_2296220 state_2296361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296220
  · exact cover_2296361
#print axioms cover_2296219

def state_2296189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 45)))
theorem cover_2296189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296189 := by
  apply coveredState_split_literal (state := state_2296189) 4
    state_2296190 state_2296219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296190
  · exact cover_2296219
#print axioms cover_2296189

def state_2296167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 53 else 45)))
theorem cover_2296167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296167 := by
  apply coveredState_split_literal (state := state_2296167) 2
    state_2296168 state_2296189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296168
  · exact cover_2296189
#print axioms cover_2296167

def state_2296165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 45)))
theorem cover_2296165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296165 := by
  apply coveredState_split_literal (state := state_2296165) 3
    state_2296166 state_2296167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296166
  · exact cover_2296167
#print axioms cover_2296165

def state_2296164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 45)))
theorem cover_2296164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296164 := by
  apply coveredState_split_literal (state := state_2296164) 1
    state_2296165 state_2296364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296165
  · exact cover_2296364
#print axioms cover_2296164
end Mub6.Numerical.CircleFullD0.Forest
