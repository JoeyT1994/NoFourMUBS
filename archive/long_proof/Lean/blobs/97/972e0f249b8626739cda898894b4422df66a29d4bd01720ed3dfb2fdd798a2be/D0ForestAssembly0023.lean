import D0FullInterface
import D0ForestAssembly0022
import D0ForestChunk0048
import D0ForestChunk0049
import D0ForestChunk0050
import D0ForestChunk0051
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2553714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_2553714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553714 := by
  apply coveredState_split_literal (state := state_2553714) 2
    state_2553715 state_2553784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553715
  · exact cover_2553784
#print axioms cover_2553714

def state_2553632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_2553632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553632 := by
  apply coveredState_split_literal (state := state_2553632) 1
    state_2553633 state_2553714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553633
  · exact cover_2553714
#print axioms cover_2553632

def state_2553631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_2553631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553631 := by
  apply coveredState_split_literal (state := state_2553631) 0
    state_2553632 state_2555191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553632
  · exact cover_2555191
#print axioms cover_2553631

def state_2553630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_2553630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553630 := by
  apply coveredState_split_literal (state := state_2553630) 4
    state_2553631 state_2555844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553631
  · exact cover_2555844
#print axioms cover_2553630

def state_2553490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_2553490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553490 := by
  apply coveredState_split_literal (state := state_2553490) 3
    state_2553491 state_2553630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553491
  · exact cover_2553630
#print axioms cover_2553490

def state_2555997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 12)))
theorem cover_2555997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555997 := by
  apply coveredState_split_literal (state := state_2555997) 3
    state_2555998 state_2556883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555998
  · exact cover_2556883
#print axioms cover_2555997

def state_2555996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 12)))
theorem cover_2555996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555996 := by
  apply coveredState_split_literal (state := state_2555996) 2
    state_2555997 state_2557248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555997
  · exact cover_2557248
#print axioms cover_2555996

def state_2555995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_2555995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555995 := by
  apply coveredState_split_literal (state := state_2555995) 4
    state_2555996 state_2557263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555996
  · exact cover_2557263
#print axioms cover_2555995

def state_2555981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_2555981 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555981 := by
  apply coveredState_split_literal (state := state_2555981) 1
    state_2555982 state_2555995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555982
  · exact cover_2555995
#print axioms cover_2555981

def state_2558220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 48)))
theorem cover_2558220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558220 := by
  apply coveredState_split_literal (state := state_2558220) 3
    state_2558221 state_2559004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558221
  · exact cover_2559004
#print axioms cover_2558220

def state_2557878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_2557878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557878 := by
  apply coveredState_split_literal (state := state_2557878) 2
    state_2557879 state_2558220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557879
  · exact cover_2558220
#print axioms cover_2557878

def state_2557877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_2557877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557877 := by
  apply coveredState_split_literal (state := state_2557877) 0
    state_2557878 state_2559279
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557878
  · exact cover_2559279
#print axioms cover_2557877

def state_2557876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_2557876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557876 := by
  apply coveredState_split_literal (state := state_2557876) 4
    state_2557877 state_2559336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557877
  · exact cover_2559336
#print axioms cover_2557876

def state_2557634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_2557634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557634 := by
  apply coveredState_split_literal (state := state_2557634) 1
    state_2557635 state_2557876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557635
  · exact cover_2557876
#print axioms cover_2557634

def state_2557384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 24)))
theorem cover_2557384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557384 := by
  apply coveredState_split_literal (state := state_2557384) 3
    state_2557385 state_2557634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557385
  · exact cover_2557634
#print axioms cover_2557384

def state_2557383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 24)))
theorem cover_2557383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557383 := by
  apply coveredState_split_literal (state := state_2557383) 2
    state_2557384 state_2559637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557384
  · exact cover_2559637
#print axioms cover_2557383

def state_2557382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_2557382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557382 := by
  apply coveredState_split_literal (state := state_2557382) 4
    state_2557383 state_2559932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557383
  · exact cover_2559932
#print axioms cover_2557382

def state_2557320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_2557320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557320 := by
  apply coveredState_split_literal (state := state_2557320) 1
    state_2557321 state_2557382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557321
  · exact cover_2557382
#print axioms cover_2557320

def state_2557319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_2557319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557319 := by
  apply coveredState_split_literal (state := state_2557319) 0
    state_2557320 state_2559977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557320
  · exact cover_2559977
#print axioms cover_2557319

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

def state_2563191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 11)))
theorem cover_2563191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563191 := by
  apply coveredState_split_literal (state := state_2563191) 2
    state_2563192 state_2563585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563192
  · exact cover_2563585
#print axioms cover_2563191

def state_2563137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 5)))
theorem cover_2563137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563137 := by
  apply coveredState_split_literal (state := state_2563137) 4
    state_2563138 state_2563191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563138
  · exact cover_2563191
#print axioms cover_2563137

def state_2563065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_2563065 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563065 := by
  apply coveredState_split_literal (state := state_2563065) 3
    state_2563066 state_2563137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563066
  · exact cover_2563137
#print axioms cover_2563065

def state_2563064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_2563064 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563064 := by
  apply coveredState_split_literal (state := state_2563064) 1
    state_2563065 state_2564548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563065
  · exact cover_2564548
#print axioms cover_2563064

