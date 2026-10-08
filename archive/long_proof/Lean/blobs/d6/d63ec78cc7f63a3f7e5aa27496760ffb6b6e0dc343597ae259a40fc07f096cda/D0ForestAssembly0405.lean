import D0FullInterface
import D0ForestAssembly0402
import D0ForestAssembly0403
import D0ForestAssembly0404
import D0ForestChunk1576
import D0ForestChunk1577
import D0ForestChunk1579
import D0ForestChunk1580
import D0ForestChunk1581
import D0ForestChunk1582
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2251850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
theorem cover_2251850 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251850 := by
  apply coveredState_split_literal (state := state_2251850) 1
    state_2251851 state_2251888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251851
  · exact cover_2251888
#print axioms cover_2251850

def state_2251849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 54)))
theorem cover_2251849 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251849 := by
  apply coveredState_split_literal (state := state_2251849) 3
    state_2251850 state_2252253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251850
  · exact cover_2252253
#print axioms cover_2251849

def state_2252332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 103) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 54)))
theorem cover_2252332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252332 := by
  apply coveredState_split_literal (state := state_2252332) 4
    state_2252333 state_2252390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252333
  · exact cover_2252390
#print axioms cover_2252332

def state_2252331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 103) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
theorem cover_2252331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252331 := by
  apply coveredState_split_literal (state := state_2252331) 2
    state_2252332 state_2252403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252332
  · exact cover_2252403
#print axioms cover_2252331

def state_2252315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
theorem cover_2252315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252315 := by
  apply coveredState_split_literal (state := state_2252315) 1
    state_2252316 state_2252331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252316
  · exact cover_2252331
#print axioms cover_2252315

def state_2252314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 54)))
theorem cover_2252314 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252314 := by
  apply coveredState_split_literal (state := state_2252314) 3
    state_2252315 state_2252454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252315
  · exact cover_2252454
#print axioms cover_2252314

def state_2251848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 54)))
theorem cover_2251848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251848 := by
  apply coveredState_split_literal (state := state_2251848) 0
    state_2251849 state_2252314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251849
  · exact cover_2252314
#print axioms cover_2251848

def state_2252522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 110)))
theorem cover_2252522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252522 := by
  apply coveredState_split_literal (state := state_2252522) 0
    state_2252523 state_2252574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252523
  · exact cover_2252574
#print axioms cover_2252522

def state_2252521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 55)))
theorem cover_2252521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252521 := by
  apply coveredState_split_literal (state := state_2252521) 4
    state_2252522 state_2252629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252522
  · exact cover_2252629
#print axioms cover_2252521

def state_2252513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 55)))
theorem cover_2252513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252513 := by
  apply coveredState_split_literal (state := state_2252513) 2
    state_2252514 state_2252521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252514
  · exact cover_2252521
#print axioms cover_2252513

def state_2252499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 55)))
theorem cover_2252499 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252499 := by
  apply coveredState_split_literal (state := state_2252499) 1
    state_2252500 state_2252513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252500
  · exact cover_2252513
#print axioms cover_2252499

def state_2252498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 55)))
theorem cover_2252498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252498 := by
  apply coveredState_split_literal (state := state_2252498) 3
    state_2252499 state_2252640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252499
  · exact cover_2252640
#print axioms cover_2252498

def state_2252497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 55)))
theorem cover_2252497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252497 := by
  apply coveredState_split_literal (state := state_2252497) 0
    state_2252498 state_2252649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252498
  · exact cover_2252649
#print axioms cover_2252497

def state_2251847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 27)))
theorem cover_2251847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251847 := by
  apply coveredState_split_literal (state := state_2251847) 4
    state_2251848 state_2252497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251848
  · exact cover_2252497
#print axioms cover_2251847

def state_2251803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 27)))
theorem cover_2251803 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251803 := by
  apply coveredState_split_literal (state := state_2251803) 2
    state_2251804 state_2251847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251804
  · exact cover_2251847
