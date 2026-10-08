import CircleFullInterface
import CircleForestAssembly0304
import CircleForestChunk1172
import CircleForestChunk1173
import CircleForestChunk1174
import CircleForestChunk1175
import CircleForestChunk1176
import CircleForestChunk1177
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1581775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 103)))
theorem cover_1581775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581775 := by
  apply coveredState_split_literal (state := state_1581775) 3
    state_1581776 state_1581893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581776
  · exact cover_1581893
#print axioms cover_1581775

def state_1581679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 51)))
theorem cover_1581679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581679 := by
  apply coveredState_split_literal (state := state_1581679) 4
    state_1581680 state_1581775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581680
  · exact cover_1581775
#print axioms cover_1581679

def state_1581613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 51)))
theorem cover_1581613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581613 := by
  apply coveredState_split_literal (state := state_1581613) 2
    state_1581614 state_1581679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581614
  · exact cover_1581679
#print axioms cover_1581613

def state_1581612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 51)))
theorem cover_1581612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581612 := by
  apply coveredState_split_literal (state := state_1581612) 1
    state_1581613 state_1581908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581613
  · exact cover_1581908
#print axioms cover_1581612

def state_1581995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 102)))
theorem cover_1581995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581995 := by
  apply coveredState_split_literal (state := state_1581995) 3
    state_1581996 state_1582057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581996
  · exact cover_1582057
#print axioms cover_1581995

def state_1582122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 68) else (if j.val < 3 then 194 else (if j.val < 4 then 106 else 103)))
theorem cover_1582122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582122 := by
  apply coveredState_split_literal (state := state_1582122) 4
    state_1582123 state_1582168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582123
  · exact cover_1582168
#print axioms cover_1582122

def state_1582191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 68) else (if j.val < 3 then 195 else (if j.val < 4 then 106 else 103)))
theorem cover_1582191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582191 := by
  apply coveredState_split_literal (state := state_1582191) 4
    state_1582192 state_1582225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582192
  · exact cover_1582225
#print axioms cover_1582191

def state_1582121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 68) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 103)))
theorem cover_1582121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582121 := by
  apply coveredState_split_literal (state := state_1582121) 2
    state_1582122 state_1582191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582122
  · exact cover_1582191
#print axioms cover_1582121

def state_1582120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 103)))
theorem cover_1582120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582120 := by
  apply coveredState_split_literal (state := state_1582120) 1
    state_1582121 state_1582256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582121
  · exact cover_1582256
#print axioms cover_1582120

def state_1582119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 103)))
theorem cover_1582119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582119 := by
  apply coveredState_split_literal (state := state_1582119) 0
    state_1582120 state_1582303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582120
  · exact cover_1582303
#print axioms cover_1582119

def state_1582317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 107 else 103)))
theorem cover_1582317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582317 := by
  apply coveredState_split_literal (state := state_1582317) 1
    state_1582318 state_1582345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582318
  · exact cover_1582345
#print axioms cover_1582317

def state_1582316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 107 else 103)))
theorem cover_1582316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582316 := by
  apply coveredState_split_literal (state := state_1582316) 0
    state_1582317 state_1582404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582317
  · exact cover_1582404
#print axioms cover_1582316

def state_1582118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 103)))
theorem cover_1582118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582118 := by
  apply coveredState_split_literal (state := state_1582118) 3
    state_1582119 state_1582316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582119
  · exact cover_1582316
#print axioms cover_1582118

def state_1581994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 51)))
theorem cover_1581994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581994 := by
  apply coveredState_split_literal (state := state_1581994) 4
    state_1581995 state_1582118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581995
  · exact cover_1582118
#print axioms cover_1581994

def state_1581962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 51)))
theorem cover_1581962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581962 := by
  apply coveredState_split_literal (state := state_1581962) 2
    state_1581963 state_1581994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581963
  · exact cover_1581994
#print axioms cover_1581962

def state_1582466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 97 else (if j.val < 4 then 107 else 102)))
theorem cover_1582466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582466 := by
  apply coveredState_split_literal (state := state_1582466) 0
    state_1582467 state_1582524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582467
  · exact cover_1582524
