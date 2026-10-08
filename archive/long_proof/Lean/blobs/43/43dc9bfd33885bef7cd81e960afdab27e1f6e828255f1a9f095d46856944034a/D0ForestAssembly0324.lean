import D0FullInterface
import D0ForestAssembly0323
import D0ForestChunk1253
import D0ForestChunk1254
import D0ForestChunk1255
import D0ForestChunk1256
import D0ForestChunk1257
import D0ForestChunk1258
import D0ForestChunk1259
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1601315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
theorem cover_1601315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601315 := by
  apply coveredState_split_literal (state := state_1601315) 3
    state_1601316 state_1601373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601316
  · exact cover_1601373
#print axioms cover_1601315

def state_1597135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_1597135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597135 := by
  apply coveredState_split_literal (state := state_1597135) 4
    state_1597136 state_1601315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597136
  · exact cover_1601315
#print axioms cover_1597135

def state_1601400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_1601400 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601400 := by
  apply coveredState_split_literal (state := state_1601400) 1
    state_1601401 state_1601436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601401
  · exact cover_1601436
#print axioms cover_1601400

def state_1601561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 29 else 49)))
theorem cover_1601561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601561 := by
  apply coveredState_split_literal (state := state_1601561) 3
    state_1601562 state_1601603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601562
  · exact cover_1601603
#print axioms cover_1601561

def state_1601560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 49)))
theorem cover_1601560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601560 := by
  apply coveredState_split_literal (state := state_1601560) 2
    state_1601561 state_1601634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601561
  · exact cover_1601634
#print axioms cover_1601560

def state_1601760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 59 else 99)))
theorem cover_1601760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601760 := by
  apply coveredState_split_literal (state := state_1601760) 3
    state_1601761 state_1601798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601761
  · exact cover_1601798
#print axioms cover_1601760

def state_1601759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 99)))
theorem cover_1601759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601759 := by
  apply coveredState_split_literal (state := state_1601759) 2
    state_1601760 state_1601843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601760
  · exact cover_1601843
#print axioms cover_1601759

def state_1601872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 99)))
theorem cover_1601872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601872 := by
  apply coveredState_split_literal (state := state_1601872) 2
    state_1601873 state_1601902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601873
  · exact cover_1601902
#print axioms cover_1601872

def state_1601758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 99)))
theorem cover_1601758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601758 := by
  apply coveredState_split_literal (state := state_1601758) 0
    state_1601759 state_1601872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601759
  · exact cover_1601872
#print axioms cover_1601758

def state_1601714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 49)))
theorem cover_1601714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601714 := by
  apply coveredState_split_literal (state := state_1601714) 4
    state_1601715 state_1601758
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601715
  · exact cover_1601758
#print axioms cover_1601714

def state_1601684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 49)))
theorem cover_1601684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601684 := by
  apply coveredState_split_literal (state := state_1601684) 1
    state_1601685 state_1601714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601685
  · exact cover_1601714
#print axioms cover_1601684

def state_1601636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 29 else 49)))
theorem cover_1601636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601636 := by
  apply coveredState_split_literal (state := state_1601636) 3
    state_1601637 state_1601684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601637
  · exact cover_1601684
#print axioms cover_1601636

def state_1601635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 49)))
theorem cover_1601635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601635 := by
  apply coveredState_split_literal (state := state_1601635) 2
    state_1601636 state_1601943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601636
  · exact cover_1601943
#print axioms cover_1601635

def state_1601559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 49)))
theorem cover_1601559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601559 := by
  apply coveredState_split_literal (state := state_1601559) 0
    state_1601560 state_1601635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601560
  · exact cover_1601635
#print axioms cover_1601559

def state_1601535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 24)))
theorem cover_1601535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601535 := by
  apply coveredState_split_literal (state := state_1601535) 4
    state_1601536 state_1601559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601536
  · exact cover_1601559
#print axioms cover_1601535

def state_1601485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 24)))
theorem cover_1601485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601485 := by
  apply coveredState_split_literal (state := state_1601485) 3
    state_1601486 state_1601535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601486
  · exact cover_1601535
