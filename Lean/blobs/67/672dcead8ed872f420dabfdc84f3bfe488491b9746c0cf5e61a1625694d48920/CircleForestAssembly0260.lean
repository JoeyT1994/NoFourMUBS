import CircleFullInterface
import CircleForestAssembly0259
import CircleForestChunk0990
import CircleForestChunk0996
import CircleForestChunk0997
import CircleForestChunk0998
import CircleForestChunk0999
import CircleForestChunk1000
import CircleForestChunk1001
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1539987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 100 else (if j.val < 4 then 39 else 43)))
theorem cover_1539987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539987 := by
  apply coveredState_split_literal (state := state_1539987) 4
    state_1539988 state_1540031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539988
  · exact cover_1540031
#print axioms cover_1539987

def state_1540084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 101 else (if j.val < 4 then 39 else 43)))
theorem cover_1540084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540084 := by
  apply coveredState_split_literal (state := state_1540084) 4
    state_1540085 state_1540130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540085
  · exact cover_1540130
#print axioms cover_1540084

def state_1539986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 43)))
theorem cover_1539986 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539986 := by
  apply coveredState_split_literal (state := state_1539986) 2
    state_1539987 state_1540084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539987
  · exact cover_1540084
#print axioms cover_1539986

def state_1539948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 43)))
theorem cover_1539948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539948 := by
  apply coveredState_split_literal (state := state_1539948) 0
    state_1539949 state_1539986
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539949
  · exact cover_1539986
#print axioms cover_1539948

def state_1539902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 43)))
theorem cover_1539902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539902 := by
  apply coveredState_split_literal (state := state_1539902) 1
    state_1539903 state_1539948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539903
  · exact cover_1539948
#print axioms cover_1539902

def state_1539880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 43)))
theorem cover_1539880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539880 := by
  apply coveredState_split_literal (state := state_1539880) 3
    state_1539881 state_1539902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539881
  · exact cover_1539902
#print axioms cover_1539880

def state_1539688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 21)))
theorem cover_1539688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539688 := by
  apply coveredState_split_literal (state := state_1539688) 4
    state_1539689 state_1539880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539689
  · exact cover_1539880
#print axioms cover_1539688

def state_1540176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 42)))
theorem cover_1540176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540176 := by
  apply coveredState_split_literal (state := state_1540176) 1
    state_1540177 state_1540234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540177
  · exact cover_1540234
#print axioms cover_1540176

def state_1540170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 42)))
theorem cover_1540170 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540170 := by
  apply coveredState_split_literal (state := state_1540170) 3
    state_1540171 state_1540176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540171
  · exact cover_1540176
#print axioms cover_1540170

def state_1540169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 21)))
theorem cover_1540169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540169 := by
  apply coveredState_split_literal (state := state_1540169) 4
    state_1540170 state_1540267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540170
  · exact cover_1540267
#print axioms cover_1540169

def state_1539687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 21)))
theorem cover_1539687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539687 := by
  apply coveredState_split_literal (state := state_1539687) 2
    state_1539688 state_1540169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539688
  · exact cover_1540169
#print axioms cover_1539687

def state_1539625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 21)))
theorem cover_1539625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539625 := by
  apply coveredState_split_literal (state := state_1539625) 0
    state_1539626 state_1539687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539626
  · exact cover_1539687
#print axioms cover_1539625

def state_1539609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 21)))
theorem cover_1539609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539609 := by
  apply coveredState_split_literal (state := state_1539609) 3
    state_1539610 state_1539625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539610
  · exact cover_1539625
#print axioms cover_1539609

def state_1539555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 21)))
theorem cover_1539555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539555 := by
  apply coveredState_split_literal (state := state_1539555) 1
    state_1539556 state_1539609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539556
  · exact cover_1539609
#print axioms cover_1539555

def state_1539169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 10)))
theorem cover_1539169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539169 := by
  apply coveredState_split_literal (state := state_1539169) 4
    state_1539170 state_1539555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539170
  · exact cover_1539555
