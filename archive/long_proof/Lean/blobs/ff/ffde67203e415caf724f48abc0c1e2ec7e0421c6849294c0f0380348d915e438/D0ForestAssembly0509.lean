import D0FullInterface
import D0ForestAssembly0496
import D0ForestAssembly0501
import D0ForestAssembly0503
import D0ForestAssembly0505
import D0ForestAssembly0508
import D0ForestChunk1970
import D0ForestChunk1986
import D0ForestChunk2002
import D0ForestChunk2003
import D0ForestChunk2004
import D0ForestChunk2005
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2561079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 31 else 25)))
theorem cover_2561079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561079 := by
  apply coveredState_split_literal (state := state_2561079) 0
    state_2561080 state_2561239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561080
  · exact cover_2561239
#print axioms cover_2561079

def state_2561256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 31 else 25)))
theorem cover_2561256 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561256 := by
  apply coveredState_split_literal (state := state_2561256) 0
    state_2561257 state_2561314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561257
  · exact cover_2561314
#print axioms cover_2561256

def state_2561078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 31 else 25)))
theorem cover_2561078 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561078 := by
  apply coveredState_split_literal (state := state_2561078) 1
    state_2561079 state_2561256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561079
  · exact cover_2561256
#print axioms cover_2561078

def state_2560912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 15 else 25)))
theorem cover_2560912 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560912 := by
  apply coveredState_split_literal (state := state_2560912) 3
    state_2560913 state_2561078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560913
  · exact cover_2561078
#print axioms cover_2560912

def state_2560911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 25)))
theorem cover_2560911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560911 := by
  apply coveredState_split_literal (state := state_2560911) 2
    state_2560912 state_2561337
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560912
  · exact cover_2561337
#print axioms cover_2560911

def state_2560165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
theorem cover_2560165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560165 := by
  apply coveredState_split_literal (state := state_2560165) 4
    state_2560166 state_2560911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560166
  · exact cover_2560911
#print axioms cover_2560165

def state_2560011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
theorem cover_2560011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560011 := by
  apply coveredState_split_literal (state := state_2560011) 1
    state_2560012 state_2560165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560012
  · exact cover_2560165
#print axioms cover_2560011

def state_2560010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
theorem cover_2560010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560010 := by
  apply coveredState_split_literal (state := state_2560010) 0
    state_2560011 state_2561346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560011
  · exact cover_2561346
#print axioms cover_2560010

def state_2557318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 12)))
theorem cover_2557318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557318 := by
  apply coveredState_split_literal (state := state_2557318) 3
    state_2557319 state_2560010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557319
  · exact cover_2560010
#print axioms cover_2557318

def state_2557317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 12)))
theorem cover_2557317 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557317 := by
  apply coveredState_split_literal (state := state_2557317) 2
    state_2557318 state_2561395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557318
  · exact cover_2561395
#print axioms cover_2557317

def state_2557316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_2557316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557316 := by
  apply coveredState_split_literal (state := state_2557316) 4
    state_2557317 state_2561422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557317
  · exact cover_2561422
#print axioms cover_2557316

def state_2557270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_2557270 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557270 := by
  apply coveredState_split_literal (state := state_2557270) 1
    state_2557271 state_2557316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557271
  · exact cover_2557316
#print axioms cover_2557270

def state_2555980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_2555980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555980 := by
  apply coveredState_split_literal (state := state_2555980) 0
    state_2555981 state_2557270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555981
  · exact cover_2557270
#print axioms cover_2555980

def state_2555979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
theorem cover_2555979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555979 := by
  apply coveredState_split_literal (state := state_2555979) 4
    state_2555980 state_2561473
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555980
  · exact cover_2561473
#print axioms cover_2555979

def state_2555851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_2555851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555851 := by
  apply coveredState_split_literal (state := state_2555851) 3
    state_2555852 state_2555979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555852
  · exact cover_2555979
#print axioms cover_2555851

def state_2553489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2553489 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553489 := by
  apply coveredState_split_literal (state := state_2553489) 2
    state_2553490 state_2555851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553490
  · exact cover_2555851
#print axioms cover_2553489

def state_2553441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2553441 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553441 := by
  apply coveredState_split_literal (state := state_2553441) 1
    state_2553442 state_2553489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553442
  · exact cover_2553489
#print axioms cover_2553441

def state_2553259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2553259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553259 := by
  apply coveredState_split_literal (state := state_2553259) 0
    state_2553260 state_2553441
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553260
  · exact cover_2553441
#print axioms cover_2553259

def state_2549255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_2549255 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549255 := by
  apply coveredState_split_literal (state := state_2549255) 4
    state_2549256 state_2553259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549256
  · exact cover_2553259
#print axioms cover_2549255

def state_2548729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2548729 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548729 := by
  apply coveredState_split_literal (state := state_2548729) 3
    state_2548730 state_2549255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548730
  · exact cover_2549255
#print axioms cover_2548729

def state_2546293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2546293 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546293 := by
  apply coveredState_split_literal (state := state_2546293) 2
    state_2546294 state_2548729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546294
  · exact cover_2548729
#print axioms cover_2546293

def state_2561501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_2561501 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561501 := by
  apply coveredState_split_literal (state := state_2561501) 3
    state_2561502 state_2561565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561502
  · exact cover_2561565
#print axioms cover_2561501

def state_2561500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2561500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561500 := by
  apply coveredState_split_literal (state := state_2561500) 2
    state_2561501 state_2561582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561501
  · exact cover_2561582
#print axioms cover_2561500

def state_2561499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2561499 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561499 := by
  apply coveredState_split_literal (state := state_2561499) 1
    state_2561500 state_2561615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561500
  · exact cover_2561615
#print axioms cover_2561499

def state_2561485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2561485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561485 := by
  apply coveredState_split_literal (state := state_2561485) 0
    state_2561486 state_2561499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561486
  · exact cover_2561499
#print axioms cover_2561485

def state_2561722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_2561722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561722 := by
  apply coveredState_split_literal (state := state_2561722) 0
    state_2561723 state_2561762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561723
  · exact cover_2561762
#print axioms cover_2561722

def state_2561721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_2561721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561721 := by
  apply coveredState_split_literal (state := state_2561721) 4
    state_2561722 state_2561797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561722
  · exact cover_2561797
#print axioms cover_2561721

def state_2561707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_2561707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561707 := by
  apply coveredState_split_literal (state := state_2561707) 3
    state_2561708 state_2561721
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561708
  · exact cover_2561721
#print axioms cover_2561707

def state_2561689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2561689 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561689 := by
  apply coveredState_split_literal (state := state_2561689) 2
    state_2561690 state_2561707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561690
  · exact cover_2561707
#print axioms cover_2561689

def state_2561830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_2561830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561830 := by
  apply coveredState_split_literal (state := state_2561830) 4
    state_2561831 state_2561852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561831
  · exact cover_2561852
#print axioms cover_2561830

def state_2561826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_2561826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561826 := by
  apply coveredState_split_literal (state := state_2561826) 3
    state_2561827 state_2561830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561827
  · exact cover_2561830
#print axioms cover_2561826

def state_2561820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2561820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561820 := by
  apply coveredState_split_literal (state := state_2561820) 2
    state_2561821 state_2561826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561821
  · exact cover_2561826
#print axioms cover_2561820
end Mub6.Numerical.CircleFullD0.Forest
