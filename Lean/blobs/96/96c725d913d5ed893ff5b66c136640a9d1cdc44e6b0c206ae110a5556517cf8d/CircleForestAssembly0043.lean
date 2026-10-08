import CircleFullInterface
import CircleForestAssembly0003
import CircleForestAssembly0004
import CircleForestAssembly0035
import CircleForestAssembly0036
import CircleForestAssembly0038
import CircleForestAssembly0040
import CircleForestAssembly0042
import CircleForestChunk0152
import CircleForestChunk0173
import CircleForestChunk0174
import CircleForestChunk0175
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_979056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 44 else 57)))
theorem cover_979056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979056 := by
  apply coveredState_split_literal (state := state_979056) 0
    state_979057 state_979058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979057
  · exact cover_979058
#print axioms cover_979056

def state_979020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 57)))
theorem cover_979020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979020 := by
  apply coveredState_split_literal (state := state_979020) 2
    state_979021 state_979056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979021
  · exact cover_979056
#print axioms cover_979020

def state_979018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 28)))
theorem cover_979018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979018 := by
  apply coveredState_split_literal (state := state_979018) 4
    state_979019 state_979020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979019
  · exact cover_979020
#print axioms cover_979018

def state_979017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 28)))
theorem cover_979017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979017 := by
  apply coveredState_split_literal (state := state_979017) 3
    state_979018 state_979151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979018
  · exact cover_979151
#print axioms cover_979017

def state_979016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 28)))
theorem cover_979016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979016 := by
  apply coveredState_split_literal (state := state_979016) 1
    state_979017 state_979152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979017
  · exact cover_979152
#print axioms cover_979016

def state_979014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 28)))
theorem cover_979014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979014 := by
  apply coveredState_split_literal (state := state_979014) 0
    state_979015 state_979016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979015
  · exact cover_979016
#print axioms cover_979014

def state_978996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 28)))
theorem cover_978996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978996 := by
  apply coveredState_split_literal (state := state_978996) 2
    state_978997 state_979014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978997
  · exact cover_979014
#print axioms cover_978996

def state_979163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 29)))
theorem cover_979163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979163 := by
  apply coveredState_split_literal (state := state_979163) 1
    state_979164 state_979211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979164
  · exact cover_979211
#print axioms cover_979163

def state_979159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 29)))
theorem cover_979159 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979159 := by
  apply coveredState_split_literal (state := state_979159) 0
    state_979160 state_979163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979160
  · exact cover_979163
#print axioms cover_979159

def state_979153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 29)))
theorem cover_979153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979153 := by
  apply coveredState_split_literal (state := state_979153) 2
    state_979154 state_979159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979154
  · exact cover_979159
#print axioms cover_979153

def state_978995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 14)))
theorem cover_978995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978995 := by
  apply coveredState_split_literal (state := state_978995) 4
    state_978996 state_979153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978996
  · exact cover_979153
#print axioms cover_978995

def state_978994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 14)))
theorem cover_978994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978994 := by
  apply coveredState_split_literal (state := state_978994) 3
    state_978995 state_979230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978995
  · exact cover_979230
#print axioms cover_978994

def state_978993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 14)))
theorem cover_978993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978993 := by
  apply coveredState_split_literal (state := state_978993) 1
    state_978994 state_979235
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978994
  · exact cover_979235
#print axioms cover_978993

def state_978983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 14)))
theorem cover_978983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978983 := by
  apply coveredState_split_literal (state := state_978983) 0
    state_978984 state_978993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978984
  · exact cover_978993
#print axioms cover_978983

def state_978982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 7)))
theorem cover_978982 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978982 := by
  apply coveredState_split_literal (state := state_978982) 4
    state_978983 state_979246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978983
  · exact cover_979246
#print axioms cover_978982

def state_978948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 7)))
theorem cover_978948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978948 := by
  apply coveredState_split_literal (state := state_978948) 2
    state_978949 state_978982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978949
  · exact cover_978982
#print axioms cover_978948

def state_975884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_975884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975884 := by
  apply coveredState_split_literal (state := state_975884) 3
    state_975885 state_978948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975885
  · exact cover_978948
#print axioms cover_975884

def state_974194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_974194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974194 := by
  apply coveredState_split_literal (state := state_974194) 1
    state_974195 state_975884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974195
  · exact cover_975884
#print axioms cover_974194

def state_974150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_974150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974150 := by
  apply coveredState_split_literal (state := state_974150) 0
    state_974151 state_974194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974151
  · exact cover_974194
#print axioms cover_974150

def state_972662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_972662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972662 := by
  apply coveredState_split_literal (state := state_972662) 4
    state_972663 state_974150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972663
  · exact cover_974150
#print axioms cover_972662

def state_971412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_971412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971412 := by
  apply coveredState_split_literal (state := state_971412) 3
    state_971413 state_972662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971413
  · exact cover_972662
#print axioms cover_971412

def state_942026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_942026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942026 := by
  apply coveredState_split_literal (state := state_942026) 2
    state_942027 state_971412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942027
  · exact cover_971412
#print axioms cover_942026

def state_940928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_940928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940928 := by
  apply coveredState_split_literal (state := state_940928) 1
    state_940929 state_942026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940929
  · exact cover_942026
#print axioms cover_940928

def state_940786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_940786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940786 := by
  apply coveredState_split_literal (state := state_940786) 0
    state_940787 state_940928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940787
  · exact cover_940928
#print axioms cover_940786

def state_940368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_940368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940368 := by
  apply coveredState_split_literal (state := state_940368) 4
    state_940369 state_940786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940369
  · exact cover_940786
#print axioms cover_940368

def state_979262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_979262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979262 := by
  apply coveredState_split_literal (state := state_979262) 0
    state_979263 state_979318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979263
  · exact cover_979318
#print axioms cover_979262

def state_979416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_979416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979416 := by
  apply coveredState_split_literal (state := state_979416) 2
    state_979417 state_979470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979417
  · exact cover_979470
#print axioms cover_979416

def state_979483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_979483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979483 := by
  apply coveredState_split_literal (state := state_979483) 2
    state_979484 state_979517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979484
  · exact cover_979517
#print axioms cover_979483

def state_979415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_979415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979415 := by
  apply coveredState_split_literal (state := state_979415) 1
    state_979416 state_979483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979416
  · exact cover_979483
#print axioms cover_979415

def state_979373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_979373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979373 := by
  apply coveredState_split_literal (state := state_979373) 0
    state_979374 state_979415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979374
  · exact cover_979415
#print axioms cover_979373

def state_979261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_979261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979261 := by
  apply coveredState_split_literal (state := state_979261) 4
    state_979262 state_979373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979262
  · exact cover_979373
#print axioms cover_979261

def state_940367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_940367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940367 := by
  apply coveredState_split_literal (state := state_940367) 3
    state_940368 state_979261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940368
  · exact cover_979261
#print axioms cover_940367
end Mub6.Numerical.CircleFullD0.Forest
