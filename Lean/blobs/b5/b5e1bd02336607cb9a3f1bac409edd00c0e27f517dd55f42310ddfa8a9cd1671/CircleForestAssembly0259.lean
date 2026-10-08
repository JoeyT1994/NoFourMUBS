import CircleFullInterface
import CircleForestAssembly0258
import CircleForestChunk0991
import CircleForestChunk0992
import CircleForestChunk0993
import CircleForestChunk0994
import CircleForestChunk0995
import CircleForestChunk0996
import CircleForestChunk0997
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1538432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 18 else 21)))
theorem cover_1538432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538432 := by
  apply coveredState_split_literal (state := state_1538432) 0
    state_1538433 state_1538466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538433
  · exact cover_1538466
#print axioms cover_1538432

def state_1538431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 21)))
theorem cover_1538431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538431 := by
  apply coveredState_split_literal (state := state_1538431) 3
    state_1538432 state_1538509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538432
  · exact cover_1538509
#print axioms cover_1538431

def state_1538620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 18 else 43)))
theorem cover_1538620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538620 := by
  apply coveredState_split_literal (state := state_1538620) 1
    state_1538621 state_1538666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538621
  · exact cover_1538666
#print axioms cover_1538620

def state_1538618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 18 else 21)))
theorem cover_1538618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538618 := by
  apply coveredState_split_literal (state := state_1538618) 4
    state_1538619 state_1538620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538619
  · exact cover_1538620
#print axioms cover_1538618

def state_1538617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 18 else 21)))
theorem cover_1538617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538617 := by
  apply coveredState_split_literal (state := state_1538617) 2
    state_1538618 state_1538707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538618
  · exact cover_1538707
#print axioms cover_1538617

def state_1538555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 18 else 21)))
theorem cover_1538555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538555 := by
  apply coveredState_split_literal (state := state_1538555) 0
    state_1538556 state_1538617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538556
  · exact cover_1538617
#print axioms cover_1538555

def state_1538820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 38 else 43)))
theorem cover_1538820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538820 := by
  apply coveredState_split_literal (state := state_1538820) 1
    state_1538821 state_1538834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538821
  · exact cover_1538834
#print axioms cover_1538820

def state_1538819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 19 else 43)))
theorem cover_1538819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538819 := by
  apply coveredState_split_literal (state := state_1538819) 3
    state_1538820 state_1538885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538820
  · exact cover_1538885
#print axioms cover_1538819

def state_1538793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 19 else 21)))
theorem cover_1538793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538793 := by
  apply coveredState_split_literal (state := state_1538793) 4
    state_1538794 state_1538819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538794
  · exact cover_1538819
#print axioms cover_1538793

def state_1538957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 49 else (if j.val < 4 then 38 else 43)))
theorem cover_1538957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538957 := by
  apply coveredState_split_literal (state := state_1538957) 1
    state_1538958 state_1538991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538958
  · exact cover_1538991
#print axioms cover_1538957

def state_1539066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 49 else (if j.val < 4 then 39 else 43)))
theorem cover_1539066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539066 := by
  apply coveredState_split_literal (state := state_1539066) 0
    state_1539067 state_1539106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539067
  · exact cover_1539106
#print axioms cover_1539066

def state_1539052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 49 else (if j.val < 4 then 39 else 43)))
theorem cover_1539052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539052 := by
  apply coveredState_split_literal (state := state_1539052) 1
    state_1539053 state_1539066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539053
  · exact cover_1539066
#print axioms cover_1539052

def state_1538956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 49 else (if j.val < 4 then 19 else 43)))
theorem cover_1538956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538956 := by
  apply coveredState_split_literal (state := state_1538956) 3
    state_1538957 state_1539052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538957
  · exact cover_1539052
#print axioms cover_1538956

def state_1538894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 49 else (if j.val < 4 then 19 else 21)))
theorem cover_1538894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538894 := by
  apply coveredState_split_literal (state := state_1538894) 4
    state_1538895 state_1538956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538895
  · exact cover_1538956
#print axioms cover_1538894

