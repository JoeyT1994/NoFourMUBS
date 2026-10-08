import CircleFullInterface
import CircleForestAssembly0345
import CircleForestAssembly0346
import CircleForestAssembly0347
import CircleForestChunk1345
import CircleForestChunk1347
import CircleForestChunk1348
import CircleForestChunk1349
import CircleForestChunk1350
import CircleForestChunk1351
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1623726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 33)))
theorem cover_1623726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623726 := by
  apply coveredState_split_literal (state := state_1623726) 2
    state_1623727 state_1623816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623727
  · exact cover_1623816
#print axioms cover_1623726

def state_1623686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 33)))
theorem cover_1623686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623686 := by
  apply coveredState_split_literal (state := state_1623686) 1
    state_1623687 state_1623726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623687
  · exact cover_1623726
#print axioms cover_1623686

def state_1622222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 33)))
theorem cover_1622222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622222 := by
  apply coveredState_split_literal (state := state_1622222) 3
    state_1622223 state_1623686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622223
  · exact cover_1623686
#print axioms cover_1622222

def state_1621302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 16)))
theorem cover_1621302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621302 := by
  apply coveredState_split_literal (state := state_1621302) 4
    state_1621303 state_1622222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621303
  · exact cover_1622222
#print axioms cover_1621302

def state_1624122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 33)))
theorem cover_1624122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624122 := by
  apply coveredState_split_literal (state := state_1624122) 1
    state_1624123 state_1624138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624123
  · exact cover_1624138
#print axioms cover_1624122

def state_1624215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 33)))
theorem cover_1624215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624215 := by
  apply coveredState_split_literal (state := state_1624215) 2
    state_1624216 state_1624229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624216
  · exact cover_1624229
#print axioms cover_1624215

def state_1624197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 33)))
theorem cover_1624197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624197 := by
  apply coveredState_split_literal (state := state_1624197) 1
    state_1624198 state_1624215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624198
  · exact cover_1624215
#print axioms cover_1624197

def state_1624121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 33)))
theorem cover_1624121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624121 := by
  apply coveredState_split_literal (state := state_1624121) 3
    state_1624122 state_1624197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624122
  · exact cover_1624197
#print axioms cover_1624121

def state_1624075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 16)))
theorem cover_1624075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624075 := by
  apply coveredState_split_literal (state := state_1624075) 4
    state_1624076 state_1624121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624076
  · exact cover_1624121
#print axioms cover_1624075

def state_1621301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 16)))
theorem cover_1621301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621301 := by
  apply coveredState_split_literal (state := state_1621301) 0
    state_1621302 state_1624075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621302
  · exact cover_1624075
#print axioms cover_1621301

def state_1624353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 33)))
theorem cover_1624353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624353 := by
  apply coveredState_split_literal (state := state_1624353) 1
    state_1624354 state_1624381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624354
  · exact cover_1624381
#print axioms cover_1624353

def state_1624309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 33)))
theorem cover_1624309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624309 := by
  apply coveredState_split_literal (state := state_1624309) 3
    state_1624310 state_1624353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624310
  · exact cover_1624353
#print axioms cover_1624309

def state_1624291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 16)))
theorem cover_1624291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624291 := by
  apply coveredState_split_literal (state := state_1624291) 4
    state_1624292 state_1624309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624292
  · exact cover_1624309
#print axioms cover_1624291

def state_1624546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 33)))
theorem cover_1624546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624546 := by
  apply coveredState_split_literal (state := state_1624546) 4
    state_1624547 state_1624556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624547
  · exact cover_1624556
#print axioms cover_1624546

def state_1624545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 33)))
theorem cover_1624545 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624545 := by
  apply coveredState_split_literal (state := state_1624545) 0
    state_1624546 state_1624617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624546
  · exact cover_1624617
#print axioms cover_1624545

