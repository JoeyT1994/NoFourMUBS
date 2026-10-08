import D0FullInterface
import D0ForestAssembly0018
import D0ForestAssembly0019
import D0ForestChunk0042
import D0ForestChunk0043
import D0ForestChunk0044
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
def state_2279672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 15)))
theorem cover_2279672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279672 := by
  apply coveredState_split_literal (state := state_2279672) 3
    state_2279673 state_2285944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279673
  · exact cover_2285944
#print axioms cover_2279672

def state_2279592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 15)))
theorem cover_2279592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279592 := by
  apply coveredState_split_literal (state := state_2279592) 2
    state_2279593 state_2279672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279593
  · exact cover_2279672
#print axioms cover_2279592

def state_2278640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2278640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278640 := by
  apply coveredState_split_literal (state := state_2278640) 4
    state_2278641 state_2279592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278641
  · exact cover_2279592
#print axioms cover_2278640

def state_2278639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2278639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278639 := by
  apply coveredState_split_literal (state := state_2278639) 1
    state_2278640 state_2286021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278640
  · exact cover_2286021
#print axioms cover_2278639

def state_2276815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 7)))
theorem cover_2276815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276815 := by
  apply coveredState_split_literal (state := state_2276815) 3
    state_2276816 state_2278639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276816
  · exact cover_2278639
#print axioms cover_2276815

def state_2276761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2276761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276761 := by
  apply coveredState_split_literal (state := state_2276761) 2
    state_2276762 state_2276815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276762
  · exact cover_2276815
#print axioms cover_2276761

def state_2286092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 7)))
theorem cover_2286092 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286092 := by
  apply coveredState_split_literal (state := state_2286092) 3
    state_2286093 state_2286532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286093
  · exact cover_2286532
#print axioms cover_2286092

def state_2286084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2286084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286084 := by
  apply coveredState_split_literal (state := state_2286084) 2
    state_2286085 state_2286092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286085
  · exact cover_2286092
#print axioms cover_2286084

def state_2276760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2276760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276760 := by
  apply coveredState_split_literal (state := state_2276760) 0
    state_2276761 state_2286084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276761
  · exact cover_2286084
#print axioms cover_2276760

def state_2276600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_2276600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276600 := by
  apply coveredState_split_literal (state := state_2276600) 4
    state_2276601 state_2276760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276601
  · exact cover_2276760
#print axioms cover_2276600

def state_2276534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_2276534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276534 := by
  apply coveredState_split_literal (state := state_2276534) 3
    state_2276535 state_2276600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276535
  · exact cover_2276600
#print axioms cover_2276534

def state_2276516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2276516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276516 := by
  apply coveredState_split_literal (state := state_2276516) 2
    state_2276517 state_2276534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276517
  · exact cover_2276534
#print axioms cover_2276516

def state_2272362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2272362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272362 := by
  apply coveredState_split_literal (state := state_2272362) 1
    state_2272363 state_2276516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272363
  · exact cover_2276516
#print axioms cover_2272362

def state_2245818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2245818 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245818 := by
  apply coveredState_split_literal (state := state_2245818) 0
    state_2245819 state_2272362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245819
  · exact cover_2272362
#print axioms cover_2245818

def state_2244400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2244400 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244400 := by
  apply coveredState_split_literal (state := state_2244400) 4
    state_2244401 state_2245818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244401
  · exact cover_2245818
#print axioms cover_2244400

def state_2287734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 23)))
theorem cover_2287734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287734 := by
  apply coveredState_split_literal (state := state_2287734) 3
    state_2287735 state_2288546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287735
  · exact cover_2288546
#print axioms cover_2287734

def state_2287733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
theorem cover_2287733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287733 := by
  apply coveredState_split_literal (state := state_2287733) 2
    state_2287734 state_2288859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287734
  · exact cover_2288859
#print axioms cover_2287733

def state_2287635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
theorem cover_2287635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287635 := by
  apply coveredState_split_literal (state := state_2287635) 0
    state_2287636 state_2287733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287636
  · exact cover_2287733
#print axioms cover_2287635

def state_2287583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 11)))
theorem cover_2287583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287583 := by
  apply coveredState_split_literal (state := state_2287583) 4
    state_2287584 state_2287635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287584
  · exact cover_2287635
#print axioms cover_2287583

def state_2287582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
theorem cover_2287582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287582 := by
  apply coveredState_split_literal (state := state_2287582) 3
    state_2287583 state_2288952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287583
  · exact cover_2288952
#print axioms cover_2287582

