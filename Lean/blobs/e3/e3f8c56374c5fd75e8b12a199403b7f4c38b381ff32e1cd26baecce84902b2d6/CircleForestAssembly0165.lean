import CircleFullInterface
import CircleForestAssembly0164
import CircleForestChunk0641
import CircleForestChunk0642
import CircleForestChunk0643
import CircleForestChunk0644
import CircleForestChunk0645
import CircleForestChunk0646
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_759753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_759753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759753 := by
  apply coveredState_split_literal (state := state_759753) 2
    state_759754 state_759791
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759754
  · exact cover_759791
#print axioms cover_759753

def state_759681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_759681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759681 := by
  apply coveredState_split_literal (state := state_759681) 1
    state_759682 state_759753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759682
  · exact cover_759753
#print axioms cover_759681

def state_759589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_759589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759589 := by
  apply coveredState_split_literal (state := state_759589) 0
    state_759590 state_759681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759590
  · exact cover_759681
#print axioms cover_759589

def state_759882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_759882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759882 := by
  apply coveredState_split_literal (state := state_759882) 1
    state_759883 state_759924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759883
  · exact cover_759924
#print axioms cover_759882

def state_759842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_759842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759842 := by
  apply coveredState_split_literal (state := state_759842) 0
    state_759843 state_759882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759843
  · exact cover_759882
#print axioms cover_759842

def state_759588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_759588 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759588 := by
  apply coveredState_split_literal (state := state_759588) 4
    state_759589 state_759842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759589
  · exact cover_759842
#print axioms cover_759588

def state_759992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_759992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759992 := by
  apply coveredState_split_literal (state := state_759992) 1
    state_759993 state_760022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759993
  · exact cover_760022
#print axioms cover_759992

def state_759952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_759952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759952 := by
  apply coveredState_split_literal (state := state_759952) 0
    state_759953 state_759992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759953
  · exact cover_759992
#print axioms cover_759952

def state_759951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_759951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759951 := by
  apply coveredState_split_literal (state := state_759951) 4
    state_759952 state_760063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759952
  · exact cover_760063
#print axioms cover_759951

def state_759587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_759587 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759587 := by
  apply coveredState_split_literal (state := state_759587) 3
    state_759588 state_759951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759588
  · exact cover_759951
#print axioms cover_759587

def state_760126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_760126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760126 := by
  apply coveredState_split_literal (state := state_760126) 0
    state_760127 state_760190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760127
  · exact cover_760190
#print axioms cover_760126

def state_760348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 13)))
theorem cover_760348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760348 := by
  apply coveredState_split_literal (state := state_760348) 2
    state_760349 state_760400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760349
  · exact cover_760400
#print axioms cover_760348

def state_760347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 13)))
theorem cover_760347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760347 := by
  apply coveredState_split_literal (state := state_760347) 1
    state_760348 state_760415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760348
  · exact cover_760415
#print axioms cover_760347

def state_760346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 13)))
theorem cover_760346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760346 := by
  apply coveredState_split_literal (state := state_760346) 0
    state_760347 state_760432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760347
  · exact cover_760432
#print axioms cover_760346

def state_760324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 6)))
theorem cover_760324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760324 := by
  apply coveredState_split_literal (state := state_760324) 4
    state_760325 state_760346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760325
  · exact cover_760346
#print axioms cover_760324

def state_760457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 13)))
theorem cover_760457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760457 := by
  apply coveredState_split_literal (state := state_760457) 0
    state_760458 state_760511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760458
  · exact cover_760511
#print axioms cover_760457

def state_760451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 6)))
theorem cover_760451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760451 := by
  apply coveredState_split_literal (state := state_760451) 4
    state_760452 state_760457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760452
  · exact cover_760457
#print axioms cover_760451

def state_760323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 6)))
theorem cover_760323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760323 := by
  apply coveredState_split_literal (state := state_760323) 3
    state_760324 state_760451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760324
  · exact cover_760451
#print axioms cover_760323

def state_760297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
theorem cover_760297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760297 := by
  apply coveredState_split_literal (state := state_760297) 2
    state_760298 state_760323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760298
  · exact cover_760323
#print axioms cover_760297

def state_760530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_760530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760530 := by
  apply coveredState_split_literal (state := state_760530) 2
    state_760531 state_760554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760531
  · exact cover_760554
#print axioms cover_760530

def state_760296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_760296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760296 := by
  apply coveredState_split_literal (state := state_760296) 4
    state_760297 state_760530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760297
  · exact cover_760530
#print axioms cover_760296

def state_760240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_760240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760240 := by
  apply coveredState_split_literal (state := state_760240) 3
    state_760241 state_760296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760241
  · exact cover_760296
#print axioms cover_760240

def state_760608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_760608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760608 := by
  apply coveredState_split_literal (state := state_760608) 3
    state_760609 state_760632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760609
  · exact cover_760632
#print axioms cover_760608

def state_760607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_760607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760607 := by
  apply coveredState_split_literal (state := state_760607) 4
    state_760608 state_760681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760608
  · exact cover_760681
#print axioms cover_760607

def state_760599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_760599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760599 := by
  apply coveredState_split_literal (state := state_760599) 3
    state_760600 state_760607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760600
  · exact cover_760607
#print axioms cover_760599

def state_760239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_760239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760239 := by
  apply coveredState_split_literal (state := state_760239) 2
    state_760240 state_760599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760240
  · exact cover_760599
#print axioms cover_760239

def state_760706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_760706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760706 := by
  apply coveredState_split_literal (state := state_760706) 2
    state_760707 state_760746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760707
  · exact cover_760746
#print axioms cover_760706

def state_760238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_760238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760238 := by
  apply coveredState_split_literal (state := state_760238) 1
    state_760239 state_760706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760239
  · exact cover_760706
#print axioms cover_760238

def state_760778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_760778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760778 := by
  apply coveredState_split_literal (state := state_760778) 2
    state_760779 state_760808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760779
  · exact cover_760808
#print axioms cover_760778

def state_760777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_760777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760777 := by
  apply coveredState_split_literal (state := state_760777) 1
    state_760778 state_760843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760778
  · exact cover_760843
#print axioms cover_760777

def state_760237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_760237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760237 := by
  apply coveredState_split_literal (state := state_760237) 0
    state_760238 state_760777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760238
  · exact cover_760777
#print axioms cover_760237

def state_760125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_760125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760125 := by
  apply coveredState_split_literal (state := state_760125) 4
    state_760126 state_760237
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760126
  · exact cover_760237
#print axioms cover_760125
end Mub6.Numerical.CircleFullPrototype.Forest
