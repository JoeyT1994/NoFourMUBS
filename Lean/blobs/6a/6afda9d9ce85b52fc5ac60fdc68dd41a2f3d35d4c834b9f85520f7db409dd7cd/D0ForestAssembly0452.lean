import D0FullInterface
import D0ForestAssembly0450
import D0ForestAssembly0451
import D0ForestChunk1765
import D0ForestChunk1770
import D0ForestChunk1771
import D0ForestChunk1772
import D0ForestChunk1773
import D0ForestChunk1774
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2296969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
theorem cover_2296969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296969 := by
  apply coveredState_split_literal (state := state_2296969) 0
    state_2296970 state_2297017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296970
  · exact cover_2297017
#print axioms cover_2296969

def state_2295855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_2295855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295855 := by
  apply coveredState_split_literal (state := state_2295855) 4
    state_2295856 state_2296969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295856
  · exact cover_2296969
#print axioms cover_2295855

def state_2298052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 22)))
theorem cover_2298052 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298052 := by
  apply coveredState_split_literal (state := state_2298052) 2
    state_2298053 state_2298108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298053
  · exact cover_2298108
#print axioms cover_2298052

def state_2298051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_2298051 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298051 := by
  apply coveredState_split_literal (state := state_2298051) 3
    state_2298052 state_2298117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298052
  · exact cover_2298117
#print axioms cover_2298051

def state_2298050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_2298050 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298050 := by
  apply coveredState_split_literal (state := state_2298050) 1
    state_2298051 state_2298130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298051
  · exact cover_2298130
#print axioms cover_2298050

def state_2298204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 45)))
theorem cover_2298204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298204 := by
  apply coveredState_split_literal (state := state_2298204) 4
    state_2298205 state_2298216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298205
  · exact cover_2298216
#print axioms cover_2298204

def state_2298203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 45)))
theorem cover_2298203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298203 := by
  apply coveredState_split_literal (state := state_2298203) 2
    state_2298204 state_2298277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298204
  · exact cover_2298277
#print axioms cover_2298203

def state_2298354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 91)))
theorem cover_2298354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298354 := by
  apply coveredState_split_literal (state := state_2298354) 0
    state_2298355 state_2298358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298355
  · exact cover_2298358
#print axioms cover_2298354

def state_2298353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 91)))
theorem cover_2298353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298353 := by
  apply coveredState_split_literal (state := state_2298353) 1
    state_2298354 state_2298419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298354
  · exact cover_2298419
#print axioms cover_2298353

def state_2298319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 45)))
theorem cover_2298319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298319 := by
  apply coveredState_split_literal (state := state_2298319) 4
    state_2298320 state_2298353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298320
  · exact cover_2298353
#print axioms cover_2298319

def state_2298318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 45)))
theorem cover_2298318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298318 := by
  apply coveredState_split_literal (state := state_2298318) 2
    state_2298319 state_2298448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298319
  · exact cover_2298448
#print axioms cover_2298318

def state_2298202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 45)))
theorem cover_2298202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298202 := by
  apply coveredState_split_literal (state := state_2298202) 3
    state_2298203 state_2298318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298203
  · exact cover_2298318
#print axioms cover_2298202

def state_2298201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 45)))
theorem cover_2298201 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298201 := by
  apply coveredState_split_literal (state := state_2298201) 1
    state_2298202 state_2298479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298202
  · exact cover_2298479
#print axioms cover_2298201

def state_2298575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 72 else (if j.val < 4 then 107 else 91)))
theorem cover_2298575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298575 := by
  apply coveredState_split_literal (state := state_2298575) 4
    state_2298576 state_2298595
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298576
  · exact cover_2298595
#print axioms cover_2298575

def state_2298574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 107 else 91)))
theorem cover_2298574 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298574 := by
  apply coveredState_split_literal (state := state_2298574) 2
    state_2298575 state_2298654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298575
  · exact cover_2298654
#print axioms cover_2298574

