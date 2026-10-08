import D0FullInterface
import D0ForestAssembly0345
import D0ForestAssembly0351
import D0ForestChunk1363
import D0ForestChunk1364
import D0ForestChunk1365
import D0ForestChunk1366
import D0ForestChunk1367
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1628043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 9)))
theorem cover_1628043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628043 := by
  apply coveredState_split_literal (state := state_1628043) 0
    state_1628044 state_1628055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628044
  · exact cover_1628055
#print axioms cover_1628043

def state_1627995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 9)))
theorem cover_1627995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627995 := by
  apply coveredState_split_literal (state := state_1627995) 2
    state_1627996 state_1628043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627996
  · exact cover_1628043
#print axioms cover_1627995

def state_1627313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
theorem cover_1627313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627313 := by
  apply coveredState_split_literal (state := state_1627313) 3
    state_1627314 state_1627995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627314
  · exact cover_1627995
#print axioms cover_1627313

def state_1627213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
theorem cover_1627213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627213 := by
  apply coveredState_split_literal (state := state_1627213) 1
    state_1627214 state_1627313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627214
  · exact cover_1627313
#print axioms cover_1627213

def state_1620791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1620791 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620791 := by
  apply coveredState_split_literal (state := state_1620791) 4
    state_1620792 state_1627213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620792
  · exact cover_1627213
#print axioms cover_1620791

def state_1620725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1620725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620725 := by
  apply coveredState_split_literal (state := state_1620725) 0
    state_1620726 state_1620791
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620726
  · exact cover_1620791
#print axioms cover_1620725

def state_1620724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
theorem cover_1620724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620724 := by
  apply coveredState_split_literal (state := state_1620724) 3
    state_1620725 state_1628160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620725
  · exact cover_1628160
#print axioms cover_1620724

def state_1620090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1620090 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620090 := by
  apply coveredState_split_literal (state := state_1620090) 2
    state_1620091 state_1620724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620091
  · exact cover_1620724
#print axioms cover_1620090

def state_1628330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 103 else (if j.val < 4 then 96 else 32)))
theorem cover_1628330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628330 := by
  apply coveredState_split_literal (state := state_1628330) 1
    state_1628331 state_1628378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628331
  · exact cover_1628378
#print axioms cover_1628330

def state_1628302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 96 else 32)))
theorem cover_1628302 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628302 := by
  apply coveredState_split_literal (state := state_1628302) 2
    state_1628303 state_1628330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628303
  · exact cover_1628330
#print axioms cover_1628302

def state_1628301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 32)))
theorem cover_1628301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628301 := by
  apply coveredState_split_literal (state := state_1628301) 3
    state_1628302 state_1628401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628302
  · exact cover_1628401
#print axioms cover_1628301

def state_1628300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 16)))
theorem cover_1628300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628300 := by
  apply coveredState_split_literal (state := state_1628300) 4
    state_1628301 state_1628420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628301
  · exact cover_1628420
#print axioms cover_1628300

def state_1628299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 16)))
theorem cover_1628299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628299 := by
  apply coveredState_split_literal (state := state_1628299) 0
    state_1628300 state_1628459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628300
  · exact cover_1628459
#print axioms cover_1628299

def state_1628298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 16)))
theorem cover_1628298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628298 := by
  apply coveredState_split_literal (state := state_1628298) 1
    state_1628299 state_1628484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628299
  · exact cover_1628484
#print axioms cover_1628298

def state_1628290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 48 else 16)))
theorem cover_1628290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628290 := by
  apply coveredState_split_literal (state := state_1628290) 2
    state_1628291 state_1628298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628291
  · exact cover_1628298
#print axioms cover_1628290

def state_1628289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 16)))
theorem cover_1628289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628289 := by
  apply coveredState_split_literal (state := state_1628289) 3
    state_1628290 state_1628513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628290
  · exact cover_1628513
#print axioms cover_1628289

def state_1628288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 8)))
theorem cover_1628288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628288 := by
  apply coveredState_split_literal (state := state_1628288) 4
    state_1628289 state_1628524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628289
  · exact cover_1628524
#print axioms cover_1628288

def state_1628226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 8)))
theorem cover_1628226 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628226 := by
  apply coveredState_split_literal (state := state_1628226) 0
    state_1628227 state_1628288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628227
  · exact cover_1628288
#print axioms cover_1628226

def state_1628225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 8)))
theorem cover_1628225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628225 := by
  apply coveredState_split_literal (state := state_1628225) 1
    state_1628226 state_1628565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628226
  · exact cover_1628565
#print axioms cover_1628225

def state_1628224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 8)))
theorem cover_1628224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628224 := by
  apply coveredState_split_literal (state := state_1628224) 3
    state_1628225 state_1628596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628225
  · exact cover_1628596
#print axioms cover_1628224

def state_1628214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 8)))
theorem cover_1628214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628214 := by
  apply coveredState_split_literal (state := state_1628214) 2
    state_1628215 state_1628224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628215
  · exact cover_1628224
#print axioms cover_1628214

def state_1628213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
theorem cover_1628213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628213 := by
  apply coveredState_split_literal (state := state_1628213) 4
    state_1628214 state_1628603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628214
  · exact cover_1628603
#print axioms cover_1628213

def state_1628197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
theorem cover_1628197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628197 := by
  apply coveredState_split_literal (state := state_1628197) 0
    state_1628198 state_1628213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628198
  · exact cover_1628213
#print axioms cover_1628197

def state_1628196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
theorem cover_1628196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628196 := by
  apply coveredState_split_literal (state := state_1628196) 3
    state_1628197 state_1628636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628197
  · exact cover_1628636
#print axioms cover_1628196

def state_1628783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 104) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 65)))
theorem cover_1628783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628783 := by
  apply coveredState_split_literal (state := state_1628783) 3
    state_1628784 state_1628803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628784
  · exact cover_1628803
#print axioms cover_1628783

def state_1628781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 104) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 32)))
theorem cover_1628781 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628781 := by
  apply coveredState_split_literal (state := state_1628781) 4
    state_1628782 state_1628783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628782
  · exact cover_1628783
#print axioms cover_1628781

def state_1628735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 104) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 32)))
theorem cover_1628735 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628735 := by
  apply coveredState_split_literal (state := state_1628735) 0
    state_1628736 state_1628781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628736
  · exact cover_1628781
#print axioms cover_1628735

def state_1628734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 104) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 32)))
theorem cover_1628734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628734 := by
  apply coveredState_split_literal (state := state_1628734) 2
    state_1628735 state_1628848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628735
  · exact cover_1628848
#print axioms cover_1628734

def state_1628733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 32)))
theorem cover_1628733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628733 := by
  apply coveredState_split_literal (state := state_1628733) 1
    state_1628734 state_1628873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628734
  · exact cover_1628873
#print axioms cover_1628733

def state_1628732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 32)))
theorem cover_1628732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628732 := by
  apply coveredState_split_literal (state := state_1628732) 3
    state_1628733 state_1628884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628733
  · exact cover_1628884
#print axioms cover_1628732

def state_1628904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 104) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 33)))
theorem cover_1628904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628904 := by
  apply coveredState_split_literal (state := state_1628904) 0
    state_1628905 state_1628952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628905
  · exact cover_1628952
#print axioms cover_1628904

def state_1629019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 104) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 33)))
theorem cover_1629019 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629019 := by
  apply coveredState_split_literal (state := state_1629019) 4
    state_1629020 state_1629065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629020
  · exact cover_1629065
#print axioms cover_1629019
end Mub6.Numerical.CircleFullD0.Forest
