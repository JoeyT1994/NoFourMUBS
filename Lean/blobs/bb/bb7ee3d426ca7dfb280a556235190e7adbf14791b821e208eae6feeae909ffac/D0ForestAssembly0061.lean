import D0FullInterface
import D0ForestAssembly0059
import D0ForestAssembly0060
import D0ForestChunk0242
import D0ForestChunk0245
import D0ForestChunk0247
import D0ForestChunk0248
import D0ForestChunk0249
import D0ForestChunk0250
import D0ForestChunk0251
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_996673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 87)))
theorem cover_996673 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996673 := by
  apply coveredState_split_literal (state := state_996673) 3
    state_996674 state_996919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996674
  · exact cover_996919
#print axioms cover_996673

def state_996475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 43)))
theorem cover_996475 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996475 := by
  apply coveredState_split_literal (state := state_996475) 4
    state_996476 state_996673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996476
  · exact cover_996673
#print axioms cover_996475

def state_996425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 43)))
theorem cover_996425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996425 := by
  apply coveredState_split_literal (state := state_996425) 0
    state_996426 state_996475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996426
  · exact cover_996475
#print axioms cover_996425

def state_996424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 43)))
theorem cover_996424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996424 := by
  apply coveredState_split_literal (state := state_996424) 1
    state_996425 state_996962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996425
  · exact cover_996962
#print axioms cover_996424

def state_997026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 43)))
theorem cover_997026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997026 := by
  apply coveredState_split_literal (state := state_997026) 4
    state_997027 state_997042
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997027
  · exact cover_997042
#print axioms cover_997026

def state_997006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 43)))
theorem cover_997006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997006 := by
  apply coveredState_split_literal (state := state_997006) 0
    state_997007 state_997026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997007
  · exact cover_997026
#print axioms cover_997006

def state_997005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 43)))
theorem cover_997005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997005 := by
  apply coveredState_split_literal (state := state_997005) 1
    state_997006 state_997097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997006
  · exact cover_997097
#print axioms cover_997005

def state_996423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 43)))
theorem cover_996423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996423 := by
  apply coveredState_split_literal (state := state_996423) 2
    state_996424 state_997005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996424
  · exact cover_997005
#print axioms cover_996423

def state_996327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 21)))
theorem cover_996327 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996327 := by
  apply coveredState_split_literal (state := state_996327) 4
    state_996328 state_996423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996328
  · exact cover_996423
#print axioms cover_996327

def state_995725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
theorem cover_995725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995725 := by
  apply coveredState_split_literal (state := state_995725) 3
    state_995726 state_996327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995726
  · exact cover_996327
#print axioms cover_995725

def state_995685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
theorem cover_995685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995685 := by
  apply coveredState_split_literal (state := state_995685) 0
    state_995686 state_995725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995686
  · exact cover_995725
#print axioms cover_995685

def state_995684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 21)))
theorem cover_995684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995684 := by
  apply coveredState_split_literal (state := state_995684) 2
    state_995685 state_997108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995685
  · exact cover_997108
#print axioms cover_995684

def state_995666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 10)))
theorem cover_995666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995666 := by
  apply coveredState_split_literal (state := state_995666) 4
    state_995667 state_995684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995667
  · exact cover_995684
#print axioms cover_995666

def state_997270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 43)))
theorem cover_997270 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997270 := by
  apply coveredState_split_literal (state := state_997270) 4
    state_997271 state_997318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997271
  · exact cover_997318
#print axioms cover_997270

def state_997250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 43)))
theorem cover_997250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997250 := by
  apply coveredState_split_literal (state := state_997250) 0
    state_997251 state_997270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997251
  · exact cover_997270
#print axioms cover_997250

def state_997249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 43)))
theorem cover_997249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997249 := by
  apply coveredState_split_literal (state := state_997249) 3
    state_997250 state_997379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997250
  · exact cover_997379
#print axioms cover_997249

def state_997248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 43)))
theorem cover_997248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997248 := by
  apply coveredState_split_literal (state := state_997248) 1
    state_997249 state_997398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997249
  · exact cover_997398
#print axioms cover_997248

def state_997222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 43)))
theorem cover_997222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997222 := by
  apply coveredState_split_literal (state := state_997222) 2
    state_997223 state_997248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997223
  · exact cover_997248
#print axioms cover_997222

def state_997160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 21)))
theorem cover_997160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997160 := by
  apply coveredState_split_literal (state := state_997160) 4
    state_997161 state_997222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997161
  · exact cover_997222
#print axioms cover_997160

def state_997146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 21)))
theorem cover_997146 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997146 := by
  apply coveredState_split_literal (state := state_997146) 0
    state_997147 state_997160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997147
  · exact cover_997160
#print axioms cover_997146

def state_997487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 27 else 43)))
theorem cover_997487 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997487 := by
  apply coveredState_split_literal (state := state_997487) 3
    state_997488 state_997515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997488
  · exact cover_997515
#print axioms cover_997487

def state_997486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 27 else 43)))
theorem cover_997486 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997486 := by
  apply coveredState_split_literal (state := state_997486) 1
    state_997487 state_997556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997487
  · exact cover_997556
#print axioms cover_997486

def state_997485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 43)))
theorem cover_997485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997485 := by
  apply coveredState_split_literal (state := state_997485) 2
    state_997486 state_997575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997486
  · exact cover_997575
#print axioms cover_997485

def state_997447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 21)))
theorem cover_997447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997447 := by
  apply coveredState_split_literal (state := state_997447) 4
    state_997448 state_997485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997448
  · exact cover_997485
#print axioms cover_997447

def state_997419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 21)))
theorem cover_997419 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997419 := by
  apply coveredState_split_literal (state := state_997419) 0
    state_997420 state_997447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997420
  · exact cover_997447
#print axioms cover_997419

def state_997145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 21)))
theorem cover_997145 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997145 := by
  apply coveredState_split_literal (state := state_997145) 2
    state_997146 state_997419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997146
  · exact cover_997419
#print axioms cover_997145

def state_997113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 10)))
theorem cover_997113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997113 := by
  apply coveredState_split_literal (state := state_997113) 4
    state_997114 state_997145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997114
  · exact cover_997145
#print axioms cover_997113

def state_995665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_995665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995665 := by
  apply coveredState_split_literal (state := state_995665) 3
    state_995666 state_997113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995666
  · exact cover_997113
#print axioms cover_995665

def state_995097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_995097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995097 := by
  apply coveredState_split_literal (state := state_995097) 1
    state_995098 state_995665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995098
  · exact cover_995665
#print axioms cover_995097

def state_997726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 21)))
theorem cover_997726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997726 := by
  apply coveredState_split_literal (state := state_997726) 4
    state_997727 state_997790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997727
  · exact cover_997790
#print axioms cover_997726

def state_997670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
theorem cover_997670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997670 := by
  apply coveredState_split_literal (state := state_997670) 3
    state_997671 state_997726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997671
  · exact cover_997726
#print axioms cover_997670

def state_997658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
theorem cover_997658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997658 := by
  apply coveredState_split_literal (state := state_997658) 1
    state_997659 state_997670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997659
  · exact cover_997670
#print axioms cover_997658
end Mub6.Numerical.CircleFullD0.Forest
