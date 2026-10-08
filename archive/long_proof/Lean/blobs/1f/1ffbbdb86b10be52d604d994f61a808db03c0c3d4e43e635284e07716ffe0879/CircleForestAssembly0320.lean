import CircleFullInterface
import CircleForestAssembly0319
import CircleForestChunk1235
import CircleForestChunk1236
import CircleForestChunk1237
import CircleForestChunk1238
import CircleForestChunk1239
import CircleForestChunk1240
import CircleForestChunk1241
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1596715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_1596715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596715 := by
  apply coveredState_split_literal (state := state_1596715) 0
    state_1596716 state_1597071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596716
  · exact cover_1597071
#print axioms cover_1596715

def state_1596714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_1596714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596714 := by
  apply coveredState_split_literal (state := state_1596714) 4
    state_1596715 state_1597106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596715
  · exact cover_1597106
#print axioms cover_1596714

def state_1597169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 24)))
theorem cover_1597169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597169 := by
  apply coveredState_split_literal (state := state_1597169) 4
    state_1597170 state_1597183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597170
  · exact cover_1597183
#print axioms cover_1597169

def state_1597168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
theorem cover_1597168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597168 := by
  apply coveredState_split_literal (state := state_1597168) 3
    state_1597169 state_1597234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597169
  · exact cover_1597234
#print axioms cover_1597168

def state_1597167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
theorem cover_1597167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597167 := by
  apply coveredState_split_literal (state := state_1597167) 1
    state_1597168 state_1597259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597168
  · exact cover_1597259
#print axioms cover_1597167

def state_1597393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 49)))
theorem cover_1597393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597393 := by
  apply coveredState_split_literal (state := state_1597393) 1
    state_1597394 state_1597453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597394
  · exact cover_1597453
#print axioms cover_1597393

def state_1597392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 49)))
theorem cover_1597392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597392 := by
  apply coveredState_split_literal (state := state_1597392) 3
    state_1597393 state_1597484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597393
  · exact cover_1597484
#print axioms cover_1597392

def state_1597632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 99)))
theorem cover_1597632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597632 := by
  apply coveredState_split_literal (state := state_1597632) 0
    state_1597633 state_1597686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597633
  · exact cover_1597686
#print axioms cover_1597632

def state_1597586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 99)))
theorem cover_1597586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597586 := by
  apply coveredState_split_literal (state := state_1597586) 2
    state_1597587 state_1597632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597587
  · exact cover_1597632
#print axioms cover_1597586

def state_1597554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 49)))
theorem cover_1597554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597554 := by
  apply coveredState_split_literal (state := state_1597554) 4
    state_1597555 state_1597586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597555
  · exact cover_1597586
#print axioms cover_1597554

def state_1597553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 49)))
theorem cover_1597553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597553 := by
  apply coveredState_split_literal (state := state_1597553) 1
    state_1597554 state_1597717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597554
  · exact cover_1597717
#print axioms cover_1597553

def state_1597539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 49)))
theorem cover_1597539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597539 := by
  apply coveredState_split_literal (state := state_1597539) 3
    state_1597540 state_1597553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597540
  · exact cover_1597553
#print axioms cover_1597539

def state_1597391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 49)))
theorem cover_1597391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597391 := by
  apply coveredState_split_literal (state := state_1597391) 0
    state_1597392 state_1597539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597392
  · exact cover_1597539
#print axioms cover_1597391

def state_1597357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 49)))
theorem cover_1597357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597357 := by
  apply coveredState_split_literal (state := state_1597357) 2
    state_1597358 state_1597391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597358
  · exact cover_1597391
#print axioms cover_1597357

def state_1597309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 24)))
theorem cover_1597309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597309 := by
  apply coveredState_split_literal (state := state_1597309) 4
    state_1597310 state_1597357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597310
  · exact cover_1597357
#print axioms cover_1597309

