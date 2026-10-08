import D0FullInterface
import D0ForestAssembly0505
import D0ForestChunk1989
import D0ForestChunk1990
import D0ForestChunk1991
import D0ForestChunk1992
import D0ForestChunk1993
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2557880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 48)))
theorem cover_2557880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557880 := by
  apply coveredState_split_literal (state := state_2557880) 1
    state_2557881 state_2557994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557881
  · exact cover_2557994
#print axioms cover_2557880

def state_2558062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 113 else (if j.val < 4 then 118 else 97)))
theorem cover_2558062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558062 := by
  apply coveredState_split_literal (state := state_2558062) 1
    state_2558063 state_2558094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558063
  · exact cover_2558094
#print axioms cover_2558062

def state_2558061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 113 else (if j.val < 4 then 59 else 97)))
theorem cover_2558061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558061 := by
  apply coveredState_split_literal (state := state_2558061) 3
    state_2558062 state_2558131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558062
  · exact cover_2558131
#print axioms cover_2558061

def state_2558059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 97)))
theorem cover_2558059 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558059 := by
  apply coveredState_split_literal (state := state_2558059) 2
    state_2558060 state_2558061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558060
  · exact cover_2558061
#print axioms cover_2558059

def state_2558058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 97)))
theorem cover_2558058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558058 := by
  apply coveredState_split_literal (state := state_2558058) 0
    state_2558059 state_2558154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558059
  · exact cover_2558154
#print axioms cover_2558058

def state_2558036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 48)))
theorem cover_2558036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558036 := by
  apply coveredState_split_literal (state := state_2558036) 4
    state_2558037 state_2558058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558037
  · exact cover_2558058
#print axioms cover_2558036

def state_2558035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 48)))
theorem cover_2558035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558035 := by
  apply coveredState_split_literal (state := state_2558035) 1
    state_2558036 state_2558173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558036
  · exact cover_2558173
#print axioms cover_2558035

def state_2557879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 48)))
theorem cover_2557879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557879 := by
  apply coveredState_split_literal (state := state_2557879) 3
    state_2557880 state_2558035
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557880
  · exact cover_2558035
#print axioms cover_2557879

def state_2558226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 114 else (if j.val < 4 then 116 else 96)))
theorem cover_2558226 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558226 := by
  apply coveredState_split_literal (state := state_2558226) 4
    state_2558227 state_2558266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558227
  · exact cover_2558266
#print axioms cover_2558226

def state_2558305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 114 else (if j.val < 4 then 117 else 193)))
theorem cover_2558305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558305 := by
  apply coveredState_split_literal (state := state_2558305) 1
    state_2558306 state_2558313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558306
  · exact cover_2558313
#print axioms cover_2558305

def state_2558291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 114 else (if j.val < 4 then 117 else 96)))
theorem cover_2558291 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558291 := by
  apply coveredState_split_literal (state := state_2558291) 4
    state_2558292 state_2558305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558292
  · exact cover_2558305
#print axioms cover_2558291

def state_2558225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 114 else (if j.val < 4 then 58 else 96)))
theorem cover_2558225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558225 := by
  apply coveredState_split_literal (state := state_2558225) 3
    state_2558226 state_2558291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558226
  · exact cover_2558291
#print axioms cover_2558225

def state_2558224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 96)))
theorem cover_2558224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558224 := by
  apply coveredState_split_literal (state := state_2558224) 2
    state_2558225 state_2558372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558225
  · exact cover_2558372
#print axioms cover_2558224

def state_2558223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 96)))
theorem cover_2558223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558223 := by
  apply coveredState_split_literal (state := state_2558223) 0
    state_2558224 state_2558409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558224
  · exact cover_2558409
#print axioms cover_2558223

def state_2558416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 97)))
theorem cover_2558416 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558416 := by
  apply coveredState_split_literal (state := state_2558416) 0
    state_2558417 state_2558478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558417
  · exact cover_2558478
#print axioms cover_2558416

def state_2558222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 48)))
theorem cover_2558222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558222 := by
  apply coveredState_split_literal (state := state_2558222) 4
    state_2558223 state_2558416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558223
  · exact cover_2558416
#print axioms cover_2558222

