import D0FullInterface
import D0ForestAssembly0273
import D0ForestAssembly0274
import D0ForestChunk1047
import D0ForestChunk1048
import D0ForestChunk1051
import D0ForestChunk1053
import D0ForestChunk1054
import D0ForestChunk1055
import D0ForestChunk1056
import D0ForestChunk1057
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1552561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 43)))
theorem cover_1552561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552561 := by
  apply coveredState_split_literal (state := state_1552561) 1
    state_1552562 state_1552581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552562
  · exact cover_1552581
#print axioms cover_1552561

def state_1551857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 21)))
theorem cover_1551857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551857 := by
  apply coveredState_split_literal (state := state_1551857) 4
    state_1551858 state_1552561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551858
  · exact cover_1552561
#print axioms cover_1551857

def state_1553033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 42)))
theorem cover_1553033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553033 := by
  apply coveredState_split_literal (state := state_1553033) 1
    state_1553034 state_1553063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553034
  · exact cover_1553063
#print axioms cover_1553033

def state_1553032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 21)))
theorem cover_1553032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553032 := by
  apply coveredState_split_literal (state := state_1553032) 4
    state_1553033 state_1553110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553033
  · exact cover_1553110
#print axioms cover_1553032

def state_1551856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1551856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551856 := by
  apply coveredState_split_literal (state := state_1551856) 2
    state_1551857 state_1553032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551857
  · exact cover_1553032
#print axioms cover_1551856

def state_1551822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1551822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551822 := by
  apply coveredState_split_literal (state := state_1551822) 0
    state_1551823 state_1551856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551823
  · exact cover_1551856
#print axioms cover_1551822

def state_1551798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1551798 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551798 := by
  apply coveredState_split_literal (state := state_1551798) 1
    state_1551799 state_1551822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551799
  · exact cover_1551822
#print axioms cover_1551798

def state_1551006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 10)))
theorem cover_1551006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551006 := by
  apply coveredState_split_literal (state := state_1551006) 4
    state_1551007 state_1551798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551007
  · exact cover_1551798
#print axioms cover_1551006

def state_1553164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 20)))
theorem cover_1553164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553164 := by
  apply coveredState_split_literal (state := state_1553164) 1
    state_1553165 state_1553206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553165
  · exact cover_1553206
#print axioms cover_1553164

def state_1553306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 21)))
theorem cover_1553306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553306 := by
  apply coveredState_split_literal (state := state_1553306) 4
    state_1553307 state_1553368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553307
  · exact cover_1553368
#print axioms cover_1553306

def state_1553305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 21 else 21)))
theorem cover_1553305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553305 := by
  apply coveredState_split_literal (state := state_1553305) 3
    state_1553306 state_1553405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553306
  · exact cover_1553405
#print axioms cover_1553305

def state_1553253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
theorem cover_1553253 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553253 := by
  apply coveredState_split_literal (state := state_1553253) 2
    state_1553254 state_1553305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553254
  · exact cover_1553305
#print axioms cover_1553253

def state_1553245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
theorem cover_1553245 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553245 := by
  apply coveredState_split_literal (state := state_1553245) 0
    state_1553246 state_1553253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553246
  · exact cover_1553253
#print axioms cover_1553245

def state_1553243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
theorem cover_1553243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553243 := by
  apply coveredState_split_literal (state := state_1553243) 1
    state_1553244 state_1553245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553244
  · exact cover_1553245
#print axioms cover_1553243

def state_1553163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 10)))
theorem cover_1553163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553163 := by
  apply coveredState_split_literal (state := state_1553163) 4
    state_1553164 state_1553243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553164
  · exact cover_1553243
#print axioms cover_1553163

def state_1551005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 10)))
theorem cover_1551005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551005 := by
  apply coveredState_split_literal (state := state_1551005) 3
    state_1551006 state_1553163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551006
  · exact cover_1553163
#print axioms cover_1551005

def state_1553453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 20)))
theorem cover_1553453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553453 := by
  apply coveredState_split_literal (state := state_1553453) 1
    state_1553454 state_1553479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553454
  · exact cover_1553479
#print axioms cover_1553453

def state_1553452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 10)))
theorem cover_1553452 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553452 := by
  apply coveredState_split_literal (state := state_1553452) 4
    state_1553453 state_1553522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553453
  · exact cover_1553522
#print axioms cover_1553452

def state_1553410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 10)))
theorem cover_1553410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553410 := by
  apply coveredState_split_literal (state := state_1553410) 3
    state_1553411 state_1553452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553411
  · exact cover_1553452
#print axioms cover_1553410

def state_1551004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
theorem cover_1551004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551004 := by
  apply coveredState_split_literal (state := state_1551004) 2
    state_1551005 state_1553410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551005
  · exact cover_1553410
#print axioms cover_1551004

def state_1553627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 57) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 20)))
theorem cover_1553627 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553627 := by
  apply coveredState_split_literal (state := state_1553627) 4
    state_1553628 state_1553669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553628
  · exact cover_1553669
#print axioms cover_1553627

def state_1553607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 57) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 20)))
theorem cover_1553607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553607 := by
  apply coveredState_split_literal (state := state_1553607) 3
    state_1553608 state_1553627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553608
  · exact cover_1553627
#print axioms cover_1553607

def state_1553591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 20)))
theorem cover_1553591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553591 := by
  apply coveredState_split_literal (state := state_1553591) 1
    state_1553592 state_1553607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553592
  · exact cover_1553607
#print axioms cover_1553591

def state_1553590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 20)))
theorem cover_1553590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553590 := by
  apply coveredState_split_literal (state := state_1553590) 2
    state_1553591 state_1553696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553591
  · exact cover_1553696
#print axioms cover_1553590

def state_1553589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 20)))
theorem cover_1553589 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553589 := by
  apply coveredState_split_literal (state := state_1553589) 0
    state_1553590 state_1553733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553590
  · exact cover_1553733
#print axioms cover_1553589

def state_1553806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 41)))
theorem cover_1553806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553806 := by
  apply coveredState_split_literal (state := state_1553806) 2
    state_1553807 state_1553868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553807
  · exact cover_1553868
#print axioms cover_1553806

def state_1553805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 41)))
theorem cover_1553805 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553805 := by
  apply coveredState_split_literal (state := state_1553805) 0
    state_1553806 state_1553915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553806
  · exact cover_1553915
#print axioms cover_1553805

def state_1553785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 20)))
theorem cover_1553785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553785 := by
  apply coveredState_split_literal (state := state_1553785) 4
    state_1553786 state_1553805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553786
  · exact cover_1553805
#print axioms cover_1553785

def state_1553763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 20)))
theorem cover_1553763 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553763 := by
  apply coveredState_split_literal (state := state_1553763) 3
    state_1553764 state_1553785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553764
  · exact cover_1553785
#print axioms cover_1553763

def state_1553762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 20)))
theorem cover_1553762 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553762 := by
  apply coveredState_split_literal (state := state_1553762) 1
    state_1553763 state_1553934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553763
  · exact cover_1553934
#print axioms cover_1553762

def state_1553761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 20)))
theorem cover_1553761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553761 := by
  apply coveredState_split_literal (state := state_1553761) 2
    state_1553762 state_1553959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553762
  · exact cover_1553959
#print axioms cover_1553761

def state_1553760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 20)))
theorem cover_1553760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553760 := by
  apply coveredState_split_literal (state := state_1553760) 0
    state_1553761 state_1554020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553761
  · exact cover_1554020
#print axioms cover_1553760
end Mub6.Numerical.CircleFullD0.Forest
