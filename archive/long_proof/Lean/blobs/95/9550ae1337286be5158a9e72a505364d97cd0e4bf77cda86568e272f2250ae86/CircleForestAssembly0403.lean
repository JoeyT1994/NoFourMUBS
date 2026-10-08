import CircleFullInterface
import CircleForestAssembly0402
import CircleForestChunk1569
import CircleForestChunk1570
import CircleForestChunk1571
import CircleForestChunk1572
import CircleForestChunk1573
import CircleForestChunk1574
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2250209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 109)))
theorem cover_2250209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250209 := by
  apply coveredState_split_literal (state := state_2250209) 3
    state_2250210 state_2250231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250210
  · exact cover_2250231
#print axioms cover_2250209

def state_2250175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 109)))
theorem cover_2250175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250175 := by
  apply coveredState_split_literal (state := state_2250175) 0
    state_2250176 state_2250209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250176
  · exact cover_2250209
#print axioms cover_2250175

def state_2250173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 54)))
theorem cover_2250173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250173 := by
  apply coveredState_split_literal (state := state_2250173) 4
    state_2250174 state_2250175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250174
  · exact cover_2250175
#print axioms cover_2250173

def state_2250089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
theorem cover_2250089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250089 := by
  apply coveredState_split_literal (state := state_2250089) 2
    state_2250090 state_2250173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250090
  · exact cover_2250173
#print axioms cover_2250089

def state_2250079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
theorem cover_2250079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250079 := by
  apply coveredState_split_literal (state := state_2250079) 1
    state_2250080 state_2250089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250080
  · exact cover_2250089
#print axioms cover_2250079

def state_2250037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 54)))
theorem cover_2250037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250037 := by
  apply coveredState_split_literal (state := state_2250037) 3
    state_2250038 state_2250079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250038
  · exact cover_2250079
#print axioms cover_2250037

def state_2250385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 103) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 54)))
theorem cover_2250385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250385 := by
  apply coveredState_split_literal (state := state_2250385) 4
    state_2250386 state_2250445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250386
  · exact cover_2250445
#print axioms cover_2250385

def state_2250384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 103) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
theorem cover_2250384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250384 := by
  apply coveredState_split_literal (state := state_2250384) 2
    state_2250385 state_2250454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250385
  · exact cover_2250454
#print axioms cover_2250384

def state_2250360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
theorem cover_2250360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250360 := by
  apply coveredState_split_literal (state := state_2250360) 1
    state_2250361 state_2250384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250361
  · exact cover_2250384
#print axioms cover_2250360

def state_2250324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 54)))
theorem cover_2250324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250324 := by
  apply coveredState_split_literal (state := state_2250324) 3
    state_2250325 state_2250360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250325
  · exact cover_2250360
#print axioms cover_2250324

def state_2250036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 54)))
theorem cover_2250036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250036 := by
  apply coveredState_split_literal (state := state_2250036) 0
    state_2250037 state_2250324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250037
  · exact cover_2250324
#print axioms cover_2250036

def state_2250569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 110)))
theorem cover_2250569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250569 := by
  apply coveredState_split_literal (state := state_2250569) 3
    state_2250570 state_2250583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250570
  · exact cover_2250583
#print axioms cover_2250569

def state_2250527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 110)))
theorem cover_2250527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250527 := by
  apply coveredState_split_literal (state := state_2250527) 0
    state_2250528 state_2250569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250528
  · exact cover_2250569
#print axioms cover_2250527

def state_2250526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 55)))
theorem cover_2250526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250526 := by
  apply coveredState_split_literal (state := state_2250526) 4
    state_2250527 state_2250644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250527
  · exact cover_2250644
#print axioms cover_2250526

def state_2250520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 55)))
theorem cover_2250520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250520 := by
  apply coveredState_split_literal (state := state_2250520) 2
    state_2250521 state_2250526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250521
  · exact cover_2250526
#print axioms cover_2250520