def state_1538792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 21)))
theorem cover_1538792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538792 := by
  apply coveredState_split_literal (state := state_1538792) 2
    state_1538793 state_1538894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538793
  · exact cover_1538894
#print axioms cover_1538792

def state_1538728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 21)))
theorem cover_1538728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538728 := by
  apply coveredState_split_literal (state := state_1538728) 0
    state_1538729 state_1538792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538729
  · exact cover_1538792
#print axioms cover_1538728

def state_1538554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 21)))
theorem cover_1538554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538554 := by
  apply coveredState_split_literal (state := state_1538554) 3
    state_1538555 state_1538728
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538555
  · exact cover_1538728
#print axioms cover_1538554

def state_1538430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 21)))
theorem cover_1538430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538430 := by
  apply coveredState_split_literal (state := state_1538430) 1
    state_1538431 state_1538554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538431
  · exact cover_1538554
#print axioms cover_1538430

def state_1538276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 10)))
theorem cover_1538276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538276 := by
  apply coveredState_split_literal (state := state_1538276) 4
    state_1538277 state_1538430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538277
  · exact cover_1538430
#print axioms cover_1538276

def state_1539188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 20)))
theorem cover_1539188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539188 := by
  apply coveredState_split_literal (state := state_1539188) 2
    state_1539189 state_1539230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539189
  · exact cover_1539230
#print axioms cover_1539188

def state_1539272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 20)))
theorem cover_1539272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539272 := by
  apply coveredState_split_literal (state := state_1539272) 1
    state_1539273 state_1539296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539273
  · exact cover_1539296
#print axioms cover_1539272

def state_1539351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 20)))
theorem cover_1539351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539351 := by
  apply coveredState_split_literal (state := state_1539351) 1
    state_1539352 state_1539365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539352
  · exact cover_1539365
#print axioms cover_1539351

def state_1539271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 20)))
theorem cover_1539271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539271 := by
  apply coveredState_split_literal (state := state_1539271) 2
    state_1539272 state_1539351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539272
  · exact cover_1539351
#print axioms cover_1539271

def state_1539187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 20)))
theorem cover_1539187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539187 := by
  apply coveredState_split_literal (state := state_1539187) 0
    state_1539188 state_1539271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539188
  · exact cover_1539271
#print axioms cover_1539187

def state_1539171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 20)))
theorem cover_1539171 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539171 := by
  apply coveredState_split_literal (state := state_1539171) 3
    state_1539172 state_1539187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539172
  · exact cover_1539187
#print axioms cover_1539171

def state_1539460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 20)))
theorem cover_1539460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539460 := by
  apply coveredState_split_literal (state := state_1539460) 2
    state_1539461 state_1539492
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539461
  · exact cover_1539492
#print axioms cover_1539460

def state_1539428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 20)))
theorem cover_1539428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539428 := by
  apply coveredState_split_literal (state := state_1539428) 0
    state_1539429 state_1539460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539429
  · exact cover_1539460
#print axioms cover_1539428

def state_1539424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 20)))
theorem cover_1539424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539424 := by
  apply coveredState_split_literal (state := state_1539424) 3
    state_1539425 state_1539428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539425
  · exact cover_1539428
#print axioms cover_1539424

def state_1539170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 20)))
theorem cover_1539170 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539170 := by
  apply coveredState_split_literal (state := state_1539170) 1
    state_1539171 state_1539424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539171
  · exact cover_1539424
#print axioms cover_1539170

def state_1539712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 42)))
theorem cover_1539712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539712 := by
  apply coveredState_split_literal (state := state_1539712) 0
    state_1539713 state_1539768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539713
  · exact cover_1539768
#print axioms cover_1539712

def state_1539711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 42)))
theorem cover_1539711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539711 := by
  apply coveredState_split_literal (state := state_1539711) 1
    state_1539712 state_1539821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539712
  · exact cover_1539821
#print axioms cover_1539711

def state_1539689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 42)))
theorem cover_1539689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539689 := by
  apply coveredState_split_literal (state := state_1539689) 3
    state_1539690 state_1539711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539690
  · exact cover_1539711
#print axioms cover_1539689
end Mub6.Numerical.CircleFullD0.Forest
