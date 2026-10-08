import D0FullInterface
import D0ForestAssembly0020
import D0ForestChunk0043
import D0ForestChunk0044
import D0ForestChunk0045
import D0ForestChunk0046
import D0ForestChunk0047
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2289804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2289804 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289804 := by
  apply coveredState_split_literal (state := state_2289804) 1
    state_2289805 state_2294466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289805
  · exact cover_2294466
#print axioms cover_2289804

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

def state_2303373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_2303373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303373 := by
  apply coveredState_split_literal (state := state_2303373) 4
    state_2303374 state_2303989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303374
  · exact cover_2303989
#print axioms cover_2303373

def state_2303372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_2303372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303372 := by
  apply coveredState_split_literal (state := state_2303372) 0
    state_2303373 state_2304542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303373
  · exact cover_2304542
#print axioms cover_2303372

def state_2304672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
theorem cover_2304672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304672 := by
  apply coveredState_split_literal (state := state_2304672) 1
    state_2304673 state_2305556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304673
  · exact cover_2305556
#print axioms cover_2304672

def state_2304592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
theorem cover_2304592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304592 := by
  apply coveredState_split_literal (state := state_2304592) 4
    state_2304593 state_2304672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304593
  · exact cover_2304672
#print axioms cover_2304592

def state_2304591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
theorem cover_2304591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304591 := by
  apply coveredState_split_literal (state := state_2304591) 0
    state_2304592 state_2306333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304592
  · exact cover_2306333
#print axioms cover_2304591

def state_2304590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 22)))
theorem cover_2304590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304590 := by
  apply coveredState_split_literal (state := state_2304590) 2
    state_2304591 state_2306380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304591
  · exact cover_2306380
#print axioms cover_2304590

def state_2304552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_2304552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304552 := by
  apply coveredState_split_literal (state := state_2304552) 3
    state_2304553 state_2304590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304553
  · exact cover_2304590
#print axioms cover_2304552

def state_2304551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_2304551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304551 := by
  apply coveredState_split_literal (state := state_2304551) 1
    state_2304552 state_2306593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304552
  · exact cover_2306593
#print axioms cover_2304551

def state_2304550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_2304550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304550 := by
  apply coveredState_split_literal (state := state_2304550) 4
    state_2304551 state_2306892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304551
  · exact cover_2306892
#print axioms cover_2304550

def state_2304549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_2304549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304549 := by
  apply coveredState_split_literal (state := state_2304549) 0
    state_2304550 state_2307523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304550
  · exact cover_2307523
#print axioms cover_2304549

def state_2303371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_2303371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303371 := by
  apply coveredState_split_literal (state := state_2303371) 2
    state_2303372 state_2304549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303372
  · exact cover_2304549
#print axioms cover_2303371

def state_2303289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_2303289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303289 := by
  apply coveredState_split_literal (state := state_2303289) 4
    state_2303290 state_2303371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303290
  · exact cover_2303371
#print axioms cover_2303289

def state_2303271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2303271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303271 := by
  apply coveredState_split_literal (state := state_2303271) 3
    state_2303272 state_2303289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303272
  · exact cover_2303289
#print axioms cover_2303271

def state_2302151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2302151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302151 := by
  apply coveredState_split_literal (state := state_2302151) 1
    state_2302152 state_2303271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302152
  · exact cover_2303271
#print axioms cover_2302151

def state_2289803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2289803 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289803 := by
  apply coveredState_split_literal (state := state_2289803) 0
    state_2289804 state_2302151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289804
  · exact cover_2302151
#print axioms cover_2289803

def state_2289769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_2289769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289769 := by
  apply coveredState_split_literal (state := state_2289769) 4
    state_2289770 state_2289803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289770
  · exact cover_2289803
#print axioms cover_2289769

def state_2309626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
theorem cover_2309626 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309626 := by
  apply coveredState_split_literal (state := state_2309626) 2
    state_2309627 state_2310514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309627
  · exact cover_2310514
#print axioms cover_2309626

def state_2311129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 22)))
theorem cover_2311129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311129 := by
  apply coveredState_split_literal (state := state_2311129) 3
    state_2311130 state_2312029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311130
  · exact cover_2312029
#print axioms cover_2311129

