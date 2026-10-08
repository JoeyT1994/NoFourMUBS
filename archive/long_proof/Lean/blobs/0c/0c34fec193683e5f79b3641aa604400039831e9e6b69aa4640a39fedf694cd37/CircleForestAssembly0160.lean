import CircleFullInterface
import CircleForestAssembly0159
import CircleForestChunk0625
import CircleForestChunk0626
import CircleForestChunk0627
import CircleForestChunk0628
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_388945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 47)))
theorem cover_388945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388945 := by
  apply coveredState_split_literal (state := state_388945) 4
    state_388946 state_388965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388946
  · exact cover_388965
#print axioms cover_388945

def state_388944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 47)))
theorem cover_388944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388944 := by
  apply coveredState_split_literal (state := state_388944) 3
    state_388945 state_389038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388945
  · exact cover_389038
#print axioms cover_388944

def state_389047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 47)))
theorem cover_389047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389047 := by
  apply coveredState_split_literal (state := state_389047) 3
    state_389048 state_389087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389048
  · exact cover_389087
#print axioms cover_389047

def state_388943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 47)))
theorem cover_388943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388943 := by
  apply coveredState_split_literal (state := state_388943) 1
    state_388944 state_389047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388944
  · exact cover_389047
#print axioms cover_388943

def state_388942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 47)))
theorem cover_388942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388942 := by
  apply coveredState_split_literal (state := state_388942) 2
    state_388943 state_389132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388943
  · exact cover_389132
#print axioms cover_388942

def state_388932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 23)))
theorem cover_388932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388932 := by
  apply coveredState_split_literal (state := state_388932) 4
    state_388933 state_388942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388933
  · exact cover_388942
#print axioms cover_388932

def state_388914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 23)))
theorem cover_388914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388914 := by
  apply coveredState_split_literal (state := state_388914) 0
    state_388915 state_388932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388915
  · exact cover_388932
#print axioms cover_388914

def state_388913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 23)))
theorem cover_388913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388913 := by
  apply coveredState_split_literal (state := state_388913) 3
    state_388914 state_389151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388914
  · exact cover_389151
#print axioms cover_388913

def state_388912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 23)))
theorem cover_388912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388912 := by
  apply coveredState_split_literal (state := state_388912) 1
    state_388913 state_389152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388913
  · exact cover_389152
#print axioms cover_388912

def state_388902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 11)))
theorem cover_388902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388902 := by
  apply coveredState_split_literal (state := state_388902) 4
    state_388903 state_388912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388903
  · exact cover_388912
#print axioms cover_388902

def state_388562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
theorem cover_388562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388562 := by
  apply coveredState_split_literal (state := state_388562) 2
    state_388563 state_388902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388563
  · exact cover_388902
#print axioms cover_388562

def state_389245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 56) else (if j.val < 3 then 49 else (if j.val < 4 then 56 else 95)))
theorem cover_389245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389245 := by
  apply coveredState_split_literal (state := state_389245) 2
    state_389246 state_389263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389246
  · exact cover_389263
#print axioms cover_389245

def state_389227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 56) else (if j.val < 3 then 49 else (if j.val < 4 then 56 else 47)))
theorem cover_389227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389227 := by
  apply coveredState_split_literal (state := state_389227) 4
    state_389228 state_389245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389228
  · exact cover_389245
#print axioms cover_389227

def state_389226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 56) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 47)))
theorem cover_389226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389226 := by
  apply coveredState_split_literal (state := state_389226) 3
    state_389227 state_389310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389227
  · exact cover_389310
#print axioms cover_389226

def state_389225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 47)))
theorem cover_389225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389225 := by
  apply coveredState_split_literal (state := state_389225) 1
    state_389226 state_389349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389226
  · exact cover_389349
#print axioms cover_389225

def state_389224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 47)))
theorem cover_389224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389224 := by
  apply coveredState_split_literal (state := state_389224) 0
    state_389225 state_389402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389225
  · exact cover_389402
#print axioms cover_389224

def state_389218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 23)))
theorem cover_389218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389218 := by
  apply coveredState_split_literal (state := state_389218) 4
    state_389219 state_389224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389219
  · exact cover_389224
#print axioms cover_389218

def state_389202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 23)))
theorem cover_389202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389202 := by
  apply coveredState_split_literal (state := state_389202) 2
    state_389203 state_389218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389203
  · exact cover_389218
#print axioms cover_389202

def state_389201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
theorem cover_389201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389201 := by
  apply coveredState_split_literal (state := state_389201) 3
    state_389202 state_389421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389202
  · exact cover_389421
#print axioms cover_389201

def state_389200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
theorem cover_389200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389200 := by
  apply coveredState_split_literal (state := state_389200) 1
    state_389201 state_389450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389201
  · exact cover_389450
#print axioms cover_389200

def state_389192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 11)))
theorem cover_389192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389192 := by
  apply coveredState_split_literal (state := state_389192) 4
    state_389193 state_389200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389193
  · exact cover_389200
#print axioms cover_389192

def state_389496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 47)))
theorem cover_389496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389496 := by
  apply coveredState_split_literal (state := state_389496) 2
    state_389497 state_389558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389497
  · exact cover_389558
#print axioms cover_389496

def state_389495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 47)))
theorem cover_389495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389495 := by
  apply coveredState_split_literal (state := state_389495) 0
    state_389496 state_389577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389496
  · exact cover_389577
#print axioms cover_389495

def state_389473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 23)))
theorem cover_389473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389473 := by
  apply coveredState_split_literal (state := state_389473) 4
    state_389474 state_389495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389474
  · exact cover_389495
#print axioms cover_389473

def state_389472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 23)))
theorem cover_389472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389472 := by
  apply coveredState_split_literal (state := state_389472) 3
    state_389473 state_389598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389473
  · exact cover_389598
#print axioms cover_389472

def state_389649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 23)))
theorem cover_389649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389649 := by
  apply coveredState_split_literal (state := state_389649) 3
    state_389650 state_389701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389650
  · exact cover_389701
#print axioms cover_389649

def state_389471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 23)))
theorem cover_389471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389471 := by
  apply coveredState_split_literal (state := state_389471) 1
    state_389472 state_389649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389472
  · exact cover_389649
#print axioms cover_389471

def state_389463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 11)))
theorem cover_389463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389463 := by
  apply coveredState_split_literal (state := state_389463) 4
    state_389464 state_389471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389464
  · exact cover_389471
#print axioms cover_389463

def state_389191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
theorem cover_389191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389191 := by
  apply coveredState_split_literal (state := state_389191) 2
    state_389192 state_389463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389192
  · exact cover_389463
#print axioms cover_389191

def state_388561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
theorem cover_388561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388561 := by
  apply coveredState_split_literal (state := state_388561) 0
    state_388562 state_389191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388562
  · exact cover_389191
#print axioms cover_388561

def state_388560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_388560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388560 := by
  apply coveredState_split_literal (state := state_388560) 3
    state_388561 state_389734
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388561
  · exact cover_389734
#print axioms cover_388560

def state_388559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_388559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388559 := by
  apply coveredState_split_literal (state := state_388559) 1
    state_388560 state_389767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388560
  · exact cover_389767
#print axioms cover_388559
end Mub6.Numerical.CircleFullPrototype.Forest
