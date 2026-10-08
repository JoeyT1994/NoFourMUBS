import CircleFullInterface
import CircleForestAssembly0001
import CircleForestChunk0008
import CircleForestChunk0009
import CircleForestChunk0010
import CircleForestChunk0011
import CircleForestChunk0012
import CircleForestChunk0013
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_49002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 6)))
theorem cover_49002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49002 := by
  apply coveredState_split_literal (state := state_49002) 4
    state_49003 state_49106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49003
  · exact cover_49106
#print axioms cover_49002

def state_48974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_48974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48974 := by
  apply coveredState_split_literal (state := state_48974) 3
    state_48975 state_49002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48975
  · exact cover_49002
#print axioms cover_48974

def state_48973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_48973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48973 := by
  apply coveredState_split_literal (state := state_48973) 4
    state_48974 state_50653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48974
  · exact cover_50653
#print axioms cover_48973

def state_48957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_48957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48957 := by
  apply coveredState_split_literal (state := state_48957) 3
    state_48958 state_48973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48958
  · exact cover_48973
#print axioms cover_48957

def state_48956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_48956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48956 := by
  apply coveredState_split_literal (state := state_48956) 2
    state_48957 state_50712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48957
  · exact cover_50712
#print axioms cover_48956

def state_48955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_48955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48955 := by
  apply coveredState_split_literal (state := state_48955) 1
    state_48956 state_50749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48956
  · exact cover_50749
#print axioms cover_48955

def state_48954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_48954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48954 := by
  apply coveredState_split_literal (state := state_48954) 0
    state_48955 state_51116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48955
  · exact cover_51116
#print axioms cover_48954

def state_45482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_45482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45482 := by
  apply coveredState_split_literal (state := state_45482) 4
    state_45483 state_48954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45483
  · exact cover_48954
#print axioms cover_45482

def state_51976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_51976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51976 := by
  apply coveredState_split_literal (state := state_51976) 3
    state_51977 state_52982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51977
  · exact cover_52982
#print axioms cover_51976

def state_51966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_51966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51966 := by
  apply coveredState_split_literal (state := state_51966) 1
    state_51967 state_51976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51967
  · exact cover_51976
#print axioms cover_51966

def state_51954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_51954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51954 := by
  apply coveredState_split_literal (state := state_51954) 0
    state_51955 state_51966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51955
  · exact cover_51966
#print axioms cover_51954

def state_51953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 5)))
theorem cover_51953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51953 := by
  apply coveredState_split_literal (state := state_51953) 4
    state_51954 state_53023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51954
  · exact cover_53023
#print axioms cover_51953

def state_51952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
theorem cover_51952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51952 := by
  apply coveredState_split_literal (state := state_51952) 3
    state_51953 state_53048
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51953
  · exact cover_53048
#print axioms cover_51952

def state_51951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_51951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51951 := by
  apply coveredState_split_literal (state := state_51951) 2
    state_51952 state_53063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51952
  · exact cover_53063
#print axioms cover_51951

def state_51695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_51695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51695 := by
  apply coveredState_split_literal (state := state_51695) 4
    state_51696 state_51951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51696
  · exact cover_51951
#print axioms cover_51695

def state_51694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_51694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51694 := by
  apply coveredState_split_literal (state := state_51694) 3
    state_51695 state_53092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51695
  · exact cover_53092
#print axioms cover_51694

def state_51370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_51370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51370 := by
  apply coveredState_split_literal (state := state_51370) 2
    state_51371 state_51694
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51371
  · exact cover_51694
#print axioms cover_51370

def state_51369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_51369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51369 := by
  apply coveredState_split_literal (state := state_51369) 1
    state_51370 state_53097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51370
  · exact cover_53097
#print axioms cover_51369

def state_51368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_51368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51368 := by
  apply coveredState_split_literal (state := state_51368) 0
    state_51369 state_53436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51369
  · exact cover_53436
#print axioms cover_51368

def state_54447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_54447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54447 := by
  apply coveredState_split_literal (state := state_54447) 2
    state_54448 state_54937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54448
  · exact cover_54937
#print axioms cover_54447

