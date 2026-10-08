import CircleFullInterface
import CircleForestAssembly0370
import CircleForestChunk1446
import CircleForestChunk1447
import CircleForestChunk1448
import CircleForestChunk1449
import CircleForestChunk1450
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1647600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 41)))
theorem cover_1647600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647600 := by
  apply coveredState_split_literal (state := state_1647600) 3
    state_1647601 state_1647816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647601
  · exact cover_1647816
#print axioms cover_1647600

def state_1647599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 41)))
theorem cover_1647599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647599 := by
  apply coveredState_split_literal (state := state_1647599) 0
    state_1647600 state_1647875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647600
  · exact cover_1647875
#print axioms cover_1647599

def state_1647929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 41)))
theorem cover_1647929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647929 := by
  apply coveredState_split_literal (state := state_1647929) 3
    state_1647930 state_1647985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647930
  · exact cover_1647985
#print axioms cover_1647929

def state_1647928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 41)))
theorem cover_1647928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647928 := by
  apply coveredState_split_literal (state := state_1647928) 0
    state_1647929 state_1648018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647929
  · exact cover_1648018
#print axioms cover_1647928

def state_1647598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 41)))
theorem cover_1647598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647598 := by
  apply coveredState_split_literal (state := state_1647598) 1
    state_1647599 state_1647928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647599
  · exact cover_1647928
#print axioms cover_1647598

def state_1647490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 20)))
theorem cover_1647490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647490 := by
  apply coveredState_split_literal (state := state_1647490) 4
    state_1647491 state_1647598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647491
  · exact cover_1647598
#print axioms cover_1647490

def state_1647250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 52 else 20)))
theorem cover_1647250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647250 := by
  apply coveredState_split_literal (state := state_1647250) 2
    state_1647251 state_1647490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647251
  · exact cover_1647490
#print axioms cover_1647250

def state_1647249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
theorem cover_1647249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647249 := by
  apply coveredState_split_literal (state := state_1647249) 3
    state_1647250 state_1648049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1647250
  · exact cover_1648049
#print axioms cover_1647249

def state_1646947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
theorem cover_1646947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646947 := by
  apply coveredState_split_literal (state := state_1646947) 0
    state_1646948 state_1647249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646948
  · exact cover_1647249
#print axioms cover_1646947

def state_1648145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 52 else 20)))
theorem cover_1648145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648145 := by
  apply coveredState_split_literal (state := state_1648145) 2
    state_1648146 state_1648173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648146
  · exact cover_1648173
#print axioms cover_1648145

def state_1648144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
theorem cover_1648144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648144 := by
  apply coveredState_split_literal (state := state_1648144) 3
    state_1648145 state_1648228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648145
  · exact cover_1648228
#print axioms cover_1648144

def state_1648096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
theorem cover_1648096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648096 := by
  apply coveredState_split_literal (state := state_1648096) 0
    state_1648097 state_1648144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648097
  · exact cover_1648144
#print axioms cover_1648096

def state_1646946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
theorem cover_1646946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646946 := by
  apply coveredState_split_literal (state := state_1646946) 1
    state_1646947 state_1648096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646947
  · exact cover_1648096
#print axioms cover_1646946

def state_1646754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 20)))
theorem cover_1646754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646754 := by
  apply coveredState_split_literal (state := state_1646754) 2
    state_1646755 state_1646946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646755
  · exact cover_1646946
#print axioms cover_1646754

def state_1648249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 21)))
theorem cover_1648249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648249 := by
  apply coveredState_split_literal (state := state_1648249) 0
    state_1648250 state_1648303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648250
  · exact cover_1648303
#print axioms cover_1648249

def state_1648248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 21)))
theorem cover_1648248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648248 := by
  apply coveredState_split_literal (state := state_1648248) 1
    state_1648249 state_1648328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648249
  · exact cover_1648328
#print axioms cover_1648248

def state_1648345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 21)))
theorem cover_1648345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648345 := by
  apply coveredState_split_literal (state := state_1648345) 3
    state_1648346 state_1648405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648346
  · exact cover_1648405
#print axioms cover_1648345

def state_1648431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 42)))
theorem cover_1648431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648431 := by
  apply coveredState_split_literal (state := state_1648431) 1
    state_1648432 state_1648483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648432
  · exact cover_1648483
#print axioms cover_1648431

def state_1648524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 105 else 42)))
theorem cover_1648524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648524 := by
  apply coveredState_split_literal (state := state_1648524) 4
    state_1648525 state_1648576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648525
  · exact cover_1648576
#print axioms cover_1648524

def state_1648498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 42)))
theorem cover_1648498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648498 := by
  apply coveredState_split_literal (state := state_1648498) 3
    state_1648499 state_1648524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648499
  · exact cover_1648524
#print axioms cover_1648498

def state_1648630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 119 else (if j.val < 4 then 105 else 84)))
theorem cover_1648630 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648630 := by
  apply coveredState_split_literal (state := state_1648630) 1
    state_1648631 state_1648690
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648631
  · exact cover_1648690
#print axioms cover_1648630

def state_1648614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 105 else 84)))
theorem cover_1648614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648614 := by
  apply coveredState_split_literal (state := state_1648614) 2
    state_1648615 state_1648630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648615
  · exact cover_1648630
#print axioms cover_1648614

def state_1648613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 105 else 42)))
theorem cover_1648613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648613 := by
  apply coveredState_split_literal (state := state_1648613) 4
    state_1648614 state_1648709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648614
  · exact cover_1648709
#print axioms cover_1648613

def state_1648599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 42)))
theorem cover_1648599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648599 := by
  apply coveredState_split_literal (state := state_1648599) 3
    state_1648600 state_1648613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648600
  · exact cover_1648613
#print axioms cover_1648599

def state_1648497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 42)))
theorem cover_1648497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648497 := by
  apply coveredState_split_literal (state := state_1648497) 0
    state_1648498 state_1648599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648498
  · exact cover_1648599
#print axioms cover_1648497

def state_1648496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 42)))
theorem cover_1648496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648496 := by
  apply coveredState_split_literal (state := state_1648496) 1
    state_1648497 state_1648732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648497
  · exact cover_1648732
#print axioms cover_1648496

def state_1648430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 52 else 42)))
theorem cover_1648430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648430 := by
  apply coveredState_split_literal (state := state_1648430) 2
    state_1648431 state_1648496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648431
  · exact cover_1648496
#print axioms cover_1648430

def state_1648429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 52 else 21)))
theorem cover_1648429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648429 := by
  apply coveredState_split_literal (state := state_1648429) 4
    state_1648430 state_1648759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648430
  · exact cover_1648759
#print axioms cover_1648429

def state_1648838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 42)))
theorem cover_1648838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648838 := by
  apply coveredState_split_literal (state := state_1648838) 3
    state_1648839 state_1648900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648839
  · exact cover_1648900
#print axioms cover_1648838

def state_1648808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 42)))
theorem cover_1648808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648808 := by
  apply coveredState_split_literal (state := state_1648808) 0
    state_1648809 state_1648838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648809
  · exact cover_1648838
#print axioms cover_1648808

def state_1648807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 42)))
theorem cover_1648807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648807 := by
  apply coveredState_split_literal (state := state_1648807) 1
    state_1648808 state_1648903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648808
  · exact cover_1648903
#print axioms cover_1648807

def state_1648775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 53 else 42)))
theorem cover_1648775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648775 := by
  apply coveredState_split_literal (state := state_1648775) 2
    state_1648776 state_1648807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648776
  · exact cover_1648807
#print axioms cover_1648775
end Mub6.Numerical.CircleFullD0.Forest
