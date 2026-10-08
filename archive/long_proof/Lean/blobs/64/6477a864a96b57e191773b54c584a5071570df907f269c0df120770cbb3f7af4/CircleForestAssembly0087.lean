import CircleFullInterface
import CircleForestAssembly0086
import CircleForestChunk0348
import CircleForestChunk0349
import CircleForestChunk0350
import CircleForestChunk0351
import CircleForestChunk0352
import CircleForestChunk0353
import CircleForestChunk0354
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_159159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
theorem cover_159159 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159159 := by
  apply coveredState_split_literal (state := state_159159) 4
    state_159160 state_159289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159160
  · exact cover_159289
#print axioms cover_159159

def state_159139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_159139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159139 := by
  apply coveredState_split_literal (state := state_159139) 2
    state_159140 state_159159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159140
  · exact cover_159159
#print axioms cover_159139

def state_159138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_159138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159138 := by
  apply coveredState_split_literal (state := state_159138) 0
    state_159139 state_159312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159139
  · exact cover_159312
#print axioms cover_159138

def state_159032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_159032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159032 := by
  apply coveredState_split_literal (state := state_159032) 4
    state_159033 state_159138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159033
  · exact cover_159138
#print axioms cover_159032

def state_158994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_158994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158994 := by
  apply coveredState_split_literal (state := state_158994) 3
    state_158995 state_159032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158995
  · exact cover_159032
#print axioms cover_158994

def state_159467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 20)))
theorem cover_159467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159467 := by
  apply coveredState_split_literal (state := state_159467) 2
    state_159468 state_159477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159468
  · exact cover_159477
#print axioms cover_159467

def state_159437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 20)))
theorem cover_159437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159437 := by
  apply coveredState_split_literal (state := state_159437) 1
    state_159438 state_159467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159438
  · exact cover_159467
#print axioms cover_159437

def state_159436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 20)))
theorem cover_159436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159436 := by
  apply coveredState_split_literal (state := state_159436) 0
    state_159437 state_159534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159437
  · exact cover_159534
#print axioms cover_159436

def state_159434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 20)))
theorem cover_159434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159434 := by
  apply coveredState_split_literal (state := state_159434) 3
    state_159435 state_159436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159435
  · exact cover_159436
#print axioms cover_159434

def state_159433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 20)))
theorem cover_159433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159433 := by
  apply coveredState_split_literal (state := state_159433) 2
    state_159434 state_159535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159434
  · exact cover_159535
#print axioms cover_159433

def state_159432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 20)))
theorem cover_159432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159432 := by
  apply coveredState_split_literal (state := state_159432) 1
    state_159433 state_159572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159433
  · exact cover_159572
#print axioms cover_159432

def state_159573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 21)))
theorem cover_159573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159573 := by
  apply coveredState_split_literal (state := state_159573) 1
    state_159574 state_159611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159574
  · exact cover_159611
#print axioms cover_159573

def state_159431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 10)))
theorem cover_159431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159431 := by
  apply coveredState_split_literal (state := state_159431) 4
    state_159432 state_159573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159432
  · exact cover_159573
#print axioms cover_159431

def state_159430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 10)))
theorem cover_159430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159430 := by
  apply coveredState_split_literal (state := state_159430) 0
    state_159431 state_159656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159431
  · exact cover_159656
#print axioms cover_159430

def state_159860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 61 else 41)))
theorem cover_159860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159860 := by
  apply coveredState_split_literal (state := state_159860) 1
    state_159861 state_159922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159861
  · exact cover_159922
#print axioms cover_159860

def state_159859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 61 else 41)))
theorem cover_159859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159859 := by
  apply coveredState_split_literal (state := state_159859) 0
    state_159860 state_159969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159860
  · exact cover_159969
#print axioms cover_159859

def state_159805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 30 else 41)))
theorem cover_159805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159805 := by
  apply coveredState_split_literal (state := state_159805) 3
    state_159806 state_159859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159806
  · exact cover_159859
#print axioms cover_159805

def state_159777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 30 else 20)))
theorem cover_159777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159777 := by
  apply coveredState_split_literal (state := state_159777) 4
    state_159778 state_159805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159778
  · exact cover_159805
#print axioms cover_159777

def state_159723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 20)))
theorem cover_159723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159723 := by
  apply coveredState_split_literal (state := state_159723) 2
    state_159724 state_159777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159724
  · exact cover_159777
#print axioms cover_159723

def state_159667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 20)))
theorem cover_159667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159667 := by
  apply coveredState_split_literal (state := state_159667) 1
    state_159668 state_159723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159668
  · exact cover_159723
#print axioms cover_159667

def state_159666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 20)))
theorem cover_159666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159666 := by
  apply coveredState_split_literal (state := state_159666) 0
    state_159667 state_160018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159667
  · exact cover_160018
#print axioms cover_159666

def state_159665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 15 else 20)))
theorem cover_159665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159665 := by
  apply coveredState_split_literal (state := state_159665) 3
    state_159666 state_160049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159666
  · exact cover_160049
#print axioms cover_159665

def state_160106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 15 else 20)))
theorem cover_160106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160106 := by
  apply coveredState_split_literal (state := state_160106) 3
    state_160107 state_160158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160107
  · exact cover_160158
#print axioms cover_160106

def state_159664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 20)))
theorem cover_159664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159664 := by
  apply coveredState_split_literal (state := state_159664) 2
    state_159665 state_160106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159665
  · exact cover_160106
#print axioms cover_159664

def state_160180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 20)))
theorem cover_160180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160180 := by
  apply coveredState_split_literal (state := state_160180) 2
    state_160181 state_160210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160181
  · exact cover_160210
#print axioms cover_160180

def state_160179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 20)))
theorem cover_160179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160179 := by
  apply coveredState_split_literal (state := state_160179) 0
    state_160180 state_160259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160180
  · exact cover_160259
#print axioms cover_160179

def state_160178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 15 else 20)))
theorem cover_160178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160178 := by
  apply coveredState_split_literal (state := state_160178) 3
    state_160179 state_160260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160179
  · exact cover_160260
#print axioms cover_160178

def state_160177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 20)))
theorem cover_160177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160177 := by
  apply coveredState_split_literal (state := state_160177) 2
    state_160178 state_160299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160178
  · exact cover_160299
#print axioms cover_160177

def state_159663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 20)))
theorem cover_159663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159663 := by
  apply coveredState_split_literal (state := state_159663) 1
    state_159664 state_160177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159664
  · exact cover_160177
#print axioms cover_159663

def state_160397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 30 else 42)))
theorem cover_160397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160397 := by
  apply coveredState_split_literal (state := state_160397) 3
    state_160398 state_160439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160398
  · exact cover_160439
#print axioms cover_160397

def state_160373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 42)))
theorem cover_160373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160373 := by
  apply coveredState_split_literal (state := state_160373) 2
    state_160374 state_160397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160374
  · exact cover_160397
#print axioms cover_160373

def state_160359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 42)))
theorem cover_160359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160359 := by
  apply coveredState_split_literal (state := state_160359) 1
    state_160360 state_160373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_160360
  · exact cover_160373
#print axioms cover_160359
end Mub6.Numerical.CircleFullPrototype.Forest
