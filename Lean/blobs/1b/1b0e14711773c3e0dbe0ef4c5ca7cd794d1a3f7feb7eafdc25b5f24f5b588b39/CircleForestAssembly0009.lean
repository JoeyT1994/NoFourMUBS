import CircleFullInterface
import CircleForestAssembly0008
import CircleForestChunk0034
import CircleForestChunk0035
import CircleForestChunk0036
import CircleForestChunk0037
import CircleForestChunk0038
import CircleForestChunk0039
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_8026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 9)))
theorem cover_8026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8026 := by
  apply coveredState_split_literal (state := state_8026) 2
    state_8027 state_8058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8027
  · exact cover_8058
#print axioms cover_8026

def state_8301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 18)))
theorem cover_8301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8301 := by
  apply coveredState_split_literal (state := state_8301) 3
    state_8302 state_8315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8302
  · exact cover_8315
#print axioms cover_8301

def state_8300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 9)))
theorem cover_8300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8300 := by
  apply coveredState_split_literal (state := state_8300) 4
    state_8301 state_8378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8301
  · exact cover_8378
#print axioms cover_8300

def state_8475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 72)))
theorem cover_8475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8475 := by
  apply coveredState_split_literal (state := state_8475) 1
    state_8476 state_8519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8476
  · exact cover_8519
#print axioms cover_8475

def state_8474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 36)))
theorem cover_8474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8474 := by
  apply coveredState_split_literal (state := state_8474) 4
    state_8475 state_8552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8475
  · exact cover_8552
#print axioms cover_8474

def state_8450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 36)))
theorem cover_8450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8450 := by
  apply coveredState_split_literal (state := state_8450) 0
    state_8451 state_8474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8451
  · exact cover_8474
#print axioms cover_8450

def state_8416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 17 else 36)))
theorem cover_8416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8416 := by
  apply coveredState_split_literal (state := state_8416) 3
    state_8417 state_8450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8417
  · exact cover_8450
#print axioms cover_8416

def state_8415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 36)))
theorem cover_8415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8415 := by
  apply coveredState_split_literal (state := state_8415) 2
    state_8416 state_8559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8416
  · exact cover_8559
#print axioms cover_8415

def state_8414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 36)))
theorem cover_8414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8414 := by
  apply coveredState_split_literal (state := state_8414) 1
    state_8415 state_8582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8415
  · exact cover_8582
#print axioms cover_8414

def state_8413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 18)))
theorem cover_8413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8413 := by
  apply coveredState_split_literal (state := state_8413) 4
    state_8414 state_8599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8414
  · exact cover_8599
#print axioms cover_8413

def state_8633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 36)))
theorem cover_8633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8633 := by
  apply coveredState_split_literal (state := state_8633) 0
    state_8634 state_8697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8634
  · exact cover_8697
#print axioms cover_8633

def state_8615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 17 else 36)))
theorem cover_8615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8615 := by
  apply coveredState_split_literal (state := state_8615) 3
    state_8616 state_8633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8616
  · exact cover_8633
#print axioms cover_8615

def state_8740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 55 else (if j.val < 4 then 35 else 36)))
theorem cover_8740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8740 := by
  apply coveredState_split_literal (state := state_8740) 0
    state_8741 state_8804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8741
  · exact cover_8804
#print axioms cover_8740

def state_8724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 55 else (if j.val < 4 then 17 else 36)))
theorem cover_8724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8724 := by
  apply coveredState_split_literal (state := state_8724) 3
    state_8725 state_8740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8725
  · exact cover_8740
#print axioms cover_8724

def state_8614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 36)))
theorem cover_8614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8614 := by
  apply coveredState_split_literal (state := state_8614) 2
    state_8615 state_8724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8615
  · exact cover_8724
#print axioms cover_8614

def state_8613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 36)))
theorem cover_8613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8613 := by
  apply coveredState_split_literal (state := state_8613) 1
    state_8614 state_8855
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8614
  · exact cover_8855
#print axioms cover_8613

def state_8612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 18)))
theorem cover_8612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8612 := by
  apply coveredState_split_literal (state := state_8612) 4
    state_8613 state_8894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8613
  · exact cover_8894
#print axioms cover_8612

def state_8412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 18)))
theorem cover_8412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8412 := by
  apply coveredState_split_literal (state := state_8412) 0
    state_8413 state_8612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8413
  · exact cover_8612
#print axioms cover_8412

def state_8382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 18)))
theorem cover_8382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8382 := by
  apply coveredState_split_literal (state := state_8382) 3
    state_8383 state_8412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8383
  · exact cover_8412
#print axioms cover_8382

def state_8381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 9)))
theorem cover_8381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8381 := by
  apply coveredState_split_literal (state := state_8381) 4
    state_8382 state_8921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8382
  · exact cover_8921
#print axioms cover_8381

def state_8299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 9)))
theorem cover_8299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8299 := by
  apply coveredState_split_literal (state := state_8299) 0
    state_8300 state_8381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8300
  · exact cover_8381
#print axioms cover_8299

def state_8253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 9)))
theorem cover_8253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8253 := by
  apply coveredState_split_literal (state := state_8253) 2
    state_8254 state_8299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8254
  · exact cover_8299
#print axioms cover_8253

def state_8025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 9)))
theorem cover_8025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8025 := by
  apply coveredState_split_literal (state := state_8025) 1
    state_8026 state_8253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8026
  · exact cover_8253
#print axioms cover_8025

def state_6107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 4)))
theorem cover_6107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6107 := by
  apply coveredState_split_literal (state := state_6107) 4
    state_6108 state_8025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6108
  · exact cover_8025
#print axioms cover_6107

def state_8934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_8934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8934 := by
  apply coveredState_split_literal (state := state_8934) 2
    state_8935 state_8970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8935
  · exact cover_8970
#print axioms cover_8934

def state_9103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 17)))
theorem cover_9103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9103 := by
  apply coveredState_split_literal (state := state_9103) 0
    state_9104 state_9167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9104
  · exact cover_9167
#print axioms cover_9103

def state_9089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 17)))
theorem cover_9089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9089 := by
  apply coveredState_split_literal (state := state_9089) 2
    state_9090 state_9103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9090
  · exact cover_9103
#print axioms cover_9089

def state_9077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 8)))
theorem cover_9077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9077 := by
  apply coveredState_split_literal (state := state_9077) 4
    state_9078 state_9089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9078
  · exact cover_9089
#print axioms cover_9077

def state_9076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 8)))
theorem cover_9076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9076 := by
  apply coveredState_split_literal (state := state_9076) 3
    state_9077 state_9190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9077
  · exact cover_9190
#print axioms cover_9076

def state_9016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 8)))
theorem cover_9016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9016 := by
  apply coveredState_split_literal (state := state_9016) 0
    state_9017 state_9076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9017
  · exact cover_9076
#print axioms cover_9016

def state_9213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 8)))
theorem cover_9213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9213 := by
  apply coveredState_split_literal (state := state_9213) 4
    state_9214 state_9225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9214
  · exact cover_9225
#print axioms cover_9213

def state_9212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 8)))
theorem cover_9212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9212 := by
  apply coveredState_split_literal (state := state_9212) 3
    state_9213 state_9284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9213
  · exact cover_9284
#print axioms cover_9212
end Mub6.Numerical.CircleFullPrototype.Forest
