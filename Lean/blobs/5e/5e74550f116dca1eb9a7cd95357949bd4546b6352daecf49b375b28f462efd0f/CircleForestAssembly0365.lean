import CircleFullInterface
import CircleForestAssembly0364
import CircleForestChunk1417
import CircleForestChunk1418
import CircleForestChunk1419
import CircleForestChunk1420
import CircleForestChunk1421
import CircleForestChunk1422
import CircleForestChunk1423
import CircleForestChunk1424
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1641037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 20)))
theorem cover_1641037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641037 := by
  apply coveredState_split_literal (state := state_1641037) 1
    state_1641038 state_1641085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641038
  · exact cover_1641085
#print axioms cover_1641037

def state_1640991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 20)))
theorem cover_1640991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640991 := by
  apply coveredState_split_literal (state := state_1640991) 2
    state_1640992 state_1641037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640992
  · exact cover_1641037
#print axioms cover_1640991

def state_1640990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 10)))
theorem cover_1640990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640990 := by
  apply coveredState_split_literal (state := state_1640990) 4
    state_1640991 state_1641502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640991
  · exact cover_1641502
#print axioms cover_1640990

def state_1640894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 10)))
theorem cover_1640894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640894 := by
  apply coveredState_split_literal (state := state_1640894) 0
    state_1640895 state_1640990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640895
  · exact cover_1640990
#print axioms cover_1640894

def state_1640880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 10)))
theorem cover_1640880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640880 := by
  apply coveredState_split_literal (state := state_1640880) 3
    state_1640881 state_1640894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640881
  · exact cover_1640894
#print axioms cover_1640880

def state_1641585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 51 else 20)))
theorem cover_1641585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641585 := by
  apply coveredState_split_literal (state := state_1641585) 2
    state_1641586 state_1641641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641586
  · exact cover_1641641
#print axioms cover_1641585

def state_1641543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 20)))
theorem cover_1641543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641543 := by
  apply coveredState_split_literal (state := state_1641543) 3
    state_1641544 state_1641585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641544
  · exact cover_1641585
#print axioms cover_1641543

def state_1641542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 20)))
theorem cover_1641542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641542 := by
  apply coveredState_split_literal (state := state_1641542) 1
    state_1641543 state_1641698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641543
  · exact cover_1641698
#print axioms cover_1641542

def state_1641743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 20)))
theorem cover_1641743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641743 := by
  apply coveredState_split_literal (state := state_1641743) 1
    state_1641744 state_1641799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641744
  · exact cover_1641799
#print axioms cover_1641743

def state_1641541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 20)))
theorem cover_1641541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641541 := by
  apply coveredState_split_literal (state := state_1641541) 2
    state_1641542 state_1641743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641542
  · exact cover_1641743
#print axioms cover_1641541

def state_1641540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 10)))
theorem cover_1641540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641540 := by
  apply coveredState_split_literal (state := state_1641540) 4
    state_1641541 state_1641826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641541
  · exact cover_1641826
#print axioms cover_1641540

def state_1641936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 57 else (if j.val < 4 then 51 else 40)))
theorem cover_1641936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641936 := by
  apply coveredState_split_literal (state := state_1641936) 3
    state_1641937 state_1641958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641937
  · exact cover_1641958
#print axioms cover_1641936

def state_1641884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 51 else 40)))
theorem cover_1641884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641884 := by
  apply coveredState_split_literal (state := state_1641884) 1
    state_1641885 state_1641936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641885
  · exact cover_1641936
#print axioms cover_1641884

def state_1641883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 51 else 20)))
theorem cover_1641883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641883 := by
  apply coveredState_split_literal (state := state_1641883) 4
    state_1641884 state_1642005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641884
  · exact cover_1642005
#print axioms cover_1641883

def state_1641865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 51 else 20)))
theorem cover_1641865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641865 := by
  apply coveredState_split_literal (state := state_1641865) 2
    state_1641866 state_1641883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641866
  · exact cover_1641883
#print axioms cover_1641865