def state_1597263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
theorem cover_1597263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597263 := by
  apply coveredState_split_literal (state := state_1597263) 3
    state_1597264 state_1597309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597264
  · exact cover_1597309
#print axioms cover_1597263

def state_1597262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
theorem cover_1597262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597262 := by
  apply coveredState_split_literal (state := state_1597262) 1
    state_1597263 state_1597774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597263
  · exact cover_1597774
#print axioms cover_1597262

def state_1597166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
theorem cover_1597166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597166 := by
  apply coveredState_split_literal (state := state_1597166) 0
    state_1597167 state_1597262
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597167
  · exact cover_1597262
#print axioms cover_1597166

def state_1597861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 50)))
theorem cover_1597861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597861 := by
  apply coveredState_split_literal (state := state_1597861) 3
    state_1597862 state_1597917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597862
  · exact cover_1597917
#print axioms cover_1597861

def state_1597860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 25)))
theorem cover_1597860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597860 := by
  apply coveredState_split_literal (state := state_1597860) 4
    state_1597861 state_1597974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597861
  · exact cover_1597974
#print axioms cover_1597860

def state_1597800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 25)))
theorem cover_1597800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597800 := by
  apply coveredState_split_literal (state := state_1597800) 2
    state_1597801 state_1597860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597801
  · exact cover_1597860
#print axioms cover_1597800

def state_1598015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 25)))
theorem cover_1598015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598015 := by
  apply coveredState_split_literal (state := state_1598015) 4
    state_1598016 state_1598067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598016
  · exact cover_1598067
#print axioms cover_1598015

def state_1597999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 25)))
theorem cover_1597999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597999 := by
  apply coveredState_split_literal (state := state_1597999) 2
    state_1598000 state_1598015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598000
  · exact cover_1598015
#print axioms cover_1597999

def state_1597799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1597799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597799 := by
  apply coveredState_split_literal (state := state_1597799) 3
    state_1597800 state_1597999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597800
  · exact cover_1597999
#print axioms cover_1597799

def state_1597798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1597798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597798 := by
  apply coveredState_split_literal (state := state_1597798) 1
    state_1597799 state_1598082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597799
  · exact cover_1598082
#print axioms cover_1597798

def state_1598192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 57 else 101)))
theorem cover_1598192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598192 := by
  apply coveredState_split_literal (state := state_1598192) 2
    state_1598193 state_1598214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598193
  · exact cover_1598214
#print axioms cover_1598192

def state_1598140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 57 else 50)))
theorem cover_1598140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598140 := by
  apply coveredState_split_literal (state := state_1598140) 4
    state_1598141 state_1598192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598141
  · exact cover_1598192
#print axioms cover_1598140

def state_1598139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 57 else 50)))
theorem cover_1598139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598139 := by
  apply coveredState_split_literal (state := state_1598139) 1
    state_1598140 state_1598261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598140
  · exact cover_1598261
#print axioms cover_1598139

def state_1598121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 50)))
theorem cover_1598121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598121 := by
  apply coveredState_split_literal (state := state_1598121) 3
    state_1598122 state_1598139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598122
  · exact cover_1598139
#print axioms cover_1598121

def state_1598120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 50)))
theorem cover_1598120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598120 := by
  apply coveredState_split_literal (state := state_1598120) 0
    state_1598121 state_1598288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598121
  · exact cover_1598288
#print axioms cover_1598120

def state_1598119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 25)))
theorem cover_1598119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598119 := by
  apply coveredState_split_literal (state := state_1598119) 4
    state_1598120 state_1598295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598120
  · exact cover_1598295
#print axioms cover_1598119

def state_1598099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 25)))
theorem cover_1598099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598099 := by
  apply coveredState_split_literal (state := state_1598099) 2
    state_1598100 state_1598119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598100
  · exact cover_1598119
#print axioms cover_1598099
end Mub6.Numerical.CircleFullD0.Forest
