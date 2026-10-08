import D0FullInterface
import D0ForestAssembly0137
import D0ForestAssembly0138
import D0ForestAssembly0139
import D0ForestChunk0534
import D0ForestChunk0535
import D0ForestChunk0539
import D0ForestChunk0543
import D0ForestChunk0544
import D0ForestChunk0545
import D0ForestChunk0546
import D0ForestChunk0547
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1318045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1318045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318045 := by
  apply coveredState_split_literal (state := state_1318045) 0
    state_1318046 state_1318103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318046
  · exact cover_1318103
#print axioms cover_1318045

def state_1317485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1317485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317485 := by
  apply coveredState_split_literal (state := state_1317485) 1
    state_1317486 state_1318045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317486
  · exact cover_1318045
#print axioms cover_1317485

def state_1319389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 51)))
theorem cover_1319389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319389 := by
  apply coveredState_split_literal (state := state_1319389) 4
    state_1319390 state_1319431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319390
  · exact cover_1319431
#print axioms cover_1319389

def state_1319371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
theorem cover_1319371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319371 := by
  apply coveredState_split_literal (state := state_1319371) 3
    state_1319372 state_1319389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319372
  · exact cover_1319389
#print axioms cover_1319371

def state_1319355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
theorem cover_1319355 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319355 := by
  apply coveredState_split_literal (state := state_1319355) 0
    state_1319356 state_1319371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319356
  · exact cover_1319371
#print axioms cover_1319355

def state_1319339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
theorem cover_1319339 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319339 := by
  apply coveredState_split_literal (state := state_1319339) 1
    state_1319340 state_1319355
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319340
  · exact cover_1319355
#print axioms cover_1319339

def state_1319338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 51)))
theorem cover_1319338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319338 := by
  apply coveredState_split_literal (state := state_1319338) 2
    state_1319339 state_1319454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319339
  · exact cover_1319454
#print axioms cover_1319338

def state_1319316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 25)))
theorem cover_1319316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319316 := by
  apply coveredState_split_literal (state := state_1319316) 4
    state_1319317 state_1319338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319317
  · exact cover_1319338
#print axioms cover_1319316

def state_1319302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
theorem cover_1319302 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319302 := by
  apply coveredState_split_literal (state := state_1319302) 3
    state_1319303 state_1319316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319303
  · exact cover_1319316
#print axioms cover_1319302

def state_1319286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
theorem cover_1319286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319286 := by
  apply coveredState_split_literal (state := state_1319286) 0
    state_1319287 state_1319302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319287
  · exact cover_1319302
#print axioms cover_1319286

def state_1319284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
theorem cover_1319284 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319284 := by
  apply coveredState_split_literal (state := state_1319284) 1
    state_1319285 state_1319286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319285
  · exact cover_1319286
#print axioms cover_1319284

def state_1317484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 25)))
theorem cover_1317484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317484 := by
  apply coveredState_split_literal (state := state_1317484) 2
    state_1317485 state_1319284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317485
  · exact cover_1319284
#print axioms cover_1317484

def state_1317124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 12)))
theorem cover_1317124 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317124 := by
  apply coveredState_split_literal (state := state_1317124) 4
    state_1317125 state_1317484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317125
  · exact cover_1317484
#print axioms cover_1317124

def state_1317080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1317080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317080 := by
  apply coveredState_split_literal (state := state_1317080) 3
    state_1317081 state_1317124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317081
  · exact cover_1317124
#print axioms cover_1317080

def state_1317030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1317030 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317030 := by
  apply coveredState_split_literal (state := state_1317030) 0
    state_1317031 state_1317080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317031
  · exact cover_1317080
#print axioms cover_1317030

def state_1316856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1316856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316856 := by
  apply coveredState_split_literal (state := state_1316856) 2
    state_1316857 state_1317030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316857
  · exact cover_1317030
#print axioms cover_1316856

def state_1315704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1315704 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315704 := by
  apply coveredState_split_literal (state := state_1315704) 1
    state_1315705 state_1316856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315705
  · exact cover_1316856
#print axioms cover_1315704

def state_1319471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1319471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319471 := by
  apply coveredState_split_literal (state := state_1319471) 3
    state_1319472 state_1319479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319472
  · exact cover_1319479
#print axioms cover_1319471

def state_1319469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1319469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319469 := by
  apply coveredState_split_literal (state := state_1319469) 0
    state_1319470 state_1319471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319470
  · exact cover_1319471
#print axioms cover_1319469

def state_1319467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_1319467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319467 := by
  apply coveredState_split_literal (state := state_1319467) 2
    state_1319468 state_1319469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319468
  · exact cover_1319469
#print axioms cover_1319467

def state_1319455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_1319455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319455 := by
  apply coveredState_split_literal (state := state_1319455) 1
    state_1319456 state_1319467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319456
  · exact cover_1319467
#print axioms cover_1319455

def state_1315703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_1315703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315703 := by
  apply coveredState_split_literal (state := state_1315703) 4
    state_1315704 state_1319455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315704
  · exact cover_1319455
#print axioms cover_1315703

def state_1319543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 24)))
theorem cover_1319543 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319543 := by
  apply coveredState_split_literal (state := state_1319543) 3
    state_1319544 state_1319603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319544
  · exact cover_1319603
#print axioms cover_1319543

def state_1319542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 12)))
theorem cover_1319542 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319542 := by
  apply coveredState_split_literal (state := state_1319542) 4
    state_1319543 state_1319608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319543
  · exact cover_1319608
#print axioms cover_1319542

def state_1319609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 12)))
theorem cover_1319609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319609 := by
  apply coveredState_split_literal (state := state_1319609) 4
    state_1319610 state_1319669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319610
  · exact cover_1319669
#print axioms cover_1319609

def state_1319541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 12)))
theorem cover_1319541 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319541 := by
  apply coveredState_split_literal (state := state_1319541) 0
    state_1319542 state_1319609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319542
  · exact cover_1319609
#print axioms cover_1319541

def state_1319728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 24)))
theorem cover_1319728 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319728 := by
  apply coveredState_split_literal (state := state_1319728) 1
    state_1319729 state_1319740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319729
  · exact cover_1319740
#print axioms cover_1319728

def state_1319727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 24)))
theorem cover_1319727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319727 := by
  apply coveredState_split_literal (state := state_1319727) 3
    state_1319728 state_1319801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319728
  · exact cover_1319801
#print axioms cover_1319727

def state_1319726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_1319726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319726 := by
  apply coveredState_split_literal (state := state_1319726) 4
    state_1319727 state_1319806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319727
  · exact cover_1319806
#print axioms cover_1319726

def state_1319678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_1319678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319678 := by
  apply coveredState_split_literal (state := state_1319678) 0
    state_1319679 state_1319726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319679
  · exact cover_1319726
#print axioms cover_1319678

def state_1319540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_1319540 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319540 := by
  apply coveredState_split_literal (state := state_1319540) 2
    state_1319541 state_1319678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319541
  · exact cover_1319678
#print axioms cover_1319540

def state_1320036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 50)))
theorem cover_1320036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320036 := by
  apply coveredState_split_literal (state := state_1320036) 1
    state_1320037 state_1320060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320037
  · exact cover_1320060
#print axioms cover_1320036
end Mub6.Numerical.CircleFullD0.Forest