def state_2298550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 91)))
theorem cover_2298550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298550 := by
  apply coveredState_split_literal (state := state_2298550) 3
    state_2298551 state_2298574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298551
  · exact cover_2298574
#print axioms cover_2298550

def state_2298669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 91)))
theorem cover_2298669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298669 := by
  apply coveredState_split_literal (state := state_2298669) 3
    state_2298670 state_2298689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298670
  · exact cover_2298689
#print axioms cover_2298669

def state_2298549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 91)))
theorem cover_2298549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298549 := by
  apply coveredState_split_literal (state := state_2298549) 1
    state_2298550 state_2298669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298550
  · exact cover_2298669
#print axioms cover_2298549

def state_2298548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 91)))
theorem cover_2298548 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298548 := by
  apply coveredState_split_literal (state := state_2298548) 0
    state_2298549 state_2298740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298549
  · exact cover_2298740
#print axioms cover_2298548

def state_2298520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 45)))
theorem cover_2298520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298520 := by
  apply coveredState_split_literal (state := state_2298520) 4
    state_2298521 state_2298548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298521
  · exact cover_2298548
#print axioms cover_2298520

def state_2298779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 45)))
theorem cover_2298779 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298779 := by
  apply coveredState_split_literal (state := state_2298779) 4
    state_2298780 state_2298793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298780
  · exact cover_2298793
#print axioms cover_2298779

def state_2298519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 45)))
theorem cover_2298519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298519 := by
  apply coveredState_split_literal (state := state_2298519) 2
    state_2298520 state_2298779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298520
  · exact cover_2298779
#print axioms cover_2298519

def state_2298501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 45)))
theorem cover_2298501 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298501 := by
  apply coveredState_split_literal (state := state_2298501) 3
    state_2298502 state_2298519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298502
  · exact cover_2298519
#print axioms cover_2298501

def state_2298500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 45)))
theorem cover_2298500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298500 := by
  apply coveredState_split_literal (state := state_2298500) 1
    state_2298501 state_2298844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298501
  · exact cover_2298844
#print axioms cover_2298500

def state_2298200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 45)))
theorem cover_2298200 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298200 := by
  apply coveredState_split_literal (state := state_2298200) 0
    state_2298201 state_2298500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298201
  · exact cover_2298500
#print axioms cover_2298200

def state_2298142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
theorem cover_2298142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298142 := by
  apply coveredState_split_literal (state := state_2298142) 4
    state_2298143 state_2298200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298143
  · exact cover_2298200
#print axioms cover_2298142

def state_2298919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 45)))
theorem cover_2298919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298919 := by
  apply coveredState_split_literal (state := state_2298919) 0
    state_2298920 state_2298957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298920
  · exact cover_2298957
#print axioms cover_2298919

def state_2298903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 22)))
theorem cover_2298903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298903 := by
  apply coveredState_split_literal (state := state_2298903) 4
    state_2298904 state_2298919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298904
  · exact cover_2298919
#print axioms cover_2298903

def state_2298141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 22)))
theorem cover_2298141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298141 := by
  apply coveredState_split_literal (state := state_2298141) 2
    state_2298142 state_2298903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298142
  · exact cover_2298903
#print axioms cover_2298141

def state_2299027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 44)))
theorem cover_2299027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299027 := by
  apply coveredState_split_literal (state := state_2299027) 2
    state_2299028 state_2299083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299028
  · exact cover_2299083
#print axioms cover_2299027

def state_2299026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 44)))
theorem cover_2299026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299026 := by
  apply coveredState_split_literal (state := state_2299026) 1
    state_2299027 state_2299108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299027
  · exact cover_2299108
#print axioms cover_2299026

def state_2299000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 44)))
theorem cover_2299000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299000 := by
  apply coveredState_split_literal (state := state_2299000) 0
    state_2299001 state_2299026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299001
  · exact cover_2299026
#print axioms cover_2299000
end Mub6.Numerical.CircleFullD0.Forest
