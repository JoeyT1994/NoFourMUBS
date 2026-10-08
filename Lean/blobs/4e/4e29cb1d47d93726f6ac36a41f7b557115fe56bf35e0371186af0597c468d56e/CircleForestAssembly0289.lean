import CircleFullInterface
import CircleForestAssembly0272
import CircleForestAssembly0281
import CircleForestAssembly0282
import CircleForestAssembly0288
import CircleForestChunk1110
import CircleForestChunk1111
import CircleForestChunk1112
import CircleForestChunk1113
import CircleForestChunk1114
import CircleForestChunk1115
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1567035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 46)))
theorem cover_1567035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567035 := by
  apply coveredState_split_literal (state := state_1567035) 3
    state_1567036 state_1567079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567036
  · exact cover_1567079
#print axioms cover_1567035

def state_1567276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 43 else 46)))
theorem cover_1567276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567276 := by
  apply coveredState_split_literal (state := state_1567276) 2
    state_1567277 state_1567334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567277
  · exact cover_1567334
#print axioms cover_1567276

def state_1567268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 46)))
theorem cover_1567268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567268 := by
  apply coveredState_split_literal (state := state_1567268) 3
    state_1567269 state_1567276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567269
  · exact cover_1567276
#print axioms cover_1567268

def state_1567034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 46)))
theorem cover_1567034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567034 := by
  apply coveredState_split_literal (state := state_1567034) 0
    state_1567035 state_1567268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567035
  · exact cover_1567268
#print axioms cover_1567034

def state_1567033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 23)))
theorem cover_1567033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567033 := by
  apply coveredState_split_literal (state := state_1567033) 4
    state_1567034 state_1567355
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567034
  · exact cover_1567355
#print axioms cover_1567033

def state_1567007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 23)))
theorem cover_1567007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567007 := by
  apply coveredState_split_literal (state := state_1567007) 1
    state_1567008 state_1567033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567008
  · exact cover_1567033
#print axioms cover_1567007

def state_1566997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 23)))
theorem cover_1566997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566997 := by
  apply coveredState_split_literal (state := state_1566997) 3
    state_1566998 state_1567007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566998
  · exact cover_1567007
#print axioms cover_1566997

def state_1566785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 23)))
theorem cover_1566785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566785 := by
  apply coveredState_split_literal (state := state_1566785) 2
    state_1566786 state_1566997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566786
  · exact cover_1566997
#print axioms cover_1566785

def state_1559961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
theorem cover_1559961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559961 := by
  apply coveredState_split_literal (state := state_1559961) 4
    state_1559962 state_1566785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559962
  · exact cover_1566785
#print axioms cover_1559961

def state_1559021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
theorem cover_1559021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559021 := by
  apply coveredState_split_literal (state := state_1559021) 0
    state_1559022 state_1559961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559022
  · exact cover_1559961
#print axioms cover_1559021

def state_1558749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
theorem cover_1558749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558749 := by
  apply coveredState_split_literal (state := state_1558749) 1
    state_1558750 state_1559021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558750
  · exact cover_1559021
#print axioms cover_1558749

def state_1551001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 5)))
theorem cover_1551001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551001 := by
  apply coveredState_split_literal (state := state_1551001) 4
    state_1551002 state_1558749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551002
  · exact cover_1558749
#print axioms cover_1551001

def state_1567382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 10)))
theorem cover_1567382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567382 := by
  apply coveredState_split_literal (state := state_1567382) 0
    state_1567383 state_1567422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567383
  · exact cover_1567422
#print axioms cover_1567382

def state_1567381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 10)))
theorem cover_1567381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567381 := by
  apply coveredState_split_literal (state := state_1567381) 1
    state_1567382 state_1567459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567382
  · exact cover_1567459
#print axioms cover_1567381

def state_1567668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 44 else 22)))
theorem cover_1567668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567668 := by
  apply coveredState_split_literal (state := state_1567668) 4
    state_1567669 state_1567684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567669
  · exact cover_1567684
