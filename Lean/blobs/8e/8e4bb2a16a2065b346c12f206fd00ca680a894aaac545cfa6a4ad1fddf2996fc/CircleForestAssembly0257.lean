import CircleFullInterface
import CircleForestAssembly0256
import CircleForestChunk0981
import CircleForestChunk0983
import CircleForestChunk0984
import CircleForestChunk0985
import CircleForestChunk0986
import CircleForestChunk0987
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1536530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 8)))
theorem cover_1536530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536530 := by
  apply coveredState_split_literal (state := state_1536530) 3
    state_1536531 state_1536606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536531
  · exact cover_1536606
#print axioms cover_1536530

def state_1536529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 8)))
theorem cover_1536529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536529 := by
  apply coveredState_split_literal (state := state_1536529) 2
    state_1536530 state_1536611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536530
  · exact cover_1536611
#print axioms cover_1536529

def state_1536497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 8)))
theorem cover_1536497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536497 := by
  apply coveredState_split_literal (state := state_1536497) 1
    state_1536498 state_1536529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536498
  · exact cover_1536529
#print axioms cover_1536497

def state_1536496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 8)))
theorem cover_1536496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536496 := by
  apply coveredState_split_literal (state := state_1536496) 0
    state_1536497 state_1536622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536497
  · exact cover_1536622
#print axioms cover_1536496

def state_1536724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 18)))
theorem cover_1536724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536724 := by
  apply coveredState_split_literal (state := state_1536724) 2
    state_1536725 state_1536788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536725
  · exact cover_1536788
#print axioms cover_1536724

def state_1536895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 55) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 37)))
theorem cover_1536895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536895 := by
  apply coveredState_split_literal (state := state_1536895) 0
    state_1536896 state_1536947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536896
  · exact cover_1536947
#print axioms cover_1536895

def state_1536894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 55) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 37)))
theorem cover_1536894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536894 := by
  apply coveredState_split_literal (state := state_1536894) 3
    state_1536895 state_1536978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536895
  · exact cover_1536978
#print axioms cover_1536894

def state_1536862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 37)))
theorem cover_1536862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536862 := by
  apply coveredState_split_literal (state := state_1536862) 1
    state_1536863 state_1536894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536863
  · exact cover_1536894
#print axioms cover_1536862

def state_1536806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 18)))
theorem cover_1536806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536806 := by
  apply coveredState_split_literal (state := state_1536806) 4
    state_1536807 state_1536862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536807
  · exact cover_1536862
#print axioms cover_1536806

def state_1536805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 18)))
theorem cover_1536805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536805 := by
  apply coveredState_split_literal (state := state_1536805) 2
    state_1536806 state_1536981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536806
  · exact cover_1536981
#print axioms cover_1536805

def state_1536723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 18)))
theorem cover_1536723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536723 := by
  apply coveredState_split_literal (state := state_1536723) 0
    state_1536724 state_1536805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536724
  · exact cover_1536805
#print axioms cover_1536723

def state_1537035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 19)))
theorem cover_1537035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537035 := by
  apply coveredState_split_literal (state := state_1537035) 2
    state_1537036 state_1537089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537036
  · exact cover_1537089
#print axioms cover_1537035

def state_1537104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 38)))
theorem cover_1537104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537104 := by
  apply coveredState_split_literal (state := state_1537104) 1
    state_1537105 state_1537112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537105
  · exact cover_1537112
#print axioms cover_1537104

def state_1537103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 19)))
theorem cover_1537103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537103 := by
  apply coveredState_split_literal (state := state_1537103) 4
    state_1537104 state_1537175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537104
  · exact cover_1537175
#print axioms cover_1537103

def state_1537102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 19)))
theorem cover_1537102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537102 := by
  apply coveredState_split_literal (state := state_1537102) 2
    state_1537103 state_1537188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537103
  · exact cover_1537188
#print axioms cover_1537102

