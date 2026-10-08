import CircleFullInterface
import CircleForestAssembly0158
import CircleForestChunk0621
import CircleForestChunk0622
import CircleForestChunk0623
import CircleForestChunk0624
import CircleForestChunk0625
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_388032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 5)))
theorem cover_388032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388032 := by
  apply coveredState_split_literal (state := state_388032) 4
    state_388033 state_388034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388033
  · exact cover_388034
#print axioms cover_388032

def state_388031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_388031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388031 := by
  apply coveredState_split_literal (state := state_388031) 2
    state_388032 state_388189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388032
  · exact cover_388189
#print axioms cover_388031

def state_388025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_388025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388025 := by
  apply coveredState_split_literal (state := state_388025) 1
    state_388026 state_388031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388026
  · exact cover_388031
#print axioms cover_388025

def state_388024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_388024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388024 := by
  apply coveredState_split_literal (state := state_388024) 0
    state_388025 state_388218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388025
  · exact cover_388218
#print axioms cover_388024

def state_388010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_388010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388010 := by
  apply coveredState_split_literal (state := state_388010) 4
    state_388011 state_388024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388011
  · exact cover_388024
#print axioms cover_388010

def state_387726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_387726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387726 := by
  apply coveredState_split_literal (state := state_387726) 3
    state_387727 state_388010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387727
  · exact cover_388010
#print axioms cover_387726

def state_387725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_387725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387725 := by
  apply coveredState_split_literal (state := state_387725) 2
    state_387726 state_388229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387726
  · exact cover_388229
#print axioms cover_387725

def state_388324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 23)))
theorem cover_388324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388324 := by
  apply coveredState_split_literal (state := state_388324) 0
    state_388325 state_388346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388325
  · exact cover_388346
#print axioms cover_388324

def state_388323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 23)))
theorem cover_388323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388323 := by
  apply coveredState_split_literal (state := state_388323) 1
    state_388324 state_388397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388324
  · exact cover_388397
#print axioms cover_388323

def state_388315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 23)))
theorem cover_388315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388315 := by
  apply coveredState_split_literal (state := state_388315) 3
    state_388316 state_388323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388316
  · exact cover_388323
#print axioms cover_388315

def state_388313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 11)))
theorem cover_388313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388313 := by
  apply coveredState_split_literal (state := state_388313) 4
    state_388314 state_388315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388314
  · exact cover_388315
#print axioms cover_388313

def state_388312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 11)))
theorem cover_388312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388312 := by
  apply coveredState_split_literal (state := state_388312) 2
    state_388313 state_388398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388313
  · exact cover_388398
#print axioms cover_388312

def state_388311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 11)))
theorem cover_388311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388311 := by
  apply coveredState_split_literal (state := state_388311) 0
    state_388312 state_388429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388312
  · exact cover_388429
#print axioms cover_388311

def state_388310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 11)))
theorem cover_388310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388310 := by
  apply coveredState_split_literal (state := state_388310) 1
    state_388311 state_388468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388311
  · exact cover_388468
#print axioms cover_388310

def state_388308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 5)))
theorem cover_388308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388308 := by
  apply coveredState_split_literal (state := state_388308) 4
    state_388309 state_388310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388309
  · exact cover_388310
#print axioms cover_388308

def state_388306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 5)))
theorem cover_388306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388306 := by
  apply coveredState_split_literal (state := state_388306) 3
    state_388307 state_388308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388307
  · exact cover_388308
#print axioms cover_388306

def state_388305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_388305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388305 := by
  apply coveredState_split_literal (state := state_388305) 2
    state_388306 state_388473
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388306
  · exact cover_388473
#print axioms cover_388305

def state_388304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_388304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388304 := by
  apply coveredState_split_literal (state := state_388304) 0
    state_388305 state_388482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388305
  · exact cover_388482
#print axioms cover_388304

def state_388292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_388292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388292 := by
  apply coveredState_split_literal (state := state_388292) 4
    state_388293 state_388304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388293
  · exact cover_388304
#print axioms cover_388292

def state_388737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 56) else (if j.val < 3 then 99 else (if j.val < 4 then 56 else 95)))
theorem cover_388737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388737 := by
  apply coveredState_split_literal (state := state_388737) 1
    state_388738 state_388761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388738
  · exact cover_388761
#print axioms cover_388737

def state_388715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 56) else (if j.val < 3 then 49 else (if j.val < 4 then 56 else 95)))
theorem cover_388715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388715 := by
  apply coveredState_split_literal (state := state_388715) 2
    state_388716 state_388737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388716
  · exact cover_388737
#print axioms cover_388715

def state_388689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 49 else (if j.val < 4 then 56 else 95)))
theorem cover_388689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388689 := by
  apply coveredState_split_literal (state := state_388689) 0
    state_388690 state_388715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388690
  · exact cover_388715
#print axioms cover_388689

def state_388637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 49 else (if j.val < 4 then 56 else 47)))
theorem cover_388637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388637 := by
  apply coveredState_split_literal (state := state_388637) 4
    state_388638 state_388689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388638
  · exact cover_388689
#print axioms cover_388637

def state_388636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 47)))
theorem cover_388636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388636 := by
  apply coveredState_split_literal (state := state_388636) 3
    state_388637 state_388806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388637
  · exact cover_388806
#print axioms cover_388636

def state_388635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 47)))
theorem cover_388635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388635 := by
  apply coveredState_split_literal (state := state_388635) 1
    state_388636 state_388831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388636
  · exact cover_388831
#print axioms cover_388635

def state_388617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 23)))
theorem cover_388617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388617 := by
  apply coveredState_split_literal (state := state_388617) 4
    state_388618 state_388635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388618
  · exact cover_388635
#print axioms cover_388617

def state_388599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 23)))
theorem cover_388599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388599 := by
  apply coveredState_split_literal (state := state_388599) 2
    state_388600 state_388617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388600
  · exact cover_388617
#print axioms cover_388599

def state_388581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 23)))
theorem cover_388581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388581 := by
  apply coveredState_split_literal (state := state_388581) 0
    state_388582 state_388599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388582
  · exact cover_388599
#print axioms cover_388581

def state_388580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
theorem cover_388580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388580 := by
  apply coveredState_split_literal (state := state_388580) 3
    state_388581 state_388882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388581
  · exact cover_388882
#print axioms cover_388580

def state_388579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
theorem cover_388579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388579 := by
  apply coveredState_split_literal (state := state_388579) 1
    state_388580 state_388891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388580
  · exact cover_388891
#print axioms cover_388579

def state_388563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 11)))
theorem cover_388563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388563 := by
  apply coveredState_split_literal (state := state_388563) 4
    state_388564 state_388579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388564
  · exact cover_388579
#print axioms cover_388563

def state_388965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 95)))
theorem cover_388965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388965 := by
  apply coveredState_split_literal (state := state_388965) 0
    state_388966 state_388987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388966
  · exact cover_388987
#print axioms cover_388965
end Mub6.Numerical.CircleFullPrototype.Forest
