import CircleFullInterface
import CircleForestAssembly0133
import CircleForestChunk0517
import CircleForestChunk0519
import CircleForestChunk0520
import CircleForestChunk0521
import CircleForestChunk0522
import CircleForestChunk0523
import CircleForestChunk0524
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1313386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_1313386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313386 := by
  apply coveredState_split_literal (state := state_1313386) 3
    state_1313387 state_1313388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313387
  · exact cover_1313388
#print axioms cover_1313386

def state_1313385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_1313385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313385 := by
  apply coveredState_split_literal (state := state_1313385) 0
    state_1313386 state_1313623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313386
  · exact cover_1313623
#print axioms cover_1313385

def state_1313384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_1313384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313384 := by
  apply coveredState_split_literal (state := state_1313384) 2
    state_1313385 state_1313624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313385
  · exact cover_1313624
#print axioms cover_1313384

def state_1313382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_1313382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313382 := by
  apply coveredState_split_literal (state := state_1313382) 4
    state_1313383 state_1313384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313383
  · exact cover_1313384
#print axioms cover_1313382

def state_1313636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_1313636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313636 := by
  apply coveredState_split_literal (state := state_1313636) 0
    state_1313637 state_1313694
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313637
  · exact cover_1313694
#print axioms cover_1313636

def state_1313635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_1313635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313635 := by
  apply coveredState_split_literal (state := state_1313635) 2
    state_1313636 state_1313701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313636
  · exact cover_1313701
#print axioms cover_1313635

def state_1313625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_1313625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313625 := by
  apply coveredState_split_literal (state := state_1313625) 4
    state_1313626 state_1313635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313626
  · exact cover_1313635
#print axioms cover_1313625

def state_1313381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1313381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313381 := by
  apply coveredState_split_literal (state := state_1313381) 3
    state_1313382 state_1313625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313382
  · exact cover_1313625
#print axioms cover_1313381

def state_1313373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1313373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313373 := by
  apply coveredState_split_literal (state := state_1313373) 1
    state_1313374 state_1313381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313374
  · exact cover_1313381
#print axioms cover_1313373

def state_1312807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1312807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312807 := by
  apply coveredState_split_literal (state := state_1312807) 0
    state_1312808 state_1313373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312808
  · exact cover_1313373
#print axioms cover_1312807

def state_1312799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_1312799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312799 := by
  apply coveredState_split_literal (state := state_1312799) 4
    state_1312800 state_1312807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312800
  · exact cover_1312807
#print axioms cover_1312799

def state_1312798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_1312798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312798 := by
  apply coveredState_split_literal (state := state_1312798) 3
    state_1312799 state_1313714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312799
  · exact cover_1313714
#print axioms cover_1312798

def state_1312797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1312797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312797 := by
  apply coveredState_split_literal (state := state_1312797) 2
    state_1312798 state_1313735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312798
  · exact cover_1313735
#print axioms cover_1312797

def state_1313804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 11)))
theorem cover_1313804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313804 := by
  apply coveredState_split_literal (state := state_1313804) 4
    state_1313805 state_1313814
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313805
  · exact cover_1313814
#print axioms cover_1313804

def state_1313794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_1313794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313794 := by
  apply coveredState_split_literal (state := state_1313794) 3
    state_1313795 state_1313804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313795
  · exact cover_1313804
#print axioms cover_1313794

def state_1313793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_1313793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313793 := by
  apply coveredState_split_literal (state := state_1313793) 2
    state_1313794 state_1313869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313794
  · exact cover_1313869
#print axioms cover_1313793

def state_1313792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_1313792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313792 := by
  apply coveredState_split_literal (state := state_1313792) 1
    state_1313793 state_1313872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313793
  · exact cover_1313872
#print axioms cover_1313792

def state_1313784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_1313784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313784 := by
  apply coveredState_split_literal (state := state_1313784) 4
    state_1313785 state_1313792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313785
  · exact cover_1313792
#print axioms cover_1313784

def state_1313783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1313783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313783 := by
  apply coveredState_split_literal (state := state_1313783) 3
    state_1313784 state_1313875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313784
  · exact cover_1313875
#print axioms cover_1313783

def state_1313963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
theorem cover_1313963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313963 := by
  apply coveredState_split_literal (state := state_1313963) 1
    state_1313964 state_1314013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313964
  · exact cover_1314013
#print axioms cover_1313963

def state_1314036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 56) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 46)))
theorem cover_1314036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314036 := by
  apply coveredState_split_literal (state := state_1314036) 2
    state_1314037 state_1314094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314037
  · exact cover_1314094
#print axioms cover_1314036

def state_1314035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 46)))
theorem cover_1314035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314035 := by
  apply coveredState_split_literal (state := state_1314035) 1
    state_1314036 state_1314127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314036
  · exact cover_1314127
#print axioms cover_1314035

def state_1314034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 46)))
theorem cover_1314034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314034 := by
  apply coveredState_split_literal (state := state_1314034) 3
    state_1314035 state_1314138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314035
  · exact cover_1314138
#print axioms cover_1314034

def state_1314033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 46)))
theorem cover_1314033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314033 := by
  apply coveredState_split_literal (state := state_1314033) 0
    state_1314034 state_1314187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314034
  · exact cover_1314187
#print axioms cover_1314033

def state_1314244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 47)))
theorem cover_1314244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314244 := by
  apply coveredState_split_literal (state := state_1314244) 1
    state_1314245 state_1314286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314245
  · exact cover_1314286
#print axioms cover_1314244

def state_1314350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 56) else (if j.val < 3 then 33 else (if j.val < 4 then 51 else 47)))
theorem cover_1314350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314350 := by
  apply coveredState_split_literal (state := state_1314350) 4
    state_1314351 state_1314382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314351
  · exact cover_1314382
#print axioms cover_1314350

def state_1314310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 56) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 47)))
theorem cover_1314310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314310 := by
  apply coveredState_split_literal (state := state_1314310) 2
    state_1314311 state_1314350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314311
  · exact cover_1314350
#print axioms cover_1314310

def state_1314309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 47)))
theorem cover_1314309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314309 := by
  apply coveredState_split_literal (state := state_1314309) 1
    state_1314310 state_1314419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314310
  · exact cover_1314419
#print axioms cover_1314309

def state_1314243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 47)))
theorem cover_1314243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314243 := by
  apply coveredState_split_literal (state := state_1314243) 3
    state_1314244 state_1314309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314244
  · exact cover_1314309
#print axioms cover_1314243

def state_1314484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 47)))
theorem cover_1314484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314484 := by
  apply coveredState_split_literal (state := state_1314484) 1
    state_1314485 state_1314514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314485
  · exact cover_1314514
#print axioms cover_1314484

def state_1314464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 47)))
theorem cover_1314464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314464 := by
  apply coveredState_split_literal (state := state_1314464) 3
    state_1314465 state_1314484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314465
  · exact cover_1314484
#print axioms cover_1314464

def state_1314242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 47)))
theorem cover_1314242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314242 := by
  apply coveredState_split_literal (state := state_1314242) 0
    state_1314243 state_1314464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314243
  · exact cover_1314464
#print axioms cover_1314242
end Mub6.Numerical.CircleFullD0.Forest
