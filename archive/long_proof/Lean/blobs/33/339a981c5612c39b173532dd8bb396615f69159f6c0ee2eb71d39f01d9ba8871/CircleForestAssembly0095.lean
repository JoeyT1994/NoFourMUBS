import CircleFullInterface
import CircleForestAssembly0094
import CircleForestChunk0382
import CircleForestChunk0383
import CircleForestChunk0384
import CircleForestChunk0385
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_167290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 47 else 29)))
theorem cover_167290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167290 := by
  apply coveredState_split_literal (state := state_167290) 0
    state_167291 state_167336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167291
  · exact cover_167336
#print axioms cover_167290

def state_167289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 47 else 29)))
theorem cover_167289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167289 := by
  apply coveredState_split_literal (state := state_167289) 2
    state_167290 state_167361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167290
  · exact cover_167361
#print axioms cover_167289

def state_167267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 29)))
theorem cover_167267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167267 := by
  apply coveredState_split_literal (state := state_167267) 3
    state_167268 state_167289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167268
  · exact cover_167289
#print axioms cover_167267

def state_167235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 14)))
theorem cover_167235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167235 := by
  apply coveredState_split_literal (state := state_167235) 4
    state_167236 state_167267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167236
  · exact cover_167267
#print axioms cover_167235

def state_167438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 38) else (if j.val < 3 then 100 else (if j.val < 4 then 95 else 59)))
theorem cover_167438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167438 := by
  apply coveredState_split_literal (state := state_167438) 1
    state_167439 state_167498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167439
  · exact cover_167498
#print axioms cover_167438

def state_167412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 100 else (if j.val < 4 then 95 else 59)))
theorem cover_167412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167412 := by
  apply coveredState_split_literal (state := state_167412) 0
    state_167413 state_167438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167413
  · exact cover_167438
#print axioms cover_167412

def state_167411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 95 else 59)))
theorem cover_167411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167411 := by
  apply coveredState_split_literal (state := state_167411) 2
    state_167412 state_167523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167412
  · exact cover_167523
#print axioms cover_167411

def state_167391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 47 else 59)))
theorem cover_167391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167391 := by
  apply coveredState_split_literal (state := state_167391) 3
    state_167392 state_167411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167392
  · exact cover_167411
#print axioms cover_167391

def state_167389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 47 else 29)))
theorem cover_167389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167389 := by
  apply coveredState_split_literal (state := state_167389) 4
    state_167390 state_167391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167390
  · exact cover_167391
#print axioms cover_167389

def state_167388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 47 else 29)))
theorem cover_167388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167388 := by
  apply coveredState_split_literal (state := state_167388) 1
    state_167389 state_167538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167389
  · exact cover_167538
#print axioms cover_167388

def state_167387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 47 else 29)))
theorem cover_167387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167387 := by
  apply coveredState_split_literal (state := state_167387) 0
    state_167388 state_167539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167388
  · exact cover_167539
#print axioms cover_167387

def state_167386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 47 else 29)))
theorem cover_167386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167386 := by
  apply coveredState_split_literal (state := state_167386) 2
    state_167387 state_167592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167387
  · exact cover_167592
#print axioms cover_167386

def state_167376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 29)))
theorem cover_167376 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167376 := by
  apply coveredState_split_literal (state := state_167376) 3
    state_167377 state_167386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167377
  · exact cover_167386
#print axioms cover_167376

def state_167374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 14)))
theorem cover_167374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167374 := by
  apply coveredState_split_literal (state := state_167374) 4
    state_167375 state_167376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167375
  · exact cover_167376
#print axioms cover_167374

def state_167234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 14)))
theorem cover_167234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167234 := by
  apply coveredState_split_literal (state := state_167234) 1
    state_167235 state_167374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167235
  · exact cover_167374
#print axioms cover_167234

def state_167182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 14)))
theorem cover_167182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167182 := by
  apply coveredState_split_literal (state := state_167182) 0
    state_167183 state_167234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167183
  · exact cover_167234
#print axioms cover_167182

def state_167168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 14)))
theorem cover_167168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167168 := by
  apply coveredState_split_literal (state := state_167168) 3
    state_167169 state_167182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167169
  · exact cover_167182
#print axioms cover_167168

def state_166520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 14)))
theorem cover_166520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166520 := by
  apply coveredState_split_literal (state := state_166520) 2
    state_166521 state_167168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166521
  · exact cover_167168
#print axioms cover_166520

def state_167617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 15)))
theorem cover_167617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167617 := by
  apply coveredState_split_literal (state := state_167617) 1
    state_167618 state_167661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167618
  · exact cover_167661
#print axioms cover_167617

def state_167690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 30)))
theorem cover_167690 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167690 := by
  apply coveredState_split_literal (state := state_167690) 2
    state_167691 state_167716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167691
  · exact cover_167716
#print axioms cover_167690

def state_167689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 15)))
theorem cover_167689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167689 := by
  apply coveredState_split_literal (state := state_167689) 4
    state_167690 state_167777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167690
  · exact cover_167777
#print axioms cover_167689

def state_167872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 99 else (if j.val < 4 then 95 else 60)))
theorem cover_167872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167872 := by
  apply coveredState_split_literal (state := state_167872) 0
    state_167873 state_167898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167873
  · exact cover_167898
#print axioms cover_167872

def state_167864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 49 else (if j.val < 4 then 95 else 60)))
theorem cover_167864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167864 := by
  apply coveredState_split_literal (state := state_167864) 2
    state_167865 state_167872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167865
  · exact cover_167872
#print axioms cover_167864

def state_167824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 60)))
theorem cover_167824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167824 := by
  apply coveredState_split_literal (state := state_167824) 3
    state_167825 state_167864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167825
  · exact cover_167864
#print axioms cover_167824

def state_167823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 30)))
theorem cover_167823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167823 := by
  apply coveredState_split_literal (state := state_167823) 4
    state_167824 state_167955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167824
  · exact cover_167955
#print axioms cover_167823

def state_167822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 30)))
theorem cover_167822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167822 := by
  apply coveredState_split_literal (state := state_167822) 1
    state_167823 state_167984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167823
  · exact cover_167984
#print axioms cover_167822

def state_167821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 30)))
theorem cover_167821 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167821 := by
  apply coveredState_split_literal (state := state_167821) 0
    state_167822 state_168017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167822
  · exact cover_168017
#print axioms cover_167821

def state_167805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 30)))
theorem cover_167805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167805 := by
  apply coveredState_split_literal (state := state_167805) 3
    state_167806 state_167821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167806
  · exact cover_167821
#print axioms cover_167805

def state_167783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 30)))
theorem cover_167783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167783 := by
  apply coveredState_split_literal (state := state_167783) 2
    state_167784 state_167805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167784
  · exact cover_167805
#print axioms cover_167783

def state_167782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 15)))
theorem cover_167782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167782 := by
  apply coveredState_split_literal (state := state_167782) 4
    state_167783 state_168072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167783
  · exact cover_168072
#print axioms cover_167782

def state_167688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 15)))
theorem cover_167688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167688 := by
  apply coveredState_split_literal (state := state_167688) 1
    state_167689 state_167782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167689
  · exact cover_167782
#print axioms cover_167688

def state_167616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 15)))
theorem cover_167616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167616 := by
  apply coveredState_split_literal (state := state_167616) 0
    state_167617 state_167688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167617
  · exact cover_167688
#print axioms cover_167616
end Mub6.Numerical.CircleFullPrototype.Forest