#print axioms cover_2251803

def state_2251775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 27)))
theorem cover_2251775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251775 := by
  apply coveredState_split_literal (state := state_2251775) 1
    state_2251776 state_2251803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251776
  · exact cover_2251803
#print axioms cover_2251775

def state_2251774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 27)))
theorem cover_2251774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251774 := by
  apply coveredState_split_literal (state := state_2251774) 3
    state_2251775 state_2252684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251775
  · exact cover_2252684
#print axioms cover_2251774

def state_2251232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 27)))
theorem cover_2251232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251232 := by
  apply coveredState_split_literal (state := state_2251232) 0
    state_2251233 state_2251774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251233
  · exact cover_2251774
#print axioms cover_2251232

def state_2250802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 13)))
theorem cover_2250802 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250802 := by
  apply coveredState_split_literal (state := state_2250802) 4
    state_2250803 state_2251232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250803
  · exact cover_2251232
#print axioms cover_2250802

def state_2250674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 13)))
theorem cover_2250674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250674 := by
  apply coveredState_split_literal (state := state_2250674) 2
    state_2250675 state_2250802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250675
  · exact cover_2250802
#print axioms cover_2250674

def state_2249356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
theorem cover_2249356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249356 := by
  apply coveredState_split_literal (state := state_2249356) 3
    state_2249357 state_2250674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249357
  · exact cover_2250674
#print axioms cover_2249356

def state_2249270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
theorem cover_2249270 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249270 := by
  apply coveredState_split_literal (state := state_2249270) 1
    state_2249271 state_2249356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249271
  · exact cover_2249356
#print axioms cover_2249270

def state_2252790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 26)))
theorem cover_2252790 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252790 := by
  apply coveredState_split_literal (state := state_2252790) 2
    state_2252791 state_2252838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252791
  · exact cover_2252838
#print axioms cover_2252790

def state_2252776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 26)))
theorem cover_2252776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252776 := by
  apply coveredState_split_literal (state := state_2252776) 3
    state_2252777 state_2252790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252777
  · exact cover_2252790
#print axioms cover_2252776

def state_2252768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 26)))
theorem cover_2252768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252768 := by
  apply coveredState_split_literal (state := state_2252768) 1
    state_2252769 state_2252776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252769
  · exact cover_2252776
#print axioms cover_2252768

def state_2252767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 26)))
theorem cover_2252767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252767 := by
  apply coveredState_split_literal (state := state_2252767) 0
    state_2252768 state_2252859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252768
  · exact cover_2252859
#print axioms cover_2252767

def state_2252877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
theorem cover_2252877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252877 := by
  apply coveredState_split_literal (state := state_2252877) 3
    state_2252878 state_2252887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252878
  · exact cover_2252887
#print axioms cover_2252877

def state_2252869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
theorem cover_2252869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252869 := by
  apply coveredState_split_literal (state := state_2252869) 1
    state_2252870 state_2252877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252870
  · exact cover_2252877
#print axioms cover_2252869

def state_2252868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
theorem cover_2252868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252868 := by
  apply coveredState_split_literal (state := state_2252868) 0
    state_2252869 state_2252942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252869
  · exact cover_2252942
#print axioms cover_2252868

def state_2252766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 13)))
theorem cover_2252766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252766 := by
  apply coveredState_split_literal (state := state_2252766) 4
    state_2252767 state_2252868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252767
  · exact cover_2252868
#print axioms cover_2252766

def state_2252734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
theorem cover_2252734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252734 := by
  apply coveredState_split_literal (state := state_2252734) 2
    state_2252735 state_2252766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252735
  · exact cover_2252766
#print axioms cover_2252734

def state_2253030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 27)))
theorem cover_2253030 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253030 := by
  apply coveredState_split_literal (state := state_2253030) 3
    state_2253031 state_2253094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253031
  · exact cover_2253094
#print axioms cover_2253030
end Mub6.Numerical.CircleFullD0.Forest
