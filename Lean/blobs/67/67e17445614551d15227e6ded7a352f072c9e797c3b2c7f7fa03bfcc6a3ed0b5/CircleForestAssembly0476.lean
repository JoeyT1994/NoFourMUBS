import CircleFullInterface
import CircleForestAssembly0475
import CircleForestChunk1873
import CircleForestChunk1874
import CircleForestChunk1875
import CircleForestChunk1876
import CircleForestChunk1877
import CircleForestChunk1878
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2322724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 44)))
theorem cover_2322724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322724 := by
  apply coveredState_split_literal (state := state_2322724) 4
    state_2322725 state_2322858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322725
  · exact cover_2322858
#print axioms cover_2322724

def state_2322953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 44)))
theorem cover_2322953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322953 := by
  apply coveredState_split_literal (state := state_2322953) 4
    state_2322954 state_2322991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322954
  · exact cover_2322991
#print axioms cover_2322953

def state_2322723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 44)))
theorem cover_2322723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322723 := by
  apply coveredState_split_literal (state := state_2322723) 0
    state_2322724 state_2322953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322724
  · exact cover_2322953
#print axioms cover_2322723

def state_2322669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 44)))
theorem cover_2322669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322669 := by
  apply coveredState_split_literal (state := state_2322669) 3
    state_2322670 state_2322723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322670
  · exact cover_2322723
#print axioms cover_2322669

def state_2322035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 44)))
theorem cover_2322035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322035 := by
  apply coveredState_split_literal (state := state_2322035) 1
    state_2322036 state_2322669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322036
  · exact cover_2322669
#print axioms cover_2322035

def state_2323035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 88)))
theorem cover_2323035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323035 := by
  apply coveredState_split_literal (state := state_2323035) 2
    state_2323036 state_2323097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323036
  · exact cover_2323097
#print axioms cover_2323035

def state_2323034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 44)))
theorem cover_2323034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323034 := by
  apply coveredState_split_literal (state := state_2323034) 4
    state_2323035 state_2323104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323035
  · exact cover_2323104
#print axioms cover_2323034

def state_2323033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 44)))
theorem cover_2323033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323033 := by
  apply coveredState_split_literal (state := state_2323033) 0
    state_2323034 state_2323117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323034
  · exact cover_2323117
#print axioms cover_2323033

def state_2323019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 44)))
theorem cover_2323019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323019 := by
  apply coveredState_split_literal (state := state_2323019) 3
    state_2323020 state_2323033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323020
  · exact cover_2323033
#print axioms cover_2323019

def state_2323146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 88)))
theorem cover_2323146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323146 := by
  apply coveredState_split_literal (state := state_2323146) 2
    state_2323147 state_2323202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323147
  · exact cover_2323202
#print axioms cover_2323146

def state_2323145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 44)))
theorem cover_2323145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323145 := by
  apply coveredState_split_literal (state := state_2323145) 4
    state_2323146 state_2323213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323146
  · exact cover_2323213
#print axioms cover_2323145

def state_2323263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 88)))
theorem cover_2323263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323263 := by
  apply coveredState_split_literal (state := state_2323263) 2
    state_2323264 state_2323321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323264
  · exact cover_2323321
#print axioms cover_2323263

def state_2323262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 44)))
theorem cover_2323262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323262 := by
  apply coveredState_split_literal (state := state_2323262) 4
    state_2323263 state_2323334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323263
  · exact cover_2323334
#print axioms cover_2323262

def state_2323144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 44)))
theorem cover_2323144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323144 := by
  apply coveredState_split_literal (state := state_2323144) 0
    state_2323145 state_2323262
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323145
  · exact cover_2323262
#print axioms cover_2323144

def state_2323122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 44)))
theorem cover_2323122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323122 := by
  apply coveredState_split_literal (state := state_2323122) 3
    state_2323123 state_2323144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323123
  · exact cover_2323144
#print axioms cover_2323122

def state_2323018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 44)))
theorem cover_2323018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323018 := by
  apply coveredState_split_literal (state := state_2323018) 1
    state_2323019 state_2323122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323019
  · exact cover_2323122
