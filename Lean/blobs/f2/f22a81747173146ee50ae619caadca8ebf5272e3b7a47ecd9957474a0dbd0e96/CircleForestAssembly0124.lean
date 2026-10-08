import CircleFullInterface
import CircleForestAssembly0123
import CircleForestChunk0481
import CircleForestChunk0482
import CircleForestChunk0483
import CircleForestChunk0484
import CircleForestChunk0485
import CircleForestChunk0486
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1304452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 43) else (if j.val < 3 then 48 else (if j.val < 4 then 58 else 44)))
theorem cover_1304452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304452 := by
  apply coveredState_split_literal (state := state_1304452) 0
    state_1304453 state_1304502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304453
  · exact cover_1304502
#print axioms cover_1304452

def state_1304451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 43) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 44)))
theorem cover_1304451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304451 := by
  apply coveredState_split_literal (state := state_1304451) 3
    state_1304452 state_1304569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304452
  · exact cover_1304569
#print axioms cover_1304451

def state_1304449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 21) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 44)))
theorem cover_1304449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304449 := by
  apply coveredState_split_literal (state := state_1304449) 1
    state_1304450 state_1304451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304450
  · exact cover_1304451
#print axioms cover_1304449

def state_1304448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 21) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 22)))
theorem cover_1304448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304448 := by
  apply coveredState_split_literal (state := state_1304448) 4
    state_1304449 state_1304570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304449
  · exact cover_1304570
#print axioms cover_1304448

def state_1304447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 22)))
theorem cover_1304447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304447 := by
  apply coveredState_split_literal (state := state_1304447) 2
    state_1304448 state_1304619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304448
  · exact cover_1304619
#print axioms cover_1304447

def state_1304658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 43) else (if j.val < 3 then 48 else (if j.val < 4 then 58 else 45)))
theorem cover_1304658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304658 := by
  apply coveredState_split_literal (state := state_1304658) 0
    state_1304659 state_1304708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304659
  · exact cover_1304708
#print axioms cover_1304658

def state_1304657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 43) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 45)))
theorem cover_1304657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304657 := by
  apply coveredState_split_literal (state := state_1304657) 3
    state_1304658 state_1304731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304658
  · exact cover_1304731
#print axioms cover_1304657

def state_1304651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 21) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 45)))
theorem cover_1304651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304651 := by
  apply coveredState_split_literal (state := state_1304651) 1
    state_1304652 state_1304657
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304652
  · exact cover_1304657
#print axioms cover_1304651

def state_1304627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 21) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 22)))
theorem cover_1304627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304627 := by
  apply coveredState_split_literal (state := state_1304627) 4
    state_1304628 state_1304651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304628
  · exact cover_1304651
#print axioms cover_1304627

def state_1304626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 22)))
theorem cover_1304626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304626 := by
  apply coveredState_split_literal (state := state_1304626) 2
    state_1304627 state_1304758
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304627
  · exact cover_1304758
#print axioms cover_1304626

def state_1304446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 22)))
theorem cover_1304446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304446 := by
  apply coveredState_split_literal (state := state_1304446) 0
    state_1304447 state_1304626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304447
  · exact cover_1304626
#print axioms cover_1304446

def state_1304356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 22)))
theorem cover_1304356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304356 := by
  apply coveredState_split_literal (state := state_1304356) 3
    state_1304357 state_1304446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304357
  · exact cover_1304446
#print axioms cover_1304356

def state_1304348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 22)))
theorem cover_1304348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304348 := by
  apply coveredState_split_literal (state := state_1304348) 1
    state_1304349 state_1304356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304349
  · exact cover_1304356
#print axioms cover_1304348

def state_1304347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 11)))
theorem cover_1304347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304347 := by
  apply coveredState_split_literal (state := state_1304347) 4
    state_1304348 state_1304789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304348
  · exact cover_1304789
#print axioms cover_1304347

