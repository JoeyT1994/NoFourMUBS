import CircleFullInterface
import CircleForestAssembly0495
import CircleForestChunk1949
import CircleForestChunk1950
import CircleForestChunk1951
import CircleForestChunk1952
import CircleForestChunk1953
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2548353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2548353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548353 := by
  apply coveredState_split_literal (state := state_2548353) 3
    state_2548354 state_2548437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548354
  · exact cover_2548437
#print axioms cover_2548353

def state_2548329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2548329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548329 := by
  apply coveredState_split_literal (state := state_2548329) 2
    state_2548330 state_2548353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548330
  · exact cover_2548353
#print axioms cover_2548329

def state_2548217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2548217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548217 := by
  apply coveredState_split_literal (state := state_2548217) 1
    state_2548218 state_2548329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548218
  · exact cover_2548329
#print axioms cover_2548217

def state_2547975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2547975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547975 := by
  apply coveredState_split_literal (state := state_2547975) 0
    state_2547976 state_2548217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2547976
  · exact cover_2548217
#print axioms cover_2547975

def state_2548572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_2548572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548572 := by
  apply coveredState_split_literal (state := state_2548572) 2
    state_2548573 state_2548600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548573
  · exact cover_2548600
#print axioms cover_2548572

def state_2548512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_2548512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548512 := by
  apply coveredState_split_literal (state := state_2548512) 1
    state_2548513 state_2548572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548513
  · exact cover_2548572
#print axioms cover_2548512

def state_2548511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_2548511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548511 := by
  apply coveredState_split_literal (state := state_2548511) 4
    state_2548512 state_2548647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548512
  · exact cover_2548647
#print axioms cover_2548511

def state_2548497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_2548497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548497 := by
  apply coveredState_split_literal (state := state_2548497) 3
    state_2548498 state_2548511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548498
  · exact cover_2548511
#print axioms cover_2548497

def state_2548477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2548477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548477 := by
  apply coveredState_split_literal (state := state_2548477) 2
    state_2548478 state_2548497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548478
  · exact cover_2548497
#print axioms cover_2548477

def state_2548451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2548451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548451 := by
  apply coveredState_split_literal (state := state_2548451) 1
    state_2548452 state_2548477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548452
  · exact cover_2548477
#print axioms cover_2548451

def state_2548650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2548650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548650 := by
  apply coveredState_split_literal (state := state_2548650) 1
    state_2548651 state_2548666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548651
  · exact cover_2548666
#print axioms cover_2548650

def state_2548450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2548450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548450 := by
  apply coveredState_split_literal (state := state_2548450) 0
    state_2548451 state_2548650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548451
  · exact cover_2548650
#print axioms cover_2548450

def state_2547974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_2547974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547974 := by
  apply coveredState_split_literal (state := state_2547974) 4
    state_2547975 state_2548450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2547975
  · exact cover_2548450
#print axioms cover_2547974

def state_2546294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2546294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546294 := by
  apply coveredState_split_literal (state := state_2546294) 3
    state_2546295 state_2547974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546295
  · exact cover_2547974
#print axioms cover_2546294

def state_2548777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_2548777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548777 := by
  apply coveredState_split_literal (state := state_2548777) 4
    state_2548778 state_2548803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548778
  · exact cover_2548803
#print axioms cover_2548777

def state_2548761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_2548761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548761 := by
  apply coveredState_split_literal (state := state_2548761) 3
    state_2548762 state_2548777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548762
  · exact cover_2548777
#print axioms cover_2548761

def state_2548886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_2548886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548886 := by
  apply coveredState_split_literal (state := state_2548886) 3
    state_2548887 state_2548906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548887
  · exact cover_2548906
#print axioms cover_2548886

def state_2548868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_2548868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548868 := by
  apply coveredState_split_literal (state := state_2548868) 1
    state_2548869 state_2548886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548869
  · exact cover_2548886
#print axioms cover_2548868

def state_2548854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_2548854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548854 := by
  apply coveredState_split_literal (state := state_2548854) 4
    state_2548855 state_2548868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548855
  · exact cover_2548868
#print axioms cover_2548854

def state_2548842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_2548842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548842 := by
  apply coveredState_split_literal (state := state_2548842) 3
    state_2548843 state_2548854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548843
  · exact cover_2548854
#print axioms cover_2548842

def state_2548760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2548760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548760 := by
  apply coveredState_split_literal (state := state_2548760) 2
    state_2548761 state_2548842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548761
  · exact cover_2548842
#print axioms cover_2548760

def state_2548732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2548732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548732 := by
  apply coveredState_split_literal (state := state_2548732) 1
    state_2548733 state_2548760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548733
  · exact cover_2548760
#print axioms cover_2548732

def state_2548973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_2548973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548973 := by
  apply coveredState_split_literal (state := state_2548973) 4
    state_2548974 state_2549027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548974
  · exact cover_2549027
#print axioms cover_2548973

def state_2548961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_2548961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548961 := by
  apply coveredState_split_literal (state := state_2548961) 3
    state_2548962 state_2548973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548962
  · exact cover_2548973
#print axioms cover_2548961

def state_2548960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2548960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548960 := by
  apply coveredState_split_literal (state := state_2548960) 2
    state_2548961 state_2549068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548961
  · exact cover_2549068
#print axioms cover_2548960

def state_2549098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_2549098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549098 := by
  apply coveredState_split_literal (state := state_2549098) 4
    state_2549099 state_2549132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549099
  · exact cover_2549132
#print axioms cover_2549098

def state_2549076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_2549076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549076 := by
  apply coveredState_split_literal (state := state_2549076) 3
    state_2549077 state_2549098
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549077
  · exact cover_2549098
#print axioms cover_2549076

def state_2549075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2549075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549075 := by
  apply coveredState_split_literal (state := state_2549075) 2
    state_2549076 state_2549169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549076
  · exact cover_2549169
#print axioms cover_2549075

def state_2548959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2548959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548959 := by
  apply coveredState_split_literal (state := state_2548959) 1
    state_2548960 state_2549075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548960
  · exact cover_2549075
#print axioms cover_2548959

def state_2548731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2548731 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548731 := by
  apply coveredState_split_literal (state := state_2548731) 0
    state_2548732 state_2548959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548732
  · exact cover_2548959
#print axioms cover_2548731

def state_2549186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2549186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549186 := by
  apply coveredState_split_literal (state := state_2549186) 0
    state_2549187 state_2549212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549187
  · exact cover_2549212
#print axioms cover_2549186

def state_2548730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_2548730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548730 := by
  apply coveredState_split_literal (state := state_2548730) 4
    state_2548731 state_2549186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548731
  · exact cover_2549186
#print axioms cover_2548730
end Mub6.Numerical.CircleFullD0.Forest
