import CircleFullInterface
import CircleForestAssembly0263
import CircleForestChunk1009
import CircleForestChunk1010
import CircleForestChunk1011
import CircleForestChunk1012
import CircleForestChunk1013
import CircleForestChunk1014
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1542662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 9)))
theorem cover_1542662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542662 := by
  apply coveredState_split_literal (state := state_1542662) 0
    state_1542663 state_1542782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542663
  · exact cover_1542782
#print axioms cover_1542662

def state_1542660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 4)))
theorem cover_1542660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542660 := by
  apply coveredState_split_literal (state := state_1542660) 4
    state_1542661 state_1542662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542661
  · exact cover_1542662
#print axioms cover_1542660

def state_1542659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 4)))
theorem cover_1542659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542659 := by
  apply coveredState_split_literal (state := state_1542659) 1
    state_1542660 state_1542817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542660
  · exact cover_1542817
#print axioms cover_1542659

def state_1542658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 4)))
theorem cover_1542658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542658 := by
  apply coveredState_split_literal (state := state_1542658) 3
    state_1542659 state_1542818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542659
  · exact cover_1542818
#print axioms cover_1542658

def state_1542974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 39)))
theorem cover_1542974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542974 := by
  apply coveredState_split_literal (state := state_1542974) 0
    state_1542975 state_1543016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542975
  · exact cover_1543016
#print axioms cover_1542974

def state_1542973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 39)))
theorem cover_1542973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542973 := by
  apply coveredState_split_literal (state := state_1542973) 3
    state_1542974 state_1543059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542974
  · exact cover_1543059
#print axioms cover_1542973

def state_1542909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 19)))
theorem cover_1542909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542909 := by
  apply coveredState_split_literal (state := state_1542909) 4
    state_1542910 state_1542973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542910
  · exact cover_1542973
#print axioms cover_1542909

def state_1542908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 19)))
theorem cover_1542908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542908 := by
  apply coveredState_split_literal (state := state_1542908) 1
    state_1542909 state_1543082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542909
  · exact cover_1543082
#print axioms cover_1542908

def state_1543117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 19)))
theorem cover_1543117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543117 := by
  apply coveredState_split_literal (state := state_1543117) 1
    state_1543118 state_1543175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543118
  · exact cover_1543175
#print axioms cover_1543117

def state_1542907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 19)))
theorem cover_1542907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542907 := by
  apply coveredState_split_literal (state := state_1542907) 2
    state_1542908 state_1543117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542908
  · exact cover_1543117
#print axioms cover_1542907

def state_1542875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 19)))
theorem cover_1542875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542875 := by
  apply coveredState_split_literal (state := state_1542875) 0
    state_1542876 state_1542907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542876
  · exact cover_1542907
#print axioms cover_1542875

def state_1542847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 9)))
theorem cover_1542847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542847 := by
  apply coveredState_split_literal (state := state_1542847) 4
    state_1542848 state_1542875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542848
  · exact cover_1542875
#print axioms cover_1542847

def state_1542846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 9)))
theorem cover_1542846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542846 := by
  apply coveredState_split_literal (state := state_1542846) 1
    state_1542847 state_1543200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542847
  · exact cover_1543200
#print axioms cover_1542846

def state_1542845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 9)))
theorem cover_1542845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542845 := by
  apply coveredState_split_literal (state := state_1542845) 3
    state_1542846 state_1543221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542846
  · exact cover_1543221
#print axioms cover_1542845

def state_1542844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 9)))
theorem cover_1542844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542844 := by
  apply coveredState_split_literal (state := state_1542844) 2
    state_1542845 state_1543240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542845
  · exact cover_1543240
#print axioms cover_1542844

def state_1543313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 19)))
theorem cover_1543313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543313 := by
  apply coveredState_split_literal (state := state_1543313) 2
    state_1543314 state_1543373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543314
  · exact cover_1543373
#print axioms cover_1543313

def state_1543312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 19)))
theorem cover_1543312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543312 := by
  apply coveredState_split_literal (state := state_1543312) 0
    state_1543313 state_1543406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543313
  · exact cover_1543406
#print axioms cover_1543312

def state_1543298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 9)))
theorem cover_1543298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543298 := by
  apply coveredState_split_literal (state := state_1543298) 4
    state_1543299 state_1543312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543299
  · exact cover_1543312
#print axioms cover_1543298

def state_1543297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 9)))
theorem cover_1543297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543297 := by
  apply coveredState_split_literal (state := state_1543297) 1
    state_1543298 state_1543419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543298
  · exact cover_1543419
#print axioms cover_1543297

def state_1543296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 9)))
theorem cover_1543296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543296 := by
  apply coveredState_split_literal (state := state_1543296) 3
    state_1543297 state_1543432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543297
  · exact cover_1543432
#print axioms cover_1543296

def state_1543295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 9)))
theorem cover_1543295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543295 := by
  apply coveredState_split_literal (state := state_1543295) 2
    state_1543296 state_1543479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543296
  · exact cover_1543479
#print axioms cover_1543295

def state_1542843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 9)))
theorem cover_1542843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542843 := by
  apply coveredState_split_literal (state := state_1542843) 0
    state_1542844 state_1543295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542844
  · exact cover_1543295
#print axioms cover_1542843

def state_1542821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 4)))
theorem cover_1542821 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542821 := by
  apply coveredState_split_literal (state := state_1542821) 4
    state_1542822 state_1542843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542822
  · exact cover_1542843
#print axioms cover_1542821

def state_1542820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 4)))
theorem cover_1542820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542820 := by
  apply coveredState_split_literal (state := state_1542820) 1
    state_1542821 state_1543518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542821
  · exact cover_1543518
#print axioms cover_1542820

def state_1542819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 4)))
theorem cover_1542819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542819 := by
  apply coveredState_split_literal (state := state_1542819) 3
    state_1542820 state_1543529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542820
  · exact cover_1543529
#print axioms cover_1542819

def state_1542657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1542657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542657 := by
  apply coveredState_split_literal (state := state_1542657) 2
    state_1542658 state_1542819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542658
  · exact cover_1542819
#print axioms cover_1542657

def state_1542656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1542656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542656 := by
  apply coveredState_split_literal (state := state_1542656) 0
    state_1542657 state_1543550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542657
  · exact cover_1543550
#print axioms cover_1542656

def state_1543770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 40)))
theorem cover_1543770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543770 := by
  apply coveredState_split_literal (state := state_1543770) 0
    state_1543771 state_1543804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543771
  · exact cover_1543804
#print axioms cover_1543770

def state_1543847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 41)))
theorem cover_1543847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543847 := by
  apply coveredState_split_literal (state := state_1543847) 0
    state_1543848 state_1543879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543848
  · exact cover_1543879
#print axioms cover_1543847

def state_1543769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 20)))
theorem cover_1543769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543769 := by
  apply coveredState_split_literal (state := state_1543769) 4
    state_1543770 state_1543847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543770
  · exact cover_1543847
#print axioms cover_1543769

def state_1543768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 20)))
theorem cover_1543768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543768 := by
  apply coveredState_split_literal (state := state_1543768) 3
    state_1543769 state_1543934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543769
  · exact cover_1543934
#print axioms cover_1543768

def state_1543714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 20)))
theorem cover_1543714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543714 := by
  apply coveredState_split_literal (state := state_1543714) 1
    state_1543715 state_1543768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543715
  · exact cover_1543768
#print axioms cover_1543714
end Mub6.Numerical.CircleFullD0.Forest
