import CircleFullInterface
import CircleForestAssembly0081
import CircleForestChunk0329
import CircleForestChunk0330
import CircleForestChunk0331
import CircleForestChunk0332
import CircleForestChunk0333
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_154520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 6)))
theorem cover_154520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154520 := by
  apply coveredState_split_literal (state := state_154520) 4
    state_154521 state_154532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154521
  · exact cover_154532
#print axioms cover_154520

def state_154504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 6)))
theorem cover_154504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154504 := by
  apply coveredState_split_literal (state := state_154504) 3
    state_154505 state_154520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154505
  · exact cover_154520
#print axioms cover_154504

def state_154503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_154503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154503 := by
  apply coveredState_split_literal (state := state_154503) 2
    state_154504 state_154605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154504
  · exact cover_154605
#print axioms cover_154503

def state_154493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_154493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154493 := by
  apply coveredState_split_literal (state := state_154493) 1
    state_154494 state_154503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154494
  · exact cover_154503
#print axioms cover_154493

def state_154492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_154492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154492 := by
  apply coveredState_split_literal (state := state_154492) 0
    state_154493 state_154610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154493
  · exact cover_154610
#print axioms cover_154492

def state_154491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_154491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154491 := by
  apply coveredState_split_literal (state := state_154491) 4
    state_154492 state_154627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154492
  · exact cover_154627
#print axioms cover_154491

def state_154665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
theorem cover_154665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154665 := by
  apply coveredState_split_literal (state := state_154665) 1
    state_154666 state_154681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154666
  · exact cover_154681
#print axioms cover_154665

def state_154664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
theorem cover_154664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154664 := by
  apply coveredState_split_literal (state := state_154664) 0
    state_154665 state_154732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154665
  · exact cover_154732
#print axioms cover_154664

def state_154628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_154628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154628 := by
  apply coveredState_split_literal (state := state_154628) 4
    state_154629 state_154664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154629
  · exact cover_154664
#print axioms cover_154628

def state_154490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_154490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154490 := by
  apply coveredState_split_literal (state := state_154490) 3
    state_154491 state_154628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154491
  · exact cover_154628
#print axioms cover_154490

def state_154489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_154489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154489 := by
  apply coveredState_split_literal (state := state_154489) 2
    state_154490 state_154749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154490
  · exact cover_154749
#print axioms cover_154489

def state_154449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_154449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154449 := by
  apply coveredState_split_literal (state := state_154449) 1
    state_154450 state_154489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154450
  · exact cover_154489
#print axioms cover_154449

def state_154806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_154806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154806 := by
  apply coveredState_split_literal (state := state_154806) 1
    state_154807 state_154838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154807
  · exact cover_154838
#print axioms cover_154806

def state_154784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_154784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154784 := by
  apply coveredState_split_literal (state := state_154784) 4
    state_154785 state_154806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154785
  · exact cover_154806
#print axioms cover_154784

def state_154783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_154783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154783 := by
  apply coveredState_split_literal (state := state_154783) 3
    state_154784 state_154881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154784
  · exact cover_154881
#print axioms cover_154783

def state_154782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_154782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154782 := by
  apply coveredState_split_literal (state := state_154782) 2
    state_154783 state_154916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154783
  · exact cover_154916
#print axioms cover_154782

def state_154754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_154754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154754 := by
  apply coveredState_split_literal (state := state_154754) 1
    state_154755 state_154782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154755
  · exact cover_154782
#print axioms cover_154754

def state_154448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_154448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154448 := by
  apply coveredState_split_literal (state := state_154448) 0
    state_154449 state_154754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154449
  · exact cover_154754
#print axioms cover_154448

def state_154344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_154344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154344 := by
  apply coveredState_split_literal (state := state_154344) 4
    state_154345 state_154448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154345
  · exact cover_154448
#print axioms cover_154344

def state_153434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_153434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153434 := by
  apply coveredState_split_literal (state := state_153434) 3
    state_153435 state_154344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153435
  · exact cover_154344
#print axioms cover_153434

def state_149232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_149232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149232 := by
  apply coveredState_split_literal (state := state_149232) 2
    state_149233 state_153434
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149233
  · exact cover_153434
#print axioms cover_149232

def state_154928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_154928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154928 := by
  apply coveredState_split_literal (state := state_154928) 0
    state_154929 state_154988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154929
  · exact cover_154988
#print axioms cover_154928

def state_155011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_155011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155011 := by
  apply coveredState_split_literal (state := state_155011) 0
    state_155012 state_155069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155012
  · exact cover_155069
#print axioms cover_155011

def state_154927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_154927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154927 := by
  apply coveredState_split_literal (state := state_154927) 4
    state_154928 state_155011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154928
  · exact cover_155011
#print axioms cover_154927

def state_155149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_155149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155149 := by
  apply coveredState_split_literal (state := state_155149) 3
    state_155150 state_155177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155150
  · exact cover_155177
#print axioms cover_155149

def state_155107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_155107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155107 := by
  apply coveredState_split_literal (state := state_155107) 2
    state_155108 state_155149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155108
  · exact cover_155149
#print axioms cover_155107

def state_155285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 4)))
theorem cover_155285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155285 := by
  apply coveredState_split_literal (state := state_155285) 4
    state_155286 state_155339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155286
  · exact cover_155339
#print axioms cover_155285

def state_155284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 4)))
theorem cover_155284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155284 := by
  apply coveredState_split_literal (state := state_155284) 2
    state_155285 state_155352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155285
  · exact cover_155352
#print axioms cover_155284

def state_155270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 4)))
theorem cover_155270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155270 := by
  apply coveredState_split_literal (state := state_155270) 1
    state_155271 state_155284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155271
  · exact cover_155284
#print axioms cover_155270

def state_155427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 4)))
theorem cover_155427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155427 := by
  apply coveredState_split_literal (state := state_155427) 4
    state_155428 state_155479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155428
  · exact cover_155479
#print axioms cover_155427

def state_155387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 4)))
theorem cover_155387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155387 := by
  apply coveredState_split_literal (state := state_155387) 2
    state_155388 state_155427
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155388
  · exact cover_155427
#print axioms cover_155387

def state_155373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 4)))
theorem cover_155373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155373 := by
  apply coveredState_split_literal (state := state_155373) 1
    state_155374 state_155387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155374
  · exact cover_155387
#print axioms cover_155373
end Mub6.Numerical.CircleFullPrototype.Forest