def state_54431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_54431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54431 := by
  apply coveredState_split_literal (state := state_54431) 1
    state_54432 state_54447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54432
  · exact cover_54447
#print axioms cover_54431

def state_54411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_54411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54411 := by
  apply coveredState_split_literal (state := state_54411) 0
    state_54412 state_54431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54412
  · exact cover_54431
#print axioms cover_54411

def state_54327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_54327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54327 := by
  apply coveredState_split_literal (state := state_54327) 4
    state_54328 state_54411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54328
  · exact cover_54411
#print axioms cover_54327

def state_54326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_54326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54326 := by
  apply coveredState_split_literal (state := state_54326) 3
    state_54327 state_55850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54327
  · exact cover_55850
#print axioms cover_54326

def state_54325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_54325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54325 := by
  apply coveredState_split_literal (state := state_54325) 4
    state_54326 state_55877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54326
  · exact cover_55877
#print axioms cover_54325

def state_54324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_54324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54324 := by
  apply coveredState_split_literal (state := state_54324) 3
    state_54325 state_56000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54325
  · exact cover_56000
#print axioms cover_54324

def state_54323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_54323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54323 := by
  apply coveredState_split_literal (state := state_54323) 2
    state_54324 state_56011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54324
  · exact cover_56011
#print axioms cover_54323

def state_54322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_54322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54322 := by
  apply coveredState_split_literal (state := state_54322) 1
    state_54323 state_56064
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54323
  · exact cover_56064
#print axioms cover_54322

def state_56315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_56315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56315 := by
  apply coveredState_split_literal (state := state_56315) 1
    state_56316 state_57255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56316
  · exact cover_57255
#print axioms cover_56315

def state_54321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_54321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54321 := by
  apply coveredState_split_literal (state := state_54321) 0
    state_54322 state_56315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54322
  · exact cover_56315
#print axioms cover_54321

def state_51367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_51367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51367 := by
  apply coveredState_split_literal (state := state_51367) 4
    state_51368 state_54321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51368
  · exact cover_54321
#print axioms cover_51367

def state_45481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_45481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45481 := by
  apply coveredState_split_literal (state := state_45481) 3
    state_45482 state_51367
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45482
  · exact cover_51367
#print axioms cover_45481

def state_58273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 23 else 8)))
theorem cover_58273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58273 := by
  apply coveredState_split_literal (state := state_58273) 2
    state_58274 state_58641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58274
  · exact cover_58641
#print axioms cover_58273

def state_58231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 8)))
theorem cover_58231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58231 := by
  apply coveredState_split_literal (state := state_58231) 3
    state_58232 state_58273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58232
  · exact cover_58273
#print axioms cover_58231

def state_58230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
theorem cover_58230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58230 := by
  apply coveredState_split_literal (state := state_58230) 4
    state_58231 state_59390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58231
  · exact cover_59390
#print axioms cover_58230

def state_58162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
theorem cover_58162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58162 := by
  apply coveredState_split_literal (state := state_58162) 1
    state_58163 state_58230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58163
  · exact cover_58230
#print axioms cover_58162

def state_58074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
theorem cover_58074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58074 := by
  apply coveredState_split_literal (state := state_58074) 0
    state_58075 state_58162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58075
  · exact cover_58162
#print axioms cover_58074

def state_58054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 4)))
theorem cover_58054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58054 := by
  apply coveredState_split_literal (state := state_58054) 3
    state_58055 state_58074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58055
  · exact cover_58074
#print axioms cover_58054

def state_57936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_57936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57936 := by
  apply coveredState_split_literal (state := state_57936) 2
    state_57937 state_58054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57937
  · exact cover_58054
#print axioms cover_57936

def state_57935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_57935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57935 := by
  apply coveredState_split_literal (state := state_57935) 4
    state_57936 state_59625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57936
  · exact cover_59625
#print axioms cover_57935

def state_57919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_57919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57919 := by
  apply coveredState_split_literal (state := state_57919) 3
    state_57920 state_57935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57920
  · exact cover_57935
#print axioms cover_57919

def state_57918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_57918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57918 := by
  apply coveredState_split_literal (state := state_57918) 2
    state_57919 state_59656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57919
  · exact cover_59656
#print axioms cover_57918

