import CircleFullInterface
import CircleForestAssembly0057
import CircleForestChunk0233
import CircleForestChunk0234
import CircleForestChunk0235
import CircleForestChunk0236
import CircleForestChunk0237
import CircleForestChunk0238
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_993835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 104 else 86)))
theorem cover_993835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993835 := by
  apply coveredState_split_literal (state := state_993835) 0
    state_993836 state_993887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993836
  · exact cover_993887
#print axioms cover_993835

def state_994105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 71 else (if j.val < 4 then 209 else 172)))
theorem cover_994105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994105 := by
  apply coveredState_split_literal (state := state_994105) 1
    state_994106 state_994155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994106
  · exact cover_994155
#print axioms cover_994105

def state_994104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 71 else (if j.val < 4 then 209 else 86)))
theorem cover_994104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994104 := by
  apply coveredState_split_literal (state := state_994104) 4
    state_994105 state_994178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994105
  · exact cover_994178
#print axioms cover_994104

def state_994052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 86)))
theorem cover_994052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994052 := by
  apply coveredState_split_literal (state := state_994052) 3
    state_994053 state_994104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994053
  · exact cover_994104
#print axioms cover_994052

def state_993996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 86)))
theorem cover_993996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993996 := by
  apply coveredState_split_literal (state := state_993996) 0
    state_993997 state_994052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993997
  · exact cover_994052
#print axioms cover_993996

def state_993834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 86)))
theorem cover_993834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993834 := by
  apply coveredState_split_literal (state := state_993834) 2
    state_993835 state_993996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993835
  · exact cover_993996
#print axioms cover_993834

def state_993833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 86)))
theorem cover_993833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993833 := by
  apply coveredState_split_literal (state := state_993833) 1
    state_993834 state_994179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993834
  · exact cover_994179
#print axioms cover_993833

def state_993832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 43)))
theorem cover_993832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993832 := by
  apply coveredState_split_literal (state := state_993832) 4
    state_993833 state_994212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993833
  · exact cover_994212
#print axioms cover_993832

def state_994225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 71 else (if j.val < 4 then 105 else 86)))
theorem cover_994225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994225 := by
  apply coveredState_split_literal (state := state_994225) 0
    state_994226 state_994253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994226
  · exact cover_994253
#print axioms cover_994225

def state_994215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 86)))
theorem cover_994215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994215 := by
  apply coveredState_split_literal (state := state_994215) 2
    state_994216 state_994225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994216
  · exact cover_994225
#print axioms cover_994215

def state_994214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 86)))
theorem cover_994214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994214 := by
  apply coveredState_split_literal (state := state_994214) 1
    state_994215 state_994314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994215
  · exact cover_994314
#print axioms cover_994214

def state_994331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 87)))
theorem cover_994331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994331 := by
  apply coveredState_split_literal (state := state_994331) 1
    state_994332 state_994363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994332
  · exact cover_994363
#print axioms cover_994331

def state_994213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 43)))
theorem cover_994213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994213 := by
  apply coveredState_split_literal (state := state_994213) 4
    state_994214 state_994331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994214
  · exact cover_994331
#print axioms cover_994213

def state_993831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 43)))
theorem cover_993831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993831 := by
  apply coveredState_split_literal (state := state_993831) 3
    state_993832 state_994213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993832
  · exact cover_994213
#print axioms cover_993831

def state_993769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 43)))
theorem cover_993769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993769 := by
  apply coveredState_split_literal (state := state_993769) 0
    state_993770 state_993831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993770
  · exact cover_993831
#print axioms cover_993769

def state_993729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 43)))
theorem cover_993729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993729 := by
  apply coveredState_split_literal (state := state_993729) 2
    state_993730 state_993769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993730
  · exact cover_993769
#print axioms cover_993729

def state_993728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 43)))
theorem cover_993728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993728 := by
  apply coveredState_split_literal (state := state_993728) 1
    state_993729 state_994414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993729
  · exact cover_994414
#print axioms cover_993728

def state_993516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 21)))
theorem cover_993516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993516 := by
  apply coveredState_split_literal (state := state_993516) 4
    state_993517 state_993728
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993517
  · exact cover_993728
#print axioms cover_993516

def state_993515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 21)))
theorem cover_993515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993515 := by
  apply coveredState_split_literal (state := state_993515) 3
    state_993516 state_994445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993516
  · exact cover_994445
#print axioms cover_993515

def state_993497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 21)))
theorem cover_993497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993497 := by
  apply coveredState_split_literal (state := state_993497) 0
    state_993498 state_993515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993498
  · exact cover_993515
#print axioms cover_993497

def state_993489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 21)))
theorem cover_993489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993489 := by
  apply coveredState_split_literal (state := state_993489) 2
    state_993490 state_993497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993490
  · exact cover_993497
#print axioms cover_993489

def state_993473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 10)))
theorem cover_993473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993473 := by
  apply coveredState_split_literal (state := state_993473) 4
    state_993474 state_993489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993474
  · exact cover_993489
#print axioms cover_993473

def state_993472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
theorem cover_993472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993472 := by
  apply coveredState_split_literal (state := state_993472) 3
    state_993473 state_994494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993473
  · exact cover_994494
#print axioms cover_993472

def state_992440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
theorem cover_992440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992440 := by
  apply coveredState_split_literal (state := state_992440) 1
    state_992441 state_993472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992441
  · exact cover_993472
#print axioms cover_992440

def state_994582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 42)))
theorem cover_994582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994582 := by
  apply coveredState_split_literal (state := state_994582) 0
    state_994583 state_994644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994583
  · exact cover_994644
#print axioms cover_994582

def state_994572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 42)))
theorem cover_994572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994572 := by
  apply coveredState_split_literal (state := state_994572) 2
    state_994573 state_994582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994573
  · exact cover_994582
#print axioms cover_994572

def state_994571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 21)))
theorem cover_994571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994571 := by
  apply coveredState_split_literal (state := state_994571) 4
    state_994572 state_994651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994572
  · exact cover_994651
#print axioms cover_994571

def state_994570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 21)))
theorem cover_994570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994570 := by
  apply coveredState_split_literal (state := state_994570) 3
    state_994571 state_994684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994571
  · exact cover_994684
#print axioms cover_994570

def state_994554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 21)))
theorem cover_994554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994554 := by
  apply coveredState_split_literal (state := state_994554) 1
    state_994555 state_994570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994555
  · exact cover_994570
#print axioms cover_994554

def state_994553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 21)))
theorem cover_994553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994553 := by
  apply coveredState_split_literal (state := state_994553) 0
    state_994554 state_994691
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994554
  · exact cover_994691
#print axioms cover_994553

def state_994551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 21)))
theorem cover_994551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994551 := by
  apply coveredState_split_literal (state := state_994551) 2
    state_994552 state_994553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994552
  · exact cover_994553
#print axioms cover_994551

def state_994499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 10)))
theorem cover_994499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994499 := by
  apply coveredState_split_literal (state := state_994499) 4
    state_994500 state_994551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_994500
  · exact cover_994551
#print axioms cover_994499
end Mub6.Numerical.CircleFullD0.Forest
