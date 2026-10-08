import CircleFullInterface
import CircleForestAssembly0098
import CircleForestChunk0391
import CircleForestChunk0396
import CircleForestChunk0397
import CircleForestChunk0398
import CircleForestChunk0399
import CircleForestChunk0400
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_170667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 7)))
theorem cover_170667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170667 := by
  apply coveredState_split_literal (state := state_170667) 0
    state_170668 state_170669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170668
  · exact cover_170669
#print axioms cover_170667

def state_170666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 7)))
theorem cover_170666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170666 := by
  apply coveredState_split_literal (state := state_170666) 3
    state_170667 state_170762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170667
  · exact cover_170762
#print axioms cover_170666

def state_169408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_169408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169408 := by
  apply coveredState_split_literal (state := state_169408) 2
    state_169409 state_170666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169409
  · exact cover_170666
#print axioms cover_169408

def state_169358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_169358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169358 := by
  apply coveredState_split_literal (state := state_169358) 4
    state_169359 state_169408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169359
  · exact cover_169408
#print axioms cover_169358

def state_169357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_169357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169357 := by
  apply coveredState_split_literal (state := state_169357) 3
    state_169358 state_170763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169358
  · exact cover_170763
#print axioms cover_169357

def state_170767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_170767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170767 := by
  apply coveredState_split_literal (state := state_170767) 4
    state_170768 state_170797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170768
  · exact cover_170797
#print axioms cover_170767

def state_170766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_170766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170766 := by
  apply coveredState_split_literal (state := state_170766) 3
    state_170767 state_170838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170767
  · exact cover_170838
#print axioms cover_170766

def state_169356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_169356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169356 := by
  apply coveredState_split_literal (state := state_169356) 2
    state_169357 state_170766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169357
  · exact cover_170766
#print axioms cover_169356

def state_170967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 30)))
theorem cover_170967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170967 := by
  apply coveredState_split_literal (state := state_170967) 3
    state_170968 state_171015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170968
  · exact cover_171015
#print axioms cover_170967

def state_170966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 15)))
theorem cover_170966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170966 := by
  apply coveredState_split_literal (state := state_170966) 4
    state_170967 state_171034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170967
  · exact cover_171034
#print axioms cover_170966

def state_170950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 15)))
theorem cover_170950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170950 := by
  apply coveredState_split_literal (state := state_170950) 0
    state_170951 state_170966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170951
  · exact cover_170966
#print axioms cover_170950

def state_170949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 15)))
theorem cover_170949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170949 := by
  apply coveredState_split_literal (state := state_170949) 1
    state_170950 state_171077
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170950
  · exact cover_171077
#print axioms cover_170949

def state_170948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 15)))
theorem cover_170948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170948 := by
  apply coveredState_split_literal (state := state_170948) 3
    state_170949 state_171088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170949
  · exact cover_171088
#print axioms cover_170948

def state_170920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 15)))
theorem cover_170920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170920 := by
  apply coveredState_split_literal (state := state_170920) 2
    state_170921 state_170948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170921
  · exact cover_170948
#print axioms cover_170920

def state_170902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_170902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170902 := by
  apply coveredState_split_literal (state := state_170902) 4
    state_170903 state_170920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170903
  · exact cover_170920
#print axioms cover_170902

def state_170876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_170876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170876 := by
  apply coveredState_split_literal (state := state_170876) 0
    state_170877 state_170902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170877
  · exact cover_170902
#print axioms cover_170876

def state_170875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 7)))
theorem cover_170875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170875 := by
  apply coveredState_split_literal (state := state_170875) 3
    state_170876 state_171099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170876
  · exact cover_171099
#print axioms cover_170875

def state_171122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 7)))
theorem cover_171122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171122 := by
  apply coveredState_split_literal (state := state_171122) 3
    state_171123 state_171178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171123
  · exact cover_171178
#print axioms cover_171122

def state_170874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_170874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170874 := by
  apply coveredState_split_literal (state := state_170874) 2
    state_170875 state_171122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170875
  · exact cover_171122
#print axioms cover_170874

def state_171194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 7)))
theorem cover_171194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171194 := by
  apply coveredState_split_literal (state := state_171194) 3
    state_171195 state_171214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171195
  · exact cover_171214
#print axioms cover_171194

def state_171193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_171193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171193 := by
  apply coveredState_split_literal (state := state_171193) 2
    state_171194 state_171271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171194
  · exact cover_171271
#print axioms cover_171193

def state_170873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_170873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170873 := by
  apply coveredState_split_literal (state := state_170873) 1
    state_170874 state_171193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170874
  · exact cover_171193
#print axioms cover_170873

def state_170843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_170843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170843 := by
  apply coveredState_split_literal (state := state_170843) 4
    state_170844 state_170873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170844
  · exact cover_170873
#print axioms cover_170843

def state_171346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 7)))
theorem cover_171346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171346 := by
  apply coveredState_split_literal (state := state_171346) 3
    state_171347 state_171406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171347
  · exact cover_171406
#print axioms cover_171346

def state_171414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 7)))
theorem cover_171414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171414 := by
  apply coveredState_split_literal (state := state_171414) 4
    state_171415 state_171468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171415
  · exact cover_171468
#print axioms cover_171414

def state_171413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 7)))
theorem cover_171413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171413 := by
  apply coveredState_split_literal (state := state_171413) 3
    state_171414 state_171505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171414
  · exact cover_171505
#print axioms cover_171413

def state_171345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 7)))
theorem cover_171345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171345 := by
  apply coveredState_split_literal (state := state_171345) 0
    state_171346 state_171413
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171346
  · exact cover_171413
#print axioms cover_171345

def state_171344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
theorem cover_171344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171344 := by
  apply coveredState_split_literal (state := state_171344) 2
    state_171345 state_171528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171345
  · exact cover_171528
#print axioms cover_171344

def state_171332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
theorem cover_171332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171332 := by
  apply coveredState_split_literal (state := state_171332) 1
    state_171333 state_171344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171333
  · exact cover_171344
#print axioms cover_171332

def state_171298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_171298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171298 := by
  apply coveredState_split_literal (state := state_171298) 4
    state_171299 state_171332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171299
  · exact cover_171332
#print axioms cover_171298

def state_170842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_170842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170842 := by
  apply coveredState_split_literal (state := state_170842) 3
    state_170843 state_171298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170843
  · exact cover_171298
#print axioms cover_170842

def state_171558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_171558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171558 := by
  apply coveredState_split_literal (state := state_171558) 4
    state_171559 state_171588
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_171559
  · exact cover_171588
#print axioms cover_171558
end Mub6.Numerical.CircleFullPrototype.Forest
