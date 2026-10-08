import D0FullInterface
import D0ForestChunk0012
import D0ForestChunk0013
import D0ForestChunk0014
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
def state_1302306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1302306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302306 := by
  apply coveredState_split_literal (state := state_1302306) 1
    state_1302307 state_1302352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302307
  · exact cover_1302352
#print axioms cover_1302306

def state_1302305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1302305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302305 := by
  apply coveredState_split_literal (state := state_1302305) 0
    state_1302306 state_1303335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302306
  · exact cover_1303335
#print axioms cover_1302305

def state_1302304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1302304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302304 := by
  apply coveredState_split_literal (state := state_1302304) 4
    state_1302305 state_1303432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1302305
  · exact cover_1303432
#print axioms cover_1302304

def state_1301980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1301980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1301980 := by
  apply coveredState_split_literal (state := state_1301980) 3
    state_1301981 state_1302304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1301981
  · exact cover_1302304
#print axioms cover_1301980

def state_1305501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 22)))
theorem cover_1305501 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305501 := by
  apply coveredState_split_literal (state := state_1305501) 4
    state_1305502 state_1306273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305502
  · exact cover_1306273
#print axioms cover_1305501

def state_1305500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 22) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 22)))
theorem cover_1305500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305500 := by
  apply coveredState_split_literal (state := state_1305500) 1
    state_1305501 state_1306650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305501
  · exact cover_1306650
#print axioms cover_1305500

def state_1305499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 22)))
theorem cover_1305499 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305499 := by
  apply coveredState_split_literal (state := state_1305499) 2
    state_1305500 state_1306681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305500
  · exact cover_1306681
#print axioms cover_1305499

def state_1305498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 22)))
theorem cover_1305498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305498 := by
  apply coveredState_split_literal (state := state_1305498) 0
    state_1305499 state_1306738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305499
  · exact cover_1306738
#print axioms cover_1305498

def state_1305326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 22)))
theorem cover_1305326 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305326 := by
  apply coveredState_split_literal (state := state_1305326) 3
    state_1305327 state_1305498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305327
  · exact cover_1305498
#print axioms cover_1305326

def state_1305325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 11)))
theorem cover_1305325 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305325 := by
  apply coveredState_split_literal (state := state_1305325) 4
    state_1305326 state_1307297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305326
  · exact cover_1307297
#print axioms cover_1305325

def state_1305324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
theorem cover_1305324 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305324 := by
  apply coveredState_split_literal (state := state_1305324) 2
    state_1305325 state_1307656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305325
  · exact cover_1307656
#print axioms cover_1305324

def state_1305323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
theorem cover_1305323 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305323 := by
  apply coveredState_split_literal (state := state_1305323) 1
    state_1305324 state_1307701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305324
  · exact cover_1307701
#print axioms cover_1305323

def state_1305322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_1305322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305322 := by
  apply coveredState_split_literal (state := state_1305322) 3
    state_1305323 state_1307750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305323
  · exact cover_1307750
#print axioms cover_1305322

def state_1307921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_1307921 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307921 := by
  apply coveredState_split_literal (state := state_1307921) 3
    state_1307922 state_1308147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307922
  · exact cover_1308147
#print axioms cover_1307921

def state_1305321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_1305321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305321 := by
  apply coveredState_split_literal (state := state_1305321) 0
    state_1305322 state_1307921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305322
  · exact cover_1307921
#print axioms cover_1305321

def state_1305235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 5)))
theorem cover_1305235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305235 := by
  apply coveredState_split_literal (state := state_1305235) 4
    state_1305236 state_1305321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305236
  · exact cover_1305321
#print axioms cover_1305235

def state_1305234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1305234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305234 := by
  apply coveredState_split_literal (state := state_1305234) 2
    state_1305235 state_1309076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305235
  · exact cover_1309076
#print axioms cover_1305234

def state_1304268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1304268 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304268 := by
  apply coveredState_split_literal (state := state_1304268) 1
    state_1304269 state_1305234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304269
  · exact cover_1305234
#print axioms cover_1304268

def state_1304260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_1304260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304260 := by
  apply coveredState_split_literal (state := state_1304260) 4
    state_1304261 state_1304268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304261
  · exact cover_1304268
#print axioms cover_1304260

def state_1304200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1304200 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304200 := by
  apply coveredState_split_literal (state := state_1304200) 3
    state_1304201 state_1304260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304201
  · exact cover_1304260
#print axioms cover_1304200

