import CircleFullInterface
import CircleForestChunk1837
import CircleForestChunk1838
import CircleForestChunk1839
import CircleForestChunk1840
import CircleForestChunk1841
import CircleForestChunk1842
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2314099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 5)))
theorem cover_2314099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314099 := by
  apply coveredState_split_literal (state := state_2314099) 4
    state_2314100 state_2314159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314100
  · exact cover_2314159
#print axioms cover_2314099

def state_2314098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2314098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314098 := by
  apply coveredState_split_literal (state := state_2314098) 2
    state_2314099 state_2314208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314099
  · exact cover_2314208
#print axioms cover_2314098

def state_2314076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2314076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314076 := by
  apply coveredState_split_literal (state := state_2314076) 1
    state_2314077 state_2314098
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314077
  · exact cover_2314098
#print axioms cover_2314076

def state_2314416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 43)))
theorem cover_2314416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314416 := by
  apply coveredState_split_literal (state := state_2314416) 3
    state_2314417 state_2314452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314417
  · exact cover_2314452
#print axioms cover_2314416

def state_2314396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 21)))
theorem cover_2314396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314396 := by
  apply coveredState_split_literal (state := state_2314396) 4
    state_2314397 state_2314416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314397
  · exact cover_2314416
#print axioms cover_2314396

def state_2314372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 21)))
theorem cover_2314372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314372 := by
  apply coveredState_split_literal (state := state_2314372) 0
    state_2314373 state_2314396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314373
  · exact cover_2314396
#print axioms cover_2314372

def state_2314322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 21)))
theorem cover_2314322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314322 := by
  apply coveredState_split_literal (state := state_2314322) 3
    state_2314323 state_2314372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314323
  · exact cover_2314372
#print axioms cover_2314322

def state_2314298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 10)))
theorem cover_2314298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314298 := by
  apply coveredState_split_literal (state := state_2314298) 4
    state_2314299 state_2314322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314299
  · exact cover_2314322
#print axioms cover_2314298

def state_2314297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
theorem cover_2314297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314297 := by
  apply coveredState_split_literal (state := state_2314297) 2
    state_2314298 state_2314485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314298
  · exact cover_2314485
#print axioms cover_2314297

def state_2314263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
theorem cover_2314263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314263 := by
  apply coveredState_split_literal (state := state_2314263) 1
    state_2314264 state_2314297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314264
  · exact cover_2314297
#print axioms cover_2314263

def state_2314566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 21)))
theorem cover_2314566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314566 := by
  apply coveredState_split_literal (state := state_2314566) 4
    state_2314567 state_2314574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314567
  · exact cover_2314574
#print axioms cover_2314566

def state_2314565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 21)))
theorem cover_2314565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314565 := by
  apply coveredState_split_literal (state := state_2314565) 0
    state_2314566 state_2314633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314566
  · exact cover_2314633
#print axioms cover_2314565

def state_2314559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 21)))
theorem cover_2314559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314559 := by
  apply coveredState_split_literal (state := state_2314559) 3
    state_2314560 state_2314565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314560
  · exact cover_2314565
#print axioms cover_2314559

def state_2314549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 10)))
theorem cover_2314549 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314549 := by
  apply coveredState_split_literal (state := state_2314549) 4
    state_2314550 state_2314559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314550
  · exact cover_2314559
#print axioms cover_2314549

def state_2314548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
theorem cover_2314548 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314548 := by
  apply coveredState_split_literal (state := state_2314548) 2
    state_2314549 state_2314642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314549
  · exact cover_2314642
#print axioms cover_2314548

def state_2314542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
theorem cover_2314542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314542 := by
  apply coveredState_split_literal (state := state_2314542) 1
    state_2314543 state_2314548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314543
  · exact cover_2314548
#print axioms cover_2314542

def state_2314262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
theorem cover_2314262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314262 := by
  apply coveredState_split_literal (state := state_2314262) 0
    state_2314263 state_2314542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314263
  · exact cover_2314542
#print axioms cover_2314262

def state_2314750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 21)))
theorem cover_2314750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314750 := by
  apply coveredState_split_literal (state := state_2314750) 4
    state_2314751 state_2314764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314751
  · exact cover_2314764
#print axioms cover_2314750

def state_2314749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 21)))
theorem cover_2314749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314749 := by
  apply coveredState_split_literal (state := state_2314749) 0
    state_2314750 state_2314821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314750
  · exact cover_2314821
#print axioms cover_2314749

def state_2314748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 21)))
theorem cover_2314748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314748 := by
  apply coveredState_split_literal (state := state_2314748) 3
    state_2314749 state_2314848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314749
  · exact cover_2314848
#print axioms cover_2314748

def state_2314734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 10)))
theorem cover_2314734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314734 := by
  apply coveredState_split_literal (state := state_2314734) 4
    state_2314735 state_2314748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314735
  · exact cover_2314748
#print axioms cover_2314734

def state_2314922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 21)))
theorem cover_2314922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314922 := by
  apply coveredState_split_literal (state := state_2314922) 0
    state_2314923 state_2314976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314923
  · exact cover_2314976
#print axioms cover_2314922

def state_2314921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 21)))
theorem cover_2314921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314921 := by
  apply coveredState_split_literal (state := state_2314921) 3
    state_2314922 state_2314991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314922
  · exact cover_2314991
#print axioms cover_2314921

def state_2314885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 10)))
theorem cover_2314885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314885 := by
  apply coveredState_split_literal (state := state_2314885) 4
    state_2314886 state_2314921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314886
  · exact cover_2314921
#print axioms cover_2314885

def state_2314733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_2314733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314733 := by
  apply coveredState_split_literal (state := state_2314733) 2
    state_2314734 state_2314885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314734
  · exact cover_2314885
#print axioms cover_2314733

def state_2314713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_2314713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314713 := by
  apply coveredState_split_literal (state := state_2314713) 1
    state_2314714 state_2314733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314714
  · exact cover_2314733
#print axioms cover_2314713

def state_2314661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_2314661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314661 := by
  apply coveredState_split_literal (state := state_2314661) 0
    state_2314662 state_2314713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314662
  · exact cover_2314713
#print axioms cover_2314661

def state_2314261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
theorem cover_2314261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314261 := by
  apply coveredState_split_literal (state := state_2314261) 3
    state_2314262 state_2314661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314262
  · exact cover_2314661
#print axioms cover_2314261

def state_2315096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 22)))
theorem cover_2315096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315096 := by
  apply coveredState_split_literal (state := state_2315096) 4
    state_2315097 state_2315142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315097
  · exact cover_2315142
#print axioms cover_2315096

def state_2315204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 57 else 44)))
theorem cover_2315204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315204 := by
  apply coveredState_split_literal (state := state_2315204) 1
    state_2315205 state_2315252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315205
  · exact cover_2315252
#print axioms cover_2315204

def state_2315184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 44)))
theorem cover_2315184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315184 := by
  apply coveredState_split_literal (state := state_2315184) 3
    state_2315185 state_2315204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315185
  · exact cover_2315204
#print axioms cover_2315184

def state_2315333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 57 else 45)))
theorem cover_2315333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315333 := by
  apply coveredState_split_literal (state := state_2315333) 1
    state_2315334 state_2315361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315334
  · exact cover_2315361
#print axioms cover_2315333
end Mub6.Numerical.CircleFullD0.Forest
