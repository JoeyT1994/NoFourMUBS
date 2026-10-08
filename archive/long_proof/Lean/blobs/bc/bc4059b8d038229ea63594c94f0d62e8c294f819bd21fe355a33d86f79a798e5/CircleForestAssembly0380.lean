import CircleFullInterface
import CircleForestAssembly0379
import CircleForestChunk1481
import CircleForestChunk1482
import CircleForestChunk1483
import CircleForestChunk1484
import CircleForestChunk1485
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1654335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 10)))
theorem cover_1654335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654335 := by
  apply coveredState_split_literal (state := state_1654335) 4
    state_1654336 state_1655823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654336
  · exact cover_1655823
#print axioms cover_1654335

def state_1656269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 21)))
theorem cover_1656269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656269 := by
  apply coveredState_split_literal (state := state_1656269) 1
    state_1656270 state_1656281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656270
  · exact cover_1656281
#print axioms cover_1656269

def state_1656268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 21)))
theorem cover_1656268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656268 := by
  apply coveredState_split_literal (state := state_1656268) 2
    state_1656269 state_1656334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656269
  · exact cover_1656334
#print axioms cover_1656268

def state_1656252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 10)))
theorem cover_1656252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656252 := by
  apply coveredState_split_literal (state := state_1656252) 4
    state_1656253 state_1656268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656253
  · exact cover_1656268
#print axioms cover_1656252

def state_1654334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1654334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654334 := by
  apply coveredState_split_literal (state := state_1654334) 3
    state_1654335 state_1656252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654335
  · exact cover_1656252
#print axioms cover_1654334

def state_1656422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 122 else (if j.val < 4 then 104 else 81)))
theorem cover_1656422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656422 := by
  apply coveredState_split_literal (state := state_1656422) 1
    state_1656423 state_1656484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656423
  · exact cover_1656484
#print axioms cover_1656422

def state_1656421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 81)))
theorem cover_1656421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656421 := by
  apply coveredState_split_literal (state := state_1656421) 2
    state_1656422 state_1656497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656422
  · exact cover_1656497
#print axioms cover_1656421

def state_1656413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 40)))
theorem cover_1656413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656413 := by
  apply coveredState_split_literal (state := state_1656413) 4
    state_1656414 state_1656421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656414
  · exact cover_1656421
#print axioms cover_1656413

def state_1656412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 40)))
theorem cover_1656412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656412 := by
  apply coveredState_split_literal (state := state_1656412) 3
    state_1656413 state_1656538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656413
  · exact cover_1656538
#print axioms cover_1656412

def state_1656411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 40)))
theorem cover_1656411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656411 := by
  apply coveredState_split_literal (state := state_1656411) 0
    state_1656412 state_1656543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656412
  · exact cover_1656543
#print axioms cover_1656411

def state_1656410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 40)))
theorem cover_1656410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656410 := by
  apply coveredState_split_literal (state := state_1656410) 1
    state_1656411 state_1656558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656411
  · exact cover_1656558
#print axioms cover_1656410

def state_1656386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 40)))
theorem cover_1656386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656386 := by
  apply coveredState_split_literal (state := state_1656386) 2
    state_1656387 state_1656410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656387
  · exact cover_1656410
#print axioms cover_1656386

def state_1656610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 105 else 41)))
theorem cover_1656610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656610 := by
  apply coveredState_split_literal (state := state_1656610) 4
    state_1656611 state_1656620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656611
  · exact cover_1656620
#print axioms cover_1656610

def state_1656574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
theorem cover_1656574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656574 := by
  apply coveredState_split_literal (state := state_1656574) 3
    state_1656575 state_1656610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656575
  · exact cover_1656610
#print axioms cover_1656574

def state_1656573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
theorem cover_1656573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656573 := by
  apply coveredState_split_literal (state := state_1656573) 0
    state_1656574 state_1656679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656574
  · exact cover_1656679
#print axioms cover_1656573

def state_1656572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
theorem cover_1656572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656572 := by
  apply coveredState_split_literal (state := state_1656572) 1
    state_1656573 state_1656702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656573
  · exact cover_1656702
