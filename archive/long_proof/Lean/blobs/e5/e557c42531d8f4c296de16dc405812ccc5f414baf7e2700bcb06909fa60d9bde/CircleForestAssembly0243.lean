import CircleFullInterface
import CircleForestAssembly0242
import CircleForestChunk0919
import CircleForestChunk0924
import CircleForestChunk0925
import CircleForestChunk0926
import CircleForestChunk0927
import CircleForestChunk0928
import CircleForestChunk0929
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1522499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 34 else 43)))
theorem cover_1522499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522499 := by
  apply coveredState_split_literal (state := state_1522499) 2
    state_1522500 state_1522525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522500
  · exact cover_1522525
#print axioms cover_1522499

def state_1522387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 34 else 43)))
theorem cover_1522387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522387 := by
  apply coveredState_split_literal (state := state_1522387) 0
    state_1522388 state_1522499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522388
  · exact cover_1522499
#print axioms cover_1522387

def state_1522386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 43)))
theorem cover_1522386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522386 := by
  apply coveredState_split_literal (state := state_1522386) 3
    state_1522387 state_1522574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522387
  · exact cover_1522574
#print axioms cover_1522386

def state_1522385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 43)))
theorem cover_1522385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522385 := by
  apply coveredState_split_literal (state := state_1522385) 1
    state_1522386 state_1522607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522386
  · exact cover_1522607
#print axioms cover_1522385

def state_1522377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 21)))
theorem cover_1522377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522377 := by
  apply coveredState_split_literal (state := state_1522377) 4
    state_1522378 state_1522385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522378
  · exact cover_1522385
#print axioms cover_1522377

def state_1522361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 21)))
theorem cover_1522361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522361 := by
  apply coveredState_split_literal (state := state_1522361) 2
    state_1522362 state_1522377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522362
  · exact cover_1522377
#print axioms cover_1522361

def state_1522360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 21)))
theorem cover_1522360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522360 := by
  apply coveredState_split_literal (state := state_1522360) 0
    state_1522361 state_1522642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522361
  · exact cover_1522642
#print axioms cover_1522360

def state_1521930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 21)))
theorem cover_1521930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521930 := by
  apply coveredState_split_literal (state := state_1521930) 3
    state_1521931 state_1522360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521931
  · exact cover_1522360
#print axioms cover_1521930

def state_1521326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 21)))
theorem cover_1521326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521326 := by
  apply coveredState_split_literal (state := state_1521326) 1
    state_1521327 state_1521930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521327
  · exact cover_1521930
#print axioms cover_1521326

def state_1521312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 10)))
theorem cover_1521312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521312 := by
  apply coveredState_split_literal (state := state_1521312) 4
    state_1521313 state_1521326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521313
  · exact cover_1521326
#print axioms cover_1521312

def state_1522722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 21)))
theorem cover_1522722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522722 := by
  apply coveredState_split_literal (state := state_1522722) 4
    state_1522723 state_1522748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522723
  · exact cover_1522748
#print axioms cover_1522722

def state_1522721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 17 else 21)))
theorem cover_1522721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522721 := by
  apply coveredState_split_literal (state := state_1522721) 2
    state_1522722 state_1522803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522722
  · exact cover_1522803
#print axioms cover_1522721

def state_1522720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 17 else 21)))
theorem cover_1522720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522720 := by
  apply coveredState_split_literal (state := state_1522720) 0
    state_1522721 state_1522826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522721
  · exact cover_1522826
#print axioms cover_1522720

def state_1522692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 21)))
theorem cover_1522692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522692 := by
  apply coveredState_split_literal (state := state_1522692) 3
    state_1522693 state_1522720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522693
  · exact cover_1522720
#print axioms cover_1522692

def state_1522972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 46 else (if j.val < 4 then 35 else 43)))
theorem cover_1522972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522972 := by
  apply coveredState_split_literal (state := state_1522972) 2
    state_1522973 state_1523028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522973
  · exact cover_1523028
#print axioms cover_1522972

