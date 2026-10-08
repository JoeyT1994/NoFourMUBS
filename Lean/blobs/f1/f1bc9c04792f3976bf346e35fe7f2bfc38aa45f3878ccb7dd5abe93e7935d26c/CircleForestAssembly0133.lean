import CircleFullInterface
import CircleForestAssembly0132
import CircleForestChunk0523
import CircleForestChunk0524
import CircleForestChunk0525
import CircleForestChunk0526
import CircleForestChunk0527
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_286669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_286669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286669 := by
  apply coveredState_split_literal (state := state_286669) 0
    state_286670 state_286775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286670
  · exact cover_286775
#print axioms cover_286669

def state_286668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_286668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286668 := by
  apply coveredState_split_literal (state := state_286668) 4
    state_286669 state_287094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286669
  · exact cover_287094
#print axioms cover_286668

def state_286454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_286454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286454 := by
  apply coveredState_split_literal (state := state_286454) 3
    state_286455 state_286668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286455
  · exact cover_286668
#print axioms cover_286454

def state_286156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_286156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286156 := by
  apply coveredState_split_literal (state := state_286156) 2
    state_286157 state_286454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286157
  · exact cover_286454
#print axioms cover_286156

def state_286000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_286000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286000 := by
  apply coveredState_split_literal (state := state_286000) 1
    state_286001 state_286156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286001
  · exact cover_286156
#print axioms cover_286000

def state_287152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
theorem cover_287152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287152 := by
  apply coveredState_split_literal (state := state_287152) 0
    state_287153 state_287202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287153
  · exact cover_287202
#print axioms cover_287152

def state_287142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
theorem cover_287142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287142 := by
  apply coveredState_split_literal (state := state_287142) 3
    state_287143 state_287152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287143
  · exact cover_287152
#print axioms cover_287142

def state_287132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_287132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287132 := by
  apply coveredState_split_literal (state := state_287132) 2
    state_287133 state_287142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287133
  · exact cover_287142
#print axioms cover_287132

def state_287131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_287131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287131 := by
  apply coveredState_split_literal (state := state_287131) 4
    state_287132 state_287217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287132
  · exact cover_287217
#print axioms cover_287131

def state_287218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_287218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287218 := by
  apply coveredState_split_literal (state := state_287218) 4
    state_287219 state_287260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287219
  · exact cover_287260
#print axioms cover_287218

def state_287130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_287130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287130 := by
  apply coveredState_split_literal (state := state_287130) 3
    state_287131 state_287218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287131
  · exact cover_287218
#print axioms cover_287130

def state_287124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_287124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287124 := by
  apply coveredState_split_literal (state := state_287124) 2
    state_287125 state_287130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287125
  · exact cover_287130
#print axioms cover_287124

def state_287310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_287310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287310 := by
  apply coveredState_split_literal (state := state_287310) 2
    state_287311 state_287316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287311
  · exact cover_287316
#print axioms cover_287310

def state_287395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 8)))
theorem cover_287395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287395 := by
  apply coveredState_split_literal (state := state_287395) 1
    state_287396 state_287445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287396
  · exact cover_287445
#print axioms cover_287395

def state_287394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
theorem cover_287394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287394 := by
  apply coveredState_split_literal (state := state_287394) 4
    state_287395 state_287464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287395
  · exact cover_287464
#print axioms cover_287394

def state_287393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
theorem cover_287393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287393 := by
  apply coveredState_split_literal (state := state_287393) 0
    state_287394 state_287493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287394
  · exact cover_287493
#print axioms cover_287393

def state_287387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
theorem cover_287387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287387 := by
  apply coveredState_split_literal (state := state_287387) 3
    state_287388 state_287393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287388
  · exact cover_287393
#print axioms cover_287387

def state_287379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_287379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287379 := by
  apply coveredState_split_literal (state := state_287379) 2
    state_287380 state_287387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287380
  · exact cover_287387
#print axioms cover_287379

def state_287309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_287309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287309 := by
  apply coveredState_split_literal (state := state_287309) 1
    state_287310 state_287379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287310
  · exact cover_287379
#print axioms cover_287309

def state_287308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_287308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287308 := by
  apply coveredState_split_literal (state := state_287308) 4
    state_287309 state_287498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287309
  · exact cover_287498
#print axioms cover_287308

def state_287507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 4)))
theorem cover_287507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287507 := by
  apply coveredState_split_literal (state := state_287507) 4
    state_287508 state_287555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287508
  · exact cover_287555
#print axioms cover_287507

def state_287506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 4)))
theorem cover_287506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287506 := by
  apply coveredState_split_literal (state := state_287506) 3
    state_287507 state_287598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287507
  · exact cover_287598
#print axioms cover_287506

def state_287505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 4)))
theorem cover_287505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287505 := by
  apply coveredState_split_literal (state := state_287505) 0
    state_287506 state_287599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287506
  · exact cover_287599
#print axioms cover_287505

def state_287503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_287503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287503 := by
  apply coveredState_split_literal (state := state_287503) 2
    state_287504 state_287505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287504
  · exact cover_287505
#print axioms cover_287503

def state_287803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 56 else 34)))
theorem cover_287803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287803 := by
  apply coveredState_split_literal (state := state_287803) 2
    state_287804 state_287837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287804
  · exact cover_287837
#print axioms cover_287803

def state_287802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 56 else 17)))
theorem cover_287802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287802 := by
  apply coveredState_split_literal (state := state_287802) 4
    state_287803 state_287880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287803
  · exact cover_287880
#print axioms cover_287802

def state_287918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 57 else 34)))
theorem cover_287918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287918 := by
  apply coveredState_split_literal (state := state_287918) 2
    state_287919 state_287936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287919
  · exact cover_287936
#print axioms cover_287918

def state_287917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 57 else 17)))
theorem cover_287917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287917 := by
  apply coveredState_split_literal (state := state_287917) 4
    state_287918 state_287993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287918
  · exact cover_287993
#print axioms cover_287917

def state_287801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 28 else 17)))
theorem cover_287801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287801 := by
  apply coveredState_split_literal (state := state_287801) 3
    state_287802 state_287917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287802
  · exact cover_287917
#print axioms cover_287801

def state_288038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 57 else 17)))
theorem cover_288038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288038 := by
  apply coveredState_split_literal (state := state_288038) 4
    state_288039 state_288080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288039
  · exact cover_288080
#print axioms cover_288038

def state_288024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 28 else 17)))
theorem cover_288024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288024 := by
  apply coveredState_split_literal (state := state_288024) 3
    state_288025 state_288038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288025
  · exact cover_288038
#print axioms cover_288024

def state_287800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 28 else 17)))
theorem cover_287800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287800 := by
  apply coveredState_split_literal (state := state_287800) 0
    state_287801 state_288024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287801
  · exact cover_288024
#print axioms cover_287800
end Mub6.Numerical.CircleFullPrototype.Forest
