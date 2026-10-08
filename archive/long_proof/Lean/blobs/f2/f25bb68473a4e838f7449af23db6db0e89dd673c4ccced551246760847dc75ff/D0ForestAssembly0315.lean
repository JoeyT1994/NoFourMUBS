import D0FullInterface
import D0ForestAssembly0314
import D0ForestChunk1216
import D0ForestChunk1217
import D0ForestChunk1218
import D0ForestChunk1219
import D0ForestChunk1220
import D0ForestChunk1221
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1592252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 50)))
theorem cover_1592252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592252 := by
  apply coveredState_split_literal (state := state_1592252) 3
    state_1592253 state_1592388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592253
  · exact cover_1592388
#print axioms cover_1592252

def state_1592470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 50)))
theorem cover_1592470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592470 := by
  apply coveredState_split_literal (state := state_1592470) 2
    state_1592471 state_1592498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592471
  · exact cover_1592498
#print axioms cover_1592470

def state_1592458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 50)))
theorem cover_1592458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592458 := by
  apply coveredState_split_literal (state := state_1592458) 0
    state_1592459 state_1592470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592459
  · exact cover_1592470
#print axioms cover_1592458

def state_1592573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 39) else (if j.val < 3 then 101 else (if j.val < 4 then 57 else 50)))
theorem cover_1592573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592573 := by
  apply coveredState_split_literal (state := state_1592573) 4
    state_1592574 state_1592599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592574
  · exact cover_1592599
#print axioms cover_1592573

def state_1592557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 57 else 50)))
theorem cover_1592557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592557 := by
  apply coveredState_split_literal (state := state_1592557) 2
    state_1592558 state_1592573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592558
  · exact cover_1592573
#print axioms cover_1592557

def state_1592551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 57 else 50)))
theorem cover_1592551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592551 := by
  apply coveredState_split_literal (state := state_1592551) 0
    state_1592552 state_1592557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592552
  · exact cover_1592557
#print axioms cover_1592551

def state_1592457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 50)))
theorem cover_1592457 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592457 := by
  apply coveredState_split_literal (state := state_1592457) 3
    state_1592458 state_1592551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592458
  · exact cover_1592551
#print axioms cover_1592457

def state_1592251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 50)))
theorem cover_1592251 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592251 := by
  apply coveredState_split_literal (state := state_1592251) 1
    state_1592252 state_1592457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592252
  · exact cover_1592457
#print axioms cover_1592251

def state_1592692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 51)))
theorem cover_1592692 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592692 := by
  apply coveredState_split_literal (state := state_1592692) 2
    state_1592693 state_1592734
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592693
  · exact cover_1592734
#print axioms cover_1592692

def state_1592662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 51)))
theorem cover_1592662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592662 := by
  apply coveredState_split_literal (state := state_1592662) 0
    state_1592663 state_1592692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592663
  · exact cover_1592692
#print axioms cover_1592662

def state_1592821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 38) else (if j.val < 3 then 101 else (if j.val < 4 then 57 else 51)))
theorem cover_1592821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592821 := by
  apply coveredState_split_literal (state := state_1592821) 4
    state_1592822 state_1592873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592822
  · exact cover_1592873
#print axioms cover_1592821

def state_1592799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 57 else 51)))
theorem cover_1592799 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592799 := by
  apply coveredState_split_literal (state := state_1592799) 2
    state_1592800 state_1592821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592800
  · exact cover_1592821
#print axioms cover_1592799

def state_1592793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 57 else 51)))
theorem cover_1592793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592793 := by
  apply coveredState_split_literal (state := state_1592793) 0
    state_1592794 state_1592799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592794
  · exact cover_1592799
#print axioms cover_1592793

def state_1592661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 51)))
theorem cover_1592661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592661 := by
  apply coveredState_split_literal (state := state_1592661) 3
    state_1592662 state_1592793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592662
  · exact cover_1592793
#print axioms cover_1592661

def state_1592886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 51)))
theorem cover_1592886 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592886 := by
  apply coveredState_split_literal (state := state_1592886) 3
    state_1592887 state_1592910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592887
  · exact cover_1592910
