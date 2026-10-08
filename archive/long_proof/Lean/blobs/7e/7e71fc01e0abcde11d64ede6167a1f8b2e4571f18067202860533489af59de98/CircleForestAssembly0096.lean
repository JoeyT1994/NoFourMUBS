import CircleFullInterface
import CircleForestAssembly0094
import CircleForestAssembly0095
import CircleForestChunk0377
import CircleForestChunk0378
import CircleForestChunk0383
import CircleForestChunk0385
import CircleForestChunk0386
import CircleForestChunk0387
import CircleForestChunk0388
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_167606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 15)))
theorem cover_167606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167606 := by
  apply coveredState_split_literal (state := state_167606) 3
    state_167607 state_167616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167607
  · exact cover_167616
#print axioms cover_167606

def state_168100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 15)))
theorem cover_168100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168100 := by
  apply coveredState_split_literal (state := state_168100) 1
    state_168101 state_168114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168101
  · exact cover_168114
#print axioms cover_168100

def state_168241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 47 else 30)))
theorem cover_168241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168241 := by
  apply coveredState_split_literal (state := state_168241) 1
    state_168242 state_168283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168242
  · exact cover_168283
#print axioms cover_168241

def state_168177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 47 else 30)))
theorem cover_168177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168177 := by
  apply coveredState_split_literal (state := state_168177) 0
    state_168178 state_168241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168178
  · exact cover_168241
#print axioms cover_168177

def state_168176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 47 else 30)))
theorem cover_168176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168176 := by
  apply coveredState_split_literal (state := state_168176) 2
    state_168177 state_168310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168177
  · exact cover_168310
#print axioms cover_168176

def state_168168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 30)))
theorem cover_168168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168168 := by
  apply coveredState_split_literal (state := state_168168) 3
    state_168169 state_168176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168169
  · exact cover_168176
#print axioms cover_168168

def state_168167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 15)))
theorem cover_168167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168167 := by
  apply coveredState_split_literal (state := state_168167) 4
    state_168168 state_168315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168168
  · exact cover_168315
#print axioms cover_168167

def state_168165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 15)))
theorem cover_168165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168165 := by
  apply coveredState_split_literal (state := state_168165) 1
    state_168166 state_168167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168166
  · exact cover_168167
#print axioms cover_168165

def state_168099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 15)))
theorem cover_168099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168099 := by
  apply coveredState_split_literal (state := state_168099) 0
    state_168100 state_168165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168100
  · exact cover_168165
#print axioms cover_168099

def state_168097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 15)))
theorem cover_168097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168097 := by
  apply coveredState_split_literal (state := state_168097) 3
    state_168098 state_168099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168098
  · exact cover_168099
#print axioms cover_168097

def state_167605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 15)))
theorem cover_167605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167605 := by
  apply coveredState_split_literal (state := state_167605) 2
    state_167606 state_168097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167606
  · exact cover_168097
#print axioms cover_167605

def state_166519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
theorem cover_166519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166519 := by
  apply coveredState_split_literal (state := state_166519) 4
    state_166520 state_167605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166520
  · exact cover_167605
#print axioms cover_166519

def state_166379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
theorem cover_166379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166379 := by
  apply coveredState_split_literal (state := state_166379) 1
    state_166380 state_166519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166380
  · exact cover_166519
#print axioms cover_166379

def state_166273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
theorem cover_166273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166273 := by
  apply coveredState_split_literal (state := state_166273) 0
    state_166274 state_166379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166274
  · exact cover_166379
#print axioms cover_166273

def state_166235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 7)))
theorem cover_166235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166235 := by
  apply coveredState_split_literal (state := state_166235) 3
    state_166236 state_166273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166236
  · exact cover_166273
#print axioms cover_166235

def state_168336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 7)))
theorem cover_168336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168336 := by
  apply coveredState_split_literal (state := state_168336) 0
    state_168337 state_168358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168337
  · exact cover_168358
#print axioms cover_168336

def state_168334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 7)))
theorem cover_168334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168334 := by
  apply coveredState_split_literal (state := state_168334) 3
    state_168335 state_168336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168335
  · exact cover_168336
#print axioms cover_168334

def state_166234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_166234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166234 := by
  apply coveredState_split_literal (state := state_166234) 2
    state_166235 state_168334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166235
  · exact cover_168334
#print axioms cover_166234

def state_166132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_166132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166132 := by
  apply coveredState_split_literal (state := state_166132) 4
    state_166133 state_166234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166133
  · exact cover_166234
#print axioms cover_166132

def state_166114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_166114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166114 := by
  apply coveredState_split_literal (state := state_166114) 3
    state_166115 state_166132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166115
  · exact cover_166132
#print axioms cover_166114

def state_168560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 13)))
theorem cover_168560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168560 := by
  apply coveredState_split_literal (state := state_168560) 3
    state_168561 state_168590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168561
  · exact cover_168590
#print axioms cover_168560

def state_168542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 13)))
theorem cover_168542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168542 := by
  apply coveredState_split_literal (state := state_168542) 2
    state_168543 state_168560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168543
  · exact cover_168560
#print axioms cover_168542

def state_168520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 13)))
theorem cover_168520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168520 := by
  apply coveredState_split_literal (state := state_168520) 1
    state_168521 state_168542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168521
  · exact cover_168542
#print axioms cover_168520

def state_168486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 13)))
theorem cover_168486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168486 := by
  apply coveredState_split_literal (state := state_168486) 0
    state_168487 state_168520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168487
  · exact cover_168520
#print axioms cover_168486

def state_168466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 6)))
theorem cover_168466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168466 := by
  apply coveredState_split_literal (state := state_168466) 4
    state_168467 state_168486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168467
  · exact cover_168486
#print axioms cover_168466

def state_168432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_168432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168432 := by
  apply coveredState_split_literal (state := state_168432) 3
    state_168433 state_168466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168433
  · exact cover_168466
#print axioms cover_168432

def state_168431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_168431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168431 := by
  apply coveredState_split_literal (state := state_168431) 4
    state_168432 state_168641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168432
  · exact cover_168641
#print axioms cover_168431

def state_168421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_168421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168421 := by
  apply coveredState_split_literal (state := state_168421) 3
    state_168422 state_168431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168422
  · exact cover_168431
#print axioms cover_168421

def state_166113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_166113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166113 := by
  apply coveredState_split_literal (state := state_166113) 2
    state_166114 state_168421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166114
  · exact cover_168421
#print axioms cover_166113

def state_168715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
theorem cover_168715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168715 := by
  apply coveredState_split_literal (state := state_168715) 0
    state_168716 state_168719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168716
  · exact cover_168719
#print axioms cover_168715

def state_168709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 7)))
theorem cover_168709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168709 := by
  apply coveredState_split_literal (state := state_168709) 3
    state_168710 state_168715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168710
  · exact cover_168715
#print axioms cover_168709

def state_168708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_168708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168708 := by
  apply coveredState_split_literal (state := state_168708) 2
    state_168709 state_168780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168709
  · exact cover_168780
#print axioms cover_168708
end Mub6.Numerical.CircleFullPrototype.Forest
