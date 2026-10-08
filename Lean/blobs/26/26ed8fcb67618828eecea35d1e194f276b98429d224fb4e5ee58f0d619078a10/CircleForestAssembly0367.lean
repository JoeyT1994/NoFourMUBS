import CircleFullInterface
import CircleForestAssembly0365
import CircleForestAssembly0366
import CircleForestChunk1420
import CircleForestChunk1422
import CircleForestChunk1429
import CircleForestChunk1430
import CircleForestChunk1431
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1643009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 20)))
theorem cover_1643009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643009 := by
  apply coveredState_split_literal (state := state_1643009) 4
    state_1643010 state_1643611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643010
  · exact cover_1643611
#print axioms cover_1643009

def state_1642881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 20)))
theorem cover_1642881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642881 := by
  apply coveredState_split_literal (state := state_1642881) 2
    state_1642882 state_1643009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642882
  · exact cover_1643009
#print axioms cover_1642881

def state_1642103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 20)))
theorem cover_1642103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642103 := by
  apply coveredState_split_literal (state := state_1642103) 0
    state_1642104 state_1642881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642104
  · exact cover_1642881
#print axioms cover_1642103

def state_1642059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 20)))
theorem cover_1642059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642059 := by
  apply coveredState_split_literal (state := state_1642059) 3
    state_1642060 state_1642103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642060
  · exact cover_1642103
#print axioms cover_1642059

def state_1643766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 20)))
theorem cover_1643766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643766 := by
  apply coveredState_split_literal (state := state_1643766) 0
    state_1643767 state_1643826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643767
  · exact cover_1643826
#print axioms cover_1643766

def state_1643764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 20)))
theorem cover_1643764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643764 := by
  apply coveredState_split_literal (state := state_1643764) 3
    state_1643765 state_1643766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643765
  · exact cover_1643766
#print axioms cover_1643764

def state_1642058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 20)))
theorem cover_1642058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642058 := by
  apply coveredState_split_literal (state := state_1642058) 1
    state_1642059 state_1643764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642059
  · exact cover_1643764
#print axioms cover_1642058

def state_1641844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 20)))
theorem cover_1641844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641844 := by
  apply coveredState_split_literal (state := state_1641844) 2
    state_1641845 state_1642058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641845
  · exact cover_1642058
#print axioms cover_1641844

def state_1641843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 10)))
theorem cover_1641843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641843 := by
  apply coveredState_split_literal (state := state_1641843) 4
    state_1641844 state_1643845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641844
  · exact cover_1643845
#print axioms cover_1641843

def state_1641539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 10)))
theorem cover_1641539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641539 := by
  apply coveredState_split_literal (state := state_1641539) 0
    state_1641540 state_1641843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641540
  · exact cover_1641843
#print axioms cover_1641539

def state_1641525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 10)))
theorem cover_1641525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641525 := by
  apply coveredState_split_literal (state := state_1641525) 3
    state_1641526 state_1641539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641526
  · exact cover_1641539
#print axioms cover_1641525

def state_1640879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 10)))
theorem cover_1640879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640879 := by
  apply coveredState_split_literal (state := state_1640879) 1
    state_1640880 state_1641525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640880
  · exact cover_1641525
#print axioms cover_1640879

def state_1644091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 103 else 40)))
theorem cover_1644091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644091 := by
  apply coveredState_split_literal (state := state_1644091) 4
    state_1644092 state_1644131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644092
  · exact cover_1644131
#print axioms cover_1644091

def state_1644049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 103 else 40)))
theorem cover_1644049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644049 := by
  apply coveredState_split_literal (state := state_1644049) 0
    state_1644050 state_1644091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644050
  · exact cover_1644091
#print axioms cover_1644049

def state_1644013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 51 else 40)))
theorem cover_1644013 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644013 := by
  apply coveredState_split_literal (state := state_1644013) 3
    state_1644014 state_1644049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644014
  · exact cover_1644049
#print axioms cover_1644013

