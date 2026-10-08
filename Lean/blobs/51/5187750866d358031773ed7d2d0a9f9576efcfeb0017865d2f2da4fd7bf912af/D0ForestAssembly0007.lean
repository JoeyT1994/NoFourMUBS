import D0FullInterface
import D0ForestAssembly0006
import D0ForestChunk0013
import D0ForestChunk0014
import D0ForestChunk0015
import D0ForestChunk0016
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1315251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1315251 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315251 := by
  apply coveredState_split_literal (state := state_1315251) 1
    state_1315252 state_1315605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315252
  · exact cover_1315605
#print axioms cover_1315251

def state_1315155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1315155 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315155 := by
  apply coveredState_split_literal (state := state_1315155) 0
    state_1315156 state_1315251
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315156
  · exact cover_1315251
#print axioms cover_1315155

def state_1312605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1312605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312605 := by
  apply coveredState_split_literal (state := state_1312605) 4
    state_1312606 state_1315155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312606
  · exact cover_1315155
#print axioms cover_1312605

def state_1312133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1312133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312133 := by
  apply coveredState_split_literal (state := state_1312133) 3
    state_1312134 state_1312605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312134
  · exact cover_1312605
#print axioms cover_1312133

def state_1321243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_1321243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321243 := by
  apply coveredState_split_literal (state := state_1321243) 3
    state_1321244 state_1322117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321244
  · exact cover_1322117
#print axioms cover_1321243

def state_1321242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_1321242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321242 := by
  apply coveredState_split_literal (state := state_1321242) 0
    state_1321243 state_1322428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321243
  · exact cover_1322428
#print axioms cover_1321242

def state_1321192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_1321192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321192 := by
  apply coveredState_split_literal (state := state_1321192) 4
    state_1321193 state_1321242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321193
  · exact cover_1321242
#print axioms cover_1321192

def state_1321088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_1321088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321088 := by
  apply coveredState_split_literal (state := state_1321088) 3
    state_1321089 state_1321192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321089
  · exact cover_1321192
#print axioms cover_1321088

def state_1321036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1321036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321036 := by
  apply coveredState_split_literal (state := state_1321036) 2
    state_1321037 state_1321088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321037
  · exact cover_1321088
#print axioms cover_1321036

def state_1320944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1320944 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320944 := by
  apply coveredState_split_literal (state := state_1320944) 1
    state_1320945 state_1321036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320945
  · exact cover_1321036
#print axioms cover_1320944

def state_1320586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1320586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320586 := by
  apply coveredState_split_literal (state := state_1320586) 0
    state_1320587 state_1320944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320587
  · exact cover_1320944
#print axioms cover_1320586

def state_1323696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_1323696 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323696 := by
  apply coveredState_split_literal (state := state_1323696) 2
    state_1323697 state_1324000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323697
  · exact cover_1324000
#print axioms cover_1323696

def state_1323060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_1323060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323060 := by
  apply coveredState_split_literal (state := state_1323060) 1
    state_1323061 state_1323696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323061
  · exact cover_1323696
#print axioms cover_1323060

def state_1323059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_1323059 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323059 := by
  apply coveredState_split_literal (state := state_1323059) 4
    state_1323060 state_1324873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323060
  · exact cover_1324873
#print axioms cover_1323059

def state_1323058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_1323058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323058 := by
  apply coveredState_split_literal (state := state_1323058) 3
    state_1323059 state_1324922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323059
  · exact cover_1324922
#print axioms cover_1323058

def state_1323057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1323057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323057 := by
  apply coveredState_split_literal (state := state_1323057) 2
    state_1323058 state_1324965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323058
  · exact cover_1324965
#print axioms cover_1323057

def state_1323056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1323056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323056 := by
  apply coveredState_split_literal (state := state_1323056) 1
    state_1323057 state_1325100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323057
  · exact cover_1325100
#print axioms cover_1323056

def state_1323055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1323055 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323055 := by
  apply coveredState_split_literal (state := state_1323055) 0
    state_1323056 state_1325335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323056
  · exact cover_1325335
#print axioms cover_1323055

def state_1320585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1320585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320585 := by
  apply coveredState_split_literal (state := state_1320585) 4
    state_1320586 state_1323055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320586
  · exact cover_1323055
#print axioms cover_1320585

def state_1320584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1320584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320584 := by
  apply coveredState_split_literal (state := state_1320584) 3
    state_1320585 state_1325518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320585
  · exact cover_1325518
#print axioms cover_1320584

def state_1312132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1312132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312132 := by
  apply coveredState_split_literal (state := state_1312132) 2
    state_1312133 state_1320584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312133
  · exact cover_1320584
