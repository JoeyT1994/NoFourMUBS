import D0FullInterface
import D0ForestAssembly0421
import D0ForestChunk1646
import D0ForestChunk1647
import D0ForestChunk1648
import D0ForestChunk1649
import D0ForestChunk1650
import D0ForestChunk1651
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2268466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 56)))
theorem cover_2268466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268466 := by
  apply coveredState_split_literal (state := state_2268466) 0
    state_2268467 state_2268530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268467
  · exact cover_2268530
#print axioms cover_2268466

def state_2268465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 28)))
theorem cover_2268465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268465 := by
  apply coveredState_split_literal (state := state_2268465) 4
    state_2268466 state_2268673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268466
  · exact cover_2268673
#print axioms cover_2268465

def state_2268289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 28)))
theorem cover_2268289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268289 := by
  apply coveredState_split_literal (state := state_2268289) 1
    state_2268290 state_2268465
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268290
  · exact cover_2268465
#print axioms cover_2268289

def state_2268177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 28)))
theorem cover_2268177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268177 := by
  apply coveredState_split_literal (state := state_2268177) 3
    state_2268178 state_2268289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268178
  · exact cover_2268289
#print axioms cover_2268177

def state_2268755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 28)))
theorem cover_2268755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268755 := by
  apply coveredState_split_literal (state := state_2268755) 4
    state_2268756 state_2268795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268756
  · exact cover_2268795
#print axioms cover_2268755

def state_2268847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 56)))
theorem cover_2268847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268847 := by
  apply coveredState_split_literal (state := state_2268847) 2
    state_2268848 state_2268911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268848
  · exact cover_2268911
#print axioms cover_2268847

def state_2268837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 56)))
theorem cover_2268837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268837 := by
  apply coveredState_split_literal (state := state_2268837) 0
    state_2268838 state_2268847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268838
  · exact cover_2268847
#print axioms cover_2268837

def state_2268836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 28)))
theorem cover_2268836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268836 := by
  apply coveredState_split_literal (state := state_2268836) 4
    state_2268837 state_2268918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268837
  · exact cover_2268918
#print axioms cover_2268836

def state_2268754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 28)))
theorem cover_2268754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268754 := by
  apply coveredState_split_literal (state := state_2268754) 1
    state_2268755 state_2268836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268755
  · exact cover_2268836
#print axioms cover_2268754

def state_2268698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 28)))
theorem cover_2268698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268698 := by
  apply coveredState_split_literal (state := state_2268698) 3
    state_2268699 state_2268754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268699
  · exact cover_2268754
#print axioms cover_2268698

def state_2268176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 28)))
theorem cover_2268176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268176 := by
  apply coveredState_split_literal (state := state_2268176) 2
    state_2268177 state_2268698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268177
  · exact cover_2268698
#print axioms cover_2268176

def state_2268991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 29)))
theorem cover_2268991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268991 := by
  apply coveredState_split_literal (state := state_2268991) 3
    state_2268992 state_2269019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268992
  · exact cover_2269019
#print axioms cover_2268991

def state_2268979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 29)))
theorem cover_2268979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268979 := by
  apply coveredState_split_literal (state := state_2268979) 2
    state_2268980 state_2268991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268980
  · exact cover_2268991
#print axioms cover_2268979

def state_2268175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2268175 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268175 := by
  apply coveredState_split_literal (state := state_2268175) 4
    state_2268176 state_2268979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268176
  · exact cover_2268979
#print axioms cover_2268175

def state_2269071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 28)))
theorem cover_2269071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269071 := by
  apply coveredState_split_literal (state := state_2269071) 0
    state_2269072 state_2269127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269072
  · exact cover_2269127
#print axioms cover_2269071

def state_2269065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 28)))
theorem cover_2269065 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269065 := by
  apply coveredState_split_literal (state := state_2269065) 1
    state_2269066 state_2269071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269066
  · exact cover_2269071
#print axioms cover_2269065

def state_2269157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 90 else 56)))
theorem cover_2269157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269157 := by
  apply coveredState_split_literal (state := state_2269157) 2
    state_2269158 state_2269167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269158
  · exact cover_2269167
#print axioms cover_2269157

def state_2269156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 56)))
theorem cover_2269156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269156 := by
  apply coveredState_split_literal (state := state_2269156) 3
    state_2269157 state_2269226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269157
  · exact cover_2269226
#print axioms cover_2269156

def state_2269155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 28)))
theorem cover_2269155 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269155 := by
  apply coveredState_split_literal (state := state_2269155) 4
    state_2269156 state_2269245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269156
  · exact cover_2269245
#print axioms cover_2269155

def state_2269154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 28)))
theorem cover_2269154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269154 := by
  apply coveredState_split_literal (state := state_2269154) 0
    state_2269155 state_2269254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269155
  · exact cover_2269254
#print axioms cover_2269154

def state_2269140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 28)))
theorem cover_2269140 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269140 := by
  apply coveredState_split_literal (state := state_2269140) 1
    state_2269141 state_2269154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269141
  · exact cover_2269154
#print axioms cover_2269140

def state_2269064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 28)))
theorem cover_2269064 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269064 := by
  apply coveredState_split_literal (state := state_2269064) 3
    state_2269065 state_2269140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269065
  · exact cover_2269140
#print axioms cover_2269064

def state_2269388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 57)))
theorem cover_2269388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269388 := by
  apply coveredState_split_literal (state := state_2269388) 2
    state_2269389 state_2269428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269389
  · exact cover_2269428
#print axioms cover_2269388

def state_2269332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 28)))
theorem cover_2269332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269332 := by
  apply coveredState_split_literal (state := state_2269332) 4
    state_2269333 state_2269388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269333
  · exact cover_2269388
#print axioms cover_2269332

def state_2269331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 28)))
theorem cover_2269331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269331 := by
  apply coveredState_split_literal (state := state_2269331) 0
    state_2269332 state_2269455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269332
  · exact cover_2269455
#print axioms cover_2269331

def state_2269321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 28)))
theorem cover_2269321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269321 := by
  apply coveredState_split_literal (state := state_2269321) 1
    state_2269322 state_2269331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269322
  · exact cover_2269331
#print axioms cover_2269321

def state_2269285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 28)))
theorem cover_2269285 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269285 := by
  apply coveredState_split_literal (state := state_2269285) 3
    state_2269286 state_2269321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269286
  · exact cover_2269321
#print axioms cover_2269285

def state_2269063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 28)))
theorem cover_2269063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269063 := by
  apply coveredState_split_literal (state := state_2269063) 2
    state_2269064 state_2269285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269064
  · exact cover_2269285
#print axioms cover_2269063

def state_2269484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 29)))
theorem cover_2269484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269484 := by
  apply coveredState_split_literal (state := state_2269484) 2
    state_2269485 state_2269488
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269485
  · exact cover_2269488
#print axioms cover_2269484

def state_2269062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2269062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269062 := by
  apply coveredState_split_literal (state := state_2269062) 4
    state_2269063 state_2269484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269063
  · exact cover_2269484
#print axioms cover_2269062

def state_2268174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2268174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268174 := by
  apply coveredState_split_literal (state := state_2268174) 0
    state_2268175 state_2269062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268175
  · exact cover_2269062
#print axioms cover_2268174

def state_2269551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 28)))
theorem cover_2269551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269551 := by
  apply coveredState_split_literal (state := state_2269551) 2
    state_2269552 state_2269601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269552
  · exact cover_2269601
#print axioms cover_2269551
end Mub6.Numerical.CircleFullD0.Forest
