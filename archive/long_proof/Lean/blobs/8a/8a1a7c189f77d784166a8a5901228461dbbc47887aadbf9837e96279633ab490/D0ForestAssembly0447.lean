import D0FullInterface
import D0ForestAssembly0444
import D0ForestAssembly0445
import D0ForestAssembly0446
import D0ForestChunk1749
import D0ForestChunk1750
import D0ForestChunk1752
import D0ForestChunk1753
import D0ForestChunk1754
import D0ForestChunk1755
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2293668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 46)))
theorem cover_2293668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293668 := by
  apply coveredState_split_literal (state := state_2293668) 4
    state_2293669 state_2293808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293669
  · exact cover_2293808
#print axioms cover_2293668

def state_2293202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 54 else 46)))
theorem cover_2293202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293202 := by
  apply coveredState_split_literal (state := state_2293202) 2
    state_2293203 state_2293668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293203
  · exact cover_2293668
#print axioms cover_2293202

def state_2293876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 110 else 92)))
theorem cover_2293876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293876 := by
  apply coveredState_split_literal (state := state_2293876) 2
    state_2293877 state_2293928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293877
  · exact cover_2293928
#print axioms cover_2293876

def state_2293875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 92)))
theorem cover_2293875 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293875 := by
  apply coveredState_split_literal (state := state_2293875) 3
    state_2293876 state_2293983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293876
  · exact cover_2293983
#print axioms cover_2293875

def state_2293867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 92)))
theorem cover_2293867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293867 := by
  apply coveredState_split_literal (state := state_2293867) 0
    state_2293868 state_2293875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293868
  · exact cover_2293875
#print axioms cover_2293867

def state_2293853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 92)))
theorem cover_2293853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293853 := by
  apply coveredState_split_literal (state := state_2293853) 1
    state_2293854 state_2293867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293854
  · exact cover_2293867
#print axioms cover_2293853

def state_2293852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 46)))
theorem cover_2293852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293852 := by
  apply coveredState_split_literal (state := state_2293852) 4
    state_2293853 state_2293994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293853
  · exact cover_2293994
#print axioms cover_2293852

def state_2293851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 55 else 46)))
theorem cover_2293851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293851 := by
  apply coveredState_split_literal (state := state_2293851) 2
    state_2293852 state_2294003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293852
  · exact cover_2294003
#print axioms cover_2293851

def state_2293201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
theorem cover_2293201 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293201 := by
  apply coveredState_split_literal (state := state_2293201) 3
    state_2293202 state_2293851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293202
  · exact cover_2293851
#print axioms cover_2293201

def state_2293157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
theorem cover_2293157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293157 := by
  apply coveredState_split_literal (state := state_2293157) 0
    state_2293158 state_2293201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293158
  · exact cover_2293201
#print axioms cover_2293157

def state_2293129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
theorem cover_2293129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293129 := by
  apply coveredState_split_literal (state := state_2293129) 1
    state_2293130 state_2293157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293130
  · exact cover_2293157
#print axioms cover_2293129

def state_2293128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 23)))
theorem cover_2293128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293128 := by
  apply coveredState_split_literal (state := state_2293128) 4
    state_2293129 state_2294038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2293129
  · exact cover_2294038
#print axioms cover_2293128

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

def state_2294144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 45)))
theorem cover_2294144 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294144 := by
  apply coveredState_split_literal (state := state_2294144) 0
    state_2294145 state_2294192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294145
  · exact cover_2294192
#print axioms cover_2294144

def state_2294130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
theorem cover_2294130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294130 := by
  apply coveredState_split_literal (state := state_2294130) 4
    state_2294131 state_2294144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294131
  · exact cover_2294144
#print axioms cover_2294130

def state_2294122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
theorem cover_2294122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294122 := by
  apply coveredState_split_literal (state := state_2294122) 1
    state_2294123 state_2294130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294123
  · exact cover_2294130
#print axioms cover_2294122

def state_2294121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 22)))
theorem cover_2294121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294121 := by
  apply coveredState_split_literal (state := state_2294121) 2
    state_2294122 state_2294213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294122
  · exact cover_2294213
#print axioms cover_2294121

def state_2294231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
theorem cover_2294231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294231 := by
  apply coveredState_split_literal (state := state_2294231) 4
    state_2294232 state_2294241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294232
  · exact cover_2294241
#print axioms cover_2294231

def state_2294223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
theorem cover_2294223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294223 := by
  apply coveredState_split_literal (state := state_2294223) 1
    state_2294224 state_2294231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294224
  · exact cover_2294231
#print axioms cover_2294223

def state_2294222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 22)))
theorem cover_2294222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294222 := by
  apply coveredState_split_literal (state := state_2294222) 2
    state_2294223 state_2294296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294223
  · exact cover_2294296
#print axioms cover_2294222

def state_2294120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_2294120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294120 := by
  apply coveredState_split_literal (state := state_2294120) 3
    state_2294121 state_2294222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294121
  · exact cover_2294222
#print axioms cover_2294120

def state_2294088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_2294088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294088 := by
  apply coveredState_split_literal (state := state_2294088) 0
    state_2294089 state_2294120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294089
  · exact cover_2294120
#print axioms cover_2294088

def state_2294384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 23)))
theorem cover_2294384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294384 := by
  apply coveredState_split_literal (state := state_2294384) 4
    state_2294385 state_2294448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294385
  · exact cover_2294448
#print axioms cover_2294384

def state_2294383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 23)))
theorem cover_2294383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294383 := by
  apply coveredState_split_literal (state := state_2294383) 2
    state_2294384 state_2294459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294384
  · exact cover_2294459
#print axioms cover_2294383

def state_2294321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
theorem cover_2294321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294321 := by
  apply coveredState_split_literal (state := state_2294321) 3
    state_2294322 state_2294383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294322
  · exact cover_2294383
#print axioms cover_2294321

def state_2294309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
theorem cover_2294309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294309 := by
  apply coveredState_split_literal (state := state_2294309) 0
    state_2294310 state_2294321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294310
  · exact cover_2294321
#print axioms cover_2294309

def state_2294087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_2294087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294087 := by
  apply coveredState_split_literal (state := state_2294087) 4
    state_2294088 state_2294309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294088
  · exact cover_2294309
#print axioms cover_2294087

def state_2294073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_2294073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294073 := by
  apply coveredState_split_literal (state := state_2294073) 1
    state_2294074 state_2294087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294074
  · exact cover_2294087
#print axioms cover_2294073
end Mub6.Numerical.CircleFullD0.Forest
