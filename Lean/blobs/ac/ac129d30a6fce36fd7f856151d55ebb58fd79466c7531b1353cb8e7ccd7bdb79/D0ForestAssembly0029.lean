import D0FullInterface
import D0ForestAssembly0004
import D0ForestAssembly0021
import D0ForestAssembly0023
import D0ForestAssembly0025
import D0ForestAssembly0026
import D0ForestAssembly0028
import D0ForestChunk0098
import D0ForestChunk0109
import D0ForestChunk0118
import D0ForestChunk0119
import D0ForestChunk0120
import D0ForestChunk0121
import D0ForestChunk0122
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_963726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_963726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963726 := by
  apply coveredState_split_literal (state := state_963726) 0
    state_963727 state_966052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963727
  · exact cover_966052
#print axioms cover_963726

def state_963725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 27)))
theorem cover_963725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963725 := by
  apply coveredState_split_literal (state := state_963725) 3
    state_963726 state_966073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963726
  · exact cover_966073
#print axioms cover_963725

def state_963711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 13)))
theorem cover_963711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963711 := by
  apply coveredState_split_literal (state := state_963711) 4
    state_963712 state_963725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963712
  · exact cover_963725
#print axioms cover_963711

def state_966138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 55)))
theorem cover_966138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966138 := by
  apply coveredState_split_literal (state := state_966138) 3
    state_966139 state_966162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966139
  · exact cover_966162
#print axioms cover_966138

def state_966137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 44) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 55)))
theorem cover_966137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966137 := by
  apply coveredState_split_literal (state := state_966137) 1
    state_966138 state_966213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966138
  · exact cover_966213
#print axioms cover_966137

def state_966136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 55)))
theorem cover_966136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966136 := by
  apply coveredState_split_literal (state := state_966136) 0
    state_966137 state_966252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966137
  · exact cover_966252
#print axioms cover_966136

def state_966118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 27)))
theorem cover_966118 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966118 := by
  apply coveredState_split_literal (state := state_966118) 4
    state_966119 state_966136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966119
  · exact cover_966136
#print axioms cover_966118

def state_966117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 37 else 27)))
theorem cover_966117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966117 := by
  apply coveredState_split_literal (state := state_966117) 2
    state_966118 state_966293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966118
  · exact cover_966293
#print axioms cover_966117

def state_966105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
theorem cover_966105 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966105 := by
  apply coveredState_split_literal (state := state_966105) 3
    state_966106 state_966117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966106
  · exact cover_966117
#print axioms cover_966105

def state_966104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
theorem cover_966104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966104 := by
  apply coveredState_split_literal (state := state_966104) 1
    state_966105 state_966306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966105
  · exact cover_966306
#print axioms cover_966104

def state_966103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
theorem cover_966103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966103 := by
  apply coveredState_split_literal (state := state_966103) 0
    state_966104 state_966329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966104
  · exact cover_966329
#print axioms cover_966103

def state_966366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 54 else (if j.val < 4 then 38 else 55)))
theorem cover_966366 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966366 := by
  apply coveredState_split_literal (state := state_966366) 0
    state_966367 state_966422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966367
  · exact cover_966422
#print axioms cover_966366

def state_966350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 54 else (if j.val < 4 then 38 else 27)))
theorem cover_966350 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966350 := by
  apply coveredState_split_literal (state := state_966350) 4
    state_966351 state_966366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966351
  · exact cover_966366
#print axioms cover_966350

def state_966467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 55 else (if j.val < 4 then 38 else 55)))
theorem cover_966467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966467 := by
  apply coveredState_split_literal (state := state_966467) 0
    state_966468 state_966513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966468
  · exact cover_966513
#print axioms cover_966467

def state_966453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 55 else (if j.val < 4 then 38 else 27)))
theorem cover_966453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966453 := by
  apply coveredState_split_literal (state := state_966453) 4
    state_966454 state_966467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966454
  · exact cover_966467
#print axioms cover_966453

def state_966349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 38 else 27)))
theorem cover_966349 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966349 := by
  apply coveredState_split_literal (state := state_966349) 2
    state_966350 state_966453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966350
  · exact cover_966453
#print axioms cover_966349

def state_966348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
theorem cover_966348 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966348 := by
  apply coveredState_split_literal (state := state_966348) 3
    state_966349 state_966546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966349
  · exact cover_966546
#print axioms cover_966348

def state_966347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
theorem cover_966347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966347 := by
  apply coveredState_split_literal (state := state_966347) 1
    state_966348 state_966601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966348
  · exact cover_966601
#print axioms cover_966347

def state_966346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
theorem cover_966346 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966346 := by
  apply coveredState_split_literal (state := state_966346) 0
    state_966347 state_966640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966347
  · exact cover_966640
#print axioms cover_966346

def state_966102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 27)))
theorem cover_966102 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966102 := by
  apply coveredState_split_literal (state := state_966102) 3
    state_966103 state_966346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966103
  · exact cover_966346
#print axioms cover_966102

def state_966088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 13)))
theorem cover_966088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966088 := by
  apply coveredState_split_literal (state := state_966088) 4
    state_966089 state_966102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966089
  · exact cover_966102
#print axioms cover_966088

def state_963710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_963710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963710 := by
  apply coveredState_split_literal (state := state_963710) 2
    state_963711 state_966088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963711
  · exact cover_966088
#print axioms cover_963710

def state_963709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_963709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963709 := by
  apply coveredState_split_literal (state := state_963709) 1
    state_963710 state_966661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963710
  · exact cover_966661
#print axioms cover_963709

def state_962607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_962607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962607 := by
  apply coveredState_split_literal (state := state_962607) 0
    state_962608 state_963709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962608
  · exact cover_963709
#print axioms cover_962607

def state_961083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
theorem cover_961083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961083 := by
  apply coveredState_split_literal (state := state_961083) 3
    state_961084 state_962607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961084
  · exact cover_962607
#print axioms cover_961083

def state_961071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 6)))
theorem cover_961071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961071 := by
  apply coveredState_split_literal (state := state_961071) 4
    state_961072 state_961083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961072
  · exact cover_961083
#print axioms cover_961071

def state_959297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_959297 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959297 := by
  apply coveredState_split_literal (state := state_959297) 2
    state_959298 state_961071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959298
  · exact cover_961071
#print axioms cover_959297

def state_942383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_942383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942383 := by
  apply coveredState_split_literal (state := state_942383) 1
    state_942384 state_959297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942384
  · exact cover_959297
#print axioms cover_942383

def state_942029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_942029 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942029 := by
  apply coveredState_split_literal (state := state_942029) 0
    state_942030 state_942383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942030
  · exact cover_942383
#print axioms cover_942029

def state_966701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_966701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966701 := by
  apply coveredState_split_literal (state := state_966701) 1
    state_966702 state_966723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966702
  · exact cover_966723
#print axioms cover_966701

def state_966770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 7)))
theorem cover_966770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966770 := by
  apply coveredState_split_literal (state := state_966770) 3
    state_966771 state_966816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966771
  · exact cover_966816
#print axioms cover_966770

def state_966906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_966906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966906 := by
  apply coveredState_split_literal (state := state_966906) 2
    state_966907 state_966940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966907
  · exact cover_966940
#print axioms cover_966906
end Mub6.Numerical.CircleFullD0.Forest
