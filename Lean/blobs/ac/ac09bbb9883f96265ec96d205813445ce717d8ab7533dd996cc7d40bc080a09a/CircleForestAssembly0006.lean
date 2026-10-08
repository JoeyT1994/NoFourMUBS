import CircleFullInterface
import CircleForestAssembly0005
import CircleForestChunk0023
import CircleForestChunk0024
import CircleForestChunk0025
import CircleForestChunk0026
import CircleForestChunk0027
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_5290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_5290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5290 := by
  apply coveredState_split_literal (state := state_5290) 2
    state_5291 state_5322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5291
  · exact cover_5322
#print axioms cover_5290

def state_5289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_5289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5289 := by
  apply coveredState_split_literal (state := state_5289) 1
    state_5290 state_5365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5290
  · exact cover_5365
#print axioms cover_5289

def state_5101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_5101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5101 := by
  apply coveredState_split_literal (state := state_5101) 0
    state_5102 state_5289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5102
  · exact cover_5289
#print axioms cover_5101

def state_5457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_5457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5457 := by
  apply coveredState_split_literal (state := state_5457) 2
    state_5458 state_5515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5458
  · exact cover_5515
#print axioms cover_5457

def state_5423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_5423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5423 := by
  apply coveredState_split_literal (state := state_5423) 1
    state_5424 state_5457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5424
  · exact cover_5457
#print axioms cover_5423

def state_5646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_5646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5646 := by
  apply coveredState_split_literal (state := state_5646) 3
    state_5647 state_5710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5647
  · exact cover_5710
#print axioms cover_5646

def state_5590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_5590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5590 := by
  apply coveredState_split_literal (state := state_5590) 2
    state_5591 state_5646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5591
  · exact cover_5646
#print axioms cover_5590

def state_5534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_5534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5534 := by
  apply coveredState_split_literal (state := state_5534) 1
    state_5535 state_5590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5535
  · exact cover_5590
#print axioms cover_5534

def state_5422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_5422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5422 := by
  apply coveredState_split_literal (state := state_5422) 0
    state_5423 state_5534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5423
  · exact cover_5534
#print axioms cover_5422

def state_5100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_5100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5100 := by
  apply coveredState_split_literal (state := state_5100) 4
    state_5101 state_5422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5101
  · exact cover_5422
#print axioms cover_5100

def state_4684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_4684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4684 := by
  apply coveredState_split_literal (state := state_4684) 3
    state_4685 state_5100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4685
  · exact cover_5100
#print axioms cover_4684

def state_5783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_5783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5783 := by
  apply coveredState_split_literal (state := state_5783) 0
    state_5784 state_5799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5784
  · exact cover_5799
#print axioms cover_5783

def state_5769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_5769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5769 := by
  apply coveredState_split_literal (state := state_5769) 2
    state_5770 state_5783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5770
  · exact cover_5783
#print axioms cover_5769

def state_5857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 4)))
theorem cover_5857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5857 := by
  apply coveredState_split_literal (state := state_5857) 0
    state_5858 state_5871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5858
  · exact cover_5871
#print axioms cover_5857

def state_5931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 8)))
theorem cover_5931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5931 := by
  apply coveredState_split_literal (state := state_5931) 0
    state_5932 state_5941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5932
  · exact cover_5941
#print axioms cover_5931

def state_5930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 8)))
theorem cover_5930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5930 := by
  apply coveredState_split_literal (state := state_5930) 2
    state_5931 state_5996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5931
  · exact cover_5996
#print axioms cover_5930

def state_5929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 8)))
theorem cover_5929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5929 := by
  apply coveredState_split_literal (state := state_5929) 1
    state_5930 state_6027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5930
  · exact cover_6027
#print axioms cover_5929

def state_5928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 4)))
theorem cover_5928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5928 := by
  apply coveredState_split_literal (state := state_5928) 4
    state_5929 state_6058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5929
  · exact cover_6058
#print axioms cover_5928

def state_5927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_5927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5927 := by
  apply coveredState_split_literal (state := state_5927) 3
    state_5928 state_6081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5928
  · exact cover_6081
#print axioms cover_5927

def state_6112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 8)))
theorem cover_6112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6112 := by
  apply coveredState_split_literal (state := state_6112) 4
    state_6113 state_6172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6113
  · exact cover_6172
#print axioms cover_6112

def state_6289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
theorem cover_6289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6289 := by
  apply coveredState_split_literal (state := state_6289) 3
    state_6290 state_6349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6290
  · exact cover_6349
#print axioms cover_6289

def state_6275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
theorem cover_6275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6275 := by
  apply coveredState_split_literal (state := state_6275) 0
    state_6276 state_6289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6276
  · exact cover_6289
#print axioms cover_6275

def state_6269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 17)))
theorem cover_6269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6269 := by
  apply coveredState_split_literal (state := state_6269) 2
    state_6270 state_6275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6270
  · exact cover_6275
#print axioms cover_6269

def state_6259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 17)))
theorem cover_6259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6259 := by
  apply coveredState_split_literal (state := state_6259) 1
    state_6260 state_6269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6260
  · exact cover_6269
#print axioms cover_6259

def state_6215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 8)))
theorem cover_6215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6215 := by
  apply coveredState_split_literal (state := state_6215) 4
    state_6216 state_6259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6216
  · exact cover_6259
#print axioms cover_6215

def state_6111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 8)))
theorem cover_6111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6111 := by
  apply coveredState_split_literal (state := state_6111) 3
    state_6112 state_6215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6112
  · exact cover_6215
#print axioms cover_6111

def state_6417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
theorem cover_6417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6417 := by
  apply coveredState_split_literal (state := state_6417) 3
    state_6418 state_6459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6418
  · exact cover_6459
#print axioms cover_6417

def state_6416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
theorem cover_6416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6416 := by
  apply coveredState_split_literal (state := state_6416) 0
    state_6417 state_6494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6417
  · exact cover_6494
#print axioms cover_6416

def state_6414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 17)))
theorem cover_6414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6414 := by
  apply coveredState_split_literal (state := state_6414) 2
    state_6415 state_6416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6415
  · exact cover_6416
#print axioms cover_6414

def state_6412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 17)))
theorem cover_6412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6412 := by
  apply coveredState_split_literal (state := state_6412) 1
    state_6413 state_6414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6413
  · exact cover_6414
#print axioms cover_6412

def state_6396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 8)))
theorem cover_6396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6396 := by
  apply coveredState_split_literal (state := state_6396) 4
    state_6397 state_6412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6397
  · exact cover_6412
#print axioms cover_6396

def state_6364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 8)))
theorem cover_6364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6364 := by
  apply coveredState_split_literal (state := state_6364) 3
    state_6365 state_6396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6365
  · exact cover_6396
#print axioms cover_6364
end Mub6.Numerical.CircleFullPrototype.Forest
