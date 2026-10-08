import CircleFullInterface
import CircleForestAssembly0301
import CircleForestAssembly0302
import CircleForestChunk1163
import CircleForestChunk1164
import CircleForestChunk1165
import CircleForestChunk1166
import CircleForestChunk1167
import CircleForestChunk1168
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1579664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 105 else 103)))
theorem cover_1579664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579664 := by
  apply coveredState_split_literal (state := state_1579664) 4
    state_1579665 state_1579818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579665
  · exact cover_1579818
#print axioms cover_1579664

def state_1579630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 103)))
theorem cover_1579630 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579630 := by
  apply coveredState_split_literal (state := state_1579630) 2
    state_1579631 state_1579664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579631
  · exact cover_1579664
#print axioms cover_1579630

def state_1579970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 193 else (if j.val < 4 then 105 else 206)))
theorem cover_1579970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579970 := by
  apply coveredState_split_literal (state := state_1579970) 3
    state_1579971 state_1580032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579971
  · exact cover_1580032
#print axioms cover_1579970

def state_1579969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 193 else (if j.val < 4 then 105 else 103)))
theorem cover_1579969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579969 := by
  apply coveredState_split_literal (state := state_1579969) 4
    state_1579970 state_1580089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579970
  · exact cover_1580089
#print axioms cover_1579969

def state_1579949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 103)))
theorem cover_1579949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579949 := by
  apply coveredState_split_literal (state := state_1579949) 2
    state_1579950 state_1579969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579950
  · exact cover_1579969
#print axioms cover_1579949

def state_1579629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 103)))
theorem cover_1579629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579629 := by
  apply coveredState_split_literal (state := state_1579629) 1
    state_1579630 state_1579949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579630
  · exact cover_1579949
#print axioms cover_1579629

def state_1579481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 103)))
theorem cover_1579481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579481 := by
  apply coveredState_split_literal (state := state_1579481) 0
    state_1579482 state_1579629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579482
  · exact cover_1579629
#print axioms cover_1579481

def state_1578861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 103)))
theorem cover_1578861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578861 := by
  apply coveredState_split_literal (state := state_1578861) 3
    state_1578862 state_1579481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578862
  · exact cover_1579481
#print axioms cover_1578861

def state_1578673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 51)))
theorem cover_1578673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578673 := by
  apply coveredState_split_literal (state := state_1578673) 4
    state_1578674 state_1578861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578674
  · exact cover_1578861
#print axioms cover_1578673

def state_1580191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 104 else 103)))
theorem cover_1580191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580191 := by
  apply coveredState_split_literal (state := state_1580191) 1
    state_1580192 state_1580241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580192
  · exact cover_1580241
#print axioms cover_1580191

def state_1580177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 104 else 103)))
theorem cover_1580177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580177 := by
  apply coveredState_split_literal (state := state_1580177) 0
    state_1580178 state_1580191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580178
  · exact cover_1580191
#print axioms cover_1580177

def state_1580288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 194 else (if j.val < 4 then 105 else 103)))
theorem cover_1580288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580288 := by
  apply coveredState_split_literal (state := state_1580288) 4
    state_1580289 state_1580320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580289
  · exact cover_1580320
#print axioms cover_1580288

def state_1580287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 97 else (if j.val < 4 then 105 else 103)))
theorem cover_1580287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580287 := by
  apply coveredState_split_literal (state := state_1580287) 2
    state_1580288 state_1580361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580288
  · exact cover_1580361
#print axioms cover_1580287

def state_1580370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 194 else (if j.val < 4 then 105 else 206)))
theorem cover_1580370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580370 := by
  apply coveredState_split_literal (state := state_1580370) 3
    state_1580371 state_1580400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580371
  · exact cover_1580400
#print axioms cover_1580370

def state_1580445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 194 else (if j.val < 4 then 105 else 207)))
theorem cover_1580445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580445 := by
  apply coveredState_split_literal (state := state_1580445) 3
    state_1580446 state_1580465
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580446
  · exact cover_1580465
