import CircleFullInterface
import CircleForestAssembly0248
import CircleForestChunk0949
import CircleForestChunk0952
import CircleForestChunk0953
import CircleForestChunk0954
import CircleForestChunk0955
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1528373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 22)))
theorem cover_1528373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528373 := by
  apply coveredState_split_literal (state := state_1528373) 1
    state_1528374 state_1528405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528374
  · exact cover_1528405
#print axioms cover_1528373

def state_1528372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 11)))
theorem cover_1528372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528372 := by
  apply coveredState_split_literal (state := state_1528372) 4
    state_1528373 state_1529032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528373
  · exact cover_1529032
#print axioms cover_1528372

def state_1523874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
theorem cover_1523874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523874 := by
  apply coveredState_split_literal (state := state_1523874) 2
    state_1523875 state_1528372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523875
  · exact cover_1528372
#print axioms cover_1523874

def state_1523873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
theorem cover_1523873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523873 := by
  apply coveredState_split_literal (state := state_1523873) 0
    state_1523874 state_1529039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523874
  · exact cover_1529039
#print axioms cover_1523873

def state_1529207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 44)))
theorem cover_1529207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529207 := by
  apply coveredState_split_literal (state := state_1529207) 1
    state_1529208 state_1529229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529208
  · exact cover_1529229
#print axioms cover_1529207

def state_1529206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 22)))
theorem cover_1529206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529206 := by
  apply coveredState_split_literal (state := state_1529206) 4
    state_1529207 state_1529272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529207
  · exact cover_1529272
#print axioms cover_1529206

def state_1529156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 18 else 22)))
theorem cover_1529156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529156 := by
  apply coveredState_split_literal (state := state_1529156) 2
    state_1529157 state_1529206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529157
  · exact cover_1529206
#print axioms cover_1529156

def state_1529337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 47 else (if j.val < 4 then 36 else 44)))
theorem cover_1529337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529337 := by
  apply coveredState_split_literal (state := state_1529337) 2
    state_1529338 state_1529395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529338
  · exact cover_1529395
#print axioms cover_1529337

def state_1529336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 44)))
theorem cover_1529336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529336 := by
  apply coveredState_split_literal (state := state_1529336) 3
    state_1529337 state_1529424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529337
  · exact cover_1529424
#print axioms cover_1529336

def state_1529318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 44)))
theorem cover_1529318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529318 := by
  apply coveredState_split_literal (state := state_1529318) 1
    state_1529319 state_1529336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529319
  · exact cover_1529336
#print axioms cover_1529318

def state_1529317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 22)))
theorem cover_1529317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529317 := by
  apply coveredState_split_literal (state := state_1529317) 4
    state_1529318 state_1529465
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529318
  · exact cover_1529465
#print axioms cover_1529317

def state_1529273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 18 else 22)))
theorem cover_1529273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529273 := by
  apply coveredState_split_literal (state := state_1529273) 2
    state_1529274 state_1529317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529274
  · exact cover_1529317
#print axioms cover_1529273

def state_1529155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 18 else 22)))
theorem cover_1529155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529155 := by
  apply coveredState_split_literal (state := state_1529155) 0
    state_1529156 state_1529273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529156
  · exact cover_1529273
#print axioms cover_1529155

def state_1529154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 22)))
theorem cover_1529154 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529154 := by
  apply coveredState_split_literal (state := state_1529154) 3
    state_1529155 state_1529484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529155
  · exact cover_1529484
#print axioms cover_1529154

def state_1529144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 22)))
theorem cover_1529144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529144 := by
  apply coveredState_split_literal (state := state_1529144) 1
    state_1529145 state_1529154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529145
  · exact cover_1529154
#print axioms cover_1529144

def state_1529143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 11)))
theorem cover_1529143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529143 := by
  apply coveredState_split_literal (state := state_1529143) 4
    state_1529144 state_1529493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529144
  · exact cover_1529493
