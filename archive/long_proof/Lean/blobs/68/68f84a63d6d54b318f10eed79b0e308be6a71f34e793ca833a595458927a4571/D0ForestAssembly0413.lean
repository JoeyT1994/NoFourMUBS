import D0FullInterface
import D0ForestAssembly0411
import D0ForestAssembly0412
import D0ForestChunk1607
import D0ForestChunk1610
import D0ForestChunk1611
import D0ForestChunk1612
import D0ForestChunk1613
import D0ForestChunk1614
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2258926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 27)))
theorem cover_2258926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258926 := by
  apply coveredState_split_literal (state := state_2258926) 0
    state_2258927 state_2259486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258927
  · exact cover_2259486
#print axioms cover_2258926

def state_2258878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 27)))
theorem cover_2258878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258878 := by
  apply coveredState_split_literal (state := state_2258878) 2
    state_2258879 state_2258926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258879
  · exact cover_2258926
#print axioms cover_2258878

def state_2259761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
theorem cover_2259761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259761 := by
  apply coveredState_split_literal (state := state_2259761) 2
    state_2259762 state_2259771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259762
  · exact cover_2259771
#print axioms cover_2259761

def state_2259745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 54)))
theorem cover_2259745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259745 := by
  apply coveredState_split_literal (state := state_2259745) 3
    state_2259746 state_2259761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259746
  · exact cover_2259761
#print axioms cover_2259745

def state_2259744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 27)))
theorem cover_2259744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259744 := by
  apply coveredState_split_literal (state := state_2259744) 4
    state_2259745 state_2259826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259745
  · exact cover_2259826
#print axioms cover_2259744

def state_2259899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 106) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 54)))
theorem cover_2259899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259899 := by
  apply coveredState_split_literal (state := state_2259899) 0
    state_2259900 state_2259943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259900
  · exact cover_2259943
#print axioms cover_2259899

def state_2259898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 54)))
theorem cover_2259898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259898 := by
  apply coveredState_split_literal (state := state_2259898) 1
    state_2259899 state_2259974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259899
  · exact cover_2259974
#print axioms cover_2259898

def state_2259882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
theorem cover_2259882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259882 := by
  apply coveredState_split_literal (state := state_2259882) 2
    state_2259883 state_2259898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259883
  · exact cover_2259898
#print axioms cover_2259882

def state_2259852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 54)))
theorem cover_2259852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259852 := by
  apply coveredState_split_literal (state := state_2259852) 3
    state_2259853 state_2259882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259853
  · exact cover_2259882
#print axioms cover_2259852

def state_2259851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 27)))
theorem cover_2259851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259851 := by
  apply coveredState_split_literal (state := state_2259851) 4
    state_2259852 state_2259981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259852
  · exact cover_2259981
#print axioms cover_2259851

def state_2259743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 27)))
theorem cover_2259743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259743 := by
  apply coveredState_split_literal (state := state_2259743) 0
    state_2259744 state_2259851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259744
  · exact cover_2259851
#print axioms cover_2259743

def state_2259725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 27)))
theorem cover_2259725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259725 := by
  apply coveredState_split_literal (state := state_2259725) 2
    state_2259726 state_2259743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259726
  · exact cover_2259743
#print axioms cover_2259725

def state_2258877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 27)))
theorem cover_2258877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258877 := by
  apply coveredState_split_literal (state := state_2258877) 1
    state_2258878 state_2259725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258878
  · exact cover_2259725
#print axioms cover_2258877

def state_2258725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
theorem cover_2258725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258725 := by
  apply coveredState_split_literal (state := state_2258725) 3
    state_2258726 state_2258877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258726
  · exact cover_2258877
#print axioms cover_2258725

def state_2260121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 27)))
theorem cover_2260121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260121 := by
  apply coveredState_split_literal (state := state_2260121) 4
    state_2260122 state_2260171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260122
  · exact cover_2260171
#print axioms cover_2260121

