import CircleFullInterface
import CircleForestAssembly0164
import CircleForestChunk0629
import CircleForestChunk0630
import CircleForestChunk0631
import CircleForestChunk0632
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1340191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 98) else (if j.val < 3 then 44 else (if j.val < 4 then 35 else 92)))
theorem cover_1340191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340191 := by
  apply coveredState_split_literal (state := state_1340191) 2
    state_1340192 state_1340237
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340192
  · exact cover_1340237
#print axioms cover_1340191

def state_1340190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 98) else (if j.val < 3 then 44 else (if j.val < 4 then 35 else 46)))
theorem cover_1340190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340190 := by
  apply coveredState_split_literal (state := state_1340190) 4
    state_1340191 state_1340256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340191
  · exact cover_1340256
#print axioms cover_1340190

def state_1340189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 35 else 46)))
theorem cover_1340189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340189 := by
  apply coveredState_split_literal (state := state_1340189) 1
    state_1340190 state_1340287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340190
  · exact cover_1340287
#print axioms cover_1340189

def state_1340167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 46)))
theorem cover_1340167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340167 := by
  apply coveredState_split_literal (state := state_1340167) 3
    state_1340168 state_1340189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340168
  · exact cover_1340189
#print axioms cover_1340167

def state_1340149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 46)))
theorem cover_1340149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340149 := by
  apply coveredState_split_literal (state := state_1340149) 0
    state_1340150 state_1340167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340150
  · exact cover_1340167
#print axioms cover_1340149

def state_1340148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 46)))
theorem cover_1340148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340148 := by
  apply coveredState_split_literal (state := state_1340148) 2
    state_1340149 state_1340310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340149
  · exact cover_1340310
#print axioms cover_1340148

def state_1340147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 23)))
theorem cover_1340147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340147 := by
  apply coveredState_split_literal (state := state_1340147) 4
    state_1340148 state_1340327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340148
  · exact cover_1340327
#print axioms cover_1340147

def state_1340043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 23)))
theorem cover_1340043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340043 := by
  apply coveredState_split_literal (state := state_1340043) 1
    state_1340044 state_1340147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340044
  · exact cover_1340147
#print axioms cover_1340043

def state_1339993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 23)))
theorem cover_1339993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339993 := by
  apply coveredState_split_literal (state := state_1339993) 3
    state_1339994 state_1340043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339994
  · exact cover_1340043
#print axioms cover_1339993

def state_1339981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 23)))
theorem cover_1339981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339981 := by
  apply coveredState_split_literal (state := state_1339981) 0
    state_1339982 state_1339993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339982
  · exact cover_1339993
#print axioms cover_1339981

def state_1338009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 11)))
theorem cover_1338009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338009 := by
  apply coveredState_split_literal (state := state_1338009) 4
    state_1338010 state_1339981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338010
  · exact cover_1339981
#print axioms cover_1338009

def state_1338008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
theorem cover_1338008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338008 := by
  apply coveredState_split_literal (state := state_1338008) 2
    state_1338009 state_1340340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338009
  · exact cover_1340340
#print axioms cover_1338008

def state_1338007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
theorem cover_1338007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338007 := by
  apply coveredState_split_literal (state := state_1338007) 1
    state_1338008 state_1340383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338008
  · exact cover_1340383
#print axioms cover_1338007

def state_1340483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 18 else 46)))
theorem cover_1340483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340483 := by
  apply coveredState_split_literal (state := state_1340483) 0
    state_1340484 state_1340485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340484
  · exact cover_1340485
#print axioms cover_1340483

def state_1340482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 46)))
theorem cover_1340482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340482 := by
  apply coveredState_split_literal (state := state_1340482) 2
    state_1340483 state_1340548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340483
  · exact cover_1340548
#print axioms cover_1340482

def state_1340481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 23)))
theorem cover_1340481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340481 := by
  apply coveredState_split_literal (state := state_1340481) 4
    state_1340482 state_1340549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340482
  · exact cover_1340549
#print axioms cover_1340481

def state_1340461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 23)))
theorem cover_1340461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340461 := by
  apply coveredState_split_literal (state := state_1340461) 1
    state_1340462 state_1340481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340462
  · exact cover_1340481
#print axioms cover_1340461

def state_1340460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 23)))
theorem cover_1340460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340460 := by
  apply coveredState_split_literal (state := state_1340460) 3
    state_1340461 state_1340572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340461
  · exact cover_1340572
#print axioms cover_1340460

def state_1340458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 23)))
theorem cover_1340458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340458 := by
  apply coveredState_split_literal (state := state_1340458) 0
    state_1340459 state_1340460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340459
  · exact cover_1340460
#print axioms cover_1340458

def state_1340434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 11)))
theorem cover_1340434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340434 := by
  apply coveredState_split_literal (state := state_1340434) 4
    state_1340435 state_1340458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340435
  · exact cover_1340458
#print axioms cover_1340434

def state_1340433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 11)))
theorem cover_1340433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340433 := by
  apply coveredState_split_literal (state := state_1340433) 2
    state_1340434 state_1340573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340434
  · exact cover_1340573
#print axioms cover_1340433

def state_1340575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 11)))
theorem cover_1340575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340575 := by
  apply coveredState_split_literal (state := state_1340575) 4
    state_1340576 state_1340597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340576
  · exact cover_1340597
#print axioms cover_1340575

def state_1340574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 25) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 11)))
theorem cover_1340574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340574 := by
  apply coveredState_split_literal (state := state_1340574) 2
    state_1340575 state_1340654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340575
  · exact cover_1340654
#print axioms cover_1340574

def state_1340432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 11)))
theorem cover_1340432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340432 := by
  apply coveredState_split_literal (state := state_1340432) 1
    state_1340433 state_1340574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340433
  · exact cover_1340574
#print axioms cover_1340432

def state_1338006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
theorem cover_1338006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338006 := by
  apply coveredState_split_literal (state := state_1338006) 3
    state_1338007 state_1340432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338007
  · exact cover_1340432
#print axioms cover_1338006

def state_1340711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 49) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 23)))
theorem cover_1340711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340711 := by
  apply coveredState_split_literal (state := state_1340711) 4
    state_1340712 state_1340751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340712
  · exact cover_1340751
#print axioms cover_1340711

def state_1340691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 23)))
theorem cover_1340691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340691 := by
  apply coveredState_split_literal (state := state_1340691) 1
    state_1340692 state_1340711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340692
  · exact cover_1340711
#print axioms cover_1340691

def state_1340685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 23)))
theorem cover_1340685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340685 := by
  apply coveredState_split_literal (state := state_1340685) 3
    state_1340686 state_1340691
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340686
  · exact cover_1340691
#print axioms cover_1340685

def state_1340684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 23)))
theorem cover_1340684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340684 := by
  apply coveredState_split_literal (state := state_1340684) 0
    state_1340685 state_1340776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340685
  · exact cover_1340776
#print axioms cover_1340684

def state_1340668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 11)))
theorem cover_1340668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340668 := by
  apply coveredState_split_literal (state := state_1340668) 4
    state_1340669 state_1340684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340669
  · exact cover_1340684
#print axioms cover_1340668

def state_1340667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
theorem cover_1340667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340667 := by
  apply coveredState_split_literal (state := state_1340667) 2
    state_1340668 state_1340781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340668
  · exact cover_1340781
#print axioms cover_1340667

def state_1340666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
theorem cover_1340666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340666 := by
  apply coveredState_split_literal (state := state_1340666) 1
    state_1340667 state_1340782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340667
  · exact cover_1340782
#print axioms cover_1340666
end Mub6.Numerical.CircleFullD0.Forest