def state_57917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_57917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57917 := by
  apply coveredState_split_literal (state := state_57917) 1
    state_57918 state_59727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57918
  · exact cover_59727
#print axioms cover_57917

def state_57916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_57916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57916 := by
  apply coveredState_split_literal (state := state_57916) 0
    state_57917 state_59916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57917
  · exact cover_59916
#print axioms cover_57916

def state_57915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_57915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57915 := by
  apply coveredState_split_literal (state := state_57915) 4
    state_57916 state_60357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57916
  · exact cover_60357
#print axioms cover_57915

def state_60511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_60511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60511 := by
  apply coveredState_split_literal (state := state_60511) 4
    state_60512 state_61009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60512
  · exact cover_61009
#print axioms cover_60511

def state_60495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_60495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60495 := by
  apply coveredState_split_literal (state := state_60495) 1
    state_60496 state_60511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60496
  · exact cover_60511
#print axioms cover_60495

def state_60475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_60475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60475 := by
  apply coveredState_split_literal (state := state_60475) 0
    state_60476 state_60495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60476
  · exact cover_60495
#print axioms cover_60475

def state_60474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
theorem cover_60474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60474 := by
  apply coveredState_split_literal (state := state_60474) 3
    state_60475 state_61910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60475
  · exact cover_61910
#print axioms cover_60474

def state_60386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_60386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60386 := by
  apply coveredState_split_literal (state := state_60386) 2
    state_60387 state_60474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60387
  · exact cover_60474
#print axioms cover_60386

def state_60385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_60385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60385 := by
  apply coveredState_split_literal (state := state_60385) 4
    state_60386 state_61929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60386
  · exact cover_61929
#print axioms cover_60385

def state_60384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_60384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60384 := by
  apply coveredState_split_literal (state := state_60384) 3
    state_60385 state_61964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60385
  · exact cover_61964
#print axioms cover_60384

def state_60383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_60383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60383 := by
  apply coveredState_split_literal (state := state_60383) 2
    state_60384 state_61973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60384
  · exact cover_61973
#print axioms cover_60383

def state_60382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_60382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60382 := by
  apply coveredState_split_literal (state := state_60382) 1
    state_60383 state_62110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60383
  · exact cover_62110
#print axioms cover_60382

def state_60381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_60381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60381 := by
  apply coveredState_split_literal (state := state_60381) 0
    state_60382 state_63045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60382
  · exact cover_63045
#print axioms cover_60381

def state_60380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_60380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60380 := by
  apply coveredState_split_literal (state := state_60380) 4
    state_60381 state_63990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60381
  · exact cover_63990
#print axioms cover_60380

def state_57914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_57914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57914 := by
  apply coveredState_split_literal (state := state_57914) 3
    state_57915 state_60380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57915
  · exact cover_60380
#print axioms cover_57914

def state_45480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_45480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45480 := by
  apply coveredState_split_literal (state := state_45480) 2
    state_45481 state_57914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45481
  · exact cover_57914
#print axioms cover_45480

def state_64089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_64089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64089 := by
  apply coveredState_split_literal (state := state_64089) 4
    state_64090 state_64539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64090
  · exact cover_64539
#print axioms cover_64089

def state_64088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_64088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64088 := by
  apply coveredState_split_literal (state := state_64088) 3
    state_64089 state_65384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64089
  · exact cover_65384
#print axioms cover_64088

def state_64087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_64087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64087 := by
  apply coveredState_split_literal (state := state_64087) 2
    state_64088 state_65779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64088
  · exact cover_65779
#print axioms cover_64087

def state_45479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_45479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45479 := by
  apply coveredState_split_literal (state := state_45479) 1
    state_45480 state_64087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45480
  · exact cover_64087
#print axioms cover_45479

def state_66446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_66446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66446 := by
  apply coveredState_split_literal (state := state_66446) 3
    state_66447 state_67024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66447
  · exact cover_67024
#print axioms cover_66446

def state_67525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_67525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67525 := by
  apply coveredState_split_literal (state := state_67525) 3
    state_67526 state_68431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67526
  · exact cover_68431
#print axioms cover_67525
end Mub6.Numerical.CircleFullPrototype.Forest