def state_1304199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1304199 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304199 := by
  apply coveredState_split_literal (state := state_1304199) 2
    state_1304200 state_1309151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304200
  · exact cover_1309151
#print axioms cover_1304199

def state_1304155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1304155 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304155 := by
  apply coveredState_split_literal (state := state_1304155) 1
    state_1304156 state_1304199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304156
  · exact cover_1304199
#print axioms cover_1304155

def state_1304154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1304154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304154 := by
  apply coveredState_split_literal (state := state_1304154) 0
    state_1304155 state_1309166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304155
  · exact cover_1309166
#print axioms cover_1304154

def state_1309758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1309758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309758 := by
  apply coveredState_split_literal (state := state_1309758) 0
    state_1309759 state_1309834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309759
  · exact cover_1309834
#print axioms cover_1309758

def state_1309757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_1309757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309757 := by
  apply coveredState_split_literal (state := state_1309757) 4
    state_1309758 state_1310851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309758
  · exact cover_1310851
#print axioms cover_1309757

def state_1309756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1309756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309756 := by
  apply coveredState_split_literal (state := state_1309756) 2
    state_1309757 state_1310868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309757
  · exact cover_1310868
#print axioms cover_1309756

def state_1309622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1309622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309622 := by
  apply coveredState_split_literal (state := state_1309622) 1
    state_1309623 state_1309756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309623
  · exact cover_1309756
#print axioms cover_1309622

def state_1309621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_1309621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309621 := by
  apply coveredState_split_literal (state := state_1309621) 4
    state_1309622 state_1310959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309622
  · exact cover_1310959
#print axioms cover_1309621

def state_1309605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1309605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309605 := by
  apply coveredState_split_literal (state := state_1309605) 3
    state_1309606 state_1309621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309606
  · exact cover_1309621
#print axioms cover_1309605

def state_1309604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1309604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309604 := by
  apply coveredState_split_literal (state := state_1309604) 2
    state_1309605 state_1310964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309605
  · exact cover_1310964
#print axioms cover_1309604

def state_1309594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1309594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309594 := by
  apply coveredState_split_literal (state := state_1309594) 1
    state_1309595 state_1309604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309595
  · exact cover_1309604
#print axioms cover_1309594

def state_1311085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1311085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311085 := by
  apply coveredState_split_literal (state := state_1311085) 2
    state_1311086 state_1312019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311086
  · exact cover_1312019
#print axioms cover_1311085

def state_1310973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1310973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310973 := by
  apply coveredState_split_literal (state := state_1310973) 1
    state_1310974 state_1311085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310974
  · exact cover_1311085
#print axioms cover_1310973

def state_1309593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1309593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309593 := by
  apply coveredState_split_literal (state := state_1309593) 0
    state_1309594 state_1310973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309594
  · exact cover_1310973
#print axioms cover_1309593

def state_1304153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1304153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304153 := by
  apply coveredState_split_literal (state := state_1304153) 4
    state_1304154 state_1309593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304154
  · exact cover_1309593
#print axioms cover_1304153

def state_1303681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1303681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303681 := by
  apply coveredState_split_literal (state := state_1303681) 3
    state_1303682 state_1304153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303682
  · exact cover_1304153
#print axioms cover_1303681

def state_1301979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1301979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1301979 := by
  apply coveredState_split_literal (state := state_1301979) 2
    state_1301980 state_1303681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1301980
  · exact cover_1303681
#print axioms cover_1301979

def state_1313902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_1313902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313902 := by
  apply coveredState_split_literal (state := state_1313902) 2
    state_1313903 state_1314898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313903
  · exact cover_1314898
#print axioms cover_1313902

def state_1313901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_1313901 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313901 := by
  apply coveredState_split_literal (state := state_1313901) 1
    state_1313902 state_1314935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313902
  · exact cover_1314935
#print axioms cover_1313901

def state_1313881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_1313881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313881 := by
  apply coveredState_split_literal (state := state_1313881) 4
    state_1313882 state_1313901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313882
  · exact cover_1313901
#print axioms cover_1313881

def state_1313880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1313880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313880 := by
  apply coveredState_split_literal (state := state_1313880) 3
    state_1313881 state_1315010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313881
  · exact cover_1315010
#print axioms cover_1313880

def state_1313782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1313782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313782 := by
  apply coveredState_split_literal (state := state_1313782) 0
    state_1313783 state_1313880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313783
  · exact cover_1313880
#print axioms cover_1313782

def state_1313776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_1313776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313776 := by
  apply coveredState_split_literal (state := state_1313776) 4
    state_1313777 state_1313782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313777
  · exact cover_1313782
