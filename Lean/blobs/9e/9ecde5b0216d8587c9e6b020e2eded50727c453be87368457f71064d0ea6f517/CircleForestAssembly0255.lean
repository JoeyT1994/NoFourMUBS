import CircleFullInterface
import CircleForestAssembly0254
import CircleForestChunk0974
import CircleForestChunk0976
import CircleForestChunk0977
import CircleForestChunk0978
import CircleForestChunk0979
import CircleForestChunk0980
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1534879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 17)))
theorem cover_1534879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534879 := by
  apply coveredState_split_literal (state := state_1534879) 2
    state_1534880 state_1534953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534880
  · exact cover_1534953
#print axioms cover_1534879

def state_1535038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 53) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 34)))
theorem cover_1535038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535038 := by
  apply coveredState_split_literal (state := state_1535038) 2
    state_1535039 state_1535100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535039
  · exact cover_1535100
#print axioms cover_1535038

def state_1535010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 34)))
theorem cover_1535010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535010 := by
  apply coveredState_split_literal (state := state_1535010) 0
    state_1535011 state_1535038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535011
  · exact cover_1535038
#print axioms cover_1535010

def state_1535109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 35)))
theorem cover_1535109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535109 := by
  apply coveredState_split_literal (state := state_1535109) 0
    state_1535110 state_1535131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535110
  · exact cover_1535131
#print axioms cover_1535109

def state_1535009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 17)))
theorem cover_1535009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535009 := by
  apply coveredState_split_literal (state := state_1535009) 4
    state_1535010 state_1535109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535010
  · exact cover_1535109
#print axioms cover_1535009

def state_1534957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 52 else (if j.val < 4 then 19 else 17)))
theorem cover_1534957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534957 := by
  apply coveredState_split_literal (state := state_1534957) 3
    state_1534958 state_1535009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534958
  · exact cover_1535009
#print axioms cover_1534957

def state_1534956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 17)))
theorem cover_1534956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534956 := by
  apply coveredState_split_literal (state := state_1534956) 2
    state_1534957 state_1535194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534957
  · exact cover_1535194
#print axioms cover_1534956

def state_1534878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 17)))
theorem cover_1534878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534878 := by
  apply coveredState_split_literal (state := state_1534878) 1
    state_1534879 state_1534956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534879
  · exact cover_1534956
#print axioms cover_1534878

def state_1535280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 53) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 17)))
theorem cover_1535280 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535280 := by
  apply coveredState_split_literal (state := state_1535280) 4
    state_1535281 state_1535316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535281
  · exact cover_1535316
#print axioms cover_1535280

def state_1535256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 53) else (if j.val < 3 then 52 else (if j.val < 4 then 19 else 17)))
theorem cover_1535256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535256 := by
  apply coveredState_split_literal (state := state_1535256) 3
    state_1535257 state_1535280
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535257
  · exact cover_1535280
#print axioms cover_1535256

def state_1535255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 53) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 17)))
theorem cover_1535255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535255 := by
  apply coveredState_split_literal (state := state_1535255) 2
    state_1535256 state_1535375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535256
  · exact cover_1535375
#print axioms cover_1535255

def state_1535207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 17)))
theorem cover_1535207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535207 := by
  apply coveredState_split_literal (state := state_1535207) 1
    state_1535208 state_1535255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535208
  · exact cover_1535255
#print axioms cover_1535207

def state_1534877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 17)))
theorem cover_1534877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534877 := by
  apply coveredState_split_literal (state := state_1534877) 0
    state_1534878 state_1535207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534878
  · exact cover_1535207
#print axioms cover_1534877

def state_1534481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 8)))
theorem cover_1534481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534481 := by
  apply coveredState_split_literal (state := state_1534481) 4
    state_1534482 state_1534877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534482
  · exact cover_1534877
#print axioms cover_1534481

def state_1534441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 8)))
theorem cover_1534441 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534441 := by
  apply coveredState_split_literal (state := state_1534441) 3
    state_1534442 state_1534481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534442
  · exact cover_1534481