#print axioms cover_1582466

def state_1582450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 102)))
theorem cover_1582450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582450 := by
  apply coveredState_split_literal (state := state_1582450) 3
    state_1582451 state_1582466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582451
  · exact cover_1582466
#print axioms cover_1582450

def state_1582449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 51)))
theorem cover_1582449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582449 := by
  apply coveredState_split_literal (state := state_1582449) 4
    state_1582450 state_1582541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582450
  · exact cover_1582541
#print axioms cover_1582449

def state_1582437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 51)))
theorem cover_1582437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582437 := by
  apply coveredState_split_literal (state := state_1582437) 2
    state_1582438 state_1582449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582438
  · exact cover_1582449
#print axioms cover_1582437

def state_1581961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 51)))
theorem cover_1581961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581961 := by
  apply coveredState_split_literal (state := state_1581961) 1
    state_1581962 state_1582437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581962
  · exact cover_1582437
#print axioms cover_1581961

def state_1581611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 51)))
theorem cover_1581611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581611 := by
  apply coveredState_split_literal (state := state_1581611) 0
    state_1581612 state_1581961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581612
  · exact cover_1581961
#print axioms cover_1581611

def state_1581263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 51)))
theorem cover_1581263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581263 := by
  apply coveredState_split_literal (state := state_1581263) 3
    state_1581264 state_1581611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581264
  · exact cover_1581611
#print axioms cover_1581263

def state_1581167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 25)))
theorem cover_1581167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581167 := by
  apply coveredState_split_literal (state := state_1581167) 4
    state_1581168 state_1581263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581168
  · exact cover_1581263
#print axioms cover_1581167

def state_1582635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 52 else 51)))
theorem cover_1582635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582635 := by
  apply coveredState_split_literal (state := state_1582635) 0
    state_1582636 state_1582655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582636
  · exact cover_1582655
#print axioms cover_1582635

def state_1582770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 98 else (if j.val < 4 then 53 else 103)))
theorem cover_1582770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582770 := by
  apply coveredState_split_literal (state := state_1582770) 3
    state_1582771 state_1582810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582771
  · exact cover_1582810
#print axioms cover_1582770

def state_1582758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 98 else (if j.val < 4 then 53 else 51)))
theorem cover_1582758 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582758 := by
  apply coveredState_split_literal (state := state_1582758) 4
    state_1582759 state_1582770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582759
  · exact cover_1582770
#print axioms cover_1582758

def state_1582757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 49 else (if j.val < 4 then 53 else 51)))
theorem cover_1582757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582757 := by
  apply coveredState_split_literal (state := state_1582757) 2
    state_1582758 state_1582849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582758
  · exact cover_1582849
#print axioms cover_1582757

def state_1582864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 53 else 102)))
theorem cover_1582864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582864 := by
  apply coveredState_split_literal (state := state_1582864) 3
    state_1582865 state_1582884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582865
  · exact cover_1582884
#print axioms cover_1582864

def state_1582955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 107 else 103)))
theorem cover_1582955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582955 := by
  apply coveredState_split_literal (state := state_1582955) 0
    state_1582956 state_1582969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582956
  · exact cover_1582969
#print axioms cover_1582955

def state_1582929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 53 else 103)))
theorem cover_1582929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582929 := by
  apply coveredState_split_literal (state := state_1582929) 3
    state_1582930 state_1582955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582930
  · exact cover_1582955
#print axioms cover_1582929

def state_1582863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 53 else 51)))
theorem cover_1582863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582863 := by
  apply coveredState_split_literal (state := state_1582863) 4
    state_1582864 state_1582929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582864
  · exact cover_1582929
#print axioms cover_1582863

def state_1582862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 49 else (if j.val < 4 then 53 else 51)))
theorem cover_1582862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582862 := by
  apply coveredState_split_literal (state := state_1582862) 2
    state_1582863 state_1583022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582863
  · exact cover_1583022
#print axioms cover_1582862
end Mub6.Numerical.CircleFullD0.Forest
