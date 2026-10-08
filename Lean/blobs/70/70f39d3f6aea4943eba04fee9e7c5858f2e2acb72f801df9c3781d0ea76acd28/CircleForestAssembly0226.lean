import CircleFullInterface
import CircleForestAssembly0225
import CircleForestChunk0853
import CircleForestChunk0855
import CircleForestChunk0856
import CircleForestChunk0857
import CircleForestChunk0858
import CircleForestChunk0859
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1505457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
theorem cover_1505457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505457 := by
  apply coveredState_split_literal (state := state_1505457) 1
    state_1505458 state_1505659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505458
  · exact cover_1505659
#print axioms cover_1505457

def state_1505456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
theorem cover_1505456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505456 := by
  apply coveredState_split_literal (state := state_1505456) 0
    state_1505457 state_1506040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505457
  · exact cover_1506040
#print axioms cover_1505456

def state_1505455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 30)))
theorem cover_1505455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505455 := by
  apply coveredState_split_literal (state := state_1505455) 4
    state_1505456 state_1506101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505456
  · exact cover_1506101
#print axioms cover_1505455

def state_1505423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 30)))
theorem cover_1505423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505423 := by
  apply coveredState_split_literal (state := state_1505423) 2
    state_1505424 state_1505455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505424
  · exact cover_1505455
#print axioms cover_1505423

def state_1506214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 83 else (if j.val < 4 then 106 else 120)))
theorem cover_1506214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506214 := by
  apply coveredState_split_literal (state := state_1506214) 0
    state_1506215 state_1506260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506215
  · exact cover_1506260
#print axioms cover_1506214

def state_1506213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 83 else (if j.val < 4 then 106 else 60)))
theorem cover_1506213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506213 := by
  apply coveredState_split_literal (state := state_1506213) 4
    state_1506214 state_1506281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506214
  · exact cover_1506281
#print axioms cover_1506213

def state_1506209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 41 else (if j.val < 4 then 106 else 60)))
theorem cover_1506209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506209 := by
  apply coveredState_split_literal (state := state_1506209) 2
    state_1506210 state_1506213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506210
  · exact cover_1506213
#print axioms cover_1506209

def state_1506208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 60)))
theorem cover_1506208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506208 := by
  apply coveredState_split_literal (state := state_1506208) 3
    state_1506209 state_1506320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506209
  · exact cover_1506320
#print axioms cover_1506208

def state_1506148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 60)))
theorem cover_1506148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506148 := by
  apply coveredState_split_literal (state := state_1506148) 1
    state_1506149 state_1506208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506149
  · exact cover_1506208
#print axioms cover_1506148

def state_1506147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 60)))
theorem cover_1506147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506147 := by
  apply coveredState_split_literal (state := state_1506147) 0
    state_1506148 state_1506325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506148
  · exact cover_1506325
#print axioms cover_1506147

def state_1506146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 30)))
theorem cover_1506146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506146 := by
  apply coveredState_split_literal (state := state_1506146) 4
    state_1506147 state_1506338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506147
  · exact cover_1506338
#print axioms cover_1506146

def state_1506140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 30)))
theorem cover_1506140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506140 := by
  apply coveredState_split_literal (state := state_1506140) 2
    state_1506141 state_1506146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506141
  · exact cover_1506146
#print axioms cover_1506140

def state_1505422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
theorem cover_1505422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505422 := by
  apply coveredState_split_literal (state := state_1505422) 3
    state_1505423 state_1506140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505423
  · exact cover_1506140
#print axioms cover_1505422

def state_1505372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
theorem cover_1505372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505372 := by
  apply coveredState_split_literal (state := state_1505372) 1
    state_1505373 state_1505422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505373
  · exact cover_1505422
#print axioms cover_1505372

def state_1505371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
theorem cover_1505371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505371 := by
  apply coveredState_split_literal (state := state_1505371) 0
    state_1505372 state_1506351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505372
  · exact cover_1506351
#print axioms cover_1505371

