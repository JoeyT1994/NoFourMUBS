import CircleFullInterface
import CircleForestAssembly0016
import CircleForestChunk0068
import CircleForestChunk0069
import CircleForestChunk0070
import CircleForestChunk0071
import CircleForestChunk0072
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_15946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_15946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15946 := by
  apply coveredState_split_literal (state := state_15946) 2
    state_15947 state_16074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15947
  · exact cover_16074
#print axioms cover_15946

def state_16276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_16276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16276 := by
  apply coveredState_split_literal (state := state_16276) 0
    state_16277 state_16312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16277
  · exact cover_16312
#print axioms cover_16276

def state_16382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 10)))
theorem cover_16382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16382 := by
  apply coveredState_split_literal (state := state_16382) 1
    state_16383 state_16426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16383
  · exact cover_16426
#print axioms cover_16382

def state_16381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 5)))
theorem cover_16381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16381 := by
  apply coveredState_split_literal (state := state_16381) 4
    state_16382 state_16447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16382
  · exact cover_16447
#print axioms cover_16381

def state_16359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
theorem cover_16359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16359 := by
  apply coveredState_split_literal (state := state_16359) 2
    state_16360 state_16381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16360
  · exact cover_16381
#print axioms cover_16359

def state_16345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
theorem cover_16345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16345 := by
  apply coveredState_split_literal (state := state_16345) 0
    state_16346 state_16359
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16346
  · exact cover_16359
#print axioms cover_16345

def state_16275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_16275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16275 := by
  apply coveredState_split_literal (state := state_16275) 4
    state_16276 state_16345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16276
  · exact cover_16345
#print axioms cover_16275

def state_16274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_16274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16274 := by
  apply coveredState_split_literal (state := state_16274) 3
    state_16275 state_16456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16275
  · exact cover_16456
#print axioms cover_16274

def state_16535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 9)))
theorem cover_16535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16535 := by
  apply coveredState_split_literal (state := state_16535) 0
    state_16536 state_16571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16536
  · exact cover_16571
#print axioms cover_16535

def state_16527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 4)))
theorem cover_16527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16527 := by
  apply coveredState_split_literal (state := state_16527) 4
    state_16528 state_16535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16528
  · exact cover_16535
#print axioms cover_16527

def state_16515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 4)))
theorem cover_16515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16515 := by
  apply coveredState_split_literal (state := state_16515) 3
    state_16516 state_16527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16516
  · exact cover_16527
#print axioms cover_16515

def state_16514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_16514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16514 := by
  apply coveredState_split_literal (state := state_16514) 2
    state_16515 state_16626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16515
  · exact cover_16626
#print axioms cover_16514

def state_16513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_16513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16513 := by
  apply coveredState_split_literal (state := state_16513) 1
    state_16514 state_16647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16514
  · exact cover_16647
#print axioms cover_16513

def state_16479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_16479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16479 := by
  apply coveredState_split_literal (state := state_16479) 0
    state_16480 state_16513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16480
  · exact cover_16513
#print axioms cover_16479

def state_16753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 10)))
theorem cover_16753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16753 := by
  apply coveredState_split_literal (state := state_16753) 4
    state_16754 state_16813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16754
  · exact cover_16813
#print axioms cover_16753

def state_16723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 10)))
theorem cover_16723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16723 := by
  apply coveredState_split_literal (state := state_16723) 0
    state_16724 state_16753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16724
  · exact cover_16753
#print axioms cover_16723

def state_16721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 10)))
theorem cover_16721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16721 := by
  apply coveredState_split_literal (state := state_16721) 3
    state_16722 state_16723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16722
  · exact cover_16723
#print axioms cover_16721

def state_16720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 10)))
theorem cover_16720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16720 := by
  apply coveredState_split_literal (state := state_16720) 2
    state_16721 state_16826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16721
  · exact cover_16826
#print axioms cover_16720

def state_16854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 10)))
theorem cover_16854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16854 := by
  apply coveredState_split_literal (state := state_16854) 4
    state_16855 state_16918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16855
  · exact cover_16918
#print axioms cover_16854

def state_16840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 10)))
theorem cover_16840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16840 := by
  apply coveredState_split_literal (state := state_16840) 0
    state_16841 state_16854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16841
  · exact cover_16854
#print axioms cover_16840

def state_16830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 10)))
theorem cover_16830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16830 := by
  apply coveredState_split_literal (state := state_16830) 3
    state_16831 state_16840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16831
  · exact cover_16840
#print axioms cover_16830

def state_16829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 10)))
theorem cover_16829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16829 := by
  apply coveredState_split_literal (state := state_16829) 2
    state_16830 state_16931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16830
  · exact cover_16931
#print axioms cover_16829

def state_16719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 10)))
theorem cover_16719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16719 := by
  apply coveredState_split_literal (state := state_16719) 1
    state_16720 state_16829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16720
  · exact cover_16829
#print axioms cover_16719

def state_16718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_16718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16718 := by
  apply coveredState_split_literal (state := state_16718) 4
    state_16719 state_16946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16719
  · exact cover_16946
#print axioms cover_16718

def state_16670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_16670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16670 := by
  apply coveredState_split_literal (state := state_16670) 0
    state_16671 state_16718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16671
  · exact cover_16718
#print axioms cover_16670

def state_16478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
theorem cover_16478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16478 := by
  apply coveredState_split_literal (state := state_16478) 4
    state_16479 state_16670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16479
  · exact cover_16670
#print axioms cover_16478

def state_17053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 9)))
theorem cover_17053 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17053 := by
  apply coveredState_split_literal (state := state_17053) 3
    state_17054 state_17115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17054
  · exact cover_17115
#print axioms cover_17053

def state_17021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 9)))
theorem cover_17021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17021 := by
  apply coveredState_split_literal (state := state_17021) 0
    state_17022 state_17053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17022
  · exact cover_17053
#print axioms cover_17021

def state_17019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 4)))
theorem cover_17019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17019 := by
  apply coveredState_split_literal (state := state_17019) 4
    state_17020 state_17021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17020
  · exact cover_17021
#print axioms cover_17019

def state_17152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 9)))
theorem cover_17152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17152 := by
  apply coveredState_split_literal (state := state_17152) 3
    state_17153 state_17216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17153
  · exact cover_17216
#print axioms cover_17152

def state_17138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 9)))
theorem cover_17138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17138 := by
  apply coveredState_split_literal (state := state_17138) 0
    state_17139 state_17152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17139
  · exact cover_17152
#print axioms cover_17138

def state_17128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 4)))
theorem cover_17128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17128 := by
  apply coveredState_split_literal (state := state_17128) 4
    state_17129 state_17138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17129
  · exact cover_17138
#print axioms cover_17128
end Mub6.Numerical.CircleFullPrototype.Forest
