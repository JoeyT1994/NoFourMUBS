import CircleFullInterface
import CircleForestAssembly0331
import CircleForestChunk1286
import CircleForestChunk1287
import CircleForestChunk1288
import CircleForestChunk1289
import CircleForestChunk1290
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1609230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 49)))
theorem cover_1609230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609230 := by
  apply coveredState_split_literal (state := state_1609230) 1
    state_1609231 state_1609384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609231
  · exact cover_1609384
#print axioms cover_1609230

def state_1609216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 49)))
theorem cover_1609216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609216 := by
  apply coveredState_split_literal (state := state_1609216) 2
    state_1609217 state_1609230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609217
  · exact cover_1609230
#print axioms cover_1609216

def state_1609215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 49)))
theorem cover_1609215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609215 := by
  apply coveredState_split_literal (state := state_1609215) 0
    state_1609216 state_1609445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609216
  · exact cover_1609445
#print axioms cover_1609215

def state_1609187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 24)))
theorem cover_1609187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609187 := by
  apply coveredState_split_literal (state := state_1609187) 4
    state_1609188 state_1609215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609188
  · exact cover_1609215
#print axioms cover_1609187

def state_1609541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 62 else 99)))
theorem cover_1609541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609541 := by
  apply coveredState_split_literal (state := state_1609541) 0
    state_1609542 state_1609593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609542
  · exact cover_1609593
#print axioms cover_1609541

def state_1609507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 62 else 49)))
theorem cover_1609507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609507 := by
  apply coveredState_split_literal (state := state_1609507) 4
    state_1609508 state_1609541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609508
  · exact cover_1609541
#print axioms cover_1609507

def state_1609632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 63 else 49)))
theorem cover_1609632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609632 := by
  apply coveredState_split_literal (state := state_1609632) 4
    state_1609633 state_1609674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609633
  · exact cover_1609674
#print axioms cover_1609632

def state_1609506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 49)))
theorem cover_1609506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609506 := by
  apply coveredState_split_literal (state := state_1609506) 3
    state_1609507 state_1609632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609507
  · exact cover_1609632
#print axioms cover_1609506

def state_1609505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 49)))
theorem cover_1609505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609505 := by
  apply coveredState_split_literal (state := state_1609505) 1
    state_1609506 state_1609709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609506
  · exact cover_1609709
#print axioms cover_1609505

def state_1609493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 49)))
theorem cover_1609493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609493 := by
  apply coveredState_split_literal (state := state_1609493) 2
    state_1609494 state_1609505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609494
  · exact cover_1609505
#print axioms cover_1609493

def state_1609492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 49)))
theorem cover_1609492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609492 := by
  apply coveredState_split_literal (state := state_1609492) 0
    state_1609493 state_1609718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609493
  · exact cover_1609718
#print axioms cover_1609492

def state_1609450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 24)))
theorem cover_1609450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609450 := by
  apply coveredState_split_literal (state := state_1609450) 4
    state_1609451 state_1609492
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609451
  · exact cover_1609492
#print axioms cover_1609450

def state_1609186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
theorem cover_1609186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609186 := by
  apply coveredState_split_literal (state := state_1609186) 3
    state_1609187 state_1609450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609187
  · exact cover_1609450
#print axioms cover_1609186

def state_1609185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
theorem cover_1609185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609185 := by
  apply coveredState_split_literal (state := state_1609185) 1
    state_1609186 state_1609753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609186
  · exact cover_1609753
#print axioms cover_1609185

def state_1609887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 61 else 100)))
theorem cover_1609887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609887 := by
  apply coveredState_split_literal (state := state_1609887) 3
    state_1609888 state_1609933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609888
  · exact cover_1609933
#print axioms cover_1609887

def state_1609839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 61 else 100)))
theorem cover_1609839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609839 := by
  apply coveredState_split_literal (state := state_1609839) 1
    state_1609840 state_1609887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609840
  · exact cover_1609887
#print axioms cover_1609839

def state_1609831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 100)))
theorem cover_1609831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609831 := by
  apply coveredState_split_literal (state := state_1609831) 2
    state_1609832 state_1609839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609832
  · exact cover_1609839
#print axioms cover_1609831

def state_1609830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 100)))
theorem cover_1609830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609830 := by
  apply coveredState_split_literal (state := state_1609830) 0
    state_1609831 state_1609956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609831
  · exact cover_1609956
#print axioms cover_1609830

def state_1609829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 50)))
theorem cover_1609829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609829 := by
  apply coveredState_split_literal (state := state_1609829) 4
    state_1609830 state_1609975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609830
  · exact cover_1609975
#print axioms cover_1609829

def state_1609765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 50)))
theorem cover_1609765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609765 := by
  apply coveredState_split_literal (state := state_1609765) 3
    state_1609766 state_1609829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609766
  · exact cover_1609829
#print axioms cover_1609765

def state_1609764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 50)))
theorem cover_1609764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609764 := by
  apply coveredState_split_literal (state := state_1609764) 1
    state_1609765 state_1610002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609765
  · exact cover_1610002
#print axioms cover_1609764

def state_1609763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 25)))
theorem cover_1609763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609763 := by
  apply coveredState_split_literal (state := state_1609763) 4
    state_1609764 state_1610021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609764
  · exact cover_1610021
#print axioms cover_1609763

def state_1609757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 25)))
theorem cover_1609757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609757 := by
  apply coveredState_split_literal (state := state_1609757) 2
    state_1609758 state_1609763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609758
  · exact cover_1609763
#print axioms cover_1609757

def state_1609756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 25)))
theorem cover_1609756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609756 := by
  apply coveredState_split_literal (state := state_1609756) 0
    state_1609757 state_1610022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609757
  · exact cover_1610022
#print axioms cover_1609756

def state_1610043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 62 else 50)))
theorem cover_1610043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610043 := by
  apply coveredState_split_literal (state := state_1610043) 4
    state_1610044 state_1610095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610044
  · exact cover_1610095
#print axioms cover_1610043

def state_1610042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 50)))
theorem cover_1610042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610042 := by
  apply coveredState_split_literal (state := state_1610042) 3
    state_1610043 state_1610116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610043
  · exact cover_1610116
#print axioms cover_1610042

def state_1610041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 50)))
theorem cover_1610041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610041 := by
  apply coveredState_split_literal (state := state_1610041) 1
    state_1610042 state_1610137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610042
  · exact cover_1610137
#print axioms cover_1610041

def state_1610040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 25)))
theorem cover_1610040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610040 := by
  apply coveredState_split_literal (state := state_1610040) 4
    state_1610041 state_1610138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610041
  · exact cover_1610138
#print axioms cover_1610040

def state_1610034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 25)))
theorem cover_1610034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610034 := by
  apply coveredState_split_literal (state := state_1610034) 2
    state_1610035 state_1610040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610035
  · exact cover_1610040
#print axioms cover_1610034

def state_1610033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 25)))
theorem cover_1610033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610033 := by
  apply coveredState_split_literal (state := state_1610033) 0
    state_1610034 state_1610147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610034
  · exact cover_1610147
#print axioms cover_1610033

def state_1609755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
theorem cover_1609755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609755 := by
  apply coveredState_split_literal (state := state_1609755) 3
    state_1609756 state_1610033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609756
  · exact cover_1610033
#print axioms cover_1609755

def state_1609754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
theorem cover_1609754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609754 := by
  apply coveredState_split_literal (state := state_1609754) 1
    state_1609755 state_1610186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609755
  · exact cover_1610186
#print axioms cover_1609754
end Mub6.Numerical.CircleFullD0.Forest