#print axioms cover_1313776

def state_1313775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_1313775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313775 := by
  apply coveredState_split_literal (state := state_1313775) 3
    state_1313776 state_1315137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313776
  · exact cover_1315137
#print axioms cover_1313775

def state_1313774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1313774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313774 := by
  apply coveredState_split_literal (state := state_1313774) 2
    state_1313775 state_1315138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313775
  · exact cover_1315138
#print axioms cover_1313774

def state_1312796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1312796 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312796 := by
  apply coveredState_split_literal (state := state_1312796) 1
    state_1312797 state_1313774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312797
  · exact cover_1313774
#print axioms cover_1312796

def state_1312606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1312606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312606 := by
  apply coveredState_split_literal (state := state_1312606) 0
    state_1312607 state_1312796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312607
  · exact cover_1312796
#print axioms cover_1312606

def state_1315705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1315705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315705 := by
  apply coveredState_split_literal (state := state_1315705) 2
    state_1315706 state_1316631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315706
  · exact cover_1316631
#print axioms cover_1315705

def state_1318135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 25)))
theorem cover_1318135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318135 := by
  apply coveredState_split_literal (state := state_1318135) 4
    state_1318136 state_1318513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318136
  · exact cover_1318513
#print axioms cover_1318135

def state_1318103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1318103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318103 := by
  apply coveredState_split_literal (state := state_1318103) 3
    state_1318104 state_1318135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318104
  · exact cover_1318135
#print axioms cover_1318103

def state_1318045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1318045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318045 := by
  apply coveredState_split_literal (state := state_1318045) 0
    state_1318046 state_1318103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318046
  · exact cover_1318103
#print axioms cover_1318045

def state_1317485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1317485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317485 := by
  apply coveredState_split_literal (state := state_1317485) 1
    state_1317486 state_1318045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317486
  · exact cover_1318045
#print axioms cover_1317485

def state_1317484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 25)))
theorem cover_1317484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317484 := by
  apply coveredState_split_literal (state := state_1317484) 2
    state_1317485 state_1319284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317485
  · exact cover_1319284
#print axioms cover_1317484

def state_1317124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 12)))
theorem cover_1317124 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317124 := by
  apply coveredState_split_literal (state := state_1317124) 4
    state_1317125 state_1317484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317125
  · exact cover_1317484
#print axioms cover_1317124

def state_1317080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1317080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317080 := by
  apply coveredState_split_literal (state := state_1317080) 3
    state_1317081 state_1317124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317081
  · exact cover_1317124
#print axioms cover_1317080

def state_1317030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1317030 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317030 := by
  apply coveredState_split_literal (state := state_1317030) 0
    state_1317031 state_1317080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317031
  · exact cover_1317080
#print axioms cover_1317030

def state_1316856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1316856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316856 := by
  apply coveredState_split_literal (state := state_1316856) 2
    state_1316857 state_1317030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316857
  · exact cover_1317030
#print axioms cover_1316856

def state_1315704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1315704 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315704 := by
  apply coveredState_split_literal (state := state_1315704) 1
    state_1315705 state_1316856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315705
  · exact cover_1316856
#print axioms cover_1315704

def state_1315703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_1315703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315703 := by
  apply coveredState_split_literal (state := state_1315703) 4
    state_1315704 state_1319455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315704
  · exact cover_1319455
#print axioms cover_1315703

def state_1315702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1315702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315702 := by
  apply coveredState_split_literal (state := state_1315702) 3
    state_1315703 state_1319538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315703
  · exact cover_1319538
#print axioms cover_1315702

def state_1315608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1315608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315608 := by
  apply coveredState_split_literal (state := state_1315608) 0
    state_1315609 state_1315702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315609
  · exact cover_1315702
#print axioms cover_1315608

def state_1315607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_1315607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315607 := by
  apply coveredState_split_literal (state := state_1315607) 4
    state_1315608 state_1320485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315608
  · exact cover_1320485
#print axioms cover_1315607

def state_1315606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_1315606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315606 := by
  apply coveredState_split_literal (state := state_1315606) 3
    state_1315607 state_1320492
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315607
  · exact cover_1320492
#print axioms cover_1315606

def state_1315605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1315605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315605 := by
  apply coveredState_split_literal (state := state_1315605) 2
    state_1315606 state_1320511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315606
  · exact cover_1320511
#print axioms cover_1315605
end Mub6.Numerical.CircleFullD0.Forest