def state_2260120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 27)))
theorem cover_2260120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260120 := by
  apply coveredState_split_literal (state := state_2260120) 0
    state_2260121 state_2260200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260121
  · exact cover_2260200
#print axioms cover_2260120

def state_2260112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 27)))
theorem cover_2260112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260112 := by
  apply coveredState_split_literal (state := state_2260112) 2
    state_2260113 state_2260120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260113
  · exact cover_2260120
#print axioms cover_2260112

def state_2260088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 27)))
theorem cover_2260088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260088 := by
  apply coveredState_split_literal (state := state_2260088) 1
    state_2260089 state_2260112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260089
  · exact cover_2260112
#print axioms cover_2260088

def state_2260026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
theorem cover_2260026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260026 := by
  apply coveredState_split_literal (state := state_2260026) 3
    state_2260027 state_2260088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260027
  · exact cover_2260088
#print axioms cover_2260026

def state_2258724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
theorem cover_2258724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258724 := by
  apply coveredState_split_literal (state := state_2258724) 0
    state_2258725 state_2260026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258725
  · exact cover_2260026
#print axioms cover_2258724

def state_2257864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 13)))
theorem cover_2257864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257864 := by
  apply coveredState_split_literal (state := state_2257864) 4
    state_2257865 state_2258724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257865
  · exact cover_2258724
#print axioms cover_2257864

def state_2257784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
theorem cover_2257784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257784 := by
  apply coveredState_split_literal (state := state_2257784) 2
    state_2257785 state_2257864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257785
  · exact cover_2257864
#print axioms cover_2257784

def state_2260247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
theorem cover_2260247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260247 := by
  apply coveredState_split_literal (state := state_2260247) 0
    state_2260248 state_2260277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260248
  · exact cover_2260277
#print axioms cover_2260247

def state_2260227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 13)))
theorem cover_2260227 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260227 := by
  apply coveredState_split_literal (state := state_2260227) 4
    state_2260228 state_2260247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260228
  · exact cover_2260247
#print axioms cover_2260227

def state_2260217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
theorem cover_2260217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260217 := by
  apply coveredState_split_literal (state := state_2260217) 2
    state_2260218 state_2260227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260218
  · exact cover_2260227
#print axioms cover_2260217

def state_2257783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
theorem cover_2257783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257783 := by
  apply coveredState_split_literal (state := state_2257783) 1
    state_2257784 state_2260217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257784
  · exact cover_2260217
#print axioms cover_2257783

def state_2260321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 26)))
theorem cover_2260321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260321 := by
  apply coveredState_split_literal (state := state_2260321) 0
    state_2260322 state_2260383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260322
  · exact cover_2260383
#print axioms cover_2260321

def state_2260320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 13)))
theorem cover_2260320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260320 := by
  apply coveredState_split_literal (state := state_2260320) 4
    state_2260321 state_2260390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260321
  · exact cover_2260390
#print axioms cover_2260320

def state_2260402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 42 else (if j.val < 4 then 92 else 52)))
theorem cover_2260402 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260402 := by
  apply coveredState_split_literal (state := state_2260402) 4
    state_2260403 state_2260440
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260403
  · exact cover_2260440
#print axioms cover_2260402

def state_2260401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 92 else 52)))
theorem cover_2260401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260401 := by
  apply coveredState_split_literal (state := state_2260401) 1
    state_2260402 state_2260479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260402
  · exact cover_2260479
#print axioms cover_2260401

def state_2260400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 52)))
theorem cover_2260400 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260400 := by
  apply coveredState_split_literal (state := state_2260400) 3
    state_2260401 state_2260512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260401
  · exact cover_2260512
#print axioms cover_2260400

def state_2260399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 52)))
theorem cover_2260399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260399 := by
  apply coveredState_split_literal (state := state_2260399) 0
    state_2260400 state_2260551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260400
  · exact cover_2260551
#print axioms cover_2260399
end Mub6.Numerical.CircleFullD0.Forest