def state_1643971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 51 else 40)))
theorem cover_1643971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643971 := by
  apply coveredState_split_literal (state := state_1643971) 1
    state_1643972 state_1644013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643972
  · exact cover_1644013
#print axioms cover_1643971

def state_1644230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 103 else 40)))
theorem cover_1644230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644230 := by
  apply coveredState_split_literal (state := state_1644230) 4
    state_1644231 state_1644256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644231
  · exact cover_1644256
#print axioms cover_1644230

def state_1644222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 103 else 40)))
theorem cover_1644222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644222 := by
  apply coveredState_split_literal (state := state_1644222) 0
    state_1644223 state_1644230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644223
  · exact cover_1644230
#print axioms cover_1644222

def state_1644216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 40)))
theorem cover_1644216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644216 := by
  apply coveredState_split_literal (state := state_1644216) 3
    state_1644217 state_1644222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644217
  · exact cover_1644222
#print axioms cover_1644216

def state_1644192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 40)))
theorem cover_1644192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644192 := by
  apply coveredState_split_literal (state := state_1644192) 1
    state_1644193 state_1644216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644193
  · exact cover_1644216
#print axioms cover_1644192

def state_1643970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 40)))
theorem cover_1643970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643970 := by
  apply coveredState_split_literal (state := state_1643970) 2
    state_1643971 state_1644192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643971
  · exact cover_1644192
#print axioms cover_1643970

def state_1644322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 51 else 41)))
theorem cover_1644322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644322 := by
  apply coveredState_split_literal (state := state_1644322) 3
    state_1644323 state_1644330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644323
  · exact cover_1644330
#print axioms cover_1644322

def state_1644298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 51 else 41)))
theorem cover_1644298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644298 := by
  apply coveredState_split_literal (state := state_1644298) 1
    state_1644299 state_1644322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644299
  · exact cover_1644322
#print axioms cover_1644298

def state_1644297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 41)))
theorem cover_1644297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644297 := by
  apply coveredState_split_literal (state := state_1644297) 2
    state_1644298 state_1644389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644298
  · exact cover_1644389
#print axioms cover_1644297

def state_1643969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 20)))
theorem cover_1643969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643969 := by
  apply coveredState_split_literal (state := state_1643969) 4
    state_1643970 state_1644297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643970
  · exact cover_1644297
#print axioms cover_1643969

def state_1643943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 20)))
theorem cover_1643943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643943 := by
  apply coveredState_split_literal (state := state_1643943) 0
    state_1643944 state_1643969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643944
  · exact cover_1643969
#print axioms cover_1643943

def state_1643923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 20)))
theorem cover_1643923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643923 := by
  apply coveredState_split_literal (state := state_1643923) 3
    state_1643924 state_1643943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643924
  · exact cover_1643943
#print axioms cover_1643923

def state_1643889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 20)))
theorem cover_1643889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643889 := by
  apply coveredState_split_literal (state := state_1643889) 1
    state_1643890 state_1643923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643890
  · exact cover_1643923
#print axioms cover_1643889

def state_1643888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 20)))
theorem cover_1643888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643888 := by
  apply coveredState_split_literal (state := state_1643888) 2
    state_1643889 state_1644408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643889
  · exact cover_1644408
#print axioms cover_1643888

def state_1643887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 10)))
theorem cover_1643887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643887 := by
  apply coveredState_split_literal (state := state_1643887) 4
    state_1643888 state_1644437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643888
  · exact cover_1644437
#print axioms cover_1643887

def state_1643885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 10)))
theorem cover_1643885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643885 := by
  apply coveredState_split_literal (state := state_1643885) 0
    state_1643886 state_1643887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643886
  · exact cover_1643887
#print axioms cover_1643885

def state_1643883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 10)))
theorem cover_1643883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643883 := by
  apply coveredState_split_literal (state := state_1643883) 3
    state_1643884 state_1643885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643884
  · exact cover_1643885
#print axioms cover_1643883
end Mub6.Numerical.CircleFullD0.Forest