#print axioms cover_2323018

def state_2322034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 44)))
theorem cover_2322034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322034 := by
  apply coveredState_split_literal (state := state_2322034) 2
    state_2322035 state_2323018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322035
  · exact cover_2323018
#print axioms cover_2322034

def state_2323366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 45)))
theorem cover_2323366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323366 := by
  apply coveredState_split_literal (state := state_2323366) 1
    state_2323367 state_2323398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323367
  · exact cover_2323398
#print axioms cover_2323366

def state_2323365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 45)))
theorem cover_2323365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323365 := by
  apply coveredState_split_literal (state := state_2323365) 2
    state_2323366 state_2323441
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323366
  · exact cover_2323441
#print axioms cover_2323365

def state_2322033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
theorem cover_2322033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322033 := by
  apply coveredState_split_literal (state := state_2322033) 4
    state_2322034 state_2323365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322034
  · exact cover_2323365
#print axioms cover_2322033

def state_2321579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
theorem cover_2321579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321579 := by
  apply coveredState_split_literal (state := state_2321579) 0
    state_2321580 state_2322033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321580
  · exact cover_2322033
#print axioms cover_2321579

def state_2323462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 44)))
theorem cover_2323462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323462 := by
  apply coveredState_split_literal (state := state_2323462) 2
    state_2323463 state_2323486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323463
  · exact cover_2323486
#print axioms cover_2323462

def state_2323461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
theorem cover_2323461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323461 := by
  apply coveredState_split_literal (state := state_2323461) 4
    state_2323462 state_2323531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323462
  · exact cover_2323531
#print axioms cover_2323461

def state_2323568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 113) else (if j.val < 3 then 85 else (if j.val < 4 then 62 else 88)))
theorem cover_2323568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323568 := by
  apply coveredState_split_literal (state := state_2323568) 3
    state_2323569 state_2323630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323569
  · exact cover_2323630
#print axioms cover_2323568

def state_2323560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 85 else (if j.val < 4 then 62 else 88)))
theorem cover_2323560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323560 := by
  apply coveredState_split_literal (state := state_2323560) 1
    state_2323561 state_2323568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323561
  · exact cover_2323568
#print axioms cover_2323560

def state_2323540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 62 else 88)))
theorem cover_2323540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323540 := by
  apply coveredState_split_literal (state := state_2323540) 2
    state_2323541 state_2323560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323541
  · exact cover_2323560
#print axioms cover_2323540

def state_2323539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 62 else 44)))
theorem cover_2323539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323539 := by
  apply coveredState_split_literal (state := state_2323539) 4
    state_2323540 state_2323639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323540
  · exact cover_2323639
#print axioms cover_2323539

def state_2323538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 62 else 44)))
theorem cover_2323538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323538 := by
  apply coveredState_split_literal (state := state_2323538) 0
    state_2323539 state_2323670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323539
  · exact cover_2323670
#print axioms cover_2323538

def state_2323537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 31 else 44)))
theorem cover_2323537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323537 := by
  apply coveredState_split_literal (state := state_2323537) 3
    state_2323538 state_2323719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323538
  · exact cover_2323719
#print axioms cover_2323537

def state_2323738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 62 else 44)))
theorem cover_2323738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323738 := by
  apply coveredState_split_literal (state := state_2323738) 4
    state_2323739 state_2323802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323739
  · exact cover_2323802
#print axioms cover_2323738

def state_2323737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 62 else 44)))
theorem cover_2323737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323737 := by
  apply coveredState_split_literal (state := state_2323737) 0
    state_2323738 state_2323829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323738
  · exact cover_2323829
#print axioms cover_2323737

def state_2323736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 31 else 44)))
theorem cover_2323736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323736 := by
  apply coveredState_split_literal (state := state_2323736) 3
    state_2323737 state_2323872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323737
  · exact cover_2323872
#print axioms cover_2323736
end Mub6.Numerical.CircleFullD0.Forest