#print axioms cover_1534441

def state_1534440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_1534440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534440 := by
  apply coveredState_split_literal (state := state_1534440) 2
    state_1534441 state_1535388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534441
  · exact cover_1535388
#print axioms cover_1534440

def state_1535426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 17)))
theorem cover_1535426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535426 := by
  apply coveredState_split_literal (state := state_1535426) 0
    state_1535427 state_1535484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535427
  · exact cover_1535484
#print axioms cover_1535426

def state_1535412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 8)))
theorem cover_1535412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535412 := by
  apply coveredState_split_literal (state := state_1535412) 4
    state_1535413 state_1535426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535413
  · exact cover_1535426
#print axioms cover_1535412

def state_1535406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 8)))
theorem cover_1535406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535406 := by
  apply coveredState_split_literal (state := state_1535406) 3
    state_1535407 state_1535412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535407
  · exact cover_1535412
#print axioms cover_1535406

def state_1535405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_1535405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535405 := by
  apply coveredState_split_literal (state := state_1535405) 2
    state_1535406 state_1535525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535406
  · exact cover_1535525
#print axioms cover_1535405

def state_1534439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_1534439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534439 := by
  apply coveredState_split_literal (state := state_1534439) 1
    state_1534440 state_1535405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534440
  · exact cover_1535405
#print axioms cover_1534439

def state_1534438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_1534438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534438 := by
  apply coveredState_split_literal (state := state_1534438) 0
    state_1534439 state_1535530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534439
  · exact cover_1535530
#print axioms cover_1534438

def state_1535650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 18)))
theorem cover_1535650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535650 := by
  apply coveredState_split_literal (state := state_1535650) 4
    state_1535651 state_1535710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535651
  · exact cover_1535710
#print axioms cover_1535650

def state_1535646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 19 else 18)))
theorem cover_1535646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535646 := by
  apply coveredState_split_literal (state := state_1535646) 3
    state_1535647 state_1535650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535647
  · exact cover_1535650
#print axioms cover_1535646

def state_1535645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 18)))
theorem cover_1535645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535645 := by
  apply coveredState_split_literal (state := state_1535645) 2
    state_1535646 state_1535725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535646
  · exact cover_1535725
#print axioms cover_1535645

def state_1535736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 54) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 36)))
theorem cover_1535736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535736 := by
  apply coveredState_split_literal (state := state_1535736) 2
    state_1535737 state_1535784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535737
  · exact cover_1535784
#print axioms cover_1535736

def state_1535735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 54) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 36)))
theorem cover_1535735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535735 := by
  apply coveredState_split_literal (state := state_1535735) 0
    state_1535736 state_1535801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535736
  · exact cover_1535801
#print axioms cover_1535735

def state_1535734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 36)))
theorem cover_1535734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535734 := by
  apply coveredState_split_literal (state := state_1535734) 1
    state_1535735 state_1535816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535735
  · exact cover_1535816
#print axioms cover_1535734

def state_1535733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 18)))
theorem cover_1535733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535733 := by
  apply coveredState_split_literal (state := state_1535733) 4
    state_1535734 state_1535825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535734
  · exact cover_1535825
#print axioms cover_1535733

def state_1535727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 19 else 18)))
theorem cover_1535727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535727 := by
  apply coveredState_split_literal (state := state_1535727) 3
    state_1535728 state_1535733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535728
  · exact cover_1535733
#print axioms cover_1535727

def state_1535726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 18)))
theorem cover_1535726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535726 := by
  apply coveredState_split_literal (state := state_1535726) 2
    state_1535727 state_1535858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535727
  · exact cover_1535858
#print axioms cover_1535726

def state_1535644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 18)))
theorem cover_1535644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535644 := by
  apply coveredState_split_literal (state := state_1535644) 0
    state_1535645 state_1535726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535645
  · exact cover_1535726
#print axioms cover_1535644
end Mub6.Numerical.CircleFullD0.Forest