#print axioms cover_1580445

def state_1580369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 194 else (if j.val < 4 then 105 else 103)))
theorem cover_1580369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580369 := by
  apply coveredState_split_literal (state := state_1580369) 4
    state_1580370 state_1580445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580370
  · exact cover_1580445
#print axioms cover_1580369

def state_1580368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 97 else (if j.val < 4 then 105 else 103)))
theorem cover_1580368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580368 := by
  apply coveredState_split_literal (state := state_1580368) 2
    state_1580369 state_1580514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580369
  · exact cover_1580514
#print axioms cover_1580368

def state_1580286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 105 else 103)))
theorem cover_1580286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580286 := by
  apply coveredState_split_literal (state := state_1580286) 1
    state_1580287 state_1580368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580287
  · exact cover_1580368
#print axioms cover_1580286

def state_1580266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 105 else 103)))
theorem cover_1580266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580266 := by
  apply coveredState_split_literal (state := state_1580266) 0
    state_1580267 state_1580286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580267
  · exact cover_1580286
#print axioms cover_1580266

def state_1580176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 103)))
theorem cover_1580176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580176 := by
  apply coveredState_split_literal (state := state_1580176) 3
    state_1580177 state_1580266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580177
  · exact cover_1580266
#print axioms cover_1580176

def state_1580136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 51)))
theorem cover_1580136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580136 := by
  apply coveredState_split_literal (state := state_1580136) 4
    state_1580137 state_1580176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580137
  · exact cover_1580176
#print axioms cover_1580136

def state_1578672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1578672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578672 := by
  apply coveredState_split_literal (state := state_1578672) 2
    state_1578673 state_1580136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578673
  · exact cover_1580136
#print axioms cover_1578672

def state_1577752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1577752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577752 := by
  apply coveredState_split_literal (state := state_1577752) 1
    state_1577753 state_1578672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577753
  · exact cover_1578672
#print axioms cover_1577752

def state_1580572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 51)))
theorem cover_1580572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580572 := by
  apply coveredState_split_literal (state := state_1580572) 4
    state_1580573 state_1580588
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580573
  · exact cover_1580588
#print axioms cover_1580572

def state_1580665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 103)))
theorem cover_1580665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580665 := by
  apply coveredState_split_literal (state := state_1580665) 3
    state_1580666 state_1580679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580666
  · exact cover_1580679
#print axioms cover_1580665

def state_1580647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 51)))
theorem cover_1580647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580647 := by
  apply coveredState_split_literal (state := state_1580647) 4
    state_1580648 state_1580665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580648
  · exact cover_1580665
#print axioms cover_1580647

def state_1580571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1580571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580571 := by
  apply coveredState_split_literal (state := state_1580571) 2
    state_1580572 state_1580647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580572
  · exact cover_1580647
#print axioms cover_1580571

def state_1580525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1580525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580525 := by
  apply coveredState_split_literal (state := state_1580525) 1
    state_1580526 state_1580571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580526
  · exact cover_1580571
#print axioms cover_1580525

def state_1577751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1577751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577751 := by
  apply coveredState_split_literal (state := state_1577751) 0
    state_1577752 state_1580525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577752
  · exact cover_1580525
#print axioms cover_1577751

def state_1580803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 51)))
theorem cover_1580803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580803 := by
  apply coveredState_split_literal (state := state_1580803) 4
    state_1580804 state_1580831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580804
  · exact cover_1580831
#print axioms cover_1580803

def state_1580759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 51)))
theorem cover_1580759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580759 := by
  apply coveredState_split_literal (state := state_1580759) 2
    state_1580760 state_1580803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580760
  · exact cover_1580803
#print axioms cover_1580759

def state_1580741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 51)))
theorem cover_1580741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580741 := by
  apply coveredState_split_literal (state := state_1580741) 1
    state_1580742 state_1580759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580742
  · exact cover_1580759
#print axioms cover_1580741
end Mub6.Numerical.CircleFullD0.Forest