def state_2250504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 55)))
theorem cover_2250504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250504 := by
  apply coveredState_split_literal (state := state_2250504) 1
    state_2250505 state_2250520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250505
  · exact cover_2250520
#print axioms cover_2250504

def state_2250490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 55)))
theorem cover_2250490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250490 := by
  apply coveredState_split_literal (state := state_2250490) 3
    state_2250491 state_2250504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250491
  · exact cover_2250504
#print axioms cover_2250490

def state_2250489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 55)))
theorem cover_2250489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250489 := by
  apply coveredState_split_literal (state := state_2250489) 0
    state_2250490 state_2250651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250490
  · exact cover_2250651
#print axioms cover_2250489

def state_2250035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 27)))
theorem cover_2250035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250035 := by
  apply coveredState_split_literal (state := state_2250035) 4
    state_2250036 state_2250489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250036
  · exact cover_2250489
#print axioms cover_2250035

def state_2249991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 27)))
theorem cover_2249991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249991 := by
  apply coveredState_split_literal (state := state_2249991) 2
    state_2249992 state_2250035
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249992
  · exact cover_2250035
#print axioms cover_2249991

def state_2249951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
theorem cover_2249951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249951 := by
  apply coveredState_split_literal (state := state_2249951) 3
    state_2249952 state_2249991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249952
  · exact cover_2249991
#print axioms cover_2249951

def state_2249923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
theorem cover_2249923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249923 := by
  apply coveredState_split_literal (state := state_2249923) 1
    state_2249924 state_2249951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249924
  · exact cover_2249951
#print axioms cover_2249923

def state_2249725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
theorem cover_2249725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249725 := by
  apply coveredState_split_literal (state := state_2249725) 0
    state_2249726 state_2249923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249726
  · exact cover_2249923
#print axioms cover_2249725

def state_2249497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 13)))
theorem cover_2249497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249497 := by
  apply coveredState_split_literal (state := state_2249497) 4
    state_2249498 state_2249725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249498
  · exact cover_2249725
#print axioms cover_2249497

def state_2249357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
theorem cover_2249357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249357 := by
  apply coveredState_split_literal (state := state_2249357) 2
    state_2249358 state_2249497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249358
  · exact cover_2249497
#print axioms cover_2249357

def state_2250722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 26)))
theorem cover_2250722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250722 := by
  apply coveredState_split_literal (state := state_2250722) 3
    state_2250723 state_2250776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250723
  · exact cover_2250776
#print axioms cover_2250722

def state_2250676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 26)))
theorem cover_2250676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250676 := by
  apply coveredState_split_literal (state := state_2250676) 0
    state_2250677 state_2250722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250677
  · exact cover_2250722
#print axioms cover_2250676

def state_2250675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 13)))
theorem cover_2250675 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250675 := by
  apply coveredState_split_literal (state := state_2250675) 4
    state_2250676 state_2250787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250676
  · exact cover_2250787
#print axioms cover_2250675

def state_2250804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 26)))
theorem cover_2250804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250804 := by
  apply coveredState_split_literal (state := state_2250804) 3
    state_2250805 state_2250858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250805
  · exact cover_2250858
#print axioms cover_2250804

def state_2250936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 53)))
theorem cover_2250936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250936 := by
  apply coveredState_split_literal (state := state_2250936) 3
    state_2250937 state_2250988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250937
  · exact cover_2250988
#print axioms cover_2250936

def state_2251007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 53)))
theorem cover_2251007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251007 := by
  apply coveredState_split_literal (state := state_2251007) 3
    state_2251008 state_2251057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251008
  · exact cover_2251057
#print axioms cover_2251007

def state_2250935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 53)))
theorem cover_2250935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250935 := by
  apply coveredState_split_literal (state := state_2250935) 0
    state_2250936 state_2251007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250936
  · exact cover_2251007
#print axioms cover_2250935
end Mub6.Numerical.CircleFullD0.Forest
