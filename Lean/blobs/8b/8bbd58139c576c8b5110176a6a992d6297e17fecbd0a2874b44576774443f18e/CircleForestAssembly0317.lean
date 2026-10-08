import CircleFullInterface
import CircleForestAssembly0313
import CircleForestAssembly0314
import CircleForestAssembly0315
import CircleForestAssembly0316
import CircleForestChunk1226
import CircleForestChunk1227
import CircleForestChunk1228
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1593421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1593421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593421 := by
  apply coveredState_split_literal (state := state_1593421) 3
    state_1593422 state_1593843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593422
  · exact cover_1593843
#print axioms cover_1593421

def state_1593273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1593273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593273 := by
  apply coveredState_split_literal (state := state_1593273) 1
    state_1593274 state_1593421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593274
  · exact cover_1593421
#print axioms cover_1593273

def state_1591903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1591903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591903 := by
  apply coveredState_split_literal (state := state_1591903) 0
    state_1591904 state_1593273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591904
  · exact cover_1593273
#print axioms cover_1591903

def state_1591495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 12)))
theorem cover_1591495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591495 := by
  apply coveredState_split_literal (state := state_1591495) 4
    state_1591496 state_1591903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591496
  · exact cover_1591903
#print axioms cover_1591495

def state_1590969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
theorem cover_1590969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590969 := by
  apply coveredState_split_literal (state := state_1590969) 2
    state_1590970 state_1591495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590970
  · exact cover_1591495
#print axioms cover_1590969

def state_1594762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 49)))
theorem cover_1594762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594762 := by
  apply coveredState_split_literal (state := state_1594762) 0
    state_1594763 state_1594774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594763
  · exact cover_1594774
#print axioms cover_1594762

def state_1594728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 49)))
theorem cover_1594728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594728 := by
  apply coveredState_split_literal (state := state_1594728) 2
    state_1594729 state_1594762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594729
  · exact cover_1594762
#print axioms cover_1594728

def state_1594704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 24)))
theorem cover_1594704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594704 := by
  apply coveredState_split_literal (state := state_1594704) 4
    state_1594705 state_1594728
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594705
  · exact cover_1594728
#print axioms cover_1594704

def state_1594703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
theorem cover_1594703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594703 := by
  apply coveredState_split_literal (state := state_1594703) 3
    state_1594704 state_1594835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594704
  · exact cover_1594835
#print axioms cover_1594703

def state_1594693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
theorem cover_1594693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594693 := by
  apply coveredState_split_literal (state := state_1594693) 1
    state_1594694 state_1594703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594694
  · exact cover_1594703
#print axioms cover_1594693

def state_1594681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
theorem cover_1594681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594681 := by
  apply coveredState_split_literal (state := state_1594681) 0
    state_1594682 state_1594693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594682
  · exact cover_1594693
#print axioms cover_1594681

def state_1594976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 60 else 100)))
theorem cover_1594976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594976 := by
  apply coveredState_split_literal (state := state_1594976) 2
    state_1594977 state_1595018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594977
  · exact cover_1595018
#print axioms cover_1594976

def state_1594975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 60 else 50)))
theorem cover_1594975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594975 := by
  apply coveredState_split_literal (state := state_1594975) 4
    state_1594976 state_1595041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594976
  · exact cover_1595041
#print axioms cover_1594975

def state_1594974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 50)))
theorem cover_1594974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594974 := by
  apply coveredState_split_literal (state := state_1594974) 3
    state_1594975 state_1595062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594975
  · exact cover_1595062
#print axioms cover_1594974

def state_1594954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 50)))
theorem cover_1594954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594954 := by
  apply coveredState_split_literal (state := state_1594954) 1
    state_1594955 state_1594974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594955
  · exact cover_1594974
#print axioms cover_1594954

def state_1594942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 50)))
theorem cover_1594942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594942 := by
  apply coveredState_split_literal (state := state_1594942) 0
    state_1594943 state_1594954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594943
  · exact cover_1594954
#print axioms cover_1594942

def state_1594941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 25)))
theorem cover_1594941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594941 := by
  apply coveredState_split_literal (state := state_1594941) 4
    state_1594942 state_1595087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594942
  · exact cover_1595087
#print axioms cover_1594941

def state_1594901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 25)))
theorem cover_1594901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594901 := by
  apply coveredState_split_literal (state := state_1594901) 2
    state_1594902 state_1594941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594902
  · exact cover_1594941
#print axioms cover_1594901

def state_1594900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
theorem cover_1594900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594900 := by
  apply coveredState_split_literal (state := state_1594900) 3
    state_1594901 state_1595112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594901
  · exact cover_1595112
#print axioms cover_1594900

def state_1594870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
theorem cover_1594870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594870 := by
  apply coveredState_split_literal (state := state_1594870) 1
    state_1594871 state_1594900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594871
  · exact cover_1594900
#print axioms cover_1594870

def state_1594860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
theorem cover_1594860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594860 := by
  apply coveredState_split_literal (state := state_1594860) 0
    state_1594861 state_1594870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594861
  · exact cover_1594870
#print axioms cover_1594860

def state_1594680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 12)))
theorem cover_1594680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594680 := by
  apply coveredState_split_literal (state := state_1594680) 4
    state_1594681 state_1594860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594681
  · exact cover_1594860
#print axioms cover_1594680

def state_1594646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1594646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594646 := by
  apply coveredState_split_literal (state := state_1594646) 2
    state_1594647 state_1594680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594647
  · exact cover_1594680
#print axioms cover_1594646

def state_1590968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1590968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590968 := by
  apply coveredState_split_literal (state := state_1590968) 3
    state_1590969 state_1594646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590969
  · exact cover_1594646
#print axioms cover_1590968

def state_1590780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1590780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590780 := by
  apply coveredState_split_literal (state := state_1590780) 1
    state_1590781 state_1590968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590781
  · exact cover_1590968
#print axioms cover_1590780

def state_1595126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
theorem cover_1595126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595126 := by
  apply coveredState_split_literal (state := state_1595126) 3
    state_1595127 state_1595190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595127
  · exact cover_1595190
#print axioms cover_1595126

def state_1595194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 13)))
theorem cover_1595194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595194 := by
  apply coveredState_split_literal (state := state_1595194) 4
    state_1595195 state_1595256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595195
  · exact cover_1595256
#print axioms cover_1595194

def state_1595193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 13)))
theorem cover_1595193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595193 := by
  apply coveredState_split_literal (state := state_1595193) 0
    state_1595194 state_1595263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595194
  · exact cover_1595263
#print axioms cover_1595193

def state_1595303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 26)))
theorem cover_1595303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595303 := by
  apply coveredState_split_literal (state := state_1595303) 2
    state_1595304 state_1595341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595304
  · exact cover_1595341
#print axioms cover_1595303

def state_1595302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 26)))
theorem cover_1595302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595302 := by
  apply coveredState_split_literal (state := state_1595302) 3
    state_1595303 state_1595372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595303
  · exact cover_1595372
#print axioms cover_1595302

def state_1595272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 26)))
theorem cover_1595272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595272 := by
  apply coveredState_split_literal (state := state_1595272) 1
    state_1595273 state_1595302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595273
  · exact cover_1595302
#print axioms cover_1595272

def state_1595271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 13)))
theorem cover_1595271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595271 := by
  apply coveredState_split_literal (state := state_1595271) 4
    state_1595272 state_1595379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595272
  · exact cover_1595379
#print axioms cover_1595271
end Mub6.Numerical.CircleFullD0.Forest