#print axioms cover_1529143

def state_1529103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 11)))
theorem cover_1529103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529103 := by
  apply coveredState_split_literal (state := state_1529103) 2
    state_1529104 state_1529143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529104
  · exact cover_1529143
#print axioms cover_1529103

def state_1529102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 11)))
theorem cover_1529102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529102 := by
  apply coveredState_split_literal (state := state_1529102) 0
    state_1529103 state_1529502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529103
  · exact cover_1529502
#print axioms cover_1529102

def state_1523872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
theorem cover_1523872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523872 := by
  apply coveredState_split_literal (state := state_1523872) 3
    state_1523873 state_1529102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523873
  · exact cover_1529102
#print axioms cover_1523872

def state_1529526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
theorem cover_1529526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529526 := by
  apply coveredState_split_literal (state := state_1529526) 3
    state_1529527 state_1529560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529527
  · exact cover_1529560
#print axioms cover_1529526

def state_1529525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
theorem cover_1529525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529525 := by
  apply coveredState_split_literal (state := state_1529525) 1
    state_1529526 state_1529601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529526
  · exact cover_1529601
#print axioms cover_1529525

def state_1529524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 11)))
theorem cover_1529524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529524 := by
  apply coveredState_split_literal (state := state_1529524) 4
    state_1529525 state_1529606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529525
  · exact cover_1529606
#print axioms cover_1529524

def state_1529651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 23 else (if j.val < 4 then 17 else 22)))
theorem cover_1529651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529651 := by
  apply coveredState_split_literal (state := state_1529651) 0
    state_1529652 state_1529685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529652
  · exact cover_1529685
#print axioms cover_1529651

def state_1529631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 22)))
theorem cover_1529631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529631 := by
  apply coveredState_split_literal (state := state_1529631) 3
    state_1529632 state_1529651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529632
  · exact cover_1529651
#print axioms cover_1529631

def state_1529630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 22)))
theorem cover_1529630 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529630 := by
  apply coveredState_split_literal (state := state_1529630) 1
    state_1529631 state_1529736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529631
  · exact cover_1529736
#print axioms cover_1529630

def state_1529629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 11)))
theorem cover_1529629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529629 := by
  apply coveredState_split_literal (state := state_1529629) 4
    state_1529630 state_1529743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529630
  · exact cover_1529743
#print axioms cover_1529629

def state_1529523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
theorem cover_1529523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529523 := by
  apply coveredState_split_literal (state := state_1529523) 2
    state_1529524 state_1529629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529524
  · exact cover_1529629
#print axioms cover_1529523

def state_1529522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
theorem cover_1529522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529522 := by
  apply coveredState_split_literal (state := state_1529522) 0
    state_1529523 state_1529766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529523
  · exact cover_1529766
#print axioms cover_1529522

def state_1529869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 22)))
theorem cover_1529869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529869 := by
  apply coveredState_split_literal (state := state_1529869) 4
    state_1529870 state_1529923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529870
  · exact cover_1529923
#print axioms cover_1529869

def state_1529833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 23 else (if j.val < 4 then 18 else 22)))
theorem cover_1529833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529833 := by
  apply coveredState_split_literal (state := state_1529833) 2
    state_1529834 state_1529869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529834
  · exact cover_1529869
#print axioms cover_1529833

def state_1529815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 23 else (if j.val < 4 then 18 else 22)))
theorem cover_1529815 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529815 := by
  apply coveredState_split_literal (state := state_1529815) 0
    state_1529816 state_1529833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529816
  · exact cover_1529833
#print axioms cover_1529815

def state_1529814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 23 else (if j.val < 4 then 18 else 22)))
theorem cover_1529814 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529814 := by
  apply coveredState_split_literal (state := state_1529814) 1
    state_1529815 state_1529956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529815
  · exact cover_1529956
#print axioms cover_1529814
end Mub6.Numerical.CircleFullD0.Forest
