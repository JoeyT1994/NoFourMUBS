import D0FullInterface
import D0ForestAssembly0352
import D0ForestAssembly0353
import D0ForestChunk1366
import D0ForestChunk1371
import D0ForestChunk1372
import D0ForestChunk1373
import D0ForestChunk1374
import D0ForestChunk1375
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1630011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 8)))
theorem cover_1630011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630011 := by
  apply coveredState_split_literal (state := state_1630011) 4
    state_1630012 state_1630025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630012
  · exact cover_1630025
#print axioms cover_1630011

def state_1630009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 8)))
theorem cover_1630009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630009 := by
  apply coveredState_split_literal (state := state_1630009) 0
    state_1630010 state_1630011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630010
  · exact cover_1630011
#print axioms cover_1630009

def state_1628671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
theorem cover_1628671 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628671 := by
  apply coveredState_split_literal (state := state_1628671) 2
    state_1628672 state_1630009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628672
  · exact cover_1630009
#print axioms cover_1628671

def state_1628670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
theorem cover_1628670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628670 := by
  apply coveredState_split_literal (state := state_1628670) 1
    state_1628671 state_1630122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628671
  · exact cover_1630122
#print axioms cover_1628670

def state_1628669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
theorem cover_1628669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628669 := by
  apply coveredState_split_literal (state := state_1628669) 3
    state_1628670 state_1630147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628670
  · exact cover_1630147
#print axioms cover_1628669

def state_1630203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 9)))
theorem cover_1630203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630203 := by
  apply coveredState_split_literal (state := state_1630203) 4
    state_1630204 state_1630259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630204
  · exact cover_1630259
#print axioms cover_1630203

def state_1630195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 9)))
theorem cover_1630195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630195 := by
  apply coveredState_split_literal (state := state_1630195) 0
    state_1630196 state_1630203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630196
  · exact cover_1630203
#print axioms cover_1630195

def state_1630279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 18)))
theorem cover_1630279 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630279 := by
  apply coveredState_split_literal (state := state_1630279) 3
    state_1630280 state_1630317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630280
  · exact cover_1630317
#print axioms cover_1630279

def state_1630278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 9)))
theorem cover_1630278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630278 := by
  apply coveredState_split_literal (state := state_1630278) 4
    state_1630279 state_1630372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630279
  · exact cover_1630372
#print axioms cover_1630278

def state_1630268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 9)))
theorem cover_1630268 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630268 := by
  apply coveredState_split_literal (state := state_1630268) 0
    state_1630269 state_1630278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630269
  · exact cover_1630278
#print axioms cover_1630268

def state_1630194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
theorem cover_1630194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630194 := by
  apply coveredState_split_literal (state := state_1630194) 2
    state_1630195 state_1630268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630195
  · exact cover_1630268
#print axioms cover_1630194

def state_1630193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
theorem cover_1630193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630193 := by
  apply coveredState_split_literal (state := state_1630193) 1
    state_1630194 state_1630389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630194
  · exact cover_1630389
#print axioms cover_1630193

def state_1630192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
theorem cover_1630192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630192 := by
  apply coveredState_split_literal (state := state_1630192) 3
    state_1630193 state_1630426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630193
  · exact cover_1630426
#print axioms cover_1630192

def state_1628668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1628668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628668 := by
  apply coveredState_split_literal (state := state_1628668) 4
    state_1628669 state_1630192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628669
  · exact cover_1630192
#print axioms cover_1628668

def state_1628642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1628642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628642 := by
  apply coveredState_split_literal (state := state_1628642) 0
    state_1628643 state_1628668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628643
  · exact cover_1628668
#print axioms cover_1628642

def state_1628641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
theorem cover_1628641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628641 := by
  apply coveredState_split_literal (state := state_1628641) 3
    state_1628642 state_1630471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628642
  · exact cover_1630471
#print axioms cover_1628641

def state_1628195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1628195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628195 := by
  apply coveredState_split_literal (state := state_1628195) 2
    state_1628196 state_1628641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628196
  · exact cover_1628641
#print axioms cover_1628195

def state_1620089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1620089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620089 := by
  apply coveredState_split_literal (state := state_1620089) 1
    state_1620090 state_1628195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620090
  · exact cover_1628195
#print axioms cover_1620089

def state_1630513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 5)))
theorem cover_1630513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630513 := by
  apply coveredState_split_literal (state := state_1630513) 3
    state_1630514 state_1630569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630514
  · exact cover_1630569
#print axioms cover_1630513

def state_1630487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_1630487 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630487 := by
  apply coveredState_split_literal (state := state_1630487) 2
    state_1630488 state_1630513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630488
  · exact cover_1630513
#print axioms cover_1630487

def state_1630486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_1630486 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630486 := by
  apply coveredState_split_literal (state := state_1630486) 1
    state_1630487 state_1630608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630487
  · exact cover_1630608
#print axioms cover_1630486

def state_1620088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_1620088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620088 := by
  apply coveredState_split_literal (state := state_1620088) 4
    state_1620089 state_1630486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620089
  · exact cover_1630486
#print axioms cover_1620088

def state_1620087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1620087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620087 := by
  apply coveredState_split_literal (state := state_1620087) 3
    state_1620088 state_1630645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620088
  · exact cover_1630645
#print axioms cover_1620087

def state_1630749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
theorem cover_1630749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630749 := by
  apply coveredState_split_literal (state := state_1630749) 3
    state_1630750 state_1630791
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630750
  · exact cover_1630791
#print axioms cover_1630749

def state_1630711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
theorem cover_1630711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630711 := by
  apply coveredState_split_literal (state := state_1630711) 1
    state_1630712 state_1630749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630712
  · exact cover_1630749
#print axioms cover_1630711

def state_1630675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 4)))
theorem cover_1630675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630675 := by
  apply coveredState_split_literal (state := state_1630675) 4
    state_1630676 state_1630711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630676
  · exact cover_1630711
#print axioms cover_1630675

def state_1630674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
theorem cover_1630674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630674 := by
  apply coveredState_split_literal (state := state_1630674) 2
    state_1630675 state_1630844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630675
  · exact cover_1630844
#print axioms cover_1630674

def state_1630662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
theorem cover_1630662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630662 := by
  apply coveredState_split_literal (state := state_1630662) 0
    state_1630663 state_1630674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630663
  · exact cover_1630674
#print axioms cover_1630662

def state_1630661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1630661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630661 := by
  apply coveredState_split_literal (state := state_1630661) 3
    state_1630662 state_1630853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630662
  · exact cover_1630853
#print axioms cover_1630661

def state_1630660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1630660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630660 := by
  apply coveredState_split_literal (state := state_1630660) 1
    state_1630661 state_1630872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630661
  · exact cover_1630872
#print axioms cover_1630660

def state_1630920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1630920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630920 := by
  apply coveredState_split_literal (state := state_1630920) 3
    state_1630921 state_1630952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630921
  · exact cover_1630952
#print axioms cover_1630920

def state_1630919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1630919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630919 := by
  apply coveredState_split_literal (state := state_1630919) 1
    state_1630920 state_1630991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630920
  · exact cover_1630991
#print axioms cover_1630919
end Mub6.Numerical.CircleFullD0.Forest
