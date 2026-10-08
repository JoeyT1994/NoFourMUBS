import CircleFullInterface
import CircleForestAssembly0133
import CircleForestAssembly0135
import CircleForestAssembly0136
import CircleForestAssembly0140
import CircleForestChunk0546
import CircleForestChunk0547
import CircleForestChunk0548
import CircleForestChunk0549
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1320008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 50)))
theorem cover_1320008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320008 := by
  apply coveredState_split_literal (state := state_1320008) 2
    state_1320009 state_1320036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320009
  · exact cover_1320036
#print axioms cover_1320008

def state_1320007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 50)))
theorem cover_1320007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320007 := by
  apply coveredState_split_literal (state := state_1320007) 3
    state_1320008 state_1320109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320008
  · exact cover_1320109
#print axioms cover_1320007

def state_1320006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
theorem cover_1320006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320006 := by
  apply coveredState_split_literal (state := state_1320006) 4
    state_1320007 state_1320114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320007
  · exact cover_1320114
#print axioms cover_1320006

def state_1319974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
theorem cover_1319974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319974 := by
  apply coveredState_split_literal (state := state_1319974) 0
    state_1319975 state_1320006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319975
  · exact cover_1320006
#print axioms cover_1319974

def state_1320199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 51)))
theorem cover_1320199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320199 := by
  apply coveredState_split_literal (state := state_1320199) 0
    state_1320200 state_1320213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320200
  · exact cover_1320213
#print axioms cover_1320199

def state_1320198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 51)))
theorem cover_1320198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320198 := by
  apply coveredState_split_literal (state := state_1320198) 1
    state_1320199 state_1320266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320199
  · exact cover_1320266
#print axioms cover_1320198

def state_1320196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 51)))
theorem cover_1320196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320196 := by
  apply coveredState_split_literal (state := state_1320196) 2
    state_1320197 state_1320198
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320197
  · exact cover_1320198
#print axioms cover_1320196

def state_1320195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 51)))
theorem cover_1320195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320195 := by
  apply coveredState_split_literal (state := state_1320195) 3
    state_1320196 state_1320315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320196
  · exact cover_1320315
#print axioms cover_1320195

def state_1320145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
theorem cover_1320145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320145 := by
  apply coveredState_split_literal (state := state_1320145) 4
    state_1320146 state_1320195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320146
  · exact cover_1320195
#print axioms cover_1320145

def state_1320137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
theorem cover_1320137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320137 := by
  apply coveredState_split_literal (state := state_1320137) 0
    state_1320138 state_1320145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320138
  · exact cover_1320145
#print axioms cover_1320137

def state_1319973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
theorem cover_1319973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319973 := by
  apply coveredState_split_literal (state := state_1319973) 1
    state_1319974 state_1320137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319974
  · exact cover_1320137
#print axioms cover_1319973

def state_1320340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
theorem cover_1320340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320340 := by
  apply coveredState_split_literal (state := state_1320340) 4
    state_1320341 state_1320342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320341
  · exact cover_1320342
#print axioms cover_1320340

def state_1320338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
theorem cover_1320338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320338 := by
  apply coveredState_split_literal (state := state_1320338) 0
    state_1320339 state_1320340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320339
  · exact cover_1320340
#print axioms cover_1320338

def state_1320316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
theorem cover_1320316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320316 := by
  apply coveredState_split_literal (state := state_1320316) 1
    state_1320317 state_1320338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320317
  · exact cover_1320338
#print axioms cover_1320316

def state_1319972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 25)))
theorem cover_1319972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319972 := by
  apply coveredState_split_literal (state := state_1319972) 2
    state_1319973 state_1320316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319973
  · exact cover_1320316
#print axioms cover_1319972

def state_1319971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 25)))
theorem cover_1319971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319971 := by
  apply coveredState_split_literal (state := state_1319971) 3
    state_1319972 state_1320405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319972
  · exact cover_1320405
#print axioms cover_1319971

def state_1319915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_1319915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319915 := by
  apply coveredState_split_literal (state := state_1319915) 4
    state_1319916 state_1319971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319916
  · exact cover_1319971
#print axioms cover_1319915

def state_1319907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_1319907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319907 := by
  apply coveredState_split_literal (state := state_1319907) 0
    state_1319908 state_1319915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319908
  · exact cover_1319915
#print axioms cover_1319907

def state_1319845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_1319845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319845 := by
  apply coveredState_split_literal (state := state_1319845) 2
    state_1319846 state_1319907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319846
  · exact cover_1319907
#print axioms cover_1319845

def state_1319539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_1319539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319539 := by
  apply coveredState_split_literal (state := state_1319539) 1
    state_1319540 state_1319845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319540
  · exact cover_1319845
#print axioms cover_1319539

def state_1320412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
theorem cover_1320412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320412 := by
  apply coveredState_split_literal (state := state_1320412) 1
    state_1320413 state_1320432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320413
  · exact cover_1320432
#print axioms cover_1320412

def state_1319538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
theorem cover_1319538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319538 := by
  apply coveredState_split_literal (state := state_1319538) 4
    state_1319539 state_1320412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319539
  · exact cover_1320412
#print axioms cover_1319538

def state_1315702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1315702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315702 := by
  apply coveredState_split_literal (state := state_1315702) 3
    state_1315703 state_1319538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315703
  · exact cover_1319538
#print axioms cover_1315702

def state_1315608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1315608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315608 := by
  apply coveredState_split_literal (state := state_1315608) 0
    state_1315609 state_1315702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315609
  · exact cover_1315702
#print axioms cover_1315608

def state_1315607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_1315607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315607 := by
  apply coveredState_split_literal (state := state_1315607) 4
    state_1315608 state_1320485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315608
  · exact cover_1320485
#print axioms cover_1315607

def state_1315606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_1315606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315606 := by
  apply coveredState_split_literal (state := state_1315606) 3
    state_1315607 state_1320492
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315607
  · exact cover_1320492
#print axioms cover_1315606

def state_1320511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1320511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320511 := by
  apply coveredState_split_literal (state := state_1320511) 3
    state_1320512 state_1320569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320512
  · exact cover_1320569
#print axioms cover_1320511

def state_1315605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1315605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315605 := by
  apply coveredState_split_literal (state := state_1315605) 2
    state_1315606 state_1320511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315606
  · exact cover_1320511
#print axioms cover_1315605

def state_1315251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1315251 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315251 := by
  apply coveredState_split_literal (state := state_1315251) 1
    state_1315252 state_1315605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315252
  · exact cover_1315605
#print axioms cover_1315251

def state_1315155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1315155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315155 := by
  apply coveredState_split_literal (state := state_1315155) 0
    state_1315156 state_1315251
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315156
  · exact cover_1315251
#print axioms cover_1315155

def state_1312605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1312605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312605 := by
  apply coveredState_split_literal (state := state_1312605) 4
    state_1312606 state_1315155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312606
  · exact cover_1315155
#print axioms cover_1312605

def state_1312133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1312133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312133 := by
  apply coveredState_split_literal (state := state_1312133) 3
    state_1312134 state_1312605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312134
  · exact cover_1312605
#print axioms cover_1312133
end Mub6.Numerical.CircleFullD0.Forest
