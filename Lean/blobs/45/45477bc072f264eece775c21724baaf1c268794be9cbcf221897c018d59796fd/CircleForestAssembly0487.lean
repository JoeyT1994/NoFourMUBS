import CircleFullInterface
import CircleForestAssembly0486
import CircleForestChunk1915
import CircleForestChunk1916
import CircleForestChunk1917
import CircleForestChunk1918
import CircleForestChunk1919
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2332756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 15)))
theorem cover_2332756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332756 := by
  apply coveredState_split_literal (state := state_2332756) 4
    state_2332757 state_2332818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332757
  · exact cover_2332818
#print axioms cover_2332756

def state_2333080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 31)))
theorem cover_2333080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333080 := by
  apply coveredState_split_literal (state := state_2333080) 3
    state_2333081 state_2333128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333081
  · exact cover_2333128
#print axioms cover_2333080

def state_2333079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 31)))
theorem cover_2333079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333079 := by
  apply coveredState_split_literal (state := state_2333079) 2
    state_2333080 state_2333153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333080
  · exact cover_2333153
#print axioms cover_2333079

def state_2333071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 15)))
theorem cover_2333071 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333071 := by
  apply coveredState_split_literal (state := state_2333071) 4
    state_2333072 state_2333079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333072
  · exact cover_2333079
#print axioms cover_2333071

def state_2332755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 15)))
theorem cover_2332755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332755 := by
  apply coveredState_split_literal (state := state_2332755) 1
    state_2332756 state_2333071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332756
  · exact cover_2333071
#print axioms cover_2332755

def state_2332745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 15)))
theorem cover_2332745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332745 := by
  apply coveredState_split_literal (state := state_2332745) 0
    state_2332746 state_2332755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332746
  · exact cover_2332755
#print axioms cover_2332745

def state_2332744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 15)))
theorem cover_2332744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332744 := by
  apply coveredState_split_literal (state := state_2332744) 3
    state_2332745 state_2333156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332745
  · exact cover_2333156
#print axioms cover_2332744

def state_2332743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 15)))
theorem cover_2332743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332743 := by
  apply coveredState_split_literal (state := state_2332743) 2
    state_2332744 state_2333191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332744
  · exact cover_2333191
#print axioms cover_2332743

def state_2332707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
theorem cover_2332707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332707 := by
  apply coveredState_split_literal (state := state_2332707) 4
    state_2332708 state_2332743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332708
  · exact cover_2332743
#print axioms cover_2332707

def state_2332706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
theorem cover_2332706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332706 := by
  apply coveredState_split_literal (state := state_2332706) 1
    state_2332707 state_2333202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332707
  · exact cover_2333202
#print axioms cover_2332706

def state_2332402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 7)))
theorem cover_2332402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332402 := by
  apply coveredState_split_literal (state := state_2332402) 3
    state_2332403 state_2332706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332403
  · exact cover_2332706
#print axioms cover_2332402

def state_2332401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_2332401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332401 := by
  apply coveredState_split_literal (state := state_2332401) 2
    state_2332402 state_2333211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332402
  · exact cover_2333211
#print axioms cover_2332401

def state_2333254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 21 else 31)))
theorem cover_2333254 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333254 := by
  apply coveredState_split_literal (state := state_2333254) 2
    state_2333255 state_2333316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333255
  · exact cover_2333316
#print axioms cover_2333254

def state_2333246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 21 else 15)))
theorem cover_2333246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333246 := by
  apply coveredState_split_literal (state := state_2333246) 4
    state_2333247 state_2333254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333247
  · exact cover_2333254
#print axioms cover_2333246

def state_2333321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 21 else 15)))
theorem cover_2333321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333321 := by
  apply coveredState_split_literal (state := state_2333321) 4
    state_2333322 state_2333329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333322
  · exact cover_2333329
#print axioms cover_2333321