def state_1304346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
theorem cover_1304346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304346 := by
  apply coveredState_split_literal (state := state_1304346) 2
    state_1304347 state_1304844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304347
  · exact cover_1304844
#print axioms cover_1304346

def state_1304345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_1304345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304345 := by
  apply coveredState_split_literal (state := state_1304345) 3
    state_1304346 state_1304851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304346
  · exact cover_1304851
#print axioms cover_1304345

def state_1304960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
theorem cover_1304960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304960 := by
  apply coveredState_split_literal (state := state_1304960) 0
    state_1304961 state_1305022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304961
  · exact cover_1305022
#print axioms cover_1304960

def state_1304954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
theorem cover_1304954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304954 := by
  apply coveredState_split_literal (state := state_1304954) 1
    state_1304955 state_1304960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304955
  · exact cover_1304960
#print axioms cover_1304954

def state_1304914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 11)))
theorem cover_1304914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304914 := by
  apply coveredState_split_literal (state := state_1304914) 4
    state_1304915 state_1304954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304915
  · exact cover_1304954
#print axioms cover_1304914

def state_1304913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
theorem cover_1304913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304913 := by
  apply coveredState_split_literal (state := state_1304913) 2
    state_1304914 state_1305033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304914
  · exact cover_1305033
#print axioms cover_1304913

def state_1305081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 11)))
theorem cover_1305081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305081 := by
  apply coveredState_split_literal (state := state_1305081) 4
    state_1305082 state_1305091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305082
  · exact cover_1305091
#print axioms cover_1305081

def state_1305152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 23)))
theorem cover_1305152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305152 := by
  apply coveredState_split_literal (state := state_1305152) 1
    state_1305153 state_1305158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305153
  · exact cover_1305158
#print axioms cover_1305152

def state_1305150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 11)))
theorem cover_1305150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305150 := by
  apply coveredState_split_literal (state := state_1305150) 4
    state_1305151 state_1305152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305151
  · exact cover_1305152
#print axioms cover_1305150

def state_1305080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 11)))
theorem cover_1305080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305080 := by
  apply coveredState_split_literal (state := state_1305080) 2
    state_1305081 state_1305150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305081
  · exact cover_1305150
#print axioms cover_1305080

def state_1304912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_1304912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304912 := by
  apply coveredState_split_literal (state := state_1304912) 3
    state_1304913 state_1305080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304913
  · exact cover_1305080
#print axioms cover_1304912

def state_1304344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_1304344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304344 := by
  apply coveredState_split_literal (state := state_1304344) 0
    state_1304345 state_1304912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304345
  · exact cover_1304912
#print axioms cover_1304344

def state_1304270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 5)))
theorem cover_1304270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304270 := by
  apply coveredState_split_literal (state := state_1304270) 4
    state_1304271 state_1304344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304271
  · exact cover_1304344
#print axioms cover_1304270

def state_1304269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1304269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304269 := by
  apply coveredState_split_literal (state := state_1304269) 2
    state_1304270 state_1305217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304270
  · exact cover_1305217
#print axioms cover_1304269

def state_1305238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 10)))
theorem cover_1305238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305238 := by
  apply coveredState_split_literal (state := state_1305238) 1
    state_1305239 state_1305300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305239
  · exact cover_1305300
#print axioms cover_1305238

def state_1305237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 10)))
theorem cover_1305237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305237 := by
  apply coveredState_split_literal (state := state_1305237) 3
    state_1305238 state_1305309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305238
  · exact cover_1305309
#print axioms cover_1305237

def state_1305236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 10)))
theorem cover_1305236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305236 := by
  apply coveredState_split_literal (state := state_1305236) 0
    state_1305237 state_1305310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305237
  · exact cover_1305310
#print axioms cover_1305236

def state_1305336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 44)))
theorem cover_1305336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305336 := by
  apply coveredState_split_literal (state := state_1305336) 4
    state_1305337 state_1305360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305337
  · exact cover_1305360
#print axioms cover_1305336
end Mub6.Numerical.CircleFullD0.Forest
