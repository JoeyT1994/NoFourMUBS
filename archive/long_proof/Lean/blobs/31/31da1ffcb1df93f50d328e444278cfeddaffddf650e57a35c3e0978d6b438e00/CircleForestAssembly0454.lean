import CircleFullInterface
import CircleForestAssembly0452
import CircleForestAssembly0453
import CircleForestChunk1779
import CircleForestChunk1780
import CircleForestChunk1781
import CircleForestChunk1782
import CircleForestChunk1783
import CircleForestChunk1784
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2300397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 27 else 45)))
theorem cover_2300397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300397 := by
  apply coveredState_split_literal (state := state_2300397) 3
    state_2300398 state_2300447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300398
  · exact cover_2300447
#print axioms cover_2300397

def state_2300396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 45)))
theorem cover_2300396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300396 := by
  apply coveredState_split_literal (state := state_2300396) 2
    state_2300397 state_2300476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300397
  · exact cover_2300476
#print axioms cover_2300396

def state_2300376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 45)))
theorem cover_2300376 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300376 := by
  apply coveredState_split_literal (state := state_2300376) 1
    state_2300377 state_2300396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300377
  · exact cover_2300396
#print axioms cover_2300376

def state_2300366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 45)))
theorem cover_2300366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300366 := by
  apply coveredState_split_literal (state := state_2300366) 0
    state_2300367 state_2300376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300367
  · exact cover_2300376
#print axioms cover_2300366

def state_2300304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
theorem cover_2300304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300304 := by
  apply coveredState_split_literal (state := state_2300304) 4
    state_2300305 state_2300366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300305
  · exact cover_2300366
#print axioms cover_2300304

def state_2298998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 22)))
theorem cover_2298998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298998 := by
  apply coveredState_split_literal (state := state_2298998) 2
    state_2298999 state_2300304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298999
  · exact cover_2300304
#print axioms cover_2298998

def state_2298140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_2298140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298140 := by
  apply coveredState_split_literal (state := state_2298140) 3
    state_2298141 state_2298998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298141
  · exact cover_2298998
#print axioms cover_2298140

def state_2300513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 22)))
theorem cover_2300513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300513 := by
  apply coveredState_split_literal (state := state_2300513) 2
    state_2300514 state_2300543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300514
  · exact cover_2300543
#print axioms cover_2300513

def state_2300493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_2300493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300493 := by
  apply coveredState_split_literal (state := state_2300493) 3
    state_2300494 state_2300513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300494
  · exact cover_2300513
#print axioms cover_2300493

def state_2298139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_2298139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298139 := by
  apply coveredState_split_literal (state := state_2298139) 1
    state_2298140 state_2300493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298140
  · exact cover_2300493
#print axioms cover_2298139

def state_2298049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_2298049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298049 := by
  apply coveredState_split_literal (state := state_2298049) 0
    state_2298050 state_2298139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298050
  · exact cover_2298139
#print axioms cover_2298049

def state_2300587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 23)))
theorem cover_2300587 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300587 := by
  apply coveredState_split_literal (state := state_2300587) 2
    state_2300588 state_2300649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300588
  · exact cover_2300649
#print axioms cover_2300587

def state_2300586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
theorem cover_2300586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300586 := by
  apply coveredState_split_literal (state := state_2300586) 3
    state_2300587 state_2300656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300587
  · exact cover_2300656
#print axioms cover_2300586

def state_2300585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
theorem cover_2300585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300585 := by
  apply coveredState_split_literal (state := state_2300585) 1
    state_2300586 state_2300659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300586
  · exact cover_2300659
#print axioms cover_2300585

def state_2300674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 92)))
theorem cover_2300674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300674 := by
  apply coveredState_split_literal (state := state_2300674) 3
    state_2300675 state_2300712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300675
  · exact cover_2300712
#print axioms cover_2300674

