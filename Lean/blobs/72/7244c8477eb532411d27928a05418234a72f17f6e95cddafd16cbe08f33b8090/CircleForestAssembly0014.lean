import CircleFullInterface
import CircleForestAssembly0013
import CircleForestChunk0059
import CircleForestChunk0060
import CircleForestChunk0062
import CircleForestChunk0063
import CircleForestChunk0064
import CircleForestChunk0065
import CircleForestChunk0066
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_952012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 53)))
theorem cover_952012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952012 := by
  apply coveredState_split_literal (state := state_952012) 2
    state_952013 state_952270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952013
  · exact cover_952270
#print axioms cover_952012

def state_951964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 53)))
theorem cover_951964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951964 := by
  apply coveredState_split_literal (state := state_951964) 0
    state_951965 state_952012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951965
  · exact cover_952012
#print axioms cover_951964

def state_951890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 53)))
theorem cover_951890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951890 := by
  apply coveredState_split_literal (state := state_951890) 3
    state_951891 state_951964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951891
  · exact cover_951964
#print axioms cover_951890

def state_951878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 26)))
theorem cover_951878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951878 := by
  apply coveredState_split_literal (state := state_951878) 4
    state_951879 state_951890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951879
  · exact cover_951890
#print axioms cover_951878

def state_951877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 26)))
theorem cover_951877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951877 := by
  apply coveredState_split_literal (state := state_951877) 2
    state_951878 state_952349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951878
  · exact cover_952349
#print axioms cover_951877

def state_952467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 107)))
theorem cover_952467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952467 := by
  apply coveredState_split_literal (state := state_952467) 3
    state_952468 state_952515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952468
  · exact cover_952515
#print axioms cover_952467

def state_952461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 53)))
theorem cover_952461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952461 := by
  apply coveredState_split_literal (state := state_952461) 4
    state_952462 state_952467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952462
  · exact cover_952467
#print axioms cover_952461

def state_952460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 53)))
theorem cover_952460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952460 := by
  apply coveredState_split_literal (state := state_952460) 2
    state_952461 state_952544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952461
  · exact cover_952544
#print axioms cover_952460

def state_952459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 53)))
theorem cover_952459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952459 := by
  apply coveredState_split_literal (state := state_952459) 1
    state_952460 state_952561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952460
  · exact cover_952561
#print axioms cover_952459

def state_952421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 53)))
theorem cover_952421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952421 := by
  apply coveredState_split_literal (state := state_952421) 0
    state_952422 state_952459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952422
  · exact cover_952459
#print axioms cover_952421

def state_952391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 53)))
theorem cover_952391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952391 := by
  apply coveredState_split_literal (state := state_952391) 3
    state_952392 state_952421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952392
  · exact cover_952421
#print axioms cover_952391

def state_952385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 26)))
theorem cover_952385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952385 := by
  apply coveredState_split_literal (state := state_952385) 4
    state_952386 state_952391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952386
  · exact cover_952391
#print axioms cover_952385

def state_952384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 26)))
theorem cover_952384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952384 := by
  apply coveredState_split_literal (state := state_952384) 2
    state_952385 state_952586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952385
  · exact cover_952586
#print axioms cover_952384

def state_951876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 26)))
theorem cover_951876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951876 := by
  apply coveredState_split_literal (state := state_951876) 1
    state_951877 state_952384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951877
  · exact cover_952384
#print axioms cover_951876

def state_951816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 26)))
theorem cover_951816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951816 := by
  apply coveredState_split_literal (state := state_951816) 0
    state_951817 state_951876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951817
  · exact cover_951876
#print axioms cover_951816

def state_951790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 26)))
theorem cover_951790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951790 := by
  apply coveredState_split_literal (state := state_951790) 3
    state_951791 state_951816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951791
  · exact cover_951816
#print axioms cover_951790

def state_952704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 108)))
theorem cover_952704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952704 := by
  apply coveredState_split_literal (state := state_952704) 0
    state_952705 state_952726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952705
  · exact cover_952726
#print axioms cover_952704

def state_952664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 108)))
theorem cover_952664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952664 := by
  apply coveredState_split_literal (state := state_952664) 3
    state_952665 state_952704
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952665
  · exact cover_952704
#print axioms cover_952664

def state_952663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 54)))
theorem cover_952663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952663 := by
  apply coveredState_split_literal (state := state_952663) 4
    state_952664 state_952771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952664
  · exact cover_952771
#print axioms cover_952663

def state_952657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 54)))
theorem cover_952657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952657 := by
  apply coveredState_split_literal (state := state_952657) 1
    state_952658 state_952663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952658
  · exact cover_952663
#print axioms cover_952657

def state_952656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
theorem cover_952656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952656 := by
  apply coveredState_split_literal (state := state_952656) 2
    state_952657 state_952774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952657
  · exact cover_952774
#print axioms cover_952656

def state_952642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
theorem cover_952642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952642 := by
  apply coveredState_split_literal (state := state_952642) 0
    state_952643 state_952656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952643
  · exact cover_952656
#print axioms cover_952642

def state_952628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 54)))
theorem cover_952628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952628 := by
  apply coveredState_split_literal (state := state_952628) 3
    state_952629 state_952642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952629
  · exact cover_952642
#print axioms cover_952628

def state_952627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 27)))
theorem cover_952627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952627 := by
  apply coveredState_split_literal (state := state_952627) 4
    state_952628 state_952833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952628
  · exact cover_952833
#print axioms cover_952627

def state_952626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
theorem cover_952626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952626 := by
  apply coveredState_split_literal (state := state_952626) 2
    state_952627 state_952838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952627
  · exact cover_952838
#print axioms cover_952626

def state_953020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 172) else (if j.val < 3 then 208 else (if j.val < 4 then 70 else 216)))
theorem cover_953020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953020 := by
  apply coveredState_split_literal (state := state_953020) 3
    state_953021 state_953044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953021
  · exact cover_953044
#print axioms cover_953020

def state_953019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 172) else (if j.val < 3 then 208 else (if j.val < 4 then 70 else 108)))
theorem cover_953019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953019 := by
  apply coveredState_split_literal (state := state_953019) 4
    state_953020 state_953087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953020
  · exact cover_953087
#print axioms cover_953019

def state_953018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 208 else (if j.val < 4 then 70 else 108)))
theorem cover_953018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953018 := by
  apply coveredState_split_literal (state := state_953018) 1
    state_953019 state_953098
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953019
  · exact cover_953098
#print axioms cover_953018

def state_953017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 70 else 108)))
theorem cover_953017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953017 := by
  apply coveredState_split_literal (state := state_953017) 2
    state_953018 state_953099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953018
  · exact cover_953099
#print axioms cover_953017

def state_952965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 70 else 108)))
theorem cover_952965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952965 := by
  apply coveredState_split_literal (state := state_952965) 0
    state_952966 state_953017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_952966
  · exact cover_953017
#print axioms cover_952965

def state_953235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 172) else (if j.val < 3 then 209 else (if j.val < 4 then 71 else 108)))
theorem cover_953235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953235 := by
  apply coveredState_split_literal (state := state_953235) 4
    state_953236 state_953285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953236
  · exact cover_953285
#print axioms cover_953235

def state_953234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 209 else (if j.val < 4 then 71 else 108)))
theorem cover_953234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953234 := by
  apply coveredState_split_literal (state := state_953234) 1
    state_953235 state_953308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_953235
  · exact cover_953308
#print axioms cover_953234
end Mub6.Numerical.CircleFullD0.Forest
