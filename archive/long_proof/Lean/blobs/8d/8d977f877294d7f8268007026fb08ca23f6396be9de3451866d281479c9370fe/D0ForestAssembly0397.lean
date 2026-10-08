import D0FullInterface
import D0ForestAssembly0396
import D0ForestChunk1545
import D0ForestChunk1546
import D0ForestChunk1547
import D0ForestChunk1548
import D0ForestChunk1549
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2244572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 11)))
theorem cover_2244572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244572 := by
  apply coveredState_split_literal (state := state_2244572) 3
    state_2244573 state_2244620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244573
  · exact cover_2244620
#print axioms cover_2244572

def state_2244550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 11)))
theorem cover_2244550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244550 := by
  apply coveredState_split_literal (state := state_2244550) 1
    state_2244551 state_2244572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244551
  · exact cover_2244572
#print axioms cover_2244550

def state_2244470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
theorem cover_2244470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244470 := by
  apply coveredState_split_literal (state := state_2244470) 2
    state_2244471 state_2244550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244471
  · exact cover_2244550
#print axioms cover_2244470

def state_2244698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 11)))
theorem cover_2244698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244698 := by
  apply coveredState_split_literal (state := state_2244698) 4
    state_2244699 state_2244738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244699
  · exact cover_2244738
#print axioms cover_2244698

def state_2244688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 11)))
theorem cover_2244688 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244688 := by
  apply coveredState_split_literal (state := state_2244688) 3
    state_2244689 state_2244698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244689
  · exact cover_2244698
#print axioms cover_2244688

def state_2244666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 11)))
theorem cover_2244666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244666 := by
  apply coveredState_split_literal (state := state_2244666) 1
    state_2244667 state_2244688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244667
  · exact cover_2244688
#print axioms cover_2244666

def state_2245041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 95 else 47)))
theorem cover_2245041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245041 := by
  apply coveredState_split_literal (state := state_2245041) 4
    state_2245042 state_2245075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245042
  · exact cover_2245075
#print axioms cover_2245041

def state_2244999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 47 else 47)))
theorem cover_2244999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244999 := by
  apply coveredState_split_literal (state := state_2244999) 3
    state_2245000 state_2245041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245000
  · exact cover_2245041
#print axioms cover_2244999

def state_2244997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 47)))
theorem cover_2244997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244997 := by
  apply coveredState_split_literal (state := state_2244997) 2
    state_2244998 state_2244999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244998
  · exact cover_2244999
#print axioms cover_2244997

def state_2244993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 47)))
theorem cover_2244993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244993 := by
  apply coveredState_split_literal (state := state_2244993) 0
    state_2244994 state_2244997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244994
  · exact cover_2244997
#print axioms cover_2244993

def state_2244955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 47)))
theorem cover_2244955 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244955 := by
  apply coveredState_split_literal (state := state_2244955) 1
    state_2244956 state_2244993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244956
  · exact cover_2244993
#print axioms cover_2244955

def state_2244913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 23)))
theorem cover_2244913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244913 := by
  apply coveredState_split_literal (state := state_2244913) 4
    state_2244914 state_2244955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244914
  · exact cover_2244955
#print axioms cover_2244913

def state_2244849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 23)))
theorem cover_2244849 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244849 := by
  apply coveredState_split_literal (state := state_2244849) 3
    state_2244850 state_2244913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244850
  · exact cover_2244913
#print axioms cover_2244849

def state_2245169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 47 else 47)))
theorem cover_2245169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245169 := by
  apply coveredState_split_literal (state := state_2245169) 3
    state_2245170 state_2245205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245170
  · exact cover_2245205
#print axioms cover_2245169

def state_2245157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 47 else 47)))
theorem cover_2245157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245157 := by
  apply coveredState_split_literal (state := state_2245157) 0
    state_2245158 state_2245169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245158
  · exact cover_2245169
#print axioms cover_2245157

