import CircleFullInterface
import CircleForestAssembly0449
import CircleForestChunk1761
import CircleForestChunk1763
import CircleForestChunk1764
import CircleForestChunk1765
import CircleForestChunk1766
import CircleForestChunk1767
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2295950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 45)))
theorem cover_2295950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295950 := by
  apply coveredState_split_literal (state := state_2295950) 0
    state_2295951 state_2296164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295951
  · exact cover_2296164
#print axioms cover_2295950

def state_2295908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 22)))
theorem cover_2295908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295908 := by
  apply coveredState_split_literal (state := state_2295908) 4
    state_2295909 state_2295950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295909
  · exact cover_2295950
#print axioms cover_2295908

def state_2295888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 22)))
theorem cover_2295888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295888 := by
  apply coveredState_split_literal (state := state_2295888) 2
    state_2295889 state_2295908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295889
  · exact cover_2295908
#print axioms cover_2295888

def state_2296499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 104) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 91)))
theorem cover_2296499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296499 := by
  apply coveredState_split_literal (state := state_2296499) 3
    state_2296500 state_2296525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296500
  · exact cover_2296525
#print axioms cover_2296499

def state_2296498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 91)))
theorem cover_2296498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296498 := by
  apply coveredState_split_literal (state := state_2296498) 1
    state_2296499 state_2296578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296499
  · exact cover_2296578
#print axioms cover_2296498

def state_2296482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 91)))
theorem cover_2296482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296482 := by
  apply coveredState_split_literal (state := state_2296482) 0
    state_2296483 state_2296498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296483
  · exact cover_2296498
#print axioms cover_2296482

def state_2296474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 45)))
theorem cover_2296474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296474 := by
  apply coveredState_split_literal (state := state_2296474) 4
    state_2296475 state_2296482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296475
  · exact cover_2296482
#print axioms cover_2296474

def state_2296582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 90)))
theorem cover_2296582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296582 := by
  apply coveredState_split_literal (state := state_2296582) 0
    state_2296583 state_2296630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296583
  · exact cover_2296630
#print axioms cover_2296582

def state_2296654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 108 else 91)))
theorem cover_2296654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296654 := by
  apply coveredState_split_literal (state := state_2296654) 2
    state_2296655 state_2296688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296655
  · exact cover_2296688
#print axioms cover_2296654

def state_2296653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 91)))
theorem cover_2296653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296653 := by
  apply coveredState_split_literal (state := state_2296653) 3
    state_2296654 state_2296745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296654
  · exact cover_2296745
#print axioms cover_2296653

def state_2296652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 91)))
theorem cover_2296652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296652 := by
  apply coveredState_split_literal (state := state_2296652) 1
    state_2296653 state_2296772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296653
  · exact cover_2296772
#print axioms cover_2296652

def state_2296651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 91)))
theorem cover_2296651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296651 := by
  apply coveredState_split_literal (state := state_2296651) 0
    state_2296652 state_2296799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296652
  · exact cover_2296799
#print axioms cover_2296651

def state_2296581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 45)))
theorem cover_2296581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296581 := by
  apply coveredState_split_literal (state := state_2296581) 4
    state_2296582 state_2296651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296582
  · exact cover_2296651
#print axioms cover_2296581

def state_2296473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 54 else 45)))
theorem cover_2296473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296473 := by
  apply coveredState_split_literal (state := state_2296473) 2
    state_2296474 state_2296581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296474
  · exact cover_2296581
#print axioms cover_2296473

def state_2296856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 55 else 45)))
theorem cover_2296856 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296856 := by
  apply coveredState_split_literal (state := state_2296856) 2
    state_2296857 state_2296886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296857
  · exact cover_2296886
#print axioms cover_2296856

def state_2296472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 45)))
theorem cover_2296472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296472 := by
  apply coveredState_split_literal (state := state_2296472) 3
    state_2296473 state_2296856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296473
  · exact cover_2296856
#print axioms cover_2296472

def state_2296471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 45)))
theorem cover_2296471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296471 := by
  apply coveredState_split_literal (state := state_2296471) 1
    state_2296472 state_2296947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296472
  · exact cover_2296947
#print axioms cover_2296471

def state_2296423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 45)))
theorem cover_2296423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296423 := by
  apply coveredState_split_literal (state := state_2296423) 0
    state_2296424 state_2296471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296424
  · exact cover_2296471
#print axioms cover_2296423

def state_2296383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 22)))
theorem cover_2296383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296383 := by
  apply coveredState_split_literal (state := state_2296383) 4
    state_2296384 state_2296423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296384
  · exact cover_2296423
#print axioms cover_2296383

def state_2296373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 22)))
theorem cover_2296373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296373 := by
  apply coveredState_split_literal (state := state_2296373) 2
    state_2296374 state_2296383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296374
  · exact cover_2296383
#print axioms cover_2296373

def state_2295887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_2295887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295887 := by
  apply coveredState_split_literal (state := state_2295887) 3
    state_2295888 state_2296373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295888
  · exact cover_2296373
#print axioms cover_2295887

def state_2295886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_2295886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295886 := by
  apply coveredState_split_literal (state := state_2295886) 1
    state_2295887 state_2296960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295887
  · exact cover_2296960
#print axioms cover_2295886

def state_2295856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_2295856 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295856 := by
  apply coveredState_split_literal (state := state_2295856) 0
    state_2295857 state_2295886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295857
  · exact cover_2295886
#print axioms cover_2295856

def state_2297055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 46)))
theorem cover_2297055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297055 := by
  apply coveredState_split_literal (state := state_2297055) 4
    state_2297056 state_2297119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297056
  · exact cover_2297119
#print axioms cover_2297055

def state_2297041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 46)))
theorem cover_2297041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297041 := by
  apply coveredState_split_literal (state := state_2297041) 2
    state_2297042 state_2297055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297042
  · exact cover_2297055
#print axioms cover_2297041

def state_2297165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 106 else 92)))
theorem cover_2297165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297165 := by
  apply coveredState_split_literal (state := state_2297165) 2
    state_2297166 state_2297185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297166
  · exact cover_2297185
#print axioms cover_2297165

def state_2297164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 92)))
theorem cover_2297164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297164 := by
  apply coveredState_split_literal (state := state_2297164) 3
    state_2297165 state_2297230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297165
  · exact cover_2297230
#print axioms cover_2297164

def state_2297150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 92)))
theorem cover_2297150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297150 := by
  apply coveredState_split_literal (state := state_2297150) 0
    state_2297151 state_2297164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297151
  · exact cover_2297164
#print axioms cover_2297150

def state_2297149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 92)))
theorem cover_2297149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297149 := by
  apply coveredState_split_literal (state := state_2297149) 1
    state_2297150 state_2297269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297150
  · exact cover_2297269
#print axioms cover_2297149

def state_2297148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 46)))
theorem cover_2297148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297148 := by
  apply coveredState_split_literal (state := state_2297148) 4
    state_2297149 state_2297282
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297149
  · exact cover_2297282
#print axioms cover_2297148

def state_2297126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 53 else 46)))
theorem cover_2297126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297126 := by
  apply coveredState_split_literal (state := state_2297126) 2
    state_2297127 state_2297148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297127
  · exact cover_2297148
#print axioms cover_2297126

def state_2297040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 46)))
theorem cover_2297040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297040 := by
  apply coveredState_split_literal (state := state_2297040) 3
    state_2297041 state_2297126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297041
  · exact cover_2297126
#print axioms cover_2297040
end Mub6.Numerical.CircleFullD0.Forest
