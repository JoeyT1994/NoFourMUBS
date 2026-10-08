import D0FullInterface
import D0ForestAssembly0124
import D0ForestChunk0485
import D0ForestChunk0486
import D0ForestChunk0487
import D0ForestChunk0488
import D0ForestChunk0489
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1305335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 44) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 44)))
theorem cover_1305335 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305335 := by
  apply coveredState_split_literal (state := state_1305335) 1
    state_1305336 state_1305401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305336
  · exact cover_1305401
#print axioms cover_1305335

def state_1305334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 44)))
theorem cover_1305334 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305334 := by
  apply coveredState_split_literal (state := state_1305334) 2
    state_1305335 state_1305418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305335
  · exact cover_1305418
#print axioms cover_1305334

def state_1305333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 44)))
theorem cover_1305333 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305333 := by
  apply coveredState_split_literal (state := state_1305333) 0
    state_1305334 state_1305433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305334
  · exact cover_1305433
#print axioms cover_1305333

def state_1305331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 44)))
theorem cover_1305331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305331 := by
  apply coveredState_split_literal (state := state_1305331) 3
    state_1305332 state_1305333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305332
  · exact cover_1305333
#print axioms cover_1305331

def state_1305330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 22)))
theorem cover_1305330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305330 := by
  apply coveredState_split_literal (state := state_1305330) 4
    state_1305331 state_1305448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305331
  · exact cover_1305448
#print axioms cover_1305330

def state_1305329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 22) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 22)))
theorem cover_1305329 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305329 := by
  apply coveredState_split_literal (state := state_1305329) 1
    state_1305330 state_1305469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305330
  · exact cover_1305469
#print axioms cover_1305329

def state_1305328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 22)))
theorem cover_1305328 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305328 := by
  apply coveredState_split_literal (state := state_1305328) 2
    state_1305329 state_1305482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305329
  · exact cover_1305482
#print axioms cover_1305328

def state_1305327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 22)))
theorem cover_1305327 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305327 := by
  apply coveredState_split_literal (state := state_1305327) 0
    state_1305328 state_1305497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305328
  · exact cover_1305497
#print axioms cover_1305327

def state_1305565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 65 else 88) else (if j.val < 3 then 192 else (if j.val < 4 then 116 else 178)))
theorem cover_1305565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305565 := by
  apply coveredState_split_literal (state := state_1305565) 1
    state_1305566 state_1305623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305566
  · exact cover_1305623
#print axioms cover_1305565

def state_1305564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 65 else 88) else (if j.val < 3 then 192 else (if j.val < 4 then 116 else 89)))
theorem cover_1305564 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305564 := by
  apply coveredState_split_literal (state := state_1305564) 4
    state_1305565 state_1305648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305565
  · exact cover_1305648
#print axioms cover_1305564

def state_1305678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 65 else 88) else (if j.val < 3 then 193 else (if j.val < 4 then 116 else 178)))
theorem cover_1305678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305678 := by
  apply coveredState_split_literal (state := state_1305678) 1
    state_1305679 state_1305712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305679
  · exact cover_1305712
#print axioms cover_1305678

def state_1305677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 65 else 88) else (if j.val < 3 then 193 else (if j.val < 4 then 116 else 89)))
theorem cover_1305677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305677 := by
  apply coveredState_split_literal (state := state_1305677) 4
    state_1305678 state_1305745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305678
  · exact cover_1305745
#print axioms cover_1305677

def state_1305563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 65 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 116 else 89)))
theorem cover_1305563 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305563 := by
  apply coveredState_split_literal (state := state_1305563) 2
    state_1305564 state_1305677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305564
  · exact cover_1305677
#print axioms cover_1305563

def state_1305549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 116 else 89)))
theorem cover_1305549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305549 := by
  apply coveredState_split_literal (state := state_1305549) 0
    state_1305550 state_1305563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305550
  · exact cover_1305563
#print axioms cover_1305549

def state_1305548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 58 else 89)))
theorem cover_1305548 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305548 := by
  apply coveredState_split_literal (state := state_1305548) 3
    state_1305549 state_1305792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305549
  · exact cover_1305792
#print axioms cover_1305548

def state_1305506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 58 else 44)))
theorem cover_1305506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305506 := by
  apply coveredState_split_literal (state := state_1305506) 4
    state_1305507 state_1305548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305507
  · exact cover_1305548