#print axioms cover_1592886

def state_1592660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 51)))
theorem cover_1592660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592660 := by
  apply coveredState_split_literal (state := state_1592660) 1
    state_1592661 state_1592886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592661
  · exact cover_1592886
#print axioms cover_1592660

def state_1592250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 25)))
theorem cover_1592250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592250 := by
  apply coveredState_split_literal (state := state_1592250) 4
    state_1592251 state_1592660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592251
  · exact cover_1592660
#print axioms cover_1592250

def state_1592976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 50)))
theorem cover_1592976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592976 := by
  apply coveredState_split_literal (state := state_1592976) 3
    state_1592977 state_1593012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592977
  · exact cover_1593012
#print axioms cover_1592976

def state_1592956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 50)))
theorem cover_1592956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592956 := by
  apply coveredState_split_literal (state := state_1592956) 1
    state_1592957 state_1592976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592957
  · exact cover_1592976
#print axioms cover_1592956

def state_1593047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 51)))
theorem cover_1593047 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593047 := by
  apply coveredState_split_literal (state := state_1593047) 1
    state_1593048 state_1593109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593048
  · exact cover_1593109
#print axioms cover_1593047

def state_1592955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 25)))
theorem cover_1592955 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592955 := by
  apply coveredState_split_literal (state := state_1592955) 4
    state_1592956 state_1593047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592956
  · exact cover_1593047
#print axioms cover_1592955

def state_1592249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 25)))
theorem cover_1592249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592249 := by
  apply coveredState_split_literal (state := state_1592249) 2
    state_1592250 state_1592955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592250
  · exact cover_1592955
#print axioms cover_1592249

def state_1593162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 25)))
theorem cover_1593162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593162 := by
  apply coveredState_split_literal (state := state_1593162) 2
    state_1593163 state_1593224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593163
  · exact cover_1593224
#print axioms cover_1593162

def state_1592248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1592248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592248 := by
  apply coveredState_split_literal (state := state_1592248) 3
    state_1592249 state_1593162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592249
  · exact cover_1593162
#print axioms cover_1592248

def state_1591904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1591904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591904 := by
  apply coveredState_split_literal (state := state_1591904) 1
    state_1591905 state_1592248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591905
  · exact cover_1592248
#print axioms cover_1591904

def state_1593275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 25)))
theorem cover_1593275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593275 := by
  apply coveredState_split_literal (state := state_1593275) 2
    state_1593276 state_1593337
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593276
  · exact cover_1593337
#print axioms cover_1593275

def state_1593341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 25)))
theorem cover_1593341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593341 := by
  apply coveredState_split_literal (state := state_1593341) 4
    state_1593342 state_1593383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593342
  · exact cover_1593383
#print axioms cover_1593341

def state_1593340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 25)))
theorem cover_1593340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593340 := by
  apply coveredState_split_literal (state := state_1593340) 2
    state_1593341 state_1593410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593341
  · exact cover_1593410
#print axioms cover_1593340

def state_1593274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1593274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593274 := by
  apply coveredState_split_literal (state := state_1593274) 3
    state_1593275 state_1593340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593275
  · exact cover_1593340
#print axioms cover_1593274

def state_1593450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 57 else 50)))
theorem cover_1593450 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593450 := by
  apply coveredState_split_literal (state := state_1593450) 2
    state_1593451 state_1593476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593451
  · exact cover_1593476
#print axioms cover_1593450

def state_1593426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 50)))
theorem cover_1593426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593426 := by
  apply coveredState_split_literal (state := state_1593426) 3
    state_1593427 state_1593450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593427
  · exact cover_1593450
#print axioms cover_1593426

def state_1593425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 50)))
theorem cover_1593425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593425 := by
  apply coveredState_split_literal (state := state_1593425) 1
    state_1593426 state_1593515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593426
  · exact cover_1593515
#print axioms cover_1593425
end Mub6.Numerical.CircleFullD0.Forest
