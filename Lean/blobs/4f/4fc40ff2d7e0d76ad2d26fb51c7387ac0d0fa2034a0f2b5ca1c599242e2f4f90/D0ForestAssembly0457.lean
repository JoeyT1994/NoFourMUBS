import D0FullInterface
import D0ForestAssembly0456
import D0ForestChunk1787
import D0ForestChunk1789
import D0ForestChunk1791
import D0ForestChunk1792
import D0ForestChunk1793
import D0ForestChunk1794
import D0ForestChunk1795
import D0ForestChunk1796
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2302920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 23)))
theorem cover_2302920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302920 := by
  apply coveredState_split_literal (state := state_2302920) 4
    state_2302921 state_2303162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302921
  · exact cover_2303162
#print axioms cover_2302920

def state_2302612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 23)))
theorem cover_2302612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302612 := by
  apply coveredState_split_literal (state := state_2302612) 2
    state_2302613 state_2302920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302613
  · exact cover_2302920
#print axioms cover_2302612

def state_2302610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
theorem cover_2302610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302610 := by
  apply coveredState_split_literal (state := state_2302610) 3
    state_2302611 state_2302612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302611
  · exact cover_2302612
#print axioms cover_2302610

def state_2302176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_2302176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302176 := by
  apply coveredState_split_literal (state := state_2302176) 4
    state_2302177 state_2302610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302177
  · exact cover_2302610
#print axioms cover_2302176

def state_2302162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_2302162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302162 := by
  apply coveredState_split_literal (state := state_2302162) 1
    state_2302163 state_2302176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302163
  · exact cover_2302176
#print axioms cover_2302162

def state_2302161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_2302161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302161 := by
  apply coveredState_split_literal (state := state_2302161) 0
    state_2302162 state_2303189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302162
  · exact cover_2303189
#print axioms cover_2302161

def state_2302160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_2302160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302160 := by
  apply coveredState_split_literal (state := state_2302160) 2
    state_2302161 state_2303210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302161
  · exact cover_2303210
#print axioms cover_2302160

def state_2302158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_2302158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302158 := by
  apply coveredState_split_literal (state := state_2302158) 4
    state_2302159 state_2302160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302159
  · exact cover_2302160
#print axioms cover_2302158

def state_2302152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2302152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302152 := by
  apply coveredState_split_literal (state := state_2302152) 3
    state_2302153 state_2302158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302153
  · exact cover_2302158
#print axioms cover_2302152

def state_2303290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 10)))
theorem cover_2303290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303290 := by
  apply coveredState_split_literal (state := state_2303290) 2
    state_2303291 state_2303314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303291
  · exact cover_2303314
#print axioms cover_2303290

def state_2303494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 45)))
theorem cover_2303494 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303494 := by
  apply coveredState_split_literal (state := state_2303494) 4
    state_2303495 state_2303514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303495
  · exact cover_2303514
#print axioms cover_2303494

def state_2303466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 54 else 45)))
theorem cover_2303466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303466 := by
  apply coveredState_split_literal (state := state_2303466) 2
    state_2303467 state_2303494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303467
  · exact cover_2303494
#print axioms cover_2303466

def state_2303564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 45)))
theorem cover_2303564 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303564 := by
  apply coveredState_split_literal (state := state_2303564) 4
    state_2303565 state_2303578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303565
  · exact cover_2303578
#print axioms cover_2303564

def state_2303630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 90)))
theorem cover_2303630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303630 := by
  apply coveredState_split_literal (state := state_2303630) 0
    state_2303631 state_2303690
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303631
  · exact cover_2303690
#print axioms cover_2303630

def state_2303743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 111 else 91)))
theorem cover_2303743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303743 := by
  apply coveredState_split_literal (state := state_2303743) 2
    state_2303744 state_2303791
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303744
  · exact cover_2303791
#print axioms cover_2303743

