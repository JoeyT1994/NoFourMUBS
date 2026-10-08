import CircleFullInterface
import CircleForestAssembly0258
import CircleForestAssembly0261
import CircleForestAssembly0262
import CircleForestChunk1004
import CircleForestChunk1007
import CircleForestChunk1008
import CircleForestChunk1009
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1542211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 44)))
theorem cover_1542211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542211 := by
  apply coveredState_split_literal (state := state_1542211) 3
    state_1542212 state_1542221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542212
  · exact cover_1542221
#print axioms cover_1542211

def state_1542210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 22)))
theorem cover_1542210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542210 := by
  apply coveredState_split_literal (state := state_1542210) 4
    state_1542211 state_1542312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542211
  · exact cover_1542312
#print axioms cover_1542210

def state_1542209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 22)))
theorem cover_1542209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542209 := by
  apply coveredState_split_literal (state := state_1542209) 2
    state_1542210 state_1542331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542210
  · exact cover_1542331
#print axioms cover_1542209

def state_1542208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 22)))
theorem cover_1542208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542208 := by
  apply coveredState_split_literal (state := state_1542208) 0
    state_1542209 state_1542348
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542209
  · exact cover_1542348
#print axioms cover_1542208

def state_1542207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 22)))
theorem cover_1542207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542207 := by
  apply coveredState_split_literal (state := state_1542207) 1
    state_1542208 state_1542353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542208
  · exact cover_1542353
#print axioms cover_1542207

def state_1542205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 22)))
theorem cover_1542205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542205 := by
  apply coveredState_split_literal (state := state_1542205) 3
    state_1542206 state_1542207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542206
  · exact cover_1542207
#print axioms cover_1542205

def state_1542204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 11)))
theorem cover_1542204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542204 := by
  apply coveredState_split_literal (state := state_1542204) 4
    state_1542205 state_1542358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542205
  · exact cover_1542358
#print axioms cover_1542204

def state_1542022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 11)))
theorem cover_1542022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542022 := by
  apply coveredState_split_literal (state := state_1542022) 2
    state_1542023 state_1542204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542023
  · exact cover_1542204
#print axioms cover_1542022

def state_1541428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 11)))
theorem cover_1541428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541428 := by
  apply coveredState_split_literal (state := state_1541428) 0
    state_1541429 state_1542022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541429
  · exact cover_1542022
#print axioms cover_1541428

def state_1541410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 11)))
theorem cover_1541410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541410 := by
  apply coveredState_split_literal (state := state_1541410) 3
    state_1541411 state_1541428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541411
  · exact cover_1541428
#print axioms cover_1541410

def state_1540944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 11)))
theorem cover_1540944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540944 := by
  apply coveredState_split_literal (state := state_1540944) 1
    state_1540945 state_1541410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540945
  · exact cover_1541410
#print axioms cover_1540944

def state_1538210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 5)))
theorem cover_1538210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538210 := by
  apply coveredState_split_literal (state := state_1538210) 4
    state_1538211 state_1540944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538211
  · exact cover_1540944
#print axioms cover_1538210

def state_1542385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 10)))
theorem cover_1542385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542385 := by
  apply coveredState_split_literal (state := state_1542385) 4
    state_1542386 state_1542423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542386
  · exact cover_1542423
#print axioms cover_1542385

def state_1542384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 10)))
theorem cover_1542384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542384 := by
  apply coveredState_split_literal (state := state_1542384) 2
    state_1542385 state_1542456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542385
  · exact cover_1542456
#print axioms cover_1542384

def state_1542383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 10)))
theorem cover_1542383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542383 := by
  apply coveredState_split_literal (state := state_1542383) 0
    state_1542384 state_1542461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542384
  · exact cover_1542461
#print axioms cover_1542383

def state_1542379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 10)))
theorem cover_1542379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542379 := by
  apply coveredState_split_literal (state := state_1542379) 3
    state_1542380 state_1542383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542380
  · exact cover_1542383
#print axioms cover_1542379

def state_1542378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 10)))
theorem cover_1542378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542378 := by
  apply coveredState_split_literal (state := state_1542378) 1
    state_1542379 state_1542508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542379
  · exact cover_1542508
#print axioms cover_1542378

def state_1542519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 11)))
theorem cover_1542519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542519 := by
  apply coveredState_split_literal (state := state_1542519) 1
    state_1542520 state_1542543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542520
  · exact cover_1542543
#print axioms cover_1542519

def state_1542377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 5)))
theorem cover_1542377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542377 := by
  apply coveredState_split_literal (state := state_1542377) 4
    state_1542378 state_1542519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542378
  · exact cover_1542519
#print axioms cover_1542377

def state_1538209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
theorem cover_1538209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538209 := by
  apply coveredState_split_literal (state := state_1538209) 2
    state_1538210 state_1542377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538210
  · exact cover_1542377
#print axioms cover_1538209

def state_1542588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
theorem cover_1542588 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542588 := by
  apply coveredState_split_literal (state := state_1542588) 2
    state_1542589 state_1542634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542589
  · exact cover_1542634
#print axioms cover_1542588

def state_1538208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
theorem cover_1538208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538208 := by
  apply coveredState_split_literal (state := state_1538208) 0
    state_1538209 state_1542588
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538209
  · exact cover_1542588
#print axioms cover_1538208

def state_1537912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_1537912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537912 := by
  apply coveredState_split_literal (state := state_1537912) 4
    state_1537913 state_1538208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537913
  · exact cover_1538208
#print axioms cover_1537912

def state_1542704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 39)))
theorem cover_1542704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542704 := by
  apply coveredState_split_literal (state := state_1542704) 3
    state_1542705 state_1542766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542705
  · exact cover_1542766
#print axioms cover_1542704

def state_1542698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 19)))
theorem cover_1542698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542698 := by
  apply coveredState_split_literal (state := state_1542698) 4
    state_1542699 state_1542704
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542699
  · exact cover_1542704
#print axioms cover_1542698

def state_1542697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 19)))
theorem cover_1542697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542697 := by
  apply coveredState_split_literal (state := state_1542697) 1
    state_1542698 state_1542773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542698
  · exact cover_1542773
#print axioms cover_1542697

def state_1542687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 19)))
theorem cover_1542687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542687 := by
  apply coveredState_split_literal (state := state_1542687) 2
    state_1542688 state_1542697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542688
  · exact cover_1542697
#print axioms cover_1542687

def state_1542669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 19)))
theorem cover_1542669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542669 := by
  apply coveredState_split_literal (state := state_1542669) 0
    state_1542670 state_1542687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542670
  · exact cover_1542687
#print axioms cover_1542669

def state_1542667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 9)))
theorem cover_1542667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542667 := by
  apply coveredState_split_literal (state := state_1542667) 4
    state_1542668 state_1542669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542668
  · exact cover_1542669
#print axioms cover_1542667

def state_1542666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 9)))
theorem cover_1542666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542666 := by
  apply coveredState_split_literal (state := state_1542666) 1
    state_1542667 state_1542780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542667
  · exact cover_1542780
#print axioms cover_1542666

def state_1542665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 9)))
theorem cover_1542665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542665 := by
  apply coveredState_split_literal (state := state_1542665) 3
    state_1542666 state_1542781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542666
  · exact cover_1542781
#print axioms cover_1542665

def state_1542663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 9)))
theorem cover_1542663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542663 := by
  apply coveredState_split_literal (state := state_1542663) 2
    state_1542664 state_1542665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542664
  · exact cover_1542665
#print axioms cover_1542663
end Mub6.Numerical.CircleFullD0.Forest