#print axioms cover_1312132

def state_1301978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1301978 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1301978 := by
  apply coveredState_split_literal (state := state_1301978) 1
    state_1301979 state_1312132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1301979
  · exact cover_1312132
#print axioms cover_1301978

def state_1326001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1326001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326001 := by
  apply coveredState_split_literal (state := state_1326001) 0
    state_1326002 state_1326317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326002
  · exact cover_1326317
#print axioms cover_1326001

def state_1326000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1326000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326000 := by
  apply coveredState_split_literal (state := state_1326000) 4
    state_1326001 state_1327122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326001
  · exact cover_1327122
#print axioms cover_1326000

def state_1325999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1325999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325999 := by
  apply coveredState_split_literal (state := state_1325999) 3
    state_1326000 state_1327363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1326000
  · exact cover_1327363
#print axioms cover_1325999

def state_1328614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1328614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328614 := by
  apply coveredState_split_literal (state := state_1328614) 2
    state_1328615 state_1329596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328615
  · exact cover_1329596
#print axioms cover_1328614

def state_1328613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1328613 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328613 := by
  apply coveredState_split_literal (state := state_1328613) 1
    state_1328614 state_1329647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328614
  · exact cover_1329647
#print axioms cover_1328613

def state_1328597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 5)))
theorem cover_1328597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328597 := by
  apply coveredState_split_literal (state := state_1328597) 4
    state_1328598 state_1328613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328598
  · exact cover_1328613
#print axioms cover_1328597

def state_1328505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_1328505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328505 := by
  apply coveredState_split_literal (state := state_1328505) 3
    state_1328506 state_1328597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328506
  · exact cover_1328597
#print axioms cover_1328505

def state_1328504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_1328504 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328504 := by
  apply coveredState_split_literal (state := state_1328504) 0
    state_1328505 state_1329706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328505
  · exact cover_1329706
#print axioms cover_1328504

def state_1328498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_1328498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328498 := by
  apply coveredState_split_literal (state := state_1328498) 4
    state_1328499 state_1328504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328499
  · exact cover_1328504
#print axioms cover_1328498

def state_1328490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_1328490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328490 := by
  apply coveredState_split_literal (state := state_1328490) 3
    state_1328491 state_1328498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328491
  · exact cover_1328498
#print axioms cover_1328490

def state_1327474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1327474 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327474 := by
  apply coveredState_split_literal (state := state_1327474) 2
    state_1327475 state_1328490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327475
  · exact cover_1328490
#print axioms cover_1327474

def state_1327473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1327473 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327473 := by
  apply coveredState_split_literal (state := state_1327473) 1
    state_1327474 state_1329843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327474
  · exact cover_1329843
#print axioms cover_1327473

def state_1327472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1327472 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327472 := by
  apply coveredState_split_literal (state := state_1327472) 0
    state_1327473 state_1329892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327473
  · exact cover_1329892
#print axioms cover_1327472

def state_1330465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 12)))
theorem cover_1330465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330465 := by
  apply coveredState_split_literal (state := state_1330465) 2
    state_1330466 state_1331395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330466
  · exact cover_1331395
#print axioms cover_1330465

def state_1332897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 25)))
theorem cover_1332897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332897 := by
  apply coveredState_split_literal (state := state_1332897) 4
    state_1332898 state_1333275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332898
  · exact cover_1333275
#print axioms cover_1332897

def state_1332865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 25)))
theorem cover_1332865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332865 := by
  apply coveredState_split_literal (state := state_1332865) 0
    state_1332866 state_1332897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332866
  · exact cover_1332897
#print axioms cover_1332865

def state_1332807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 23 else 25)))
theorem cover_1332807 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332807 := by
  apply coveredState_split_literal (state := state_1332807) 3
    state_1332808 state_1332865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332808
  · exact cover_1332865
#print axioms cover_1332807

def state_1332247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 25)))
theorem cover_1332247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332247 := by
  apply coveredState_split_literal (state := state_1332247) 2
    state_1332248 state_1332807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332248
  · exact cover_1332807
#print axioms cover_1332247

def state_1332246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 25)))
theorem cover_1332246 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332246 := by
  apply coveredState_split_literal (state := state_1332246) 1
    state_1332247 state_1334046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332247
  · exact cover_1334046
#print axioms cover_1332246

def state_1331886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 12)))
theorem cover_1331886 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331886 := by
  apply coveredState_split_literal (state := state_1331886) 4
    state_1331887 state_1332246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331887
  · exact cover_1332246
#print axioms cover_1331886