def state_1505370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 15)))
theorem cover_1505370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505370 := by
  apply coveredState_split_literal (state := state_1505370) 4
    state_1505371 state_1506368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505371
  · exact cover_1506368
#print axioms cover_1505370

def state_1505369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 15)))
theorem cover_1505369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505369 := by
  apply coveredState_split_literal (state := state_1505369) 3
    state_1505370 state_1506375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505370
  · exact cover_1506375
#print axioms cover_1505369

def state_1506486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 60)))
theorem cover_1506486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506486 := by
  apply coveredState_split_literal (state := state_1506486) 4
    state_1506487 state_1506516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506487
  · exact cover_1506516
#print axioms cover_1506486

def state_1506485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 42 else (if j.val < 4 then 105 else 60)))
theorem cover_1506485 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506485 := by
  apply coveredState_split_literal (state := state_1506485) 2
    state_1506486 state_1506563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506486
  · exact cover_1506563
#print axioms cover_1506485

def state_1506471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 60)))
theorem cover_1506471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506471 := by
  apply coveredState_split_literal (state := state_1506471) 3
    state_1506472 state_1506485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506472
  · exact cover_1506485
#print axioms cover_1506471

def state_1506445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 60)))
theorem cover_1506445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506445 := by
  apply coveredState_split_literal (state := state_1506445) 1
    state_1506446 state_1506471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506446
  · exact cover_1506471
#print axioms cover_1506445

def state_1506444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 60)))
theorem cover_1506444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506444 := by
  apply coveredState_split_literal (state := state_1506444) 0
    state_1506445 state_1506568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506445
  · exact cover_1506568
#print axioms cover_1506444

def state_1506443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 30)))
theorem cover_1506443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506443 := by
  apply coveredState_split_literal (state := state_1506443) 4
    state_1506444 state_1506605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506444
  · exact cover_1506605
#print axioms cover_1506443

def state_1506638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 84 else (if j.val < 4 then 53 else 60)))
theorem cover_1506638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506638 := by
  apply coveredState_split_literal (state := state_1506638) 3
    state_1506639 state_1506680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506639
  · exact cover_1506680
#print axioms cover_1506638

def state_1506637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 60)))
theorem cover_1506637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506637 := by
  apply coveredState_split_literal (state := state_1506637) 2
    state_1506638 state_1506705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506638
  · exact cover_1506705
#print axioms cover_1506637

def state_1506771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 87) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 121)))
theorem cover_1506771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506771 := by
  apply coveredState_split_literal (state := state_1506771) 1
    state_1506772 state_1506787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506772
  · exact cover_1506787
#print axioms cover_1506771

def state_1506770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 121)))
theorem cover_1506770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506770 := by
  apply coveredState_split_literal (state := state_1506770) 0
    state_1506771 state_1506844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506771
  · exact cover_1506844
#print axioms cover_1506770

def state_1506716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 60)))
theorem cover_1506716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506716 := by
  apply coveredState_split_literal (state := state_1506716) 4
    state_1506717 state_1506770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506717
  · exact cover_1506770
#print axioms cover_1506716

def state_1506715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 84 else (if j.val < 4 then 53 else 60)))
theorem cover_1506715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506715 := by
  apply coveredState_split_literal (state := state_1506715) 3
    state_1506716 state_1506891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506716
  · exact cover_1506891
#print axioms cover_1506715

def state_1506714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 60)))
theorem cover_1506714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506714 := by
  apply coveredState_split_literal (state := state_1506714) 2
    state_1506715 state_1506938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506715
  · exact cover_1506938
#print axioms cover_1506714

def state_1506636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 60)))
theorem cover_1506636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506636 := by
  apply coveredState_split_literal (state := state_1506636) 1
    state_1506637 state_1506714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506637
  · exact cover_1506714
#print axioms cover_1506636

def state_1506635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 60)))
theorem cover_1506635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506635 := by
  apply coveredState_split_literal (state := state_1506635) 0
    state_1506636 state_1506967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506636
  · exact cover_1506967
#print axioms cover_1506635
end Mub6.Numerical.CircleFullD0.Forest
