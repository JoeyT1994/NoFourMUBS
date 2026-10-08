import CircleFullInterface
import CircleForestAssembly0485
import CircleForestChunk1911
import CircleForestChunk1912
import CircleForestChunk1913
import CircleForestChunk1914
import CircleForestChunk1915
import CircleForestChunk1916
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2331882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_2331882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331882 := by
  apply coveredState_split_literal (state := state_2331882) 4
    state_2331883 state_2331910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331883
  · exact cover_2331910
#print axioms cover_2331882

def state_2331862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_2331862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331862 := by
  apply coveredState_split_literal (state := state_2331862) 3
    state_2331863 state_2331882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331863
  · exact cover_2331882
#print axioms cover_2331862

def state_2331861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2331861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331861 := by
  apply coveredState_split_literal (state := state_2331861) 2
    state_2331862 state_2331999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331862
  · exact cover_2331999
#print axioms cover_2331861

def state_2332009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_2332009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332009 := by
  apply coveredState_split_literal (state := state_2332009) 3
    state_2332010 state_2332039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332010
  · exact cover_2332039
#print axioms cover_2332009

def state_2332008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2332008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332008 := by
  apply coveredState_split_literal (state := state_2332008) 2
    state_2332009 state_2332078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332009
  · exact cover_2332078
#print axioms cover_2332008

def state_2331860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2331860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331860 := by
  apply coveredState_split_literal (state := state_2331860) 1
    state_2331861 state_2332008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331861
  · exact cover_2332008
#print axioms cover_2331860

def state_2332223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
theorem cover_2332223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332223 := by
  apply coveredState_split_literal (state := state_2332223) 4
    state_2332224 state_2332251
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332224
  · exact cover_2332251
#print axioms cover_2332223

def state_2332167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 7)))
theorem cover_2332167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332167 := by
  apply coveredState_split_literal (state := state_2332167) 3
    state_2332168 state_2332223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332168
  · exact cover_2332223
#print axioms cover_2332167

def state_2332166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_2332166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332166 := by
  apply coveredState_split_literal (state := state_2332166) 2
    state_2332167 state_2332302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332167
  · exact cover_2332302
#print axioms cover_2332166

def state_2332158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_2332158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332158 := by
  apply coveredState_split_literal (state := state_2332158) 1
    state_2332159 state_2332166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332159
  · exact cover_2332166
#print axioms cover_2332158

def state_2332157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_2332157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332157 := by
  apply coveredState_split_literal (state := state_2332157) 0
    state_2332158 state_2332307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332158
  · exact cover_2332307
#print axioms cover_2332157

def state_2332141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_2332141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332141 := by
  apply coveredState_split_literal (state := state_2332141) 4
    state_2332142 state_2332157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332142
  · exact cover_2332157
#print axioms cover_2332141

def state_2332087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_2332087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332087 := by
  apply coveredState_split_literal (state := state_2332087) 3
    state_2332088 state_2332141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332088
  · exact cover_2332141
#print axioms cover_2332087

def state_2332086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2332086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332086 := by
  apply coveredState_split_literal (state := state_2332086) 2
    state_2332087 state_2332332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332087
  · exact cover_2332332
#print axioms cover_2332086

def state_2332543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 43 else 31)))
theorem cover_2332543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332543 := by
  apply coveredState_split_literal (state := state_2332543) 1
    state_2332544 state_2332559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332544
  · exact cover_2332559
#print axioms cover_2332543

def state_2332539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 21 else 31)))
theorem cover_2332539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332539 := by
  apply coveredState_split_literal (state := state_2332539) 3
    state_2332540 state_2332543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332540
  · exact cover_2332543
#print axioms cover_2332539

def state_2332519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 21 else 31)))
theorem cover_2332519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332519 := by
  apply coveredState_split_literal (state := state_2332519) 0
    state_2332520 state_2332539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332520
  · exact cover_2332539
#print axioms cover_2332519

def state_2332518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 21 else 31)))
theorem cover_2332518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332518 := by
  apply coveredState_split_literal (state := state_2332518) 2
    state_2332519 state_2332614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332519
  · exact cover_2332614
#print axioms cover_2332518

def state_2332486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 21 else 15)))
theorem cover_2332486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332486 := by
  apply coveredState_split_literal (state := state_2332486) 4
    state_2332487 state_2332518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332487
  · exact cover_2332518
#print axioms cover_2332486

def state_2332485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 21 else 15)))
theorem cover_2332485 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332485 := by
  apply coveredState_split_literal (state := state_2332485) 1
    state_2332486 state_2332623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332486
  · exact cover_2332623
#print axioms cover_2332485

def state_2332479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 10 else 15)))
theorem cover_2332479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332479 := by
  apply coveredState_split_literal (state := state_2332479) 3
    state_2332480 state_2332485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332480
  · exact cover_2332485
#print axioms cover_2332479

def state_2332449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 10 else 15)))
theorem cover_2332449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332449 := by
  apply coveredState_split_literal (state := state_2332449) 0
    state_2332450 state_2332479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332450
  · exact cover_2332479
#print axioms cover_2332449

def state_2332448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 15)))
theorem cover_2332448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332448 := by
  apply coveredState_split_literal (state := state_2332448) 2
    state_2332449 state_2332672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332449
  · exact cover_2332672
#print axioms cover_2332448

def state_2332404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 7)))
theorem cover_2332404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332404 := by
  apply coveredState_split_literal (state := state_2332404) 4
    state_2332405 state_2332448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332405
  · exact cover_2332448
#print axioms cover_2332404

def state_2332403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 7)))
theorem cover_2332403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332403 := by
  apply coveredState_split_literal (state := state_2332403) 1
    state_2332404 state_2332687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332404
  · exact cover_2332687
#print axioms cover_2332403

def state_2332917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 96 else (if j.val < 4 then 44 else 63)))
theorem cover_2332917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332917 := by
  apply coveredState_split_literal (state := state_2332917) 3
    state_2332918 state_2332973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332918
  · exact cover_2332973
#print axioms cover_2332917

def state_2332916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 63)))
theorem cover_2332916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332916 := by
  apply coveredState_split_literal (state := state_2332916) 2
    state_2332917 state_2333010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332917
  · exact cover_2333010
#print axioms cover_2332916

def state_2332852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 31)))
theorem cover_2332852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332852 := by
  apply coveredState_split_literal (state := state_2332852) 4
    state_2332853 state_2332916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332853
  · exact cover_2332916
#print axioms cover_2332852

def state_2332830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 31)))
theorem cover_2332830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332830 := by
  apply coveredState_split_literal (state := state_2332830) 1
    state_2332831 state_2332852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332831
  · exact cover_2332852
#print axioms cover_2332830

def state_2332820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 31)))
theorem cover_2332820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332820 := by
  apply coveredState_split_literal (state := state_2332820) 0
    state_2332821 state_2332830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332821
  · exact cover_2332830
#print axioms cover_2332820

def state_2332819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 31)))
theorem cover_2332819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332819 := by
  apply coveredState_split_literal (state := state_2332819) 3
    state_2332820 state_2333021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332820
  · exact cover_2333021
#print axioms cover_2332819

def state_2332818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 31)))
theorem cover_2332818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332818 := by
  apply coveredState_split_literal (state := state_2332818) 2
    state_2332819 state_2333060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332819
  · exact cover_2333060
#print axioms cover_2332818
end Mub6.Numerical.CircleFullD0.Forest