def state_2311001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
theorem cover_2311001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311001 := by
  apply coveredState_split_literal (state := state_2311001) 2
    state_2311002 state_2311129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311002
  · exact cover_2311129
#print axioms cover_2311001

def state_2309625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
theorem cover_2309625 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309625 := by
  apply coveredState_split_literal (state := state_2309625) 1
    state_2309626 state_2311001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309626
  · exact cover_2311001
#print axioms cover_2309625

def state_2309624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_2309624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309624 := by
  apply coveredState_split_literal (state := state_2309624) 4
    state_2309625 state_2312354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309625
  · exact cover_2312354
#print axioms cover_2309624

def state_2309623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_2309623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309623 := by
  apply coveredState_split_literal (state := state_2309623) 0
    state_2309624 state_2312763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309624
  · exact cover_2312763
#print axioms cover_2309623

def state_2309622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 11)))
theorem cover_2309622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309622 := by
  apply coveredState_split_literal (state := state_2309622) 3
    state_2309623 state_2313290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309623
  · exact cover_2313290
#print axioms cover_2309622

def state_2309116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_2309116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309116 := by
  apply coveredState_split_literal (state := state_2309116) 2
    state_2309117 state_2309622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309117
  · exact cover_2309622
#print axioms cover_2309116

def state_2308754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_2308754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308754 := by
  apply coveredState_split_literal (state := state_2308754) 4
    state_2308755 state_2309116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308755
  · exact cover_2309116
#print axioms cover_2308754

def state_2308010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_2308010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308010 := by
  apply coveredState_split_literal (state := state_2308010) 1
    state_2308011 state_2308754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308011
  · exact cover_2308754
#print axioms cover_2308010

def state_2307610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_2307610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307610 := by
  apply coveredState_split_literal (state := state_2307610) 0
    state_2307611 state_2308010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307611
  · exact cover_2308010
#print axioms cover_2307610

def state_2307550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_2307550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307550 := by
  apply coveredState_split_literal (state := state_2307550) 4
    state_2307551 state_2307610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307551
  · exact cover_2307610
#print axioms cover_2307550

def state_2289768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_2289768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289768 := by
  apply coveredState_split_literal (state := state_2289768) 3
    state_2289769 state_2307550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289769
  · exact cover_2307550
#print axioms cover_2289768

def state_2315041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 11)))
theorem cover_2315041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315041 := by
  apply coveredState_split_literal (state := state_2315041) 0
    state_2315042 state_2315865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315042
  · exact cover_2315865
#print axioms cover_2315041

def state_2315040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
theorem cover_2315040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315040 := by
  apply coveredState_split_literal (state := state_2315040) 3
    state_2315041 state_2316772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315041
  · exact cover_2316772
#print axioms cover_2315040

def state_2314260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 5)))
theorem cover_2314260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314260 := by
  apply coveredState_split_literal (state := state_2314260) 4
    state_2314261 state_2315040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314261
  · exact cover_2315040
#print axioms cover_2314260

def state_2314259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2314259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314259 := by
  apply coveredState_split_literal (state := state_2314259) 2
    state_2314260 state_2317411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314260
  · exact cover_2317411
#print axioms cover_2314259

def state_2314213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2314213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314213 := by
  apply coveredState_split_literal (state := state_2314213) 1
    state_2314214 state_2314259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314214
  · exact cover_2314259
#print axioms cover_2314213

def state_2314075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2314075 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314075 := by
  apply coveredState_split_literal (state := state_2314075) 0
    state_2314076 state_2314213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314076
  · exact cover_2314213
#print axioms cover_2314075

def state_2313877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_2313877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313877 := by
  apply coveredState_split_literal (state := state_2313877) 4
    state_2313878 state_2314075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313878
  · exact cover_2314075
#print axioms cover_2313877

def state_2313453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2313453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313453 := by
  apply coveredState_split_literal (state := state_2313453) 3
    state_2313454 state_2313877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313454
  · exact cover_2313877
#print axioms cover_2313453

def state_2289767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2289767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289767 := by
  apply coveredState_split_literal (state := state_2289767) 2
    state_2289768 state_2313453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289768
  · exact cover_2313453
#print axioms cover_2289767

def state_2318642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 21)))
theorem cover_2318642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318642 := by
  apply coveredState_split_literal (state := state_2318642) 3
    state_2318643 state_2319120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318643
  · exact cover_2319120
