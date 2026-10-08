import CircleFullInterface
import CircleForestAssembly0091
import CircleForestAssembly0092
import CircleForestChunk0368
import CircleForestChunk0373
import CircleForestChunk0374
import CircleForestChunk0375
import CircleForestChunk0376
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1027134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 50)))
theorem cover_1027134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027134 := by
  apply coveredState_split_literal (state := state_1027134) 3
    state_1027135 state_1027196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027135
  · exact cover_1027196
#print axioms cover_1027134

def state_1027133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
theorem cover_1027133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027133 := by
  apply coveredState_split_literal (state := state_1027133) 4
    state_1027134 state_1027225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027134
  · exact cover_1027225
#print axioms cover_1027133

def state_1027115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
theorem cover_1027115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027115 := by
  apply coveredState_split_literal (state := state_1027115) 0
    state_1027116 state_1027133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027116
  · exact cover_1027133
#print axioms cover_1027115

def state_1027326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 101)))
theorem cover_1027326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027326 := by
  apply coveredState_split_literal (state := state_1027326) 3
    state_1027327 state_1027388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027327
  · exact cover_1027388
#print axioms cover_1027326

def state_1027304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 50)))
theorem cover_1027304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027304 := by
  apply coveredState_split_literal (state := state_1027304) 4
    state_1027305 state_1027326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027305
  · exact cover_1027326
#print axioms cover_1027304

def state_1027280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 50)))
theorem cover_1027280 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027280 := by
  apply coveredState_split_literal (state := state_1027280) 0
    state_1027281 state_1027304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027281
  · exact cover_1027304
#print axioms cover_1027280

def state_1027279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 50)))
theorem cover_1027279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027279 := by
  apply coveredState_split_literal (state := state_1027279) 1
    state_1027280 state_1027401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027280
  · exact cover_1027401
#print axioms cover_1027279

def state_1027278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 52 else 50)))
theorem cover_1027278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027278 := by
  apply coveredState_split_literal (state := state_1027278) 2
    state_1027279 state_1027430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027279
  · exact cover_1027430
#print axioms cover_1027278

def state_1027277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 50)))
theorem cover_1027277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027277 := by
  apply coveredState_split_literal (state := state_1027277) 3
    state_1027278 state_1027437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027278
  · exact cover_1027437
#print axioms cover_1027277

def state_1027462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 102)))
theorem cover_1027462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027462 := by
  apply coveredState_split_literal (state := state_1027462) 3
    state_1027463 state_1027520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027463
  · exact cover_1027520
#print axioms cover_1027462

def state_1027461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 51)))
theorem cover_1027461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027461 := by
  apply coveredState_split_literal (state := state_1027461) 4
    state_1027462 state_1027531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027462
  · exact cover_1027531
#print axioms cover_1027461

def state_1027449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 51)))
theorem cover_1027449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027449 := by
  apply coveredState_split_literal (state := state_1027449) 0
    state_1027450 state_1027461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027450
  · exact cover_1027461
#print axioms cover_1027449

def state_1027571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 102)))
theorem cover_1027571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027571 := by
  apply coveredState_split_literal (state := state_1027571) 3
    state_1027572 state_1027633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027572
  · exact cover_1027633
#print axioms cover_1027571

def state_1027570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 51)))
theorem cover_1027570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027570 := by
  apply coveredState_split_literal (state := state_1027570) 4
    state_1027571 state_1027636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027571
  · exact cover_1027636
#print axioms cover_1027570

def state_1027558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 51)))
theorem cover_1027558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027558 := by
  apply coveredState_split_literal (state := state_1027558) 0
    state_1027559 state_1027570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027559
  · exact cover_1027570
#print axioms cover_1027558

def state_1027448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 51)))
theorem cover_1027448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027448 := by
  apply coveredState_split_literal (state := state_1027448) 1
    state_1027449 state_1027558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027449
  · exact cover_1027558
#print axioms cover_1027448

def state_1027447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 52 else 51)))
theorem cover_1027447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027447 := by
  apply coveredState_split_literal (state := state_1027447) 2
    state_1027448 state_1027683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027448
  · exact cover_1027683
#print axioms cover_1027447

def state_1027446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 51)))
theorem cover_1027446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027446 := by
  apply coveredState_split_literal (state := state_1027446) 3
    state_1027447 state_1027700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027447
  · exact cover_1027700
#print axioms cover_1027446

def state_1027276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
theorem cover_1027276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027276 := by
  apply coveredState_split_literal (state := state_1027276) 4
    state_1027277 state_1027446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027277
  · exact cover_1027446
#print axioms cover_1027276

def state_1027258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
theorem cover_1027258 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027258 := by
  apply coveredState_split_literal (state := state_1027258) 0
    state_1027259 state_1027276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027259
  · exact cover_1027276
#print axioms cover_1027258

def state_1027114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
theorem cover_1027114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027114 := by
  apply coveredState_split_literal (state := state_1027114) 1
    state_1027115 state_1027258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027115
  · exact cover_1027258
#print axioms cover_1027114

def state_1026366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 25)))
theorem cover_1026366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026366 := by
  apply coveredState_split_literal (state := state_1026366) 2
    state_1026367 state_1027114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026367
  · exact cover_1027114
#print axioms cover_1026366

def state_1026365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 25)))
theorem cover_1026365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026365 := by
  apply coveredState_split_literal (state := state_1026365) 3
    state_1026366 state_1027717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026366
  · exact cover_1027717
#print axioms cover_1026365

def state_1025857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_1025857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025857 := by
  apply coveredState_split_literal (state := state_1025857) 4
    state_1025858 state_1026365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025858
  · exact cover_1026365
#print axioms cover_1025857

def state_1025839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_1025839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025839 := by
  apply coveredState_split_literal (state := state_1025839) 0
    state_1025840 state_1025857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025840
  · exact cover_1025857
#print axioms cover_1025839

def state_1025769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_1025769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025769 := by
  apply coveredState_split_literal (state := state_1025769) 2
    state_1025770 state_1025839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025770
  · exact cover_1025839
#print axioms cover_1025769

def state_1025167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_1025167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025167 := by
  apply coveredState_split_literal (state := state_1025167) 1
    state_1025168 state_1025769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025168
  · exact cover_1025769
#print axioms cover_1025167

def state_1027816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 26)))
theorem cover_1027816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027816 := by
  apply coveredState_split_literal (state := state_1027816) 3
    state_1027817 state_1027870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027817
  · exact cover_1027870
#print axioms cover_1027816

def state_1027806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 26)))
theorem cover_1027806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027806 := by
  apply coveredState_split_literal (state := state_1027806) 0
    state_1027807 state_1027816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027807
  · exact cover_1027816
#print axioms cover_1027806

def state_1027790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 26)))
theorem cover_1027790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027790 := by
  apply coveredState_split_literal (state := state_1027790) 1
    state_1027791 state_1027806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027791
  · exact cover_1027806
#print axioms cover_1027790

def state_1027768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 26)))
theorem cover_1027768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027768 := by
  apply coveredState_split_literal (state := state_1027768) 2
    state_1027769 state_1027790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027769
  · exact cover_1027790
#print axioms cover_1027768

def state_1027767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 13)))
theorem cover_1027767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027767 := by
  apply coveredState_split_literal (state := state_1027767) 4
    state_1027768 state_1027885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027768
  · exact cover_1027885
#print axioms cover_1027767
end Mub6.Numerical.CircleFullD0.Forest