def state_1522944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 46 else (if j.val < 4 then 35 else 43)))
theorem cover_1522944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522944 := by
  apply coveredState_split_literal (state := state_1522944) 0
    state_1522945 state_1522972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522945
  · exact cover_1522972
#print axioms cover_1522944

def state_1522900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 43)))
theorem cover_1522900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522900 := by
  apply coveredState_split_literal (state := state_1522900) 3
    state_1522901 state_1522944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522901
  · exact cover_1522944
#print axioms cover_1522900

def state_1523065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 43)))
theorem cover_1523065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523065 := by
  apply coveredState_split_literal (state := state_1523065) 3
    state_1523066 state_1523085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523066
  · exact cover_1523085
#print axioms cover_1523065

def state_1522899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 43)))
theorem cover_1522899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522899 := by
  apply coveredState_split_literal (state := state_1522899) 1
    state_1522900 state_1523065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522900
  · exact cover_1523065
#print axioms cover_1522899

def state_1522885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 21)))
theorem cover_1522885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522885 := by
  apply coveredState_split_literal (state := state_1522885) 4
    state_1522886 state_1522899
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522886
  · exact cover_1522899
#print axioms cover_1522885

def state_1522884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 17 else 21)))
theorem cover_1522884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522884 := by
  apply coveredState_split_literal (state := state_1522884) 2
    state_1522885 state_1523140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522885
  · exact cover_1523140
#print axioms cover_1522884

def state_1522883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 17 else 21)))
theorem cover_1522883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522883 := by
  apply coveredState_split_literal (state := state_1522883) 0
    state_1522884 state_1523167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522884
  · exact cover_1523167
#print axioms cover_1522883

def state_1522857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 21)))
theorem cover_1522857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522857 := by
  apply coveredState_split_literal (state := state_1522857) 3
    state_1522858 state_1522883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522858
  · exact cover_1522883
#print axioms cover_1522857

def state_1522691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 21)))
theorem cover_1522691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522691 := by
  apply coveredState_split_literal (state := state_1522691) 1
    state_1522692 state_1522857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522692
  · exact cover_1522857
#print axioms cover_1522691

def state_1522677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 10)))
theorem cover_1522677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522677 := by
  apply coveredState_split_literal (state := state_1522677) 4
    state_1522678 state_1522691
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522678
  · exact cover_1522691
#print axioms cover_1522677

def state_1521311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
theorem cover_1521311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521311 := by
  apply coveredState_split_literal (state := state_1521311) 2
    state_1521312 state_1522677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521312
  · exact cover_1522677
#print axioms cover_1521311

def state_1521310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
theorem cover_1521310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521310 := by
  apply coveredState_split_literal (state := state_1521310) 0
    state_1521311 state_1523184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521311
  · exact cover_1523184
#print axioms cover_1521310

def state_1523371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 18 else 43)))
theorem cover_1523371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523371 := by
  apply coveredState_split_literal (state := state_1523371) 1
    state_1523372 state_1523411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523372
  · exact cover_1523411
#print axioms cover_1523371

def state_1523363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 18 else 21)))
theorem cover_1523363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523363 := by
  apply coveredState_split_literal (state := state_1523363) 4
    state_1523364 state_1523371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523364
  · exact cover_1523371
#print axioms cover_1523363

def state_1523462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 43)))
theorem cover_1523462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523462 := by
  apply coveredState_split_literal (state := state_1523462) 1
    state_1523463 state_1523506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523463
  · exact cover_1523506
#print axioms cover_1523462

def state_1523436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 21)))
theorem cover_1523436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523436 := by
  apply coveredState_split_literal (state := state_1523436) 4
    state_1523437 state_1523462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523437
  · exact cover_1523462
#print axioms cover_1523436

def state_1523362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 18 else 21)))
theorem cover_1523362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523362 := by
  apply coveredState_split_literal (state := state_1523362) 2
    state_1523363 state_1523436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523363
  · exact cover_1523436
#print axioms cover_1523362
end Mub6.Numerical.CircleFullD0.Forest
