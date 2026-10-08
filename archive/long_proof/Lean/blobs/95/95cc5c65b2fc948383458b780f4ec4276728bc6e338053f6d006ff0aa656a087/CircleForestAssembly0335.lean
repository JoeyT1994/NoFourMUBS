import CircleFullInterface
import CircleForestAssembly0334
import CircleForestChunk1298
import CircleForestChunk1299
import CircleForestChunk1300
import CircleForestChunk1301
import CircleForestChunk1302
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1612103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 48)))
theorem cover_1612103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612103 := by
  apply coveredState_split_literal (state := state_1612103) 0
    state_1612104 state_1612167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612104
  · exact cover_1612167
#print axioms cover_1612103

def state_1612175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 30 else 49)))
theorem cover_1612175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612175 := by
  apply coveredState_split_literal (state := state_1612175) 3
    state_1612176 state_1612229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612176
  · exact cover_1612229
#print axioms cover_1612175

def state_1612249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 49)))
theorem cover_1612249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612249 := by
  apply coveredState_split_literal (state := state_1612249) 4
    state_1612250 state_1612279
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612250
  · exact cover_1612279
#print axioms cover_1612249

def state_1612328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 61 else 49)))
theorem cover_1612328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612328 := by
  apply coveredState_split_literal (state := state_1612328) 4
    state_1612329 state_1612350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612329
  · exact cover_1612350
#print axioms cover_1612328

def state_1612248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 30 else 49)))
theorem cover_1612248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612248 := by
  apply coveredState_split_literal (state := state_1612248) 3
    state_1612249 state_1612328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612249
  · exact cover_1612328
#print axioms cover_1612248

def state_1612174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 49)))
theorem cover_1612174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612174 := by
  apply coveredState_split_literal (state := state_1612174) 2
    state_1612175 state_1612248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612175
  · exact cover_1612248
#print axioms cover_1612174

def state_1612173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 49)))
theorem cover_1612173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612173 := by
  apply coveredState_split_literal (state := state_1612173) 1
    state_1612174 state_1612401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612174
  · exact cover_1612401
#print axioms cover_1612173

def state_1612172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 49)))
theorem cover_1612172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612172 := by
  apply coveredState_split_literal (state := state_1612172) 0
    state_1612173 state_1612444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612173
  · exact cover_1612444
#print axioms cover_1612172

def state_1612102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 24)))
theorem cover_1612102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612102 := by
  apply coveredState_split_literal (state := state_1612102) 4
    state_1612103 state_1612172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612103
  · exact cover_1612172
#print axioms cover_1612102

def state_1612461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 24)))
theorem cover_1612461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612461 := by
  apply coveredState_split_literal (state := state_1612461) 4
    state_1612462 state_1612477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612462
  · exact cover_1612477
#print axioms cover_1612461

def state_1612101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 24)))
theorem cover_1612101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612101 := by
  apply coveredState_split_literal (state := state_1612101) 3
    state_1612102 state_1612461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612102
  · exact cover_1612461
#print axioms cover_1612101

def state_1612535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 24)))
theorem cover_1612535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612535 := by
  apply coveredState_split_literal (state := state_1612535) 4
    state_1612536 state_1612547
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612536
  · exact cover_1612547
#print axioms cover_1612535

def state_1612534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 24)))
theorem cover_1612534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612534 := by
  apply coveredState_split_literal (state := state_1612534) 3
    state_1612535 state_1612600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612535
  · exact cover_1612600
#print axioms cover_1612534

def state_1612100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_1612100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612100 := by
  apply coveredState_split_literal (state := state_1612100) 2
    state_1612101 state_1612534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612101
  · exact cover_1612534
#print axioms cover_1612100

def state_1610598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_1610598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610598 := by
  apply coveredState_split_literal (state := state_1610598) 1
    state_1610599 state_1612100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610599
  · exact cover_1612100
#print axioms cover_1610598

def state_1612688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 81) else (if j.val < 3 then 104 else (if j.val < 4 then 122 else 100)))
theorem cover_1612688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612688 := by
  apply coveredState_split_literal (state := state_1612688) 4
    state_1612689 state_1612750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612689
  · exact cover_1612750
