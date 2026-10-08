import CircleFullInterface
import CircleForestAssembly0121
import CircleForestChunk0474
import CircleForestChunk0475
import CircleForestChunk0476
import CircleForestChunk0477
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1302672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 21) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 22)))
theorem cover_1302672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302672 := by
  apply coveredState_split_literal (state := state_1302672) 3
    state_1302673 state_1302750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302673
  · exact cover_1302750
#print axioms cover_1302672

def state_1302668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 22)))
theorem cover_1302668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302668 := by
  apply coveredState_split_literal (state := state_1302668) 1
    state_1302669 state_1302672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302669
  · exact cover_1302672
#print axioms cover_1302668

def state_1302667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 11)))
theorem cover_1302667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302667 := by
  apply coveredState_split_literal (state := state_1302667) 4
    state_1302668 state_1302793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302668
  · exact cover_1302793
#print axioms cover_1302667

def state_1302653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 11)))
theorem cover_1302653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302653 := by
  apply coveredState_split_literal (state := state_1302653) 2
    state_1302654 state_1302667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302654
  · exact cover_1302667
#print axioms cover_1302653

def state_1302652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
theorem cover_1302652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302652 := by
  apply coveredState_split_literal (state := state_1302652) 3
    state_1302653 state_1302798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302653
  · exact cover_1302798
#print axioms cover_1302652

def state_1302651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
theorem cover_1302651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302651 := by
  apply coveredState_split_literal (state := state_1302651) 0
    state_1302652 state_1302807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302652
  · exact cover_1302807
#print axioms cover_1302651

def state_1302609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 5)))
theorem cover_1302609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302609 := by
  apply coveredState_split_literal (state := state_1302609) 4
    state_1302610 state_1302651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302610
  · exact cover_1302651
#print axioms cover_1302609

def state_1302605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1302605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302605 := by
  apply coveredState_split_literal (state := state_1302605) 2
    state_1302606 state_1302609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302606
  · exact cover_1302609
#print axioms cover_1302605

def state_1302866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 21)))
theorem cover_1302866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302866 := by
  apply coveredState_split_literal (state := state_1302866) 3
    state_1302867 state_1302902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302867
  · exact cover_1302902
#print axioms cover_1302866

def state_1302862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 10)))
theorem cover_1302862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302862 := by
  apply coveredState_split_literal (state := state_1302862) 4
    state_1302863 state_1302866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302863
  · exact cover_1302866
#print axioms cover_1302862

def state_1302854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 10)))
theorem cover_1302854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302854 := by
  apply coveredState_split_literal (state := state_1302854) 2
    state_1302855 state_1302862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302855
  · exact cover_1302862
#print axioms cover_1302854

def state_1302853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 10)))
theorem cover_1302853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302853 := by
  apply coveredState_split_literal (state := state_1302853) 1
    state_1302854 state_1302931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302854
  · exact cover_1302931
#print axioms cover_1302853

def state_1302852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 10)))
theorem cover_1302852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302852 := by
  apply coveredState_split_literal (state := state_1302852) 3
    state_1302853 state_1302938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302853
  · exact cover_1302938
#print axioms cover_1302852

def state_1302851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 10)))
theorem cover_1302851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302851 := by
  apply coveredState_split_literal (state := state_1302851) 0
    state_1302852 state_1302943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302852
  · exact cover_1302943
#print axioms cover_1302851

def state_1302966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 22)))
theorem cover_1302966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302966 := by
  apply coveredState_split_literal (state := state_1302966) 2
    state_1302967 state_1302968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302967
  · exact cover_1302968
#print axioms cover_1302966

def state_1302965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 22)))
theorem cover_1302965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302965 := by
  apply coveredState_split_literal (state := state_1302965) 0
    state_1302966 state_1303031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302966
  · exact cover_1303031
#print axioms cover_1302965

def state_1303046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 47 else (if j.val < 4 then 58 else 44)))
theorem cover_1303046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303046 := by
  apply coveredState_split_literal (state := state_1303046) 0
    state_1303047 state_1303108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303047
  · exact cover_1303108
#print axioms cover_1303046

def state_1303045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 47 else (if j.val < 4 then 29 else 44)))
theorem cover_1303045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303045 := by
  apply coveredState_split_literal (state := state_1303045) 3
    state_1303046 state_1303151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303046
  · exact cover_1303151
#print axioms cover_1303045

def state_1303044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 47 else (if j.val < 4 then 29 else 22)))
theorem cover_1303044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303044 := by
  apply coveredState_split_literal (state := state_1303044) 4
    state_1303045 state_1303152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303045
  · exact cover_1303152
#print axioms cover_1303044

def state_1303043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 22) else (if j.val < 3 then 47 else (if j.val < 4 then 29 else 22)))
theorem cover_1303043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303043 := by
  apply coveredState_split_literal (state := state_1303043) 1
    state_1303044 state_1303171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303044
  · exact cover_1303171
#print axioms cover_1303043

def state_1303033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 29 else 22)))
theorem cover_1303033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303033 := by
  apply coveredState_split_literal (state := state_1303033) 2
    state_1303034 state_1303043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303034
  · exact cover_1303043
#print axioms cover_1303033

def state_1303032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 29 else 22)))
theorem cover_1303032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303032 := by
  apply coveredState_split_literal (state := state_1303032) 0
    state_1303033 state_1303186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303033
  · exact cover_1303186
#print axioms cover_1303032

def state_1302964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 22)))
theorem cover_1302964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302964 := by
  apply coveredState_split_literal (state := state_1302964) 3
    state_1302965 state_1303032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302965
  · exact cover_1303032
#print axioms cover_1302964

def state_1302963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 11)))
theorem cover_1302963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302963 := by
  apply coveredState_split_literal (state := state_1302963) 4
    state_1302964 state_1303229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302964
  · exact cover_1303229
#print axioms cover_1302963

def state_1302955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 11)))
theorem cover_1302955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302955 := by
  apply coveredState_split_literal (state := state_1302955) 2
    state_1302956 state_1302963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302956
  · exact cover_1302963
#print axioms cover_1302955

def state_1302954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 11)))
theorem cover_1302954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302954 := by
  apply coveredState_split_literal (state := state_1302954) 1
    state_1302955 state_1303240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302955
  · exact cover_1303240
#print axioms cover_1302954

def state_1302953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
theorem cover_1302953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302953 := by
  apply coveredState_split_literal (state := state_1302953) 3
    state_1302954 state_1303253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302954
  · exact cover_1303253
#print axioms cover_1302953

def state_1302952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
theorem cover_1302952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302952 := by
  apply coveredState_split_literal (state := state_1302952) 0
    state_1302953 state_1303274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302953
  · exact cover_1303274
#print axioms cover_1302952

def state_1302850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 5)))
theorem cover_1302850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302850 := by
  apply coveredState_split_literal (state := state_1302850) 4
    state_1302851 state_1302952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302851
  · exact cover_1302952
#print axioms cover_1302850

def state_1302832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1302832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302832 := by
  apply coveredState_split_literal (state := state_1302832) 2
    state_1302833 state_1302850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302833
  · exact cover_1302850
#print axioms cover_1302832

def state_1302604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1302604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302604 := by
  apply coveredState_split_literal (state := state_1302604) 1
    state_1302605 state_1302832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302605
  · exact cover_1302832
#print axioms cover_1302604

def state_1302590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_1302590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302590 := by
  apply coveredState_split_literal (state := state_1302590) 4
    state_1302591 state_1302604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302591
  · exact cover_1302604
#print axioms cover_1302590
end Mub6.Numerical.CircleFullD0.Forest
