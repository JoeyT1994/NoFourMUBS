import CircleFullInterface
import CircleForestAssembly0084
import CircleForestAssembly0085
import CircleForestChunk0337
import CircleForestChunk0340
import CircleForestChunk0345
import CircleForestChunk0346
import CircleForestChunk0347
import CircleForestChunk0348
import CircleForestChunk0349
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_158306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 29 else (if j.val < 4 then 21 else 15)))
theorem cover_158306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158306 := by
  apply coveredState_split_literal (state := state_158306) 4
    state_158307 state_158358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158307
  · exact cover_158358
#print axioms cover_158306

def state_158284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 15)))
theorem cover_158284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158284 := by
  apply coveredState_split_literal (state := state_158284) 2
    state_158285 state_158306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158285
  · exact cover_158306
#print axioms cover_158284

def state_158016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 15)))
theorem cover_158016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158016 := by
  apply coveredState_split_literal (state := state_158016) 1
    state_158017 state_158284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158017
  · exact cover_158284
#print axioms cover_158016

def state_157332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 15)))
theorem cover_157332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157332 := by
  apply coveredState_split_literal (state := state_157332) 3
    state_157333 state_158016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157333
  · exact cover_158016
#print axioms cover_157332

def state_157331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 15)))
theorem cover_157331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157331 := by
  apply coveredState_split_literal (state := state_157331) 0
    state_157332 state_158383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157332
  · exact cover_158383
#print axioms cover_157331

def state_157095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 7)))
theorem cover_157095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157095 := by
  apply coveredState_split_literal (state := state_157095) 4
    state_157096 state_157331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157096
  · exact cover_157331
#print axioms cover_157095

def state_158424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 7)))
theorem cover_158424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158424 := by
  apply coveredState_split_literal (state := state_158424) 4
    state_158425 state_158432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158425
  · exact cover_158432
#print axioms cover_158424

def state_157094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_157094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157094 := by
  apply coveredState_split_literal (state := state_157094) 2
    state_157095 state_158424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157095
  · exact cover_158424
#print axioms cover_157094

def state_158491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_158491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158491 := by
  apply coveredState_split_literal (state := state_158491) 2
    state_158492 state_158539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158492
  · exact cover_158539
#print axioms cover_158491

def state_157093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_157093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157093 := by
  apply coveredState_split_literal (state := state_157093) 1
    state_157094 state_158491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157094
  · exact cover_158491
#print axioms cover_157093

def state_158579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 7)))
theorem cover_158579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158579 := by
  apply coveredState_split_literal (state := state_158579) 2
    state_158580 state_158635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158580
  · exact cover_158635
#print axioms cover_158579

def state_158578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 7)))
theorem cover_158578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158578 := by
  apply coveredState_split_literal (state := state_158578) 1
    state_158579 state_158668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158579
  · exact cover_158668
#print axioms cover_158578

def state_157092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_157092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157092 := by
  apply coveredState_split_literal (state := state_157092) 3
    state_157093 state_158578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157093
  · exact cover_158578
#print axioms cover_157092

def state_157091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_157091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157091 := by
  apply coveredState_split_literal (state := state_157091) 0
    state_157092 state_158685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157092
  · exact cover_158685
#print axioms cover_157091

def state_157061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_157061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157061 := by
  apply coveredState_split_literal (state := state_157061) 4
    state_157062 state_157091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157062
  · exact cover_157091
#print axioms cover_157061

def state_156995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_156995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156995 := by
  apply coveredState_split_literal (state := state_156995) 3
    state_156996 state_157061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156996
  · exact cover_157061
#print axioms cover_156995

def state_156815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_156815 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156815 := by
  apply coveredState_split_literal (state := state_156815) 2
    state_156816 state_156995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156816
  · exact cover_156995
#print axioms cover_156815

def state_156419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_156419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156419 := by
  apply coveredState_split_literal (state := state_156419) 1
    state_156420 state_156815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156420
  · exact cover_156815
#print axioms cover_156419

def state_156418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_156418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156418 := by
  apply coveredState_split_literal (state := state_156418) 0
    state_156419 state_158712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156419
  · exact cover_158712
#print axioms cover_156418

def state_156398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_156398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156398 := by
  apply coveredState_split_literal (state := state_156398) 4
    state_156399 state_156418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156399
  · exact cover_156418
#print axioms cover_156398

def state_158905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 10)))
theorem cover_158905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158905 := by
  apply coveredState_split_literal (state := state_158905) 3
    state_158906 state_158937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158906
  · exact cover_158937
#print axioms cover_158905

def state_158904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
theorem cover_158904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158904 := by
  apply coveredState_split_literal (state := state_158904) 2
    state_158905 state_158978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158905
  · exact cover_158978
#print axioms cover_158904

def state_158903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_158903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158903 := by
  apply coveredState_split_literal (state := state_158903) 4
    state_158904 state_158985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158904
  · exact cover_158985
#print axioms cover_158903

def state_158897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_158897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158897 := by
  apply coveredState_split_literal (state := state_158897) 1
    state_158898 state_158903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158898
  · exact cover_158903
#print axioms cover_158897

def state_158896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_158896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158896 := by
  apply coveredState_split_literal (state := state_158896) 0
    state_158897 state_158990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158897
  · exact cover_158990
#print axioms cover_158896

def state_158832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_158832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158832 := by
  apply coveredState_split_literal (state := state_158832) 4
    state_158833 state_158896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158833
  · exact cover_158896
#print axioms cover_158832

def state_158816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_158816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158816 := by
  apply coveredState_split_literal (state := state_158816) 3
    state_158817 state_158832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158817
  · exact cover_158832
#print axioms cover_158816

def state_158762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_158762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158762 := by
  apply coveredState_split_literal (state := state_158762) 2
    state_158763 state_158816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158763
  · exact cover_158816
#print axioms cover_158762

def state_159034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
theorem cover_159034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159034 := by
  apply coveredState_split_literal (state := state_159034) 2
    state_159035 state_159056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159035
  · exact cover_159056
#print axioms cover_159034

def state_159033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
theorem cover_159033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159033 := by
  apply coveredState_split_literal (state := state_159033) 0
    state_159034 state_159109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159034
  · exact cover_159109
#print axioms cover_159033

def state_159161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 10)))
theorem cover_159161 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159161 := by
  apply coveredState_split_literal (state := state_159161) 3
    state_159162 state_159199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159162
  · exact cover_159199
#print axioms cover_159161

def state_159160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 10)))
theorem cover_159160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159160 := by
  apply coveredState_split_literal (state := state_159160) 1
    state_159161 state_159262
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159161
  · exact cover_159262
#print axioms cover_159160
end Mub6.Numerical.CircleFullPrototype.Forest