def state_1624544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 33)))
theorem cover_1624544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624544 := by
  apply coveredState_split_literal (state := state_1624544) 2
    state_1624545 state_1624624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624545
  · exact cover_1624624
#print axioms cover_1624544

def state_1624512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 33)))
theorem cover_1624512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624512 := by
  apply coveredState_split_literal (state := state_1624512) 1
    state_1624513 state_1624544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624513
  · exact cover_1624544
#print axioms cover_1624512

def state_1624462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 33)))
theorem cover_1624462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624462 := by
  apply coveredState_split_literal (state := state_1624462) 3
    state_1624463 state_1624512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624463
  · exact cover_1624512
#print axioms cover_1624462

def state_1624444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 16)))
theorem cover_1624444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624444 := by
  apply coveredState_split_literal (state := state_1624444) 4
    state_1624445 state_1624462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624445
  · exact cover_1624462
#print axioms cover_1624444

def state_1624290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 16)))
theorem cover_1624290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624290 := by
  apply coveredState_split_literal (state := state_1624290) 0
    state_1624291 state_1624444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624291
  · exact cover_1624444
#print axioms cover_1624290

def state_1621300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 16)))
theorem cover_1621300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621300 := by
  apply coveredState_split_literal (state := state_1621300) 2
    state_1621301 state_1624290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621301
  · exact cover_1624290
#print axioms cover_1621300

def state_1621208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 16)))
theorem cover_1621208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621208 := by
  apply coveredState_split_literal (state := state_1621208) 1
    state_1621209 state_1621300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621209
  · exact cover_1621300
#print axioms cover_1621208

def state_1624647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 49 else 16)))
theorem cover_1624647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624647 := by
  apply coveredState_split_literal (state := state_1624647) 2
    state_1624648 state_1624693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624648
  · exact cover_1624693
#print axioms cover_1624647

def state_1624643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 49 else 16)))
theorem cover_1624643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624643 := by
  apply coveredState_split_literal (state := state_1624643) 1
    state_1624644 state_1624647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624644
  · exact cover_1624647
#print axioms cover_1624643

def state_1621207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 16)))
theorem cover_1621207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621207 := by
  apply coveredState_split_literal (state := state_1621207) 3
    state_1621208 state_1624643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621208
  · exact cover_1624643
#print axioms cover_1621207

def state_1624738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 17)))
theorem cover_1624738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624738 := by
  apply coveredState_split_literal (state := state_1624738) 0
    state_1624739 state_1624782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624739
  · exact cover_1624782
#print axioms cover_1624738

def state_1624718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 17)))
theorem cover_1624718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624718 := by
  apply coveredState_split_literal (state := state_1624718) 2
    state_1624719 state_1624738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624719
  · exact cover_1624738
#print axioms cover_1624718

def state_1624849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 34)))
theorem cover_1624849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624849 := by
  apply coveredState_split_literal (state := state_1624849) 2
    state_1624850 state_1624863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624850
  · exact cover_1624863
#print axioms cover_1624849

def state_1624817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 34)))
theorem cover_1624817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624817 := by
  apply coveredState_split_literal (state := state_1624817) 1
    state_1624818 state_1624849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624818
  · exact cover_1624849
#print axioms cover_1624817

def state_1624970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 34)))
theorem cover_1624970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624970 := by
  apply coveredState_split_literal (state := state_1624970) 2
    state_1624971 state_1624982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624971
  · exact cover_1624982
#print axioms cover_1624970

def state_1624920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 34)))
theorem cover_1624920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624920 := by
  apply coveredState_split_literal (state := state_1624920) 1
    state_1624921 state_1624970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624921
  · exact cover_1624970
#print axioms cover_1624920

def state_1624816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 34)))
theorem cover_1624816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624816 := by
  apply coveredState_split_literal (state := state_1624816) 3
    state_1624817 state_1624920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624817
  · exact cover_1624920
#print axioms cover_1624816
end Mub6.Numerical.CircleFullD0.Forest