def state_2287562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
theorem cover_2287562 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287562 := by
  apply coveredState_split_literal (state := state_2287562) 1
    state_2287563 state_2287582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287563
  · exact cover_2287582
#print axioms cover_2287562

def state_2287254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_2287254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287254 := by
  apply coveredState_split_literal (state := state_2287254) 2
    state_2287255 state_2287562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287255
  · exact cover_2287562
#print axioms cover_2287254

def state_2287230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_2287230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287230 := by
  apply coveredState_split_literal (state := state_2287230) 0
    state_2287231 state_2287254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287231
  · exact cover_2287254
#print axioms cover_2287230

def state_2287168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_2287168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287168 := by
  apply coveredState_split_literal (state := state_2287168) 4
    state_2287169 state_2287230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287169
  · exact cover_2287230
#print axioms cover_2287168

def state_2287167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2287167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287167 := by
  apply coveredState_split_literal (state := state_2287167) 3
    state_2287168 state_2288981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287168
  · exact cover_2288981
#print axioms cover_2287167

def state_2287166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2287166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287166 := by
  apply coveredState_split_literal (state := state_2287166) 1
    state_2287167 state_2289018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287167
  · exact cover_2289018
#print axioms cover_2287166

def state_2287154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_2287154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287154 := by
  apply coveredState_split_literal (state := state_2287154) 4
    state_2287155 state_2287166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287155
  · exact cover_2287166
#print axioms cover_2287154

def state_2287153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_2287153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287153 := by
  apply coveredState_split_literal (state := state_2287153) 3
    state_2287154 state_2289639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287154
  · exact cover_2289639
#print axioms cover_2287153

def state_2287152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2287152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287152 := by
  apply coveredState_split_literal (state := state_2287152) 2
    state_2287153 state_2289650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287153
  · exact cover_2289650
#print axioms cover_2287152

def state_2287151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2287151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287151 := by
  apply coveredState_split_literal (state := state_2287151) 1
    state_2287152 state_2289737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287152
  · exact cover_2289737
#print axioms cover_2287151

def state_2290851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_2290851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290851 := by
  apply coveredState_split_literal (state := state_2290851) 3
    state_2290852 state_2291079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290852
  · exact cover_2291079
#print axioms cover_2290851

def state_2290711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_2290711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290711 := by
  apply coveredState_split_literal (state := state_2290711) 0
    state_2290712 state_2290851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290712
  · exact cover_2290851
#print axioms cover_2290711

def state_2292586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 23)))
theorem cover_2292586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292586 := by
  apply coveredState_split_literal (state := state_2292586) 2
    state_2292587 state_2293128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292587
  · exact cover_2293128
#print axioms cover_2292586

def state_2292156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
theorem cover_2292156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292156 := by
  apply coveredState_split_literal (state := state_2292156) 3
    state_2292157 state_2292586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292157
  · exact cover_2292586
#print axioms cover_2292156

def state_2292028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
theorem cover_2292028 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292028 := by
  apply coveredState_split_literal (state := state_2292028) 0
    state_2292029 state_2292156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292029
  · exact cover_2292156
#print axioms cover_2292028

def state_2290710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_2290710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290710 := by
  apply coveredState_split_literal (state := state_2290710) 4
    state_2290711 state_2292028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290711
  · exact cover_2292028
#print axioms cover_2290710

def state_2290624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_2290624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290624 := by
  apply coveredState_split_literal (state := state_2290624) 1
    state_2290625 state_2290710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290625
  · exact cover_2290710
#print axioms cover_2290624

def state_2290623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_2290623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290623 := by
  apply coveredState_split_literal (state := state_2290623) 2
    state_2290624 state_2294073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290624
  · exact cover_2294073
#print axioms cover_2290623

def state_2290515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_2290515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290515 := by
  apply coveredState_split_literal (state := state_2290515) 4
    state_2290516 state_2290623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290516
  · exact cover_2290623
#print axioms cover_2290515

def state_2289805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2289805 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289805 := by
  apply coveredState_split_literal (state := state_2289805) 3
    state_2289806 state_2290515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289806
  · exact cover_2290515
#print axioms cover_2289805

def state_2294685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
theorem cover_2294685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294685 := by
  apply coveredState_split_literal (state := state_2294685) 3
    state_2294686 state_2294877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294686
  · exact cover_2294877
#print axioms cover_2294685

def state_2294489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_2294489 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294489 := by
  apply coveredState_split_literal (state := state_2294489) 2
    state_2294490 state_2294685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294490
  · exact cover_2294685
#print axioms cover_2294489

def state_2294467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_2294467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294467 := by
  apply coveredState_split_literal (state := state_2294467) 4
    state_2294468 state_2294489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294468
  · exact cover_2294489