#print axioms cover_1612688

def state_1612687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 81) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 100)))
theorem cover_1612687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612687 := by
  apply coveredState_split_literal (state := state_1612687) 3
    state_1612688 state_1612763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612688
  · exact cover_1612763
#print axioms cover_1612687

def state_1612679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 40) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 100)))
theorem cover_1612679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612679 := by
  apply coveredState_split_literal (state := state_1612679) 1
    state_1612680 state_1612687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612680
  · exact cover_1612687
#print axioms cover_1612679

def state_1612678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 100)))
theorem cover_1612678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612678 := by
  apply coveredState_split_literal (state := state_1612678) 2
    state_1612679 state_1612804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612679
  · exact cover_1612804
#print axioms cover_1612678

def state_1612677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 100)))
theorem cover_1612677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612677 := by
  apply coveredState_split_literal (state := state_1612677) 0
    state_1612678 state_1612809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612678
  · exact cover_1612809
#print axioms cover_1612677

def state_1612676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 50)))
theorem cover_1612676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612676 := by
  apply coveredState_split_literal (state := state_1612676) 4
    state_1612677 state_1612824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612677
  · exact cover_1612824
#print axioms cover_1612676

def state_1612652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 30 else 50)))
theorem cover_1612652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612652 := by
  apply coveredState_split_literal (state := state_1612652) 3
    state_1612653 state_1612676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612653
  · exact cover_1612676
#print axioms cover_1612652

def state_1612876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 41) else (if j.val < 3 then 105 else (if j.val < 4 then 60 else 100)))
theorem cover_1612876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612876 := by
  apply coveredState_split_literal (state := state_1612876) 1
    state_1612877 state_1612886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612877
  · exact cover_1612886
#print axioms cover_1612876

def state_1612840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 100)))
theorem cover_1612840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612840 := by
  apply coveredState_split_literal (state := state_1612840) 2
    state_1612841 state_1612876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612841
  · exact cover_1612876
#print axioms cover_1612840

def state_1612839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 100)))
theorem cover_1612839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612839 := by
  apply coveredState_split_literal (state := state_1612839) 0
    state_1612840 state_1612945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612840
  · exact cover_1612945
#print axioms cover_1612839

def state_1612838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 50)))
theorem cover_1612838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612838 := by
  apply coveredState_split_literal (state := state_1612838) 4
    state_1612839 state_1612968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612839
  · exact cover_1612968
#print axioms cover_1612838

def state_1613010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 122 else 200)))
theorem cover_1613010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613010 := by
  apply coveredState_split_literal (state := state_1613010) 2
    state_1613011 state_1613044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613011
  · exact cover_1613044
#print axioms cover_1613010

def state_1613009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 122 else 200)))
theorem cover_1613009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613009 := by
  apply coveredState_split_literal (state := state_1613009) 0
    state_1613010 state_1613093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613010
  · exact cover_1613093
#print axioms cover_1613009

def state_1613008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 122 else 100)))
theorem cover_1613008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613008 := by
  apply coveredState_split_literal (state := state_1613008) 4
    state_1613009 state_1613102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613009
  · exact cover_1613102
#print axioms cover_1613008

def state_1613007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 100)))
theorem cover_1613007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613007 := by
  apply coveredState_split_literal (state := state_1613007) 3
    state_1613008 state_1613123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613008
  · exact cover_1613123
#print axioms cover_1613007

def state_1613006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 100)))
theorem cover_1613006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613006 := by
  apply coveredState_split_literal (state := state_1613006) 1
    state_1613007 state_1613156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613007
  · exact cover_1613156
#print axioms cover_1613006

def state_1613157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 41) else (if j.val < 3 then 105 else (if j.val < 4 then 61 else 100)))
theorem cover_1613157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613157 := by
  apply coveredState_split_literal (state := state_1613157) 1
    state_1613158 state_1613197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613158
  · exact cover_1613197
#print axioms cover_1613157
end Mub6.Numerical.CircleFullD0.Forest