#print axioms cover_2318642

def state_2318641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 21)))
theorem cover_2318641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318641 := by
  apply coveredState_split_literal (state := state_2318641) 1
    state_2318642 state_2319921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318642
  · exact cover_2319921
#print axioms cover_2318641

def state_2318617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 10)))
theorem cover_2318617 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318617 := by
  apply coveredState_split_literal (state := state_2318617) 4
    state_2318618 state_2318641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318618
  · exact cover_2318641
#print axioms cover_2318617

def state_2318501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_2318501 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318501 := by
  apply coveredState_split_literal (state := state_2318501) 2
    state_2318502 state_2318617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318502
  · exact cover_2318617
#print axioms cover_2318501

def state_2318455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_2318455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318455 := by
  apply coveredState_split_literal (state := state_2318455) 0
    state_2318456 state_2318501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318456
  · exact cover_2318501
#print axioms cover_2318455

def state_2318175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
theorem cover_2318175 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318175 := by
  apply coveredState_split_literal (state := state_2318175) 3
    state_2318176 state_2318455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318176
  · exact cover_2318455
#print axioms cover_2318175

def state_2318174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
theorem cover_2318174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318174 := by
  apply coveredState_split_literal (state := state_2318174) 1
    state_2318175 state_2319972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318175
  · exact cover_2319972
#print axioms cover_2318174

def state_2322034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 44)))
theorem cover_2322034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322034 := by
  apply coveredState_split_literal (state := state_2322034) 2
    state_2322035 state_2323018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322035
  · exact cover_2323018
#print axioms cover_2322034

def state_2322033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
theorem cover_2322033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322033 := by
  apply coveredState_split_literal (state := state_2322033) 4
    state_2322034 state_2323365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322034
  · exact cover_2323365
#print axioms cover_2322033

def state_2321579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
theorem cover_2321579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321579 := by
  apply coveredState_split_literal (state := state_2321579) 0
    state_2321580 state_2322033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321580
  · exact cover_2322033
#print axioms cover_2321579

def state_2324497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 88)))
theorem cover_2324497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324497 := by
  apply coveredState_split_literal (state := state_2324497) 2
    state_2324498 state_2325153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324498
  · exact cover_2325153
#print axioms cover_2324497

def state_2324496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 44)))
theorem cover_2324496 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324496 := by
  apply coveredState_split_literal (state := state_2324496) 4
    state_2324497 state_2325772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324497
  · exact cover_2325772
#print axioms cover_2324496

def state_2324106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 44)))
theorem cover_2324106 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324106 := by
  apply coveredState_split_literal (state := state_2324106) 0
    state_2324107 state_2324496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324107
  · exact cover_2324496
#print axioms cover_2324106

def state_2324105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
theorem cover_2324105 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324105 := by
  apply coveredState_split_literal (state := state_2324105) 3
    state_2324106 state_2325959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324106
  · exact cover_2325959
#print axioms cover_2324105

def state_2323889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
theorem cover_2323889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323889 := by
  apply coveredState_split_literal (state := state_2323889) 1
    state_2323890 state_2324105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323890
  · exact cover_2324105
#print axioms cover_2323889

def state_2323535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 44)))
theorem cover_2323535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323535 := by
  apply coveredState_split_literal (state := state_2323535) 2
    state_2323536 state_2323889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323536
  · exact cover_2323889
#print axioms cover_2323535

def state_2323534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
theorem cover_2323534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323534 := by
  apply coveredState_split_literal (state := state_2323534) 4
    state_2323535 state_2326878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323535
  · exact cover_2326878
#print axioms cover_2323534

def state_2323460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
theorem cover_2323460 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323460 := by
  apply coveredState_split_literal (state := state_2323460) 0
    state_2323461 state_2323534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323461
  · exact cover_2323534
#print axioms cover_2323460

def state_2321578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
theorem cover_2321578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321578 := by
  apply coveredState_split_literal (state := state_2321578) 3
    state_2321579 state_2323460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321579
  · exact cover_2323460
#print axioms cover_2321578

def state_2321577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
theorem cover_2321577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321577 := by
  apply coveredState_split_literal (state := state_2321577) 1
    state_2321578 state_2326969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321578
  · exact cover_2326969
#print axioms cover_2321577
end Mub6.Numerical.CircleFullD0.Forest