def state_1537034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 19)))
theorem cover_1537034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537034 := by
  apply coveredState_split_literal (state := state_1537034) 0
    state_1537035 state_1537102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537035
  · exact cover_1537102
#print axioms cover_1537034

def state_1536722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 9)))
theorem cover_1536722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536722 := by
  apply coveredState_split_literal (state := state_1536722) 4
    state_1536723 state_1537034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536723
  · exact cover_1537034
#print axioms cover_1536722

def state_1536721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 9)))
theorem cover_1536721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536721 := by
  apply coveredState_split_literal (state := state_1536721) 3
    state_1536722 state_1537219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536722
  · exact cover_1537219
#print axioms cover_1536721

def state_1536720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 9)))
theorem cover_1536720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536720 := by
  apply coveredState_split_literal (state := state_1536720) 2
    state_1536721 state_1537230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536721
  · exact cover_1537230
#print axioms cover_1536720

def state_1536674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 9)))
theorem cover_1536674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536674 := by
  apply coveredState_split_literal (state := state_1536674) 1
    state_1536675 state_1536720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536675
  · exact cover_1536720
#print axioms cover_1536674

def state_1537306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 18)))
theorem cover_1537306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537306 := by
  apply coveredState_split_literal (state := state_1537306) 0
    state_1537307 state_1537360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537307
  · exact cover_1537360
#print axioms cover_1537306

def state_1537375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 19)))
theorem cover_1537375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537375 := by
  apply coveredState_split_literal (state := state_1537375) 0
    state_1537376 state_1537433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537376
  · exact cover_1537433
#print axioms cover_1537375

def state_1537305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 9)))
theorem cover_1537305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537305 := by
  apply coveredState_split_literal (state := state_1537305) 4
    state_1537306 state_1537375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537306
  · exact cover_1537375
#print axioms cover_1537305

def state_1537304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 9)))
theorem cover_1537304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537304 := by
  apply coveredState_split_literal (state := state_1537304) 3
    state_1537305 state_1537454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537305
  · exact cover_1537454
#print axioms cover_1537304

def state_1537303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 9)))
theorem cover_1537303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537303 := by
  apply coveredState_split_literal (state := state_1537303) 2
    state_1537304 state_1537463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537304
  · exact cover_1537463
#print axioms cover_1537303

def state_1537273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 9)))
theorem cover_1537273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537273 := by
  apply coveredState_split_literal (state := state_1537273) 1
    state_1537274 state_1537303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537274
  · exact cover_1537303
#print axioms cover_1537273

def state_1536673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 9)))
theorem cover_1536673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536673 := by
  apply coveredState_split_literal (state := state_1536673) 0
    state_1536674 state_1537273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536674
  · exact cover_1537273
#print axioms cover_1536673

def state_1536495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 4)))
theorem cover_1536495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536495 := by
  apply coveredState_split_literal (state := state_1536495) 4
    state_1536496 state_1536673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536496
  · exact cover_1536673
#print axioms cover_1536495

def state_1536494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 4)))
theorem cover_1536494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536494 := by
  apply coveredState_split_literal (state := state_1536494) 3
    state_1536495 state_1537500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536495
  · exact cover_1537500
#print axioms cover_1536494

def state_1536126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1536126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536126 := by
  apply coveredState_split_literal (state := state_1536126) 2
    state_1536127 state_1536494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536127
  · exact cover_1536494
#print axioms cover_1536126

def state_1536102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1536102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536102 := by
  apply coveredState_split_literal (state := state_1536102) 1
    state_1536103 state_1536126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536103
  · exact cover_1536126
#print axioms cover_1536102

def state_1537519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1537519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537519 := by
  apply coveredState_split_literal (state := state_1537519) 2
    state_1537520 state_1537523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537520
  · exact cover_1537523
#print axioms cover_1537519
end Mub6.Numerical.CircleFullD0.Forest