def state_2563063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_2563063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563063 := by
  apply coveredState_split_literal (state := state_2563063) 0
    state_2563064 state_2564595
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563064
  · exact cover_2564595
#print axioms cover_2563063

def state_2563051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_2563051 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563051 := by
  apply coveredState_split_literal (state := state_2563051) 4
    state_2563052 state_2563063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563052
  · exact cover_2563063
#print axioms cover_2563051

def state_2565254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_2565254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565254 := by
  apply coveredState_split_literal (state := state_2565254) 2
    state_2565255 state_2566146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565255
  · exact cover_2566146
#print axioms cover_2565254

def state_2565242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_2565242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565242 := by
  apply coveredState_split_literal (state := state_2565242) 4
    state_2565243 state_2565254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565243
  · exact cover_2565254
#print axioms cover_2565242

def state_2565241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_2565241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565241 := by
  apply coveredState_split_literal (state := state_2565241) 1
    state_2565242 state_2566509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565242
  · exact cover_2566509
#print axioms cover_2565241

def state_2567444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 47)))
theorem cover_2567444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567444 := by
  apply coveredState_split_literal (state := state_2567444) 2
    state_2567445 state_2568228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567445
  · exact cover_2568228
#print axioms cover_2567444

def state_2567104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_2567104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567104 := by
  apply coveredState_split_literal (state := state_2567104) 3
    state_2567105 state_2567444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567105
  · exact cover_2567444
#print axioms cover_2567104

def state_2567103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_2567103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567103 := by
  apply coveredState_split_literal (state := state_2567103) 0
    state_2567104 state_2568497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567104
  · exact cover_2568497
#print axioms cover_2567103

def state_2566941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_2566941 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566941 := by
  apply coveredState_split_literal (state := state_2566941) 4
    state_2566942 state_2567103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566942
  · exact cover_2567103
#print axioms cover_2566941

def state_2566940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_2566940 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566940 := by
  apply coveredState_split_literal (state := state_2566940) 1
    state_2566941 state_2568554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566941
  · exact cover_2568554
#print axioms cover_2566940

def state_2566939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 23)))
theorem cover_2566939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566939 := by
  apply coveredState_split_literal (state := state_2566939) 3
    state_2566940 state_2568937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566940
  · exact cover_2568937
#print axioms cover_2566939

def state_2566609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
theorem cover_2566609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566609 := by
  apply coveredState_split_literal (state := state_2566609) 2
    state_2566610 state_2566939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566610
  · exact cover_2566939
#print axioms cover_2566609

def state_2566557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_2566557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566557 := by
  apply coveredState_split_literal (state := state_2566557) 4
    state_2566558 state_2566609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566558
  · exact cover_2566609
#print axioms cover_2566557

def state_2566556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_2566556 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566556 := by
  apply coveredState_split_literal (state := state_2566556) 1
    state_2566557 state_2569160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566557
  · exact cover_2569160
#print axioms cover_2566556

def state_2566555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_2566555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566555 := by
  apply coveredState_split_literal (state := state_2566555) 0
    state_2566556 state_2569215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566556
  · exact cover_2569215
#print axioms cover_2566555

def state_2566554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 11)))
theorem cover_2566554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566554 := by
  apply coveredState_split_literal (state := state_2566554) 3
    state_2566555 state_2569252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566555
  · exact cover_2569252
#print axioms cover_2566554

def state_2569271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
theorem cover_2569271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569271 := by
  apply coveredState_split_literal (state := state_2569271) 1
    state_2569272 state_2570083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569272
  · exact cover_2570083
#print axioms cover_2569271

def state_2569270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
theorem cover_2569270 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569270 := by
  apply coveredState_split_literal (state := state_2569270) 0
    state_2569271 state_2570610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569271
  · exact cover_2570610
#print axioms cover_2569270

def state_2569269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 11)))
theorem cover_2569269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569269 := by
  apply coveredState_split_literal (state := state_2569269) 3
    state_2569270 state_2570659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569270
  · exact cover_2570659
#print axioms cover_2569269

def state_2566553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_2566553 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566553 := by
  apply coveredState_split_literal (state := state_2566553) 2
    state_2566554 state_2569269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566554
  · exact cover_2569269
#print axioms cover_2566553

def state_2566519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_2566519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566519 := by
  apply coveredState_split_literal (state := state_2566519) 4
    state_2566520 state_2566553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566520
  · exact cover_2566553
#print axioms cover_2566519

def state_2566518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_2566518 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566518 := by
  apply coveredState_split_literal (state := state_2566518) 1
    state_2566519 state_2570672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566519
  · exact cover_2570672
#print axioms cover_2566518

def state_2565240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_2565240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565240 := by
  apply coveredState_split_literal (state := state_2565240) 0
    state_2565241 state_2566518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565241
  · exact cover_2566518
#print axioms cover_2565240

def state_2565234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_2565234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565234 := by
  apply coveredState_split_literal (state := state_2565234) 4
    state_2565235 state_2565240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565235
  · exact cover_2565240
#print axioms cover_2565234

def state_2563050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_2563050 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563050 := by
  apply coveredState_split_literal (state := state_2563050) 3
    state_2563051 state_2565234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563051
  · exact cover_2565234
#print axioms cover_2563050
end Mub6.Numerical.CircleFullD0.Forest