#print axioms cover_1656572

def state_1656744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 200) else (if j.val < 3 then 122 else (if j.val < 4 then 104 else 82)))
theorem cover_1656744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656744 := by
  apply coveredState_split_literal (state := state_1656744) 3
    state_1656745 state_1656778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656745
  · exact cover_1656778
#print axioms cover_1656744

def state_1656743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 200) else (if j.val < 3 then 122 else (if j.val < 4 then 104 else 82)))
theorem cover_1656743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656743 := by
  apply coveredState_split_literal (state := state_1656743) 0
    state_1656744 state_1656827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656744
  · exact cover_1656827
#print axioms cover_1656743

def state_1656742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 122 else (if j.val < 4 then 104 else 82)))
theorem cover_1656742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656742 := by
  apply coveredState_split_literal (state := state_1656742) 1
    state_1656743 state_1656836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656743
  · exact cover_1656836
#print axioms cover_1656742

def state_1656741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 82)))
theorem cover_1656741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656741 := by
  apply coveredState_split_literal (state := state_1656741) 2
    state_1656742 state_1656857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656742
  · exact cover_1656857
#print axioms cover_1656741

def state_1656740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 41)))
theorem cover_1656740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656740 := by
  apply coveredState_split_literal (state := state_1656740) 4
    state_1656741 state_1656890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656741
  · exact cover_1656890
#print axioms cover_1656740

def state_1656891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 105 else 41)))
theorem cover_1656891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656891 := by
  apply coveredState_split_literal (state := state_1656891) 4
    state_1656892 state_1656931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656892
  · exact cover_1656931
#print axioms cover_1656891

def state_1656739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
theorem cover_1656739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656739 := by
  apply coveredState_split_literal (state := state_1656739) 3
    state_1656740 state_1656891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656740
  · exact cover_1656891
#print axioms cover_1656739

def state_1656738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
theorem cover_1656738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656738 := by
  apply coveredState_split_literal (state := state_1656738) 0
    state_1656739 state_1656974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656739
  · exact cover_1656974
#print axioms cover_1656738

def state_1656737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
theorem cover_1656737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656737 := by
  apply coveredState_split_literal (state := state_1656737) 1
    state_1656738 state_1656983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656738
  · exact cover_1656983
#print axioms cover_1656737

def state_1656571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 41)))
theorem cover_1656571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656571 := by
  apply coveredState_split_literal (state := state_1656571) 2
    state_1656572 state_1656737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656572
  · exact cover_1656737
#print axioms cover_1656571

def state_1656385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 20)))
theorem cover_1656385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656385 := by
  apply coveredState_split_literal (state := state_1656385) 4
    state_1656386 state_1656571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656386
  · exact cover_1656571
#print axioms cover_1656385

def state_1656384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
theorem cover_1656384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656384 := by
  apply coveredState_split_literal (state := state_1656384) 3
    state_1656385 state_1657024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656385
  · exact cover_1657024
#print axioms cover_1656384

def state_1656383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
theorem cover_1656383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656383 := by
  apply coveredState_split_literal (state := state_1656383) 1
    state_1656384 state_1657067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656384
  · exact cover_1657067
#print axioms cover_1656383

def state_1656382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
theorem cover_1656382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656382 := by
  apply coveredState_split_literal (state := state_1656382) 0
    state_1656383 state_1657106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656383
  · exact cover_1657106
#print axioms cover_1656382

def state_1657136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 52 else 20)))
theorem cover_1657136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657136 := by
  apply coveredState_split_literal (state := state_1657136) 4
    state_1657137 state_1657198
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657137
  · exact cover_1657198
#print axioms cover_1657136

def state_1657135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 20)))
theorem cover_1657135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657135 := by
  apply coveredState_split_literal (state := state_1657135) 3
    state_1657136 state_1657251
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657136
  · exact cover_1657251
#print axioms cover_1657135
end Mub6.Numerical.CircleFullD0.Forest
