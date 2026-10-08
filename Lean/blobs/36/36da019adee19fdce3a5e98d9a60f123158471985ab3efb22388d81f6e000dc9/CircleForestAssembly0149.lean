import CircleFullInterface
import CircleForestAssembly0132
import CircleForestAssembly0141
import CircleForestAssembly0148
import CircleForestChunk0570
import CircleForestChunk0571
import CircleForestChunk0572
import CircleForestChunk0573
import CircleForestChunk0574
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1325519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1325519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325519 := by
  apply coveredState_split_literal (state := state_1325519) 0
    state_1325520 state_1325649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325520
  · exact cover_1325649
#print axioms cover_1325519

def state_1325810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1325810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325810 := by
  apply coveredState_split_literal (state := state_1325810) 2
    state_1325811 state_1325864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325811
  · exact cover_1325864
#print axioms cover_1325810

def state_1325809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1325809 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325809 := by
  apply coveredState_split_literal (state := state_1325809) 1
    state_1325810 state_1325875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325810
  · exact cover_1325875
#print axioms cover_1325809

def state_1325888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1325888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325888 := by
  apply coveredState_split_literal (state := state_1325888) 3
    state_1325889 state_1325896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325889
  · exact cover_1325896
#print axioms cover_1325888

def state_1325887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1325887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325887 := by
  apply coveredState_split_literal (state := state_1325887) 2
    state_1325888 state_1325953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325888
  · exact cover_1325953
#print axioms cover_1325887

def state_1325886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1325886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325886 := by
  apply coveredState_split_literal (state := state_1325886) 1
    state_1325887 state_1325988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325887
  · exact cover_1325988
#print axioms cover_1325886

def state_1325808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1325808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325808 := by
  apply coveredState_split_literal (state := state_1325808) 0
    state_1325809 state_1325886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325809
  · exact cover_1325886
#print axioms cover_1325808

def state_1325518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1325518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325518 := by
  apply coveredState_split_literal (state := state_1325518) 4
    state_1325519 state_1325808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325519
  · exact cover_1325808
#print axioms cover_1325518

def state_1320584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1320584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320584 := by
  apply coveredState_split_literal (state := state_1320584) 3
    state_1320585 state_1325518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320585
  · exact cover_1325518
#print axioms cover_1320584

def state_1312132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1312132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312132 := by
  apply coveredState_split_literal (state := state_1312132) 2
    state_1312133 state_1320584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312133
  · exact cover_1320584
#print axioms cover_1312132

def state_1301978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1301978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1301978 := by
  apply coveredState_split_literal (state := state_1301978) 1
    state_1301979 state_1312132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1301979
  · exact cover_1312132
#print axioms cover_1301978

def state_1326023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1326023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326023 := by
  apply coveredState_split_literal (state := state_1326023) 2
    state_1326024 state_1326045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326024
  · exact cover_1326045
#print axioms cover_1326023

def state_1326022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1326022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326022 := by
  apply coveredState_split_literal (state := state_1326022) 0
    state_1326023 state_1326096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326023
  · exact cover_1326096
#print axioms cover_1326022

def state_1326014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
theorem cover_1326014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326014 := by
  apply coveredState_split_literal (state := state_1326014) 4
    state_1326015 state_1326022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326015
  · exact cover_1326022
#print axioms cover_1326014

def state_1326013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_1326013 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326013 := by
  apply coveredState_split_literal (state := state_1326013) 3
    state_1326014 state_1326117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326014
  · exact cover_1326117
#print axioms cover_1326013

def state_1326003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1326003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326003 := by
  apply coveredState_split_literal (state := state_1326003) 2
    state_1326004 state_1326013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326004
  · exact cover_1326013
#print axioms cover_1326003

def state_1326221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1326221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326221 := by
  apply coveredState_split_literal (state := state_1326221) 1
    state_1326222 state_1326245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326222
  · exact cover_1326245
#print axioms cover_1326221

def state_1326197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1326197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326197 := by
  apply coveredState_split_literal (state := state_1326197) 0
    state_1326198 state_1326221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326198
  · exact cover_1326221
#print axioms cover_1326197

def state_1326189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
theorem cover_1326189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326189 := by
  apply coveredState_split_literal (state := state_1326189) 4
    state_1326190 state_1326197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326190
  · exact cover_1326197
#print axioms cover_1326189

def state_1326188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_1326188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326188 := by
  apply coveredState_split_literal (state := state_1326188) 3
    state_1326189 state_1326308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326189
  · exact cover_1326308
#print axioms cover_1326188

def state_1326148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1326148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326148 := by
  apply coveredState_split_literal (state := state_1326148) 2
    state_1326149 state_1326188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326149
  · exact cover_1326188
#print axioms cover_1326148

def state_1326002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1326002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326002 := by
  apply coveredState_split_literal (state := state_1326002) 1
    state_1326003 state_1326148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326003
  · exact cover_1326148
#print axioms cover_1326002

def state_1326455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 22)))
theorem cover_1326455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326455 := by
  apply coveredState_split_literal (state := state_1326455) 3
    state_1326456 state_1326515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326456
  · exact cover_1326515
#print axioms cover_1326455

def state_1326454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 22)))
theorem cover_1326454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326454 := by
  apply coveredState_split_literal (state := state_1326454) 0
    state_1326455 state_1326532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326455
  · exact cover_1326532
#print axioms cover_1326454

def state_1326450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 22)))
theorem cover_1326450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326450 := by
  apply coveredState_split_literal (state := state_1326450) 2
    state_1326451 state_1326454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326451
  · exact cover_1326454
#print axioms cover_1326450

def state_1326449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 11)))
theorem cover_1326449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326449 := by
  apply coveredState_split_literal (state := state_1326449) 4
    state_1326450 state_1326575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326450
  · exact cover_1326575
#print axioms cover_1326449

def state_1326435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 11)))
theorem cover_1326435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326435 := by
  apply coveredState_split_literal (state := state_1326435) 1
    state_1326436 state_1326449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326436
  · exact cover_1326449
#print axioms cover_1326435

def state_1326434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 11)))
theorem cover_1326434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326434 := by
  apply coveredState_split_literal (state := state_1326434) 3
    state_1326435 state_1326580
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326435
  · exact cover_1326580
#print axioms cover_1326434

def state_1326433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 11)))
theorem cover_1326433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326433 := by
  apply coveredState_split_literal (state := state_1326433) 0
    state_1326434 state_1326599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326434
  · exact cover_1326599
#print axioms cover_1326433

def state_1326391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 5)))
theorem cover_1326391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326391 := by
  apply coveredState_split_literal (state := state_1326391) 4
    state_1326392 state_1326433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326392
  · exact cover_1326433
#print axioms cover_1326391

def state_1326632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 21)))
theorem cover_1326632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326632 := by
  apply coveredState_split_literal (state := state_1326632) 0
    state_1326633 state_1326668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326633
  · exact cover_1326668
#print axioms cover_1326632

def state_1326628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 10)))
theorem cover_1326628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326628 := by
  apply coveredState_split_literal (state := state_1326628) 4
    state_1326629 state_1326632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326629
  · exact cover_1326632
#print axioms cover_1326628
end Mub6.Numerical.CircleFullD0.Forest