#print axioms cover_1601485

def state_1601484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_1601484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601484 := by
  apply coveredState_split_literal (state := state_1601484) 2
    state_1601485 state_1601954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601485
  · exact cover_1601954
#print axioms cover_1601484

def state_1601959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 24)))
theorem cover_1601959 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601959 := by
  apply coveredState_split_literal (state := state_1601959) 4
    state_1601960 state_1601977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601960
  · exact cover_1601977
#print axioms cover_1601959

def state_1602039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 48)))
theorem cover_1602039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602039 := by
  apply coveredState_split_literal (state := state_1602039) 0
    state_1602040 state_1602063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602040
  · exact cover_1602063
#print axioms cover_1602039

def state_1602128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 42) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 49)))
theorem cover_1602128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602128 := by
  apply coveredState_split_literal (state := state_1602128) 2
    state_1602129 state_1602184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602129
  · exact cover_1602184
#print axioms cover_1602128

def state_1602127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 49)))
theorem cover_1602127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602127 := by
  apply coveredState_split_literal (state := state_1602127) 1
    state_1602128 state_1602209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602128
  · exact cover_1602209
#print axioms cover_1602127

def state_1602310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 59 else 99)))
theorem cover_1602310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602310 := by
  apply coveredState_split_literal (state := state_1602310) 3
    state_1602311 state_1602346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602311
  · exact cover_1602346
#print axioms cover_1602310

def state_1602309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 42) else (if j.val < 3 then 105 else (if j.val < 4 then 59 else 99)))
theorem cover_1602309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602309 := by
  apply coveredState_split_literal (state := state_1602309) 1
    state_1602310 state_1602383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602310
  · exact cover_1602383
#print axioms cover_1602309

def state_1602297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 99)))
theorem cover_1602297 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602297 := by
  apply coveredState_split_literal (state := state_1602297) 2
    state_1602298 state_1602309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602298
  · exact cover_1602309
#print axioms cover_1602297

def state_1602401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 59 else 99)))
theorem cover_1602401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602401 := by
  apply coveredState_split_literal (state := state_1602401) 3
    state_1602402 state_1602409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602402
  · exact cover_1602409
#print axioms cover_1602401

def state_1602400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 42) else (if j.val < 3 then 105 else (if j.val < 4 then 59 else 99)))
theorem cover_1602400 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602400 := by
  apply coveredState_split_literal (state := state_1602400) 1
    state_1602401 state_1602470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602401
  · exact cover_1602470
#print axioms cover_1602400

def state_1602396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 99)))
theorem cover_1602396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602396 := by
  apply coveredState_split_literal (state := state_1602396) 2
    state_1602397 state_1602400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602397
  · exact cover_1602400
#print axioms cover_1602396

def state_1602296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 99)))
theorem cover_1602296 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602296 := by
  apply coveredState_split_literal (state := state_1602296) 0
    state_1602297 state_1602396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602297
  · exact cover_1602396
#print axioms cover_1602296

def state_1602268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 49)))
theorem cover_1602268 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602268 := by
  apply coveredState_split_literal (state := state_1602268) 4
    state_1602269 state_1602296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602269
  · exact cover_1602296
#print axioms cover_1602268

def state_1602244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 29 else 49)))
theorem cover_1602244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602244 := by
  apply coveredState_split_literal (state := state_1602244) 3
    state_1602245 state_1602268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602245
  · exact cover_1602268
#print axioms cover_1602244

def state_1602551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 99)))
theorem cover_1602551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602551 := by
  apply coveredState_split_literal (state := state_1602551) 0
    state_1602552 state_1602615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602552
  · exact cover_1602615
#print axioms cover_1602551

def state_1602519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 49)))
theorem cover_1602519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602519 := by
  apply coveredState_split_literal (state := state_1602519) 4
    state_1602520 state_1602551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602520
  · exact cover_1602551
#print axioms cover_1602519
end Mub6.Numerical.CircleFullD0.Forest