#print axioms cover_1567668

def state_1567667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 22)))
theorem cover_1567667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567667 := by
  apply coveredState_split_literal (state := state_1567667) 3
    state_1567668 state_1567735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567668
  · exact cover_1567735
#print axioms cover_1567667

def state_1567666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 22)))
theorem cover_1567666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567666 := by
  apply coveredState_split_literal (state := state_1567666) 0
    state_1567667 state_1567740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567667
  · exact cover_1567740
#print axioms cover_1567666

def state_1567634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 22)))
theorem cover_1567634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567634 := by
  apply coveredState_split_literal (state := state_1567634) 1
    state_1567635 state_1567666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567635
  · exact cover_1567666
#print axioms cover_1567634

def state_1567616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 22 else 22)))
theorem cover_1567616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567616 := by
  apply coveredState_split_literal (state := state_1567616) 2
    state_1567617 state_1567634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567617
  · exact cover_1567634
#print axioms cover_1567616

def state_1567779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 46)))
theorem cover_1567779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567779 := by
  apply coveredState_split_literal (state := state_1567779) 3
    state_1567780 state_1567839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567780
  · exact cover_1567839
#print axioms cover_1567779

def state_1567778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 46)))
theorem cover_1567778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567778 := by
  apply coveredState_split_literal (state := state_1567778) 0
    state_1567779 state_1567846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567779
  · exact cover_1567846
#print axioms cover_1567778

def state_1567777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 23)))
theorem cover_1567777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567777 := by
  apply coveredState_split_literal (state := state_1567777) 4
    state_1567778 state_1567883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567778
  · exact cover_1567883
#print axioms cover_1567777

def state_1567765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 23)))
theorem cover_1567765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567765 := by
  apply coveredState_split_literal (state := state_1567765) 1
    state_1567766 state_1567777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567766
  · exact cover_1567777
#print axioms cover_1567765

def state_1567763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 22 else 23)))
theorem cover_1567763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567763 := by
  apply coveredState_split_literal (state := state_1567763) 2
    state_1567764 state_1567765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567764
  · exact cover_1567765
#print axioms cover_1567763

def state_1567615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 22 else 11)))
theorem cover_1567615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567615 := by
  apply coveredState_split_literal (state := state_1567615) 4
    state_1567616 state_1567763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567616
  · exact cover_1567763
#print axioms cover_1567615

def state_1567614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 11)))
theorem cover_1567614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567614 := by
  apply coveredState_split_literal (state := state_1567614) 3
    state_1567615 state_1567902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567615
  · exact cover_1567902
#print axioms cover_1567614

def state_1567550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 11)))
theorem cover_1567550 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567550 := by
  apply coveredState_split_literal (state := state_1567550) 0
    state_1567551 state_1567614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567551
  · exact cover_1567614
#print axioms cover_1567550

def state_1567518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 11)))
theorem cover_1567518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567518 := by
  apply coveredState_split_literal (state := state_1567518) 1
    state_1567519 state_1567550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567519
  · exact cover_1567550
#print axioms cover_1567518

def state_1567380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 5)))
theorem cover_1567380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567380 := by
  apply coveredState_split_literal (state := state_1567380) 4
    state_1567381 state_1567518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567381
  · exact cover_1567518
#print axioms cover_1567380

def state_1551000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 5)))
theorem cover_1551000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551000 := by
  apply coveredState_split_literal (state := state_1551000) 3
    state_1551001 state_1567380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551001
  · exact cover_1567380
#print axioms cover_1551000

def state_1543600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_1543600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543600 := by
  apply coveredState_split_literal (state := state_1543600) 2
    state_1543601 state_1551000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543601
  · exact cover_1551000
#print axioms cover_1543600

def state_1567965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
theorem cover_1567965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567965 := by
  apply coveredState_split_literal (state := state_1567965) 2
    state_1567966 state_1568009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567966
  · exact cover_1568009
#print axioms cover_1567965
end Mub6.Numerical.CircleFullD0.Forest
