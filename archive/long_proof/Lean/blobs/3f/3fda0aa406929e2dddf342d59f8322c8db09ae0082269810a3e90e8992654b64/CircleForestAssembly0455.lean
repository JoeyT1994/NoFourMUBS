import CircleFullInterface
import CircleForestAssembly0448
import CircleForestAssembly0449
import CircleForestAssembly0452
import CircleForestAssembly0454
import CircleForestChunk1784
import CircleForestChunk1785
import CircleForestChunk1786
import CircleForestChunk1787
import CircleForestChunk1788
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2301118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 46)))
theorem cover_2301118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301118 := by
  apply coveredState_split_literal (state := state_2301118) 1
    state_2301119 state_2301374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301119
  · exact cover_2301374
#print axioms cover_2301118

def state_2300668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 46)))
theorem cover_2300668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300668 := by
  apply coveredState_split_literal (state := state_2300668) 0
    state_2300669 state_2301118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300669
  · exact cover_2301118
#print axioms cover_2300668

def state_2301431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 47)))
theorem cover_2301431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301431 := by
  apply coveredState_split_literal (state := state_2301431) 0
    state_2301432 state_2301487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301432
  · exact cover_2301487
#print axioms cover_2301431

def state_2300667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 23)))
theorem cover_2300667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300667 := by
  apply coveredState_split_literal (state := state_2300667) 4
    state_2300668 state_2301431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300668
  · exact cover_2301431
#print axioms cover_2300667

def state_2301521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 46)))
theorem cover_2301521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301521 := by
  apply coveredState_split_literal (state := state_2301521) 0
    state_2301522 state_2301555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301522
  · exact cover_2301555
#print axioms cover_2301521

def state_2301520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 23)))
theorem cover_2301520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301520 := by
  apply coveredState_split_literal (state := state_2301520) 4
    state_2301521 state_2301586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301521
  · exact cover_2301586
#print axioms cover_2301520

def state_2300666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 23)))
theorem cover_2300666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300666 := by
  apply coveredState_split_literal (state := state_2300666) 2
    state_2300667 state_2301520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300667
  · exact cover_2301520
#print axioms cover_2300666

def state_2301626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 92)))
theorem cover_2301626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301626 := by
  apply coveredState_split_literal (state := state_2301626) 1
    state_2301627 state_2301668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301627
  · exact cover_2301668
#print axioms cover_2301626

def state_2301727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 92)))
theorem cover_2301727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301727 := by
  apply coveredState_split_literal (state := state_2301727) 2
    state_2301728 state_2301773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301728
  · exact cover_2301773
#print axioms cover_2301727

def state_2301695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 92)))
theorem cover_2301695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301695 := by
  apply coveredState_split_literal (state := state_2301695) 1
    state_2301696 state_2301727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301696
  · exact cover_2301727
#print axioms cover_2301695

def state_2301625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 92)))
theorem cover_2301625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301625 := by
  apply coveredState_split_literal (state := state_2301625) 0
    state_2301626 state_2301695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301626
  · exact cover_2301695
#print axioms cover_2301625

def state_2301624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 46)))
theorem cover_2301624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301624 := by
  apply coveredState_split_literal (state := state_2301624) 4
    state_2301625 state_2301810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301625
  · exact cover_2301810
#print axioms cover_2301624

def state_2301623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 27 else 46)))
theorem cover_2301623 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301623 := by
  apply coveredState_split_literal (state := state_2301623) 3
    state_2301624 state_2301853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301624
  · exact cover_2301853
#print axioms cover_2301623

def state_2301622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 46)))
theorem cover_2301622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301622 := by
  apply coveredState_split_literal (state := state_2301622) 2
    state_2301623 state_2301882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301623
  · exact cover_2301882
#print axioms cover_2301622

def state_2301933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 46)))
theorem cover_2301933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301933 := by
  apply coveredState_split_literal (state := state_2301933) 2
    state_2301934 state_2301965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301934
  · exact cover_2301965