#print axioms cover_1305506

def state_1305505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 44) else (if j.val < 3 then 96 else (if j.val < 4 then 58 else 44)))
theorem cover_1305505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305505 := by
  apply coveredState_split_literal (state := state_1305505) 1
    state_1305506 state_1305803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305506
  · exact cover_1305803
#print axioms cover_1305505

def state_1305504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 58 else 44)))
theorem cover_1305504 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305504 := by
  apply coveredState_split_literal (state := state_1305504) 2
    state_1305505 state_1305832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305505
  · exact cover_1305832
#print axioms cover_1305504

def state_1305896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 66 else 88) else (if j.val < 3 then 192 else (if j.val < 4 then 116 else 89)))
theorem cover_1305896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305896 := by
  apply coveredState_split_literal (state := state_1305896) 4
    state_1305897 state_1305926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305897
  · exact cover_1305926
#print axioms cover_1305896

def state_1306003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 66 else 88) else (if j.val < 3 then 193 else (if j.val < 4 then 116 else 179)))
theorem cover_1306003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306003 := by
  apply coveredState_split_literal (state := state_1306003) 1
    state_1306004 state_1306051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306004
  · exact cover_1306051
#print axioms cover_1306003

def state_1305969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 66 else 88) else (if j.val < 3 then 193 else (if j.val < 4 then 116 else 89)))
theorem cover_1305969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305969 := by
  apply coveredState_split_literal (state := state_1305969) 4
    state_1305970 state_1306003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305970
  · exact cover_1306003
#print axioms cover_1305969

def state_1305895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 66 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 116 else 89)))
theorem cover_1305895 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305895 := by
  apply coveredState_split_literal (state := state_1305895) 2
    state_1305896 state_1305969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305896
  · exact cover_1305969
#print axioms cover_1305895

def state_1305894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 116 else 89)))
theorem cover_1305894 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305894 := by
  apply coveredState_split_literal (state := state_1305894) 0
    state_1305895 state_1306098
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305895
  · exact cover_1306098
#print axioms cover_1305894

def state_1305893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 58 else 89)))
theorem cover_1305893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305893 := by
  apply coveredState_split_literal (state := state_1305893) 3
    state_1305894 state_1306125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305894
  · exact cover_1306125
#print axioms cover_1305893

def state_1305873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 58 else 44)))
theorem cover_1305873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305873 := by
  apply coveredState_split_literal (state := state_1305873) 4
    state_1305874 state_1305893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305874
  · exact cover_1305893
#print axioms cover_1305873

def state_1305872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 44) else (if j.val < 3 then 96 else (if j.val < 4 then 58 else 44)))
theorem cover_1305872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305872 := by
  apply coveredState_split_literal (state := state_1305872) 1
    state_1305873 state_1306166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305873
  · exact cover_1306166
#print axioms cover_1305872

def state_1306190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 88) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 89)))
theorem cover_1306190 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306190 := by
  apply coveredState_split_literal (state := state_1306190) 3
    state_1306191 state_1306242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306191
  · exact cover_1306242
#print axioms cover_1306190

def state_1306188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 88) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 44)))
theorem cover_1306188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306188 := by
  apply coveredState_split_literal (state := state_1306188) 4
    state_1306189 state_1306190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306189
  · exact cover_1306190
#print axioms cover_1306188

def state_1306187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 44) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 44)))
theorem cover_1306187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306187 := by
  apply coveredState_split_literal (state := state_1306187) 1
    state_1306188 state_1306257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306188
  · exact cover_1306257
#print axioms cover_1306187

def state_1305871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 58 else 44)))
theorem cover_1305871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305871 := by
  apply coveredState_split_literal (state := state_1305871) 2
    state_1305872 state_1306187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305872
  · exact cover_1306187
#print axioms cover_1305871

def state_1305503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 58 else 44)))
theorem cover_1305503 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305503 := by
  apply coveredState_split_literal (state := state_1305503) 0
    state_1305504 state_1305871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305504
  · exact cover_1305871
#print axioms cover_1305503

def state_1305502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 44)))
theorem cover_1305502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305502 := by
  apply coveredState_split_literal (state := state_1305502) 3
    state_1305503 state_1306272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305503
  · exact cover_1306272
#print axioms cover_1305502
end Mub6.Numerical.CircleFullD0.Forest
