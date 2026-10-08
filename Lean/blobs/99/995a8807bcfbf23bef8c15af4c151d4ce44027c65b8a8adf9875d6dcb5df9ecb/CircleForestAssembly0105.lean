import CircleFullInterface
import CircleForestAssembly0044
import CircleForestAssembly0094
import CircleForestAssembly0104
import CircleForestChunk0420
import CircleForestChunk0421
import CircleForestChunk0422
import CircleForestChunk0423
import CircleForestChunk0424
import CircleForestChunk0425
import CircleForestChunk0426
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1028304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1028304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028304 := by
  apply coveredState_split_literal (state := state_1028304) 3
    state_1028305 state_1038136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028305
  · exact cover_1038136
#print axioms cover_1028304

def state_979558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_979558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979558 := by
  apply coveredState_split_literal (state := state_979558) 2
    state_979559 state_1028304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979559
  · exact cover_1028304
#print axioms cover_979558

def state_939524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_939524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939524 := by
  apply coveredState_split_literal (state := state_939524) 1
    state_939525 state_979558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939525
  · exact cover_979558
#print axioms cover_939524

def state_1038479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1038479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038479 := by
  apply coveredState_split_literal (state := state_1038479) 2
    state_1038480 state_1038511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038480
  · exact cover_1038511
#print axioms cover_1038479

def state_1038570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1038570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038570 := by
  apply coveredState_split_literal (state := state_1038570) 2
    state_1038571 state_1038620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038571
  · exact cover_1038620
#print axioms cover_1038570

def state_1038478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1038478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038478 := by
  apply coveredState_split_literal (state := state_1038478) 1
    state_1038479 state_1038570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038479
  · exact cover_1038570
#print axioms cover_1038478

def state_1038477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1038477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038477 := by
  apply coveredState_split_literal (state := state_1038477) 0
    state_1038478 state_1038669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038478
  · exact cover_1038669
#print axioms cover_1038477

def state_1038720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1038720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038720 := by
  apply coveredState_split_literal (state := state_1038720) 2
    state_1038721 state_1038734
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038721
  · exact cover_1038734
#print axioms cover_1038720

def state_1038719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1038719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038719 := by
  apply coveredState_split_literal (state := state_1038719) 1
    state_1038720 state_1038787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038720
  · exact cover_1038787
#print axioms cover_1038719

def state_1038718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1038718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038718 := by
  apply coveredState_split_literal (state := state_1038718) 0
    state_1038719 state_1038822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038719
  · exact cover_1038822
#print axioms cover_1038718

def state_1038476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1038476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038476 := by
  apply coveredState_split_literal (state := state_1038476) 4
    state_1038477 state_1038718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038477
  · exact cover_1038718
#print axioms cover_1038476

def state_1038859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1038859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038859 := by
  apply coveredState_split_literal (state := state_1038859) 1
    state_1038860 state_1038903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038860
  · exact cover_1038903
#print axioms cover_1038859

def state_1038858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1038858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038858 := by
  apply coveredState_split_literal (state := state_1038858) 0
    state_1038859 state_1038942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038859
  · exact cover_1038942
#print axioms cover_1038858

def state_1038983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1038983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038983 := by
  apply coveredState_split_literal (state := state_1038983) 3
    state_1038984 state_1039001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038984
  · exact cover_1039001
#print axioms cover_1038983

def state_1038971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1038971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038971 := by
  apply coveredState_split_literal (state := state_1038971) 2
    state_1038972 state_1038983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038972
  · exact cover_1038983
#print axioms cover_1038971

def state_1038970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1038970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038970 := by
  apply coveredState_split_literal (state := state_1038970) 1
    state_1038971 state_1039056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038971
  · exact cover_1039056
#print axioms cover_1038970

def state_1038969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1038969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038969 := by
  apply coveredState_split_literal (state := state_1038969) 0
    state_1038970 state_1039087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038970
  · exact cover_1039087
#print axioms cover_1038969

def state_1038857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1038857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038857 := by
  apply coveredState_split_literal (state := state_1038857) 4
    state_1038858 state_1038969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038858
  · exact cover_1038969
#print axioms cover_1038857

def state_1038475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1038475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038475 := by
  apply coveredState_split_literal (state := state_1038475) 3
    state_1038476 state_1038857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038476
  · exact cover_1038857
#print axioms cover_1038475

def state_1039141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1039141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039141 := by
  apply coveredState_split_literal (state := state_1039141) 1
    state_1039142 state_1039195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039142
  · exact cover_1039195
#print axioms cover_1039141

def state_1039140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1039140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039140 := by
  apply coveredState_split_literal (state := state_1039140) 0
    state_1039141 state_1039224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039141
  · exact cover_1039224
#print axioms cover_1039140

def state_1039252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_1039252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039252 := by
  apply coveredState_split_literal (state := state_1039252) 0
    state_1039253 state_1039304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039253
  · exact cover_1039304
#print axioms cover_1039252

def state_1039251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_1039251 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039251 := by
  apply coveredState_split_literal (state := state_1039251) 4
    state_1039252 state_1039317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039252
  · exact cover_1039317
#print axioms cover_1039251

def state_1039250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_1039250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039250 := by
  apply coveredState_split_literal (state := state_1039250) 3
    state_1039251 state_1039328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039251
  · exact cover_1039328
#print axioms cover_1039250

def state_1039249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1039249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039249 := by
  apply coveredState_split_literal (state := state_1039249) 2
    state_1039250 state_1039341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039250
  · exact cover_1039341
#print axioms cover_1039249

def state_1039427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 6)))
theorem cover_1039427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039427 := by
  apply coveredState_split_literal (state := state_1039427) 4
    state_1039428 state_1039437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039428
  · exact cover_1039437
#print axioms cover_1039427

def state_1039369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_1039369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039369 := by
  apply coveredState_split_literal (state := state_1039369) 2
    state_1039370 state_1039427
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039370
  · exact cover_1039427
#print axioms cover_1039369

def state_1039368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_1039368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039368 := by
  apply coveredState_split_literal (state := state_1039368) 1
    state_1039369 state_1039492
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039369
  · exact cover_1039492
#print axioms cover_1039368

def state_1039367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_1039367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039367 := by
  apply coveredState_split_literal (state := state_1039367) 0
    state_1039368 state_1039529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039368
  · exact cover_1039529
#print axioms cover_1039367

def state_1039653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_1039653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039653 := by
  apply coveredState_split_literal (state := state_1039653) 1
    state_1039654 state_1039703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039654
  · exact cover_1039703
#print axioms cover_1039653

def state_1039652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_1039652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039652 := by
  apply coveredState_split_literal (state := state_1039652) 0
    state_1039653 state_1039752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039653
  · exact cover_1039752
#print axioms cover_1039652

def state_1039651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 7)))
theorem cover_1039651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039651 := by
  apply coveredState_split_literal (state := state_1039651) 4
    state_1039652 state_1039761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039652
  · exact cover_1039761
#print axioms cover_1039651
end Mub6.Numerical.CircleFullD0.Forest
