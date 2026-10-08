import D0FullInterface
import D0ForestAssembly0464
import D0ForestAssembly0465
import D0ForestChunk1830
import D0ForestChunk1831
import D0ForestChunk1832
import D0ForestChunk1833
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
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

def state_2312359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 46)))
theorem cover_2312359 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312359 := by
  apply coveredState_split_literal (state := state_2312359) 1
    state_2312360 state_2312403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312360
  · exact cover_2312403
#print axioms cover_2312359

def state_2312424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 46)))
theorem cover_2312424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312424 := by
  apply coveredState_split_literal (state := state_2312424) 1
    state_2312425 state_2312462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312425
  · exact cover_2312462
#print axioms cover_2312424

def state_2312358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 46)))
theorem cover_2312358 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312358 := by
  apply coveredState_split_literal (state := state_2312358) 0
    state_2312359 state_2312424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312359
  · exact cover_2312424
#print axioms cover_2312358

def state_2312357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 23)))
theorem cover_2312357 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312357 := by
  apply coveredState_split_literal (state := state_2312357) 4
    state_2312358 state_2312525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312358
  · exact cover_2312525
#print axioms cover_2312357

def state_2312356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 23)))
theorem cover_2312356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312356 := by
  apply coveredState_split_literal (state := state_2312356) 3
    state_2312357 state_2312550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312357
  · exact cover_2312550
#print axioms cover_2312356

def state_2312561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 23)))
theorem cover_2312561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312561 := by
  apply coveredState_split_literal (state := state_2312561) 3
    state_2312562 state_2312623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312562
  · exact cover_2312623
#print axioms cover_2312561

def state_2312355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
theorem cover_2312355 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312355 := by
  apply coveredState_split_literal (state := state_2312355) 2
    state_2312356 state_2312561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312356
  · exact cover_2312561
#print axioms cover_2312355

def state_2312672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 46)))
theorem cover_2312672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312672 := by
  apply coveredState_split_literal (state := state_2312672) 0
    state_2312673 state_2312684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312673
  · exact cover_2312684
#print axioms cover_2312672

def state_2312671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 23)))
theorem cover_2312671 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312671 := by
  apply coveredState_split_literal (state := state_2312671) 4
    state_2312672 state_2312739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312672
  · exact cover_2312739
#print axioms cover_2312671

def state_2312670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 23)))
theorem cover_2312670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312670 := by
  apply coveredState_split_literal (state := state_2312670) 3
    state_2312671 state_2312752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312671
  · exact cover_2312752
#print axioms cover_2312670

def state_2312638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
theorem cover_2312638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312638 := by
  apply coveredState_split_literal (state := state_2312638) 2
    state_2312639 state_2312670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312639
  · exact cover_2312670
#print axioms cover_2312638

def state_2312354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
theorem cover_2312354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312354 := by
  apply coveredState_split_literal (state := state_2312354) 1
    state_2312355 state_2312638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312355
  · exact cover_2312638
#print axioms cover_2312354

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

def state_2312789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 22)))
theorem cover_2312789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312789 := by
  apply coveredState_split_literal (state := state_2312789) 3
    state_2312790 state_2312807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312790
  · exact cover_2312807
#print axioms cover_2312789

def state_2312765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
theorem cover_2312765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312765 := by
  apply coveredState_split_literal (state := state_2312765) 2
    state_2312766 state_2312789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312766
  · exact cover_2312789
#print axioms cover_2312765

def state_2312880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 22)))
theorem cover_2312880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312880 := by
  apply coveredState_split_literal (state := state_2312880) 4
    state_2312881 state_2312906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312881
  · exact cover_2312906
#print axioms cover_2312880

def state_2312879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 22)))
theorem cover_2312879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312879 := by
  apply coveredState_split_literal (state := state_2312879) 0
    state_2312880 state_2312957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312880
  · exact cover_2312957
#print axioms cover_2312879

def state_2312972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 29 else 44)))
theorem cover_2312972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312972 := by
  apply coveredState_split_literal (state := state_2312972) 3
    state_2312973 state_2313012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312973
  · exact cover_2313012
#print axioms cover_2312972

def state_2312964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 44)))
theorem cover_2312964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312964 := by
  apply coveredState_split_literal (state := state_2312964) 2
    state_2312965 state_2312972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312965
  · exact cover_2312972
#print axioms cover_2312964

def state_2313053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 29 else 45)))
theorem cover_2313053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313053 := by
  apply coveredState_split_literal (state := state_2313053) 3
    state_2313054 state_2313105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313054
  · exact cover_2313105
#print axioms cover_2313053

def state_2313045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 45)))
theorem cover_2313045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313045 := by
  apply coveredState_split_literal (state := state_2313045) 2
    state_2313046 state_2313053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313046
  · exact cover_2313053
#print axioms cover_2313045

def state_2312963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 22)))
theorem cover_2312963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312963 := by
  apply coveredState_split_literal (state := state_2312963) 4
    state_2312964 state_2313045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312964
  · exact cover_2313045
#print axioms cover_2312963

def state_2312962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 22)))
theorem cover_2312962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312962 := by
  apply coveredState_split_literal (state := state_2312962) 0
    state_2312963 state_2313130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312963
  · exact cover_2313130
#print axioms cover_2312962

def state_2312878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 22)))
theorem cover_2312878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312878 := by
  apply coveredState_split_literal (state := state_2312878) 3
    state_2312879 state_2312962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312879
  · exact cover_2312962
#print axioms cover_2312878

def state_2312866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
theorem cover_2312866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312866 := by
  apply coveredState_split_literal (state := state_2312866) 2
    state_2312867 state_2312878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312867
  · exact cover_2312878
#print axioms cover_2312866

def state_2312764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
theorem cover_2312764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312764 := by
  apply coveredState_split_literal (state := state_2312764) 1
    state_2312765 state_2312866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312765
  · exact cover_2312866
#print axioms cover_2312764

def state_2313209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 23)))
theorem cover_2313209 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313209 := by
  apply coveredState_split_literal (state := state_2313209) 3
    state_2313210 state_2313245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313210
  · exact cover_2313245
#print axioms cover_2313209

def state_2313197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
theorem cover_2313197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313197 := by
  apply coveredState_split_literal (state := state_2313197) 2
    state_2313198 state_2313209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313198
  · exact cover_2313209
#print axioms cover_2313197

def state_2313141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
theorem cover_2313141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313141 := by
  apply coveredState_split_literal (state := state_2313141) 1
    state_2313142 state_2313197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2313142
  · exact cover_2313197
#print axioms cover_2313141

def state_2312763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_2312763 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312763 := by
  apply coveredState_split_literal (state := state_2312763) 4
    state_2312764 state_2313141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312764
  · exact cover_2313141
#print axioms cover_2312763
end Mub6.Numerical.CircleFullD0.Forest