def state_2558485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 96)))
theorem cover_2558485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558485 := by
  apply coveredState_split_literal (state := state_2558485) 2
    state_2558486 state_2558543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558486
  · exact cover_2558543
#print axioms cover_2558485

def state_2558590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 96)))
theorem cover_2558590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558590 := by
  apply coveredState_split_literal (state := state_2558590) 2
    state_2558591 state_2558626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558591
  · exact cover_2558626
#print axioms cover_2558590

def state_2558484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 96)))
theorem cover_2558484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558484 := by
  apply coveredState_split_literal (state := state_2558484) 0
    state_2558485 state_2558590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558485
  · exact cover_2558590
#print axioms cover_2558484

def state_2558703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 190) else (if j.val < 3 then 114 else (if j.val < 4 then 117 else 194)))
theorem cover_2558703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558703 := by
  apply coveredState_split_literal (state := state_2558703) 0
    state_2558704 state_2558767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558704
  · exact cover_2558767
#print axioms cover_2558703

def state_2558702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 190) else (if j.val < 3 then 114 else (if j.val < 4 then 117 else 97)))
theorem cover_2558702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558702 := by
  apply coveredState_split_literal (state := state_2558702) 4
    state_2558703 state_2558810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558703
  · exact cover_2558810
#print axioms cover_2558702

def state_2558701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 95) else (if j.val < 3 then 114 else (if j.val < 4 then 117 else 97)))
theorem cover_2558701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558701 := by
  apply coveredState_split_literal (state := state_2558701) 1
    state_2558702 state_2558821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558702
  · exact cover_2558821
#print axioms cover_2558701

def state_2558669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 95) else (if j.val < 3 then 114 else (if j.val < 4 then 58 else 97)))
theorem cover_2558669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558669 := by
  apply coveredState_split_literal (state := state_2558669) 3
    state_2558670 state_2558701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558670
  · exact cover_2558701
#print axioms cover_2558669

def state_2558894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 95) else (if j.val < 3 then 115 else (if j.val < 4 then 117 else 97)))
theorem cover_2558894 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558894 := by
  apply coveredState_split_literal (state := state_2558894) 1
    state_2558895 state_2558924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558895
  · exact cover_2558924
#print axioms cover_2558894

def state_2558864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 95) else (if j.val < 3 then 115 else (if j.val < 4 then 58 else 97)))
theorem cover_2558864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558864 := by
  apply coveredState_split_literal (state := state_2558864) 3
    state_2558865 state_2558894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558865
  · exact cover_2558894
#print axioms cover_2558864

def state_2558668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 97)))
theorem cover_2558668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558668 := by
  apply coveredState_split_literal (state := state_2558668) 2
    state_2558669 state_2558864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558669
  · exact cover_2558864
#print axioms cover_2558668

def state_2558667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 97)))
theorem cover_2558667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558667 := by
  apply coveredState_split_literal (state := state_2558667) 0
    state_2558668 state_2558979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558668
  · exact cover_2558979
#print axioms cover_2558667

def state_2558483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 48)))
theorem cover_2558483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558483 := by
  apply coveredState_split_literal (state := state_2558483) 4
    state_2558484 state_2558667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558484
  · exact cover_2558667
#print axioms cover_2558483

def state_2558221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 48)))
theorem cover_2558221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558221 := by
  apply coveredState_split_literal (state := state_2558221) 1
    state_2558222 state_2558483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2558222
  · exact cover_2558483
#print axioms cover_2558221

def state_2559033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 114 else (if j.val < 4 then 59 else 97)))
theorem cover_2559033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559033 := by
  apply coveredState_split_literal (state := state_2559033) 3
    state_2559034 state_2559091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559034
  · exact cover_2559091
#print axioms cover_2559033

def state_2559032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 97)))
theorem cover_2559032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559032 := by
  apply coveredState_split_literal (state := state_2559032) 2
    state_2559033 state_2559104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559033
  · exact cover_2559104
#print axioms cover_2559032

def state_2559031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 97)))
theorem cover_2559031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559031 := by
  apply coveredState_split_literal (state := state_2559031) 0
    state_2559032 state_2559121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2559032
  · exact cover_2559121
#print axioms cover_2559031
end Mub6.Numerical.CircleFullD0.Forest
