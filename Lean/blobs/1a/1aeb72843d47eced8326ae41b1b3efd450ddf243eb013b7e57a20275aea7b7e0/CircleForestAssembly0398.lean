import CircleFullInterface
import CircleForestAssembly0397
import CircleForestChunk1545
import CircleForestChunk1549
import CircleForestChunk1550
import CircleForestChunk1551
import CircleForestChunk1552
import CircleForestChunk1553
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2244469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
theorem cover_2244469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244469 := by
  apply coveredState_split_literal (state := state_2244469) 0
    state_2244470 state_2244665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244470
  · exact cover_2244665
#print axioms cover_2244469

def state_2244443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 5)))
theorem cover_2244443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244443 := by
  apply coveredState_split_literal (state := state_2244443) 4
    state_2244444 state_2244469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244444
  · exact cover_2244469
#print axioms cover_2244443

def state_2244415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_2244415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244415 := by
  apply coveredState_split_literal (state := state_2244415) 3
    state_2244416 state_2244443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244416
  · exact cover_2244443
#print axioms cover_2244415

def state_2245418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
theorem cover_2245418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245418 := by
  apply coveredState_split_literal (state := state_2245418) 2
    state_2245419 state_2245428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245419
  · exact cover_2245428
#print axioms cover_2245418

def state_2245402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
theorem cover_2245402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245402 := by
  apply coveredState_split_literal (state := state_2245402) 0
    state_2245403 state_2245418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245403
  · exact cover_2245418
#print axioms cover_2245402

def state_2245400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 5)))
theorem cover_2245400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245400 := by
  apply coveredState_split_literal (state := state_2245400) 4
    state_2245401 state_2245402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245401
  · exact cover_2245402
#print axioms cover_2245400

def state_2245394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_2245394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245394 := by
  apply coveredState_split_literal (state := state_2245394) 3
    state_2245395 state_2245400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245395
  · exact cover_2245400
#print axioms cover_2245394

def state_2244414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_2244414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244414 := by
  apply coveredState_split_literal (state := state_2244414) 1
    state_2244415 state_2245394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244415
  · exact cover_2245394
#print axioms cover_2244414

def state_2244410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
theorem cover_2244410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244410 := by
  apply coveredState_split_literal (state := state_2244410) 4
    state_2244411 state_2244414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244411
  · exact cover_2244414
#print axioms cover_2244410

def state_2244404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_2244404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244404 := by
  apply coveredState_split_literal (state := state_2244404) 3
    state_2244405 state_2244410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244405
  · exact cover_2244410
#print axioms cover_2244404

def state_2244403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2244403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244403 := by
  apply coveredState_split_literal (state := state_2244403) 2
    state_2244404 state_2245483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244404
  · exact cover_2245483
#print axioms cover_2244403

def state_2244402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2244402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244402 := by
  apply coveredState_split_literal (state := state_2244402) 1
    state_2244403 state_2245546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244403
  · exact cover_2245546
#print axioms cover_2244402

def state_2245577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_2245577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245577 := by
  apply coveredState_split_literal (state := state_2245577) 3
    state_2245578 state_2245581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245578
  · exact cover_2245581
#print axioms cover_2245577

def state_2245646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_2245646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245646 := by
  apply coveredState_split_literal (state := state_2245646) 0
    state_2245647 state_2245660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245647
  · exact cover_2245660
#print axioms cover_2245646

def state_2245645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
theorem cover_2245645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245645 := by
  apply coveredState_split_literal (state := state_2245645) 4
    state_2245646 state_2245715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245646
  · exact cover_2245715
#print axioms cover_2245645

def state_2245644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_2245644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245644 := by
  apply coveredState_split_literal (state := state_2245644) 3
    state_2245645 state_2245720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245645
  · exact cover_2245720
#print axioms cover_2245644

def state_2245576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2245576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245576 := by
  apply coveredState_split_literal (state := state_2245576) 2
    state_2245577 state_2245644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245577
  · exact cover_2245644
#print axioms cover_2245576

def state_2245745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2245745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245745 := by
  apply coveredState_split_literal (state := state_2245745) 2
    state_2245746 state_2245759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245746
  · exact cover_2245759
#print axioms cover_2245745

def state_2245575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2245575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245575 := by
  apply coveredState_split_literal (state := state_2245575) 1
    state_2245576 state_2245745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245576
  · exact cover_2245745
#print axioms cover_2245575

def state_2244401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2244401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244401 := by
  apply coveredState_split_literal (state := state_2244401) 0
    state_2244402 state_2245575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244402
  · exact cover_2245575
#print axioms cover_2244401

def state_2245840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 6)))
theorem cover_2245840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245840 := by
  apply coveredState_split_literal (state := state_2245840) 4
    state_2245841 state_2245902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245841
  · exact cover_2245902
#print axioms cover_2245840

def state_2245969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 24)))
theorem cover_2245969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245969 := by
  apply coveredState_split_literal (state := state_2245969) 2
    state_2245970 state_2245989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245970
  · exact cover_2245989
#print axioms cover_2245969

def state_2245968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 12)))
theorem cover_2245968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245968 := by
  apply coveredState_split_literal (state := state_2245968) 4
    state_2245969 state_2246040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245969
  · exact cover_2246040
#print axioms cover_2245968

def state_2246114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 24)))
theorem cover_2246114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246114 := by
  apply coveredState_split_literal (state := state_2246114) 3
    state_2246115 state_2246150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246115
  · exact cover_2246150
#print axioms cover_2246114

def state_2246102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 24)))
theorem cover_2246102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246102 := by
  apply coveredState_split_literal (state := state_2246102) 0
    state_2246103 state_2246114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246103
  · exact cover_2246114
#print axioms cover_2246102

def state_2246074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
theorem cover_2246074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246074 := by
  apply coveredState_split_literal (state := state_2246074) 2
    state_2246075 state_2246102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246075
  · exact cover_2246102
#print axioms cover_2246074

def state_2246073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 12)))
theorem cover_2246073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246073 := by
  apply coveredState_split_literal (state := state_2246073) 4
    state_2246074 state_2246181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246074
  · exact cover_2246181
#print axioms cover_2246073

def state_2245967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
theorem cover_2245967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245967 := by
  apply coveredState_split_literal (state := state_2245967) 3
    state_2245968 state_2246073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245968
  · exact cover_2246073
#print axioms cover_2245967

def state_2245925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
theorem cover_2245925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245925 := by
  apply coveredState_split_literal (state := state_2245925) 1
    state_2245926 state_2245967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245926
  · exact cover_2245967
#print axioms cover_2245925

def state_2245921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
theorem cover_2245921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245921 := by
  apply coveredState_split_literal (state := state_2245921) 2
    state_2245922 state_2245925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245922
  · exact cover_2245925
#print axioms cover_2245921

def state_2246283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 12)))
theorem cover_2246283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246283 := by
  apply coveredState_split_literal (state := state_2246283) 4
    state_2246284 state_2246335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246284
  · exact cover_2246335
#print axioms cover_2246283

def state_2246355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 24)))
theorem cover_2246355 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246355 := by
  apply coveredState_split_literal (state := state_2246355) 3
    state_2246356 state_2246369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246356
  · exact cover_2246369
#print axioms cover_2246355
end Mub6.Numerical.CircleFullD0.Forest
