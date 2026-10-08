import CircleFullInterface
import CircleForestAssembly0049
import CircleForestChunk0201
import CircleForestChunk0203
import CircleForestChunk0204
import CircleForestChunk0205
import CircleForestChunk0206
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_985926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 103 else 85)))
theorem cover_985926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985926 := by
  apply coveredState_split_literal (state := state_985926) 0
    state_985927 state_986090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985927
  · exact cover_986090
#print axioms cover_985926

def state_985902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 85)))
theorem cover_985902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985902 := by
  apply coveredState_split_literal (state := state_985902) 2
    state_985903 state_985926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985903
  · exact cover_985926
#print axioms cover_985902

def state_985840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 42)))
theorem cover_985840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985840 := by
  apply coveredState_split_literal (state := state_985840) 4
    state_985841 state_985902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985841
  · exact cover_985902
#print axioms cover_985840

def state_985750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 42)))
theorem cover_985750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985750 := by
  apply coveredState_split_literal (state := state_985750) 1
    state_985751 state_985840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985751
  · exact cover_985840
#print axioms cover_985750

def state_985326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 42)))
theorem cover_985326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985326 := by
  apply coveredState_split_literal (state := state_985326) 3
    state_985327 state_985750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985327
  · exact cover_985750
#print axioms cover_985326

def state_985056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 42)))
theorem cover_985056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985056 := by
  apply coveredState_split_literal (state := state_985056) 0
    state_985057 state_985326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985057
  · exact cover_985326
#print axioms cover_985056

def state_986160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 42)))
theorem cover_986160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986160 := by
  apply coveredState_split_literal (state := state_986160) 3
    state_986161 state_986186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986161
  · exact cover_986186
#print axioms cover_986160

def state_986425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 70 else (if j.val < 4 then 207 else 85)))
theorem cover_986425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986425 := by
  apply coveredState_split_literal (state := state_986425) 4
    state_986426 state_986461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986426
  · exact cover_986461
#print axioms cover_986425

def state_986373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 85)))
theorem cover_986373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986373 := by
  apply coveredState_split_literal (state := state_986373) 3
    state_986374 state_986425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986374
  · exact cover_986425
#print axioms cover_986373

def state_986372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 85)))
theorem cover_986372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986372 := by
  apply coveredState_split_literal (state := state_986372) 0
    state_986373 state_986510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986373
  · exact cover_986510
#print axioms cover_986372

def state_986371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 85)))
theorem cover_986371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986371 := by
  apply coveredState_split_literal (state := state_986371) 2
    state_986372 state_986545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986372
  · exact cover_986545
#print axioms cover_986371

def state_986329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 42)))
theorem cover_986329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986329 := by
  apply coveredState_split_literal (state := state_986329) 4
    state_986330 state_986371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986330
  · exact cover_986371
#print axioms cover_986329

def state_986299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 42)))
theorem cover_986299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986299 := by
  apply coveredState_split_literal (state := state_986299) 1
    state_986300 state_986329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986300
  · exact cover_986329
#print axioms cover_986299

def state_986249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 42)))
theorem cover_986249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986249 := by
  apply coveredState_split_literal (state := state_986249) 3
    state_986250 state_986299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986250
  · exact cover_986299
#print axioms cover_986249

def state_986159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 42)))
theorem cover_986159 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986159 := by
  apply coveredState_split_literal (state := state_986159) 0
    state_986160 state_986249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986160
  · exact cover_986249
#print axioms cover_986159

def state_985055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 42)))
theorem cover_985055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985055 := by
  apply coveredState_split_literal (state := state_985055) 2
    state_985056 state_986159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985056
  · exact cover_986159
#print axioms cover_985055

def state_986572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 43)))
theorem cover_986572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986572 := by
  apply coveredState_split_literal (state := state_986572) 3
    state_986573 state_986616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986573
  · exact cover_986616
#print axioms cover_986572

def state_986669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 102 else 86)))
theorem cover_986669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986669 := by
  apply coveredState_split_literal (state := state_986669) 0
    state_986670 state_986727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986670
  · exact cover_986727
#print axioms cover_986669

def state_986663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 86)))
theorem cover_986663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986663 := by
  apply coveredState_split_literal (state := state_986663) 2
    state_986664 state_986669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986664
  · exact cover_986669
#print axioms cover_986663

def state_986657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 86)))
theorem cover_986657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986657 := by
  apply coveredState_split_literal (state := state_986657) 1
    state_986658 state_986663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986658
  · exact cover_986663
#print axioms cover_986657

def state_986656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 43)))
theorem cover_986656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986656 := by
  apply coveredState_split_literal (state := state_986656) 4
    state_986657 state_986738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986657
  · exact cover_986738
#print axioms cover_986656

def state_986750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 103 else 86)))
theorem cover_986750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986750 := by
  apply coveredState_split_literal (state := state_986750) 0
    state_986751 state_986814
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986751
  · exact cover_986814
#print axioms cover_986750

def state_986748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 86)))
theorem cover_986748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986748 := by
  apply coveredState_split_literal (state := state_986748) 2
    state_986749 state_986750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986749
  · exact cover_986750
#print axioms cover_986748

def state_986746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 86)))
theorem cover_986746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986746 := by
  apply coveredState_split_literal (state := state_986746) 1
    state_986747 state_986748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986747
  · exact cover_986748
#print axioms cover_986746

def state_986745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 43)))
theorem cover_986745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986745 := by
  apply coveredState_split_literal (state := state_986745) 4
    state_986746 state_986827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986746
  · exact cover_986827
#print axioms cover_986745

def state_986655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 43)))
theorem cover_986655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986655 := by
  apply coveredState_split_literal (state := state_986655) 3
    state_986656 state_986745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986656
  · exact cover_986745
#print axioms cover_986655

def state_986571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 43)))
theorem cover_986571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986571 := by
  apply coveredState_split_literal (state := state_986571) 0
    state_986572 state_986655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986572
  · exact cover_986655
#print axioms cover_986571

def state_986882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 86)))
theorem cover_986882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986882 := by
  apply coveredState_split_literal (state := state_986882) 0
    state_986883 state_986934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986883
  · exact cover_986934
#print axioms cover_986882

def state_986881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 86)))
theorem cover_986881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986881 := by
  apply coveredState_split_literal (state := state_986881) 2
    state_986882 state_986979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986882
  · exact cover_986979
#print axioms cover_986881

def state_986875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 86)))
theorem cover_986875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986875 := by
  apply coveredState_split_literal (state := state_986875) 1
    state_986876 state_986881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986876
  · exact cover_986881
#print axioms cover_986875

def state_986874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 43)))
theorem cover_986874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986874 := by
  apply coveredState_split_literal (state := state_986874) 4
    state_986875 state_986994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986875
  · exact cover_986994
#print axioms cover_986874

def state_986848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 43)))
theorem cover_986848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986848 := by
  apply coveredState_split_literal (state := state_986848) 3
    state_986849 state_986874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986849
  · exact cover_986874
#print axioms cover_986848
end Mub6.Numerical.CircleFullD0.Forest
