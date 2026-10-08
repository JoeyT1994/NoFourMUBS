import CircleFullInterface
import CircleForestAssembly0011
import CircleForestChunk0046
import CircleForestChunk0047
import CircleForestChunk0048
import CircleForestChunk0049
import CircleForestChunk0050
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_10903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_10903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10903 := by
  apply coveredState_split_literal (state := state_10903) 2
    state_10904 state_10933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10904
  · exact cover_10933
#print axioms cover_10903

def state_10902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_10902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10902 := by
  apply coveredState_split_literal (state := state_10902) 4
    state_10903 state_11180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10903
  · exact cover_11180
#print axioms cover_10902

def state_11196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_11196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11196 := by
  apply coveredState_split_literal (state := state_11196) 2
    state_11197 state_11222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11197
  · exact cover_11222
#print axioms cover_11196

def state_11195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_11195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11195 := by
  apply coveredState_split_literal (state := state_11195) 4
    state_11196 state_11265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11196
  · exact cover_11265
#print axioms cover_11195

def state_10901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_10901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10901 := by
  apply coveredState_split_literal (state := state_10901) 3
    state_10902 state_11195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10902
  · exact cover_11195
#print axioms cover_10901

def state_11306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 4)))
theorem cover_11306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11306 := by
  apply coveredState_split_literal (state := state_11306) 4
    state_11307 state_11322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11307
  · exact cover_11322
#print axioms cover_11306

def state_11290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 4)))
theorem cover_11290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11290 := by
  apply coveredState_split_literal (state := state_11290) 3
    state_11291 state_11306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11291
  · exact cover_11306
#print axioms cover_11290

def state_11289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_11289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11289 := by
  apply coveredState_split_literal (state := state_11289) 2
    state_11290 state_11375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11290
  · exact cover_11375
#print axioms cover_11289

def state_11288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_11288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11288 := by
  apply coveredState_split_literal (state := state_11288) 1
    state_11289 state_11384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11289
  · exact cover_11384
#print axioms cover_11288

def state_11278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_11278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11278 := by
  apply coveredState_split_literal (state := state_11278) 0
    state_11279 state_11288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11279
  · exact cover_11288
#print axioms cover_11278

def state_11277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
theorem cover_11277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11277 := by
  apply coveredState_split_literal (state := state_11277) 4
    state_11278 state_11395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11278
  · exact cover_11395
#print axioms cover_11277

def state_11276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_11276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11276 := by
  apply coveredState_split_literal (state := state_11276) 3
    state_11277 state_11416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11277
  · exact cover_11416
#print axioms cover_11276

def state_10900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_10900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10900 := by
  apply coveredState_split_literal (state := state_10900) 2
    state_10901 state_11276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10901
  · exact cover_11276
#print axioms cover_10900

def state_5764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_5764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5764 := by
  apply coveredState_split_literal (state := state_5764) 1
    state_5765 state_10900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5765
  · exact cover_10900
#print axioms cover_5764

def state_11483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 8)))
theorem cover_11483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11483 := by
  apply coveredState_split_literal (state := state_11483) 1
    state_11484 state_11521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11484
  · exact cover_11521
#print axioms cover_11483

def state_11482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 8)))
theorem cover_11482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11482 := by
  apply coveredState_split_literal (state := state_11482) 0
    state_11483 state_11570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11483
  · exact cover_11570
#print axioms cover_11482

def state_11623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 18)))
theorem cover_11623 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11623 := by
  apply coveredState_split_literal (state := state_11623) 4
    state_11624 state_11673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11624
  · exact cover_11673
#print axioms cover_11623

def state_11617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 18)))
theorem cover_11617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11617 := by
  apply coveredState_split_literal (state := state_11617) 3
    state_11618 state_11623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11618
  · exact cover_11623
#print axioms cover_11617

def state_11616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 9)))
theorem cover_11616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11616 := by
  apply coveredState_split_literal (state := state_11616) 4
    state_11617 state_11700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11617
  · exact cover_11700
#print axioms cover_11616

def state_11602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 9)))
theorem cover_11602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11602 := by
  apply coveredState_split_literal (state := state_11602) 2
    state_11603 state_11616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11603
  · exact cover_11616
#print axioms cover_11602

def state_11584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 9)))
theorem cover_11584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11584 := by
  apply coveredState_split_literal (state := state_11584) 1
    state_11585 state_11602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11585
  · exact cover_11602
#print axioms cover_11584

def state_11583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 9)))
theorem cover_11583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11583 := by
  apply coveredState_split_literal (state := state_11583) 0
    state_11584 state_11705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11584
  · exact cover_11705
#print axioms cover_11583

def state_11481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 4)))
theorem cover_11481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11481 := by
  apply coveredState_split_literal (state := state_11481) 4
    state_11482 state_11583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11482
  · exact cover_11583
#print axioms cover_11481

def state_11761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 17)))
theorem cover_11761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11761 := by
  apply coveredState_split_literal (state := state_11761) 3
    state_11762 state_11811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11762
  · exact cover_11811
#print axioms cover_11761

def state_11755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 8)))
theorem cover_11755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11755 := by
  apply coveredState_split_literal (state := state_11755) 4
    state_11756 state_11761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11756
  · exact cover_11761
#print axioms cover_11755

def state_11754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 8)))
theorem cover_11754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11754 := by
  apply coveredState_split_literal (state := state_11754) 3
    state_11755 state_11840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11755
  · exact cover_11840
#print axioms cover_11754

def state_11738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_11738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11738 := by
  apply coveredState_split_literal (state := state_11738) 2
    state_11739 state_11754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11739
  · exact cover_11754
#print axioms cover_11738

def state_11722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_11722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11722 := by
  apply coveredState_split_literal (state := state_11722) 1
    state_11723 state_11738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11723
  · exact cover_11738
#print axioms cover_11722

def state_11721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_11721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11721 := by
  apply coveredState_split_literal (state := state_11721) 0
    state_11722 state_11845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11722
  · exact cover_11845
#print axioms cover_11721

def state_11878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 18)))
theorem cover_11878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11878 := by
  apply coveredState_split_literal (state := state_11878) 4
    state_11879 state_11934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11879
  · exact cover_11934
#print axioms cover_11878

def state_11877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 18)))
theorem cover_11877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11877 := by
  apply coveredState_split_literal (state := state_11877) 3
    state_11878 state_11955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11878
  · exact cover_11955
#print axioms cover_11877

def state_11876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 9)))
theorem cover_11876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11876 := by
  apply coveredState_split_literal (state := state_11876) 4
    state_11877 state_12000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11877
  · exact cover_12000
#print axioms cover_11876
end Mub6.Numerical.CircleFullPrototype.Forest