def state_2333245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 21 else 15)))
theorem cover_2333245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333245 := by
  apply coveredState_split_literal (state := state_2333245) 1
    state_2333246 state_2333321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333246
  · exact cover_2333321
#print axioms cover_2333245

def state_2333241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 10 else 15)))
theorem cover_2333241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333241 := by
  apply coveredState_split_literal (state := state_2333241) 3
    state_2333242 state_2333245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333242
  · exact cover_2333245
#print axioms cover_2333241

def state_2333240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 15)))
theorem cover_2333240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333240 := by
  apply coveredState_split_literal (state := state_2333240) 2
    state_2333241 state_2333390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333241
  · exact cover_2333390
#print axioms cover_2333240

def state_2333239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 15)))
theorem cover_2333239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333239 := by
  apply coveredState_split_literal (state := state_2333239) 0
    state_2333240 state_2333395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333240
  · exact cover_2333395
#print axioms cover_2333239

def state_2333223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 7)))
theorem cover_2333223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333223 := by
  apply coveredState_split_literal (state := state_2333223) 4
    state_2333224 state_2333239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333224
  · exact cover_2333239
#print axioms cover_2333223

def state_2333222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 7)))
theorem cover_2333222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333222 := by
  apply coveredState_split_literal (state := state_2333222) 1
    state_2333223 state_2333424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333223
  · exact cover_2333424
#print axioms cover_2333222

def state_2333477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 63)))
theorem cover_2333477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333477 := by
  apply coveredState_split_literal (state := state_2333477) 2
    state_2333478 state_2333531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333478
  · exact cover_2333531
#print axioms cover_2333477

def state_2333459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 31)))
theorem cover_2333459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333459 := by
  apply coveredState_split_literal (state := state_2333459) 4
    state_2333460 state_2333477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333460
  · exact cover_2333477
#print axioms cover_2333459

def state_2333457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 31)))
theorem cover_2333457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333457 := by
  apply coveredState_split_literal (state := state_2333457) 1
    state_2333458 state_2333459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333458
  · exact cover_2333459
#print axioms cover_2333457

def state_2333456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 31)))
theorem cover_2333456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333456 := by
  apply coveredState_split_literal (state := state_2333456) 3
    state_2333457 state_2333546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333457
  · exact cover_2333546
#print axioms cover_2333456

def state_2333455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 31)))
theorem cover_2333455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333455 := by
  apply coveredState_split_literal (state := state_2333455) 0
    state_2333456 state_2333547
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333456
  · exact cover_2333547
#print axioms cover_2333455

def state_2333454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 31)))
theorem cover_2333454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333454 := by
  apply coveredState_split_literal (state := state_2333454) 2
    state_2333455 state_2333548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333455
  · exact cover_2333548
#print axioms cover_2333454

def state_2333450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 15)))
theorem cover_2333450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333450 := by
  apply coveredState_split_literal (state := state_2333450) 4
    state_2333451 state_2333454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333451
  · exact cover_2333454
#print axioms cover_2333450

def state_2333569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 58) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 31)))
theorem cover_2333569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333569 := by
  apply coveredState_split_literal (state := state_2333569) 4
    state_2333570 state_2333575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333570
  · exact cover_2333575
#print axioms cover_2333569

def state_2333568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 31)))
theorem cover_2333568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333568 := by
  apply coveredState_split_literal (state := state_2333568) 1
    state_2333569 state_2333634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333569
  · exact cover_2333634
#print axioms cover_2333568

def state_2333567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 31)))
theorem cover_2333567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333567 := by
  apply coveredState_split_literal (state := state_2333567) 3
    state_2333568 state_2333635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333568
  · exact cover_2333635
#print axioms cover_2333567

def state_2333566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 31)))
theorem cover_2333566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333566 := by
  apply coveredState_split_literal (state := state_2333566) 0
    state_2333567 state_2333648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333567
  · exact cover_2333648
#print axioms cover_2333566
end Mub6.Numerical.CircleFullD0.Forest