def state_1641864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 51 else 20)))
theorem cover_1641864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641864 := by
  apply coveredState_split_literal (state := state_1641864) 0
    state_1641865 state_1642032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641865
  · exact cover_1642032
#print axioms cover_1641864

def state_1641846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 20)))
theorem cover_1641846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641846 := by
  apply coveredState_split_literal (state := state_1641846) 3
    state_1641847 state_1641864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641847
  · exact cover_1641864
#print axioms cover_1641846

def state_1641845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 20)))
theorem cover_1641845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641845 := by
  apply coveredState_split_literal (state := state_1641845) 1
    state_1641846 state_1642039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641846
  · exact cover_1642039
#print axioms cover_1641845

def state_1642148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 102 else 40)))
theorem cover_1642148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642148 := by
  apply coveredState_split_literal (state := state_1642148) 2
    state_1642149 state_1642166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642149
  · exact cover_1642166
#print axioms cover_1642148

def state_1642108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 102 else 40)))
theorem cover_1642108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642108 := by
  apply coveredState_split_literal (state := state_1642108) 0
    state_1642109 state_1642148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642109
  · exact cover_1642148
#print axioms cover_1642108

def state_1642233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 103 else 40)))
theorem cover_1642233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642233 := by
  apply coveredState_split_literal (state := state_1642233) 2
    state_1642234 state_1642265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642234
  · exact cover_1642265
#print axioms cover_1642233

def state_1642213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 103 else 40)))
theorem cover_1642213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642213 := by
  apply coveredState_split_literal (state := state_1642213) 0
    state_1642214 state_1642233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642214
  · exact cover_1642233
#print axioms cover_1642213

def state_1642107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 40)))
theorem cover_1642107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642107 := by
  apply coveredState_split_literal (state := state_1642107) 3
    state_1642108 state_1642213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642108
  · exact cover_1642213
#print axioms cover_1642107

def state_1642410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 101) else (if j.val < 3 then 58 else (if j.val < 4 then 103 else 40)))
theorem cover_1642410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642410 := by
  apply coveredState_split_literal (state := state_1642410) 2
    state_1642411 state_1642442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642411
  · exact cover_1642442
#print axioms cover_1642410

def state_1642390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 58 else (if j.val < 4 then 103 else 40)))
theorem cover_1642390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642390 := by
  apply coveredState_split_literal (state := state_1642390) 0
    state_1642391 state_1642410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642391
  · exact cover_1642410
#print axioms cover_1642390

def state_1642328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 40)))
theorem cover_1642328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642328 := by
  apply coveredState_split_literal (state := state_1642328) 3
    state_1642329 state_1642390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642329
  · exact cover_1642390
#print axioms cover_1642328

def state_1642106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 40)))
theorem cover_1642106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642106 := by
  apply coveredState_split_literal (state := state_1642106) 1
    state_1642107 state_1642328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642107
  · exact cover_1642328
#print axioms cover_1642106

def state_1642508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 103 else 41)))
theorem cover_1642508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642508 := by
  apply coveredState_split_literal (state := state_1642508) 0
    state_1642509 state_1642518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642509
  · exact cover_1642518
#print axioms cover_1642508

def state_1642502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 41)))
theorem cover_1642502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642502 := by
  apply coveredState_split_literal (state := state_1642502) 3
    state_1642503 state_1642508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642503
  · exact cover_1642508
#print axioms cover_1642502

def state_1642501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 41)))
theorem cover_1642501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642501 := by
  apply coveredState_split_literal (state := state_1642501) 1
    state_1642502 state_1642577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642502
  · exact cover_1642577
#print axioms cover_1642501

def state_1642105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 20)))
theorem cover_1642105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642105 := by
  apply coveredState_split_literal (state := state_1642105) 4
    state_1642106 state_1642501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642106
  · exact cover_1642501
#print axioms cover_1642105

def state_1642658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 81)))
theorem cover_1642658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642658 := by
  apply coveredState_split_literal (state := state_1642658) 2
    state_1642659 state_1642712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642659
  · exact cover_1642712
#print axioms cover_1642658
end Mub6.Numerical.CircleFullD0.Forest