def state_2245156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 47)))
theorem cover_2245156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245156 := by
  apply coveredState_split_literal (state := state_2245156) 2
    state_2245157 state_2245238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245157
  · exact cover_2245238
#print axioms cover_2245156

def state_2245148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 47)))
theorem cover_2245148 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245148 := by
  apply coveredState_split_literal (state := state_2245148) 1
    state_2245149 state_2245156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245149
  · exact cover_2245156
#print axioms cover_2245148

def state_2245144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 23)))
theorem cover_2245144 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245144 := by
  apply coveredState_split_literal (state := state_2245144) 4
    state_2245145 state_2245148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245145
  · exact cover_2245148
#print axioms cover_2245144

def state_2245114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 23)))
theorem cover_2245114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245114 := by
  apply coveredState_split_literal (state := state_2245114) 3
    state_2245115 state_2245144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245115
  · exact cover_2245144
#print axioms cover_2245114

def state_2244848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 23)))
theorem cover_2244848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244848 := by
  apply coveredState_split_literal (state := state_2244848) 2
    state_2244849 state_2245114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244849
  · exact cover_2245114
#print axioms cover_2244848

def state_2245301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 47 else 47)))
theorem cover_2245301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245301 := by
  apply coveredState_split_literal (state := state_2245301) 3
    state_2245302 state_2245309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245302
  · exact cover_2245309
#print axioms cover_2245301

def state_2245291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 47)))
theorem cover_2245291 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245291 := by
  apply coveredState_split_literal (state := state_2245291) 2
    state_2245292 state_2245301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245292
  · exact cover_2245301
#print axioms cover_2245291

def state_2245290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 47)))
theorem cover_2245290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245290 := by
  apply coveredState_split_literal (state := state_2245290) 0
    state_2245291 state_2245368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245291
  · exact cover_2245368
#print axioms cover_2245290

def state_2245282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 47)))
theorem cover_2245282 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245282 := by
  apply coveredState_split_literal (state := state_2245282) 1
    state_2245283 state_2245290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245283
  · exact cover_2245290
#print axioms cover_2245282

def state_2245254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 23)))
theorem cover_2245254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245254 := by
  apply coveredState_split_literal (state := state_2245254) 4
    state_2245255 state_2245282
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245255
  · exact cover_2245282
#print axioms cover_2245254

def state_2245248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 23)))
theorem cover_2245248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245248 := by
  apply coveredState_split_literal (state := state_2245248) 3
    state_2245249 state_2245254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245249
  · exact cover_2245254
#print axioms cover_2245248

def state_2245247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 23)))
theorem cover_2245247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245247 := by
  apply coveredState_split_literal (state := state_2245247) 2
    state_2245248 state_2245377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245248
  · exact cover_2245377
#print axioms cover_2245247

def state_2244847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 23)))
theorem cover_2244847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244847 := by
  apply coveredState_split_literal (state := state_2244847) 0
    state_2244848 state_2245247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244848
  · exact cover_2245247
#print axioms cover_2244847

def state_2244833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 11)))
theorem cover_2244833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244833 := by
  apply coveredState_split_literal (state := state_2244833) 4
    state_2244834 state_2244847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244834
  · exact cover_2244847
#print axioms cover_2244833

def state_2244815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 11)))
theorem cover_2244815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244815 := by
  apply coveredState_split_literal (state := state_2244815) 3
    state_2244816 state_2244833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244816
  · exact cover_2244833
#print axioms cover_2244815

def state_2244781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 11)))
theorem cover_2244781 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244781 := by
  apply coveredState_split_literal (state := state_2244781) 1
    state_2244782 state_2244815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244782
  · exact cover_2244815
#print axioms cover_2244781

def state_2244665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
theorem cover_2244665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244665 := by
  apply coveredState_split_literal (state := state_2244665) 2
    state_2244666 state_2244781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244666
  · exact cover_2244781
#print axioms cover_2244665
end Mub6.Numerical.CircleFullD0.Forest