def state_2300673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 92)))
theorem cover_2300673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300673 := by
  apply coveredState_split_literal (state := state_2300673) 1
    state_2300674 state_2300751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300674
  · exact cover_2300751
#print axioms cover_2300673

def state_2300672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 46)))
theorem cover_2300672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300672 := by
  apply coveredState_split_literal (state := state_2300672) 4
    state_2300673 state_2300784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300673
  · exact cover_2300784
#print axioms cover_2300672

def state_2300671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 46)))
theorem cover_2300671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300671 := by
  apply coveredState_split_literal (state := state_2300671) 2
    state_2300672 state_2300823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300672
  · exact cover_2300823
#print axioms cover_2300671

def state_2300876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 92)))
theorem cover_2300876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300876 := by
  apply coveredState_split_literal (state := state_2300876) 1
    state_2300877 state_2300938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300877
  · exact cover_2300938
#print axioms cover_2300876

def state_2300875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 46)))
theorem cover_2300875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300875 := by
  apply coveredState_split_literal (state := state_2300875) 4
    state_2300876 state_2301001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300876
  · exact cover_2301001
#print axioms cover_2300875

def state_2300874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 46)))
theorem cover_2300874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300874 := by
  apply coveredState_split_literal (state := state_2300874) 2
    state_2300875 state_2301032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300875
  · exact cover_2301032
#print axioms cover_2300874

def state_2300670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 46)))
theorem cover_2300670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300670 := by
  apply coveredState_split_literal (state := state_2300670) 3
    state_2300671 state_2300874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300671
  · exact cover_2300874
#print axioms cover_2300670

def state_2300669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 46)))
theorem cover_2300669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300669 := by
  apply coveredState_split_literal (state := state_2300669) 1
    state_2300670 state_2301067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300670
  · exact cover_2301067
#print axioms cover_2300669

def state_2301153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 107 else 92)))
theorem cover_2301153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301153 := by
  apply coveredState_split_literal (state := state_2301153) 2
    state_2301154 state_2301215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301154
  · exact cover_2301215
#print axioms cover_2301153

def state_2301137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 92)))
theorem cover_2301137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301137 := by
  apply coveredState_split_literal (state := state_2301137) 3
    state_2301138 state_2301153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301138
  · exact cover_2301153
#print axioms cover_2301137

def state_2301236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 107 else 92)))
theorem cover_2301236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301236 := by
  apply coveredState_split_literal (state := state_2301236) 2
    state_2301237 state_2301274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301237
  · exact cover_2301274
#print axioms cover_2301236

def state_2301222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 92)))
theorem cover_2301222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301222 := by
  apply coveredState_split_literal (state := state_2301222) 3
    state_2301223 state_2301236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301223
  · exact cover_2301236
#print axioms cover_2301222

def state_2301136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 92)))
theorem cover_2301136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301136 := by
  apply coveredState_split_literal (state := state_2301136) 1
    state_2301137 state_2301222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301137
  · exact cover_2301222
#print axioms cover_2301136

def state_2301135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 92)))
theorem cover_2301135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301135 := by
  apply coveredState_split_literal (state := state_2301135) 0
    state_2301136 state_2301309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301136
  · exact cover_2301309
#print axioms cover_2301135

def state_2301134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 46)))
theorem cover_2301134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301134 := by
  apply coveredState_split_literal (state := state_2301134) 4
    state_2301135 state_2301324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301135
  · exact cover_2301324
#print axioms cover_2301134

def state_2301133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 46)))
theorem cover_2301133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301133 := by
  apply coveredState_split_literal (state := state_2301133) 2
    state_2301134 state_2301351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301134
  · exact cover_2301351
#print axioms cover_2301133

def state_2301119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 46)))
theorem cover_2301119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301119 := by
  apply coveredState_split_literal (state := state_2301119) 3
    state_2301120 state_2301133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2301120
  · exact cover_2301133
#print axioms cover_2301119
end Mub6.Numerical.CircleFullD0.Forest