#print axioms cover_1539169

def state_1538275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 10)))
theorem cover_1538275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538275 := by
  apply coveredState_split_literal (state := state_1538275) 2
    state_1538276 state_1539169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538276
  · exact cover_1539169
#print axioms cover_1538275

def state_1540428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 21)))
theorem cover_1540428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540428 := by
  apply coveredState_split_literal (state := state_1540428) 4
    state_1540429 state_1540438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540429
  · exact cover_1540438
#print axioms cover_1540428

def state_1540427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 21)))
theorem cover_1540427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540427 := by
  apply coveredState_split_literal (state := state_1540427) 2
    state_1540428 state_1540493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540428
  · exact cover_1540493
#print axioms cover_1540427

def state_1540426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 21)))
theorem cover_1540426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540426 := by
  apply coveredState_split_literal (state := state_1540426) 0
    state_1540427 state_1540528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540427
  · exact cover_1540528
#print axioms cover_1540426

def state_1540416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 21)))
theorem cover_1540416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540416 := by
  apply coveredState_split_literal (state := state_1540416) 3
    state_1540417 state_1540426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540417
  · exact cover_1540426
#print axioms cover_1540416

def state_1540402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 21)))
theorem cover_1540402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540402 := by
  apply coveredState_split_literal (state := state_1540402) 1
    state_1540403 state_1540416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540403
  · exact cover_1540416
#print axioms cover_1540402

def state_1540380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 10)))
theorem cover_1540380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540380 := by
  apply coveredState_split_literal (state := state_1540380) 4
    state_1540381 state_1540402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540381
  · exact cover_1540402
#print axioms cover_1540380

def state_1540324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 10)))
theorem cover_1540324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540324 := by
  apply coveredState_split_literal (state := state_1540324) 2
    state_1540325 state_1540380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540325
  · exact cover_1540380
#print axioms cover_1540324

def state_1538274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 10)))
theorem cover_1538274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538274 := by
  apply coveredState_split_literal (state := state_1538274) 0
    state_1538275 state_1540324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538275
  · exact cover_1540324
#print axioms cover_1538274

def state_1538212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 10)))
theorem cover_1538212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538212 := by
  apply coveredState_split_literal (state := state_1538212) 3
    state_1538213 state_1538274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538213
  · exact cover_1538274
#print axioms cover_1538212

def state_1540616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 21)))
theorem cover_1540616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540616 := by
  apply coveredState_split_literal (state := state_1540616) 2
    state_1540617 state_1540632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540617
  · exact cover_1540632
#print axioms cover_1540616

def state_1540602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 21)))
theorem cover_1540602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540602 := by
  apply coveredState_split_literal (state := state_1540602) 0
    state_1540603 state_1540616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540603
  · exact cover_1540616
#print axioms cover_1540602

def state_1540601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 21)))
theorem cover_1540601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540601 := by
  apply coveredState_split_literal (state := state_1540601) 1
    state_1540602 state_1540685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540602
  · exact cover_1540685
#print axioms cover_1540601

def state_1540553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 21)))
theorem cover_1540553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540553 := by
  apply coveredState_split_literal (state := state_1540553) 3
    state_1540554 state_1540601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540554
  · exact cover_1540601
#print axioms cover_1540553

def state_1540549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 10)))
theorem cover_1540549 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540549 := by
  apply coveredState_split_literal (state := state_1540549) 4
    state_1540550 state_1540553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540550
  · exact cover_1540553
#print axioms cover_1540549

def state_1540763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 60) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 43)))
theorem cover_1540763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540763 := by
  apply coveredState_split_literal (state := state_1540763) 0
    state_1540764 state_1540781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540764
  · exact cover_1540781
#print axioms cover_1540763

def state_1540762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 43)))
theorem cover_1540762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540762 := by
  apply coveredState_split_literal (state := state_1540762) 1
    state_1540763 state_1540842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540763
  · exact cover_1540842
#print axioms cover_1540762
end Mub6.Numerical.CircleFullD0.Forest