#print axioms cover_2294467

def state_2295887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_2295887 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295887 := by
  apply coveredState_split_literal (state := state_2295887) 3
    state_2295888 state_2296373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295888
  · exact cover_2296373
#print axioms cover_2295887

def state_2295886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_2295886 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295886 := by
  apply coveredState_split_literal (state := state_2295886) 1
    state_2295887 state_2296960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295887
  · exact cover_2296960
#print axioms cover_2295886

def state_2295856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_2295856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295856 := by
  apply coveredState_split_literal (state := state_2295856) 0
    state_2295857 state_2295886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295857
  · exact cover_2295886
#print axioms cover_2295856

def state_2297018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
theorem cover_2297018 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297018 := by
  apply coveredState_split_literal (state := state_2297018) 3
    state_2297019 state_2297558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297019
  · exact cover_2297558
#print axioms cover_2297018

def state_2297017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
theorem cover_2297017 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297017 := by
  apply coveredState_split_literal (state := state_2297017) 1
    state_2297018 state_2298045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2297018
  · exact cover_2298045
#print axioms cover_2297017

def state_2296969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
theorem cover_2296969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296969 := by
  apply coveredState_split_literal (state := state_2296969) 0
    state_2296970 state_2297017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2296970
  · exact cover_2297017
#print axioms cover_2296969

def state_2295855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_2295855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295855 := by
  apply coveredState_split_literal (state := state_2295855) 4
    state_2295856 state_2296969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295856
  · exact cover_2296969
#print axioms cover_2295855

def state_2299215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
theorem cover_2299215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299215 := by
  apply coveredState_split_literal (state := state_2299215) 1
    state_2299216 state_2300021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299216
  · exact cover_2300021
#print axioms cover_2299215

def state_2299149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
theorem cover_2299149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299149 := by
  apply coveredState_split_literal (state := state_2299149) 0
    state_2299150 state_2299215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299150
  · exact cover_2299215
#print axioms cover_2299149

def state_2298999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
theorem cover_2298999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298999 := by
  apply coveredState_split_literal (state := state_2298999) 4
    state_2299000 state_2299149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2299000
  · exact cover_2299149
#print axioms cover_2298999

def state_2298998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 22)))
theorem cover_2298998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298998 := by
  apply coveredState_split_literal (state := state_2298998) 2
    state_2298999 state_2300304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298999
  · exact cover_2300304
#print axioms cover_2298998

def state_2298140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_2298140 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298140 := by
  apply coveredState_split_literal (state := state_2298140) 3
    state_2298141 state_2298998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298141
  · exact cover_2298998
#print axioms cover_2298140

def state_2298139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_2298139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298139 := by
  apply coveredState_split_literal (state := state_2298139) 1
    state_2298140 state_2300493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298140
  · exact cover_2300493
#print axioms cover_2298139

def state_2298049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_2298049 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298049 := by
  apply coveredState_split_literal (state := state_2298049) 0
    state_2298050 state_2298139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298050
  · exact cover_2298139
#print axioms cover_2298049

def state_2300665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
theorem cover_2300665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300665 := by
  apply coveredState_split_literal (state := state_2300665) 3
    state_2300666 state_2301605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300666
  · exact cover_2301605
#print axioms cover_2300665

def state_2300664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
theorem cover_2300664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300664 := by
  apply coveredState_split_literal (state := state_2300664) 1
    state_2300665 state_2302076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300665
  · exact cover_2302076
#print axioms cover_2300664

def state_2300584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
theorem cover_2300584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300584 := by
  apply coveredState_split_literal (state := state_2300584) 0
    state_2300585 state_2300664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2300585
  · exact cover_2300664
#print axioms cover_2300584

def state_2298048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_2298048 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298048 := by
  apply coveredState_split_literal (state := state_2298048) 4
    state_2298049 state_2300584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2298049
  · exact cover_2300584
#print axioms cover_2298048

def state_2295854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_2295854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295854 := by
  apply coveredState_split_literal (state := state_2295854) 2
    state_2295855 state_2298048
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295855
  · exact cover_2298048
#print axioms cover_2295854

def state_2295714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_2295714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295714 := by
  apply coveredState_split_literal (state := state_2295714) 4
    state_2295715 state_2295854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295715
  · exact cover_2295854
#print axioms cover_2295714

def state_2294466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2294466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294466 := by
  apply coveredState_split_literal (state := state_2294466) 3
    state_2294467 state_2295714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294467
  · exact cover_2295714
#print axioms cover_2294466
end Mub6.Numerical.CircleFullD0.Forest