#print axioms cover_2301933

def state_2301621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 46)))
theorem cover_2301621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301621 := by
  apply coveredState_split_literal (state := state_2301621) 1
    state_2301622 state_2301933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301622
  · exact cover_2301933
#print axioms cover_2301621

def state_2301607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 46)))
theorem cover_2301607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301607 := by
  apply coveredState_split_literal (state := state_2301607) 0
    state_2301608 state_2301621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301608
  · exact cover_2301621
#print axioms cover_2301607

def state_2301606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 23)))
theorem cover_2301606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301606 := by
  apply coveredState_split_literal (state := state_2301606) 4
    state_2301607 state_2302006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301607
  · exact cover_2302006
#print axioms cover_2301606

def state_2301605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 23)))
theorem cover_2301605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301605 := by
  apply coveredState_split_literal (state := state_2301605) 2
    state_2301606 state_2302029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301606
  · exact cover_2302029
#print axioms cover_2301605

def state_2300665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
theorem cover_2300665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300665 := by
  apply coveredState_split_literal (state := state_2300665) 3
    state_2300666 state_2301605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300666
  · exact cover_2301605
#print axioms cover_2300665

def state_2302076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
theorem cover_2302076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302076 := by
  apply coveredState_split_literal (state := state_2302076) 3
    state_2302077 state_2302118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302077
  · exact cover_2302118
#print axioms cover_2302076

def state_2300664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
theorem cover_2300664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300664 := by
  apply coveredState_split_literal (state := state_2300664) 1
    state_2300665 state_2302076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300665
  · exact cover_2302076
#print axioms cover_2300664

def state_2300584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
theorem cover_2300584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300584 := by
  apply coveredState_split_literal (state := state_2300584) 0
    state_2300585 state_2300664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300585
  · exact cover_2300664
#print axioms cover_2300584

def state_2298048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_2298048 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298048 := by
  apply coveredState_split_literal (state := state_2298048) 4
    state_2298049 state_2300584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298049
  · exact cover_2300584
#print axioms cover_2298048

def state_2295854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_2295854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295854 := by
  apply coveredState_split_literal (state := state_2295854) 2
    state_2295855 state_2298048
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295855
  · exact cover_2298048
#print axioms cover_2295854

def state_2295714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_2295714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295714 := by
  apply coveredState_split_literal (state := state_2295714) 4
    state_2295715 state_2295854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295715
  · exact cover_2295854
#print axioms cover_2295714

def state_2294466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2294466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294466 := by
  apply coveredState_split_literal (state := state_2294466) 3
    state_2294467 state_2295714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294467
  · exact cover_2295714
#print axioms cover_2294466

def state_2289804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2289804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289804 := by
  apply coveredState_split_literal (state := state_2289804) 1
    state_2289805 state_2294466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289805
  · exact cover_2294466
#print axioms cover_2289804

def state_2302255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 33 else (if j.val < 4 then 55 else 45)))
theorem cover_2302255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302255 := by
  apply coveredState_split_literal (state := state_2302255) 4
    state_2302256 state_2302277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302256
  · exact cover_2302277
#print axioms cover_2302255

def state_2302233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 55 else 45)))
theorem cover_2302233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302233 := by
  apply coveredState_split_literal (state := state_2302233) 2
    state_2302234 state_2302255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302234
  · exact cover_2302255
#print axioms cover_2302233

def state_2302231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 45)))
theorem cover_2302231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302231 := by
  apply coveredState_split_literal (state := state_2302231) 3
    state_2302232 state_2302233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302232
  · exact cover_2302233
#print axioms cover_2302231

def state_2302219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 22)))
theorem cover_2302219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302219 := by
  apply coveredState_split_literal (state := state_2302219) 4
    state_2302220 state_2302231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302220
  · exact cover_2302231
#print axioms cover_2302219
end Mub6.Numerical.CircleFullD0.Forest