def state_1331840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 12)))
theorem cover_1331840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331840 := by
  apply coveredState_split_literal (state := state_1331840) 3
    state_1331841 state_1331886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331841
  · exact cover_1331886
#print axioms cover_1331840

def state_1331790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 12)))
theorem cover_1331790 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331790 := by
  apply coveredState_split_literal (state := state_1331790) 0
    state_1331791 state_1331840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331791
  · exact cover_1331840
#print axioms cover_1331790

def state_1331556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 12)))
theorem cover_1331556 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331556 := by
  apply coveredState_split_literal (state := state_1331556) 2
    state_1331557 state_1331790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331557
  · exact cover_1331790
#print axioms cover_1331556

def state_1330464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 12)))
theorem cover_1330464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330464 := by
  apply coveredState_split_literal (state := state_1330464) 1
    state_1330465 state_1331556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330465
  · exact cover_1331556
#print axioms cover_1330464

def state_1330463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 6)))
theorem cover_1330463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330463 := by
  apply coveredState_split_literal (state := state_1330463) 4
    state_1330464 state_1334217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330464
  · exact cover_1334217
#print axioms cover_1330463

def state_1330387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_1330387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330387 := by
  apply coveredState_split_literal (state := state_1330387) 3
    state_1330388 state_1330463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330388
  · exact cover_1330463
#print axioms cover_1330387

def state_1330386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_1330386 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330386 := by
  apply coveredState_split_literal (state := state_1330386) 0
    state_1330387 state_1334302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330387
  · exact cover_1334302
#print axioms cover_1330386

def state_1330385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_1330385 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330385 := by
  apply coveredState_split_literal (state := state_1330385) 4
    state_1330386 state_1335253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330386
  · exact cover_1335253
#print axioms cover_1330385

def state_1330373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_1330373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330373 := by
  apply coveredState_split_literal (state := state_1330373) 3
    state_1330374 state_1330385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330374
  · exact cover_1330385
#print axioms cover_1330373

def state_1330009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1330009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330009 := by
  apply coveredState_split_literal (state := state_1330009) 2
    state_1330010 state_1330373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330010
  · exact cover_1330373
#print axioms cover_1330009

def state_1330008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1330008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330008 := by
  apply coveredState_split_literal (state := state_1330008) 1
    state_1330009 state_1335260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330009
  · exact cover_1335260
#print axioms cover_1330008

def state_1330007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1330007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330007 := by
  apply coveredState_split_literal (state := state_1330007) 0
    state_1330008 state_1335353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330008
  · exact cover_1335353
#print axioms cover_1330007

def state_1327471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1327471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327471 := by
  apply coveredState_split_literal (state := state_1327471) 4
    state_1327472 state_1330007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327472
  · exact cover_1330007
#print axioms cover_1327471

def state_1335677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1335677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335677 := by
  apply coveredState_split_literal (state := state_1335677) 1
    state_1335678 state_1336469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335678
  · exact cover_1336469
#print axioms cover_1335677

def state_1335676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1335676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335676 := by
  apply coveredState_split_literal (state := state_1335676) 0
    state_1335677 state_1336742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335677
  · exact cover_1336742
#print axioms cover_1335676

def state_1335428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1335428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335428 := by
  apply coveredState_split_literal (state := state_1335428) 4
    state_1335429 state_1335676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335429
  · exact cover_1335676
#print axioms cover_1335428

def state_1327470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1327470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327470 := by
  apply coveredState_split_literal (state := state_1327470) 3
    state_1327471 state_1335428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327471
  · exact cover_1335428
#print axioms cover_1327470

def state_1325998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1325998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325998 := by
  apply coveredState_split_literal (state := state_1325998) 2
    state_1325999 state_1327470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325999
  · exact cover_1327470
#print axioms cover_1325998

def state_1338185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 22)))
theorem cover_1338185 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338185 := by
  apply coveredState_split_literal (state := state_1338185) 4
    state_1338186 state_1338957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338186
  · exact cover_1338957
#print axioms cover_1338185

def state_1338184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1338184 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338184 := by
  apply coveredState_split_literal (state := state_1338184) 2
    state_1338185 state_1339334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338185
  · exact cover_1339334
#print axioms cover_1338184

def state_1338183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1338183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338183 := by
  apply coveredState_split_literal (state := state_1338183) 1
    state_1338184 state_1339365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338184
  · exact cover_1339365
#print axioms cover_1338183

def state_1338182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
theorem cover_1338182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338182 := by
  apply coveredState_split_literal (state := state_1338182) 3
    state_1338183 state_1339422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338183
  · exact cover_1339422
#print axioms cover_1338182
end Mub6.Numerical.CircleFullD0.Forest
