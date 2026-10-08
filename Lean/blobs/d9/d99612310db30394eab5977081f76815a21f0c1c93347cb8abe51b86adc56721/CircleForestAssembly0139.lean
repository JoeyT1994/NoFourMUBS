import CircleFullInterface
import CircleForestAssembly0135
import CircleForestAssembly0138
import CircleForestChunk0545
import CircleForestChunk0546
import CircleForestChunk0547
import CircleForestChunk0548
import CircleForestChunk0549
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_289097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_289097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289097 := by
  apply coveredState_split_literal (state := state_289097) 4
    state_289098 state_292189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289098
  · exact cover_292189
#print axioms cover_289097

def state_288883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_288883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288883 := by
  apply coveredState_split_literal (state := state_288883) 3
    state_288884 state_289097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288884
  · exact cover_289097
#print axioms cover_288883

def state_285917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_285917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285917 := by
  apply coveredState_split_literal (state := state_285917) 2
    state_285918 state_288883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285918
  · exact cover_288883
#print axioms cover_285917

def state_292364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_292364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292364 := by
  apply coveredState_split_literal (state := state_292364) 0
    state_292365 state_292422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292365
  · exact cover_292422
#print axioms cover_292364

def state_292304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_292304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292304 := by
  apply coveredState_split_literal (state := state_292304) 4
    state_292305 state_292364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292305
  · exact cover_292364
#print axioms cover_292304

def state_292501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_292501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292501 := by
  apply coveredState_split_literal (state := state_292501) 4
    state_292502 state_292521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292502
  · exact cover_292521
#print axioms cover_292501

def state_292467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_292467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292467 := by
  apply coveredState_split_literal (state := state_292467) 3
    state_292468 state_292501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292468
  · exact cover_292501
#print axioms cover_292467

def state_292602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_292602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292602 := by
  apply coveredState_split_literal (state := state_292602) 4
    state_292603 state_292664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292603
  · exact cover_292664
#print axioms cover_292602

def state_292584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_292584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292584 := by
  apply coveredState_split_literal (state := state_292584) 3
    state_292585 state_292602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292585
  · exact cover_292602
#print axioms cover_292584

def state_292466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_292466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292466 := by
  apply coveredState_split_literal (state := state_292466) 2
    state_292467 state_292584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292467
  · exact cover_292584
#print axioms cover_292466

def state_292687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_292687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292687 := by
  apply coveredState_split_literal (state := state_292687) 2
    state_292688 state_292739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292688
  · exact cover_292739
#print axioms cover_292687

def state_292465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_292465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292465 := by
  apply coveredState_split_literal (state := state_292465) 1
    state_292466 state_292687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292466
  · exact cover_292687
#print axioms cover_292465

def state_292779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_292779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292779 := by
  apply coveredState_split_literal (state := state_292779) 3
    state_292780 state_292819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292780
  · exact cover_292819
#print axioms cover_292779

def state_292767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_292767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292767 := by
  apply coveredState_split_literal (state := state_292767) 2
    state_292768 state_292779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292768
  · exact cover_292779
#print axioms cover_292767

def state_292766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_292766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292766 := by
  apply coveredState_split_literal (state := state_292766) 1
    state_292767 state_292850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292767
  · exact cover_292850
#print axioms cover_292766

def state_292464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_292464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292464 := by
  apply coveredState_split_literal (state := state_292464) 0
    state_292465 state_292766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292465
  · exact cover_292766
#print axioms cover_292464

def state_292861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_292861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292861 := by
  apply coveredState_split_literal (state := state_292861) 2
    state_292862 state_292917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292862
  · exact cover_292917
#print axioms cover_292861

def state_292946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_292946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292946 := by
  apply coveredState_split_literal (state := state_292946) 3
    state_292947 state_292960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292947
  · exact cover_292960
#print axioms cover_292946

def state_292945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_292945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292945 := by
  apply coveredState_split_literal (state := state_292945) 0
    state_292946 state_293011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292946
  · exact cover_293011
#print axioms cover_292945

def state_292944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_292944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292944 := by
  apply coveredState_split_literal (state := state_292944) 4
    state_292945 state_293018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292945
  · exact cover_293018
#print axioms cover_292944

def state_293089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 12)))
theorem cover_293089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293089 := by
  apply coveredState_split_literal (state := state_293089) 3
    state_293090 state_293139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293090
  · exact cover_293139
#print axioms cover_293089

def state_293039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_293039 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293039 := by
  apply coveredState_split_literal (state := state_293039) 2
    state_293040 state_293089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293040
  · exact cover_293089
#print axioms cover_293039

def state_293158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_293158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293158 := by
  apply coveredState_split_literal (state := state_293158) 2
    state_293159 state_293180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293159
  · exact cover_293180
#print axioms cover_293158

def state_293038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_293038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293038 := by
  apply coveredState_split_literal (state := state_293038) 1
    state_293039 state_293158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293039
  · exact cover_293158
#print axioms cover_293038

def state_293037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_293037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293037 := by
  apply coveredState_split_literal (state := state_293037) 4
    state_293038 state_293233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293038
  · exact cover_293233
#print axioms cover_293037

def state_293036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_293036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293036 := by
  apply coveredState_split_literal (state := state_293036) 0
    state_293037 state_293272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293037
  · exact cover_293272
#print axioms cover_293036

def state_293035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
theorem cover_293035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293035 := by
  apply coveredState_split_literal (state := state_293035) 4
    state_293036 state_293285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293036
  · exact cover_293285
#print axioms cover_293035

def state_292943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_292943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292943 := by
  apply coveredState_split_literal (state := state_292943) 3
    state_292944 state_293035
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292944
  · exact cover_293035
#print axioms cover_292943

def state_293294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_293294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293294 := by
  apply coveredState_split_literal (state := state_293294) 3
    state_293295 state_293342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293295
  · exact cover_293342
#print axioms cover_293294

def state_292942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_292942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292942 := by
  apply coveredState_split_literal (state := state_292942) 2
    state_292943 state_293294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292943
  · exact cover_293294
#print axioms cover_292942

def state_292860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_292860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292860 := by
  apply coveredState_split_literal (state := state_292860) 1
    state_292861 state_292942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292861
  · exact cover_292942
#print axioms cover_292860

def state_292859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_292859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292859 := by
  apply coveredState_split_literal (state := state_292859) 0
    state_292860 state_293403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292860
  · exact cover_293403
#print axioms cover_292859
end Mub6.Numerical.CircleFullPrototype.Forest