def state_2303697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 91)))
theorem cover_2303697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303697 := by
  apply coveredState_split_literal (state := state_2303697) 3
    state_2303698 state_2303743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303698
  · exact cover_2303743
#print axioms cover_2303697

def state_2303696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 91)))
theorem cover_2303696 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303696 := by
  apply coveredState_split_literal (state := state_2303696) 1
    state_2303697 state_2303848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303697
  · exact cover_2303848
#print axioms cover_2303696

def state_2303695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 91)))
theorem cover_2303695 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303695 := by
  apply coveredState_split_literal (state := state_2303695) 0
    state_2303696 state_2303903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303696
  · exact cover_2303903
#print axioms cover_2303695

def state_2303629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 45)))
theorem cover_2303629 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303629 := by
  apply coveredState_split_literal (state := state_2303629) 4
    state_2303630 state_2303695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303630
  · exact cover_2303695
#print axioms cover_2303629

def state_2303563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 55 else 45)))
theorem cover_2303563 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303563 := by
  apply coveredState_split_literal (state := state_2303563) 2
    state_2303564 state_2303629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303564
  · exact cover_2303629
#print axioms cover_2303563

def state_2303465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 45)))
theorem cover_2303465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303465 := by
  apply coveredState_split_literal (state := state_2303465) 3
    state_2303466 state_2303563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303466
  · exact cover_2303563
#print axioms cover_2303465

def state_2303464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 45)))
theorem cover_2303464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303464 := by
  apply coveredState_split_literal (state := state_2303464) 1
    state_2303465 state_2303930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303465
  · exact cover_2303930
#print axioms cover_2303464

def state_2303430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 22)))
theorem cover_2303430 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303430 := by
  apply coveredState_split_literal (state := state_2303430) 4
    state_2303431 state_2303464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303431
  · exact cover_2303464
#print axioms cover_2303430

def state_2303429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 22)))
theorem cover_2303429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303429 := by
  apply coveredState_split_literal (state := state_2303429) 0
    state_2303430 state_2303961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303430
  · exact cover_2303961
#print axioms cover_2303429

def state_2303397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 22)))
theorem cover_2303397 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303397 := by
  apply coveredState_split_literal (state := state_2303397) 2
    state_2303398 state_2303429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303398
  · exact cover_2303429
#print axioms cover_2303397

def state_2303375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_2303375 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303375 := by
  apply coveredState_split_literal (state := state_2303375) 3
    state_2303376 state_2303397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303376
  · exact cover_2303397
#print axioms cover_2303375

def state_2303374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_2303374 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303374 := by
  apply coveredState_split_literal (state := state_2303374) 1
    state_2303375 state_2303976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303375
  · exact cover_2303976
#print axioms cover_2303374

def state_2304047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 92)))
theorem cover_2304047 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304047 := by
  apply coveredState_split_literal (state := state_2304047) 0
    state_2304048 state_2304107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304048
  · exact cover_2304107
#print axioms cover_2304047

def state_2304046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 46)))
theorem cover_2304046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304046 := by
  apply coveredState_split_literal (state := state_2304046) 4
    state_2304047 state_2304114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304047
  · exact cover_2304114
#print axioms cover_2304046

def state_2304026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 54 else 46)))
theorem cover_2304026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304026 := by
  apply coveredState_split_literal (state := state_2304026) 2
    state_2304027 state_2304046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304027
  · exact cover_2304046
#print axioms cover_2304026

def state_2304141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 92)))
theorem cover_2304141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304141 := by
  apply coveredState_split_literal (state := state_2304141) 3
    state_2304142 state_2304183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304142
  · exact cover_2304183
#print axioms cover_2304141

def state_2304140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 92)))
theorem cover_2304140 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304140 := by
  apply coveredState_split_literal (state := state_2304140) 1
    state_2304141 state_2304208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304141
  · exact cover_2304208
#print axioms cover_2304140
end Mub6.Numerical.CircleFullD0.Forest
