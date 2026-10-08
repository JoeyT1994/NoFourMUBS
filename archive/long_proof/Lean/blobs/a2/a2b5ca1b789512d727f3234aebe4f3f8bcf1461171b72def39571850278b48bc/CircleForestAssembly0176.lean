import CircleFullInterface
import CircleForestAssembly0175
import CircleForestChunk0667
import CircleForestChunk0668
import CircleForestChunk0669
import CircleForestChunk0670
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1461036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 4)))
theorem cover_1461036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461036 := by
  apply coveredState_split_literal (state := state_1461036) 3
    state_1461037 state_1461046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461037
  · exact cover_1461046
#print axioms cover_1461036

def state_1460954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_1460954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460954 := by
  apply coveredState_split_literal (state := state_1460954) 2
    state_1460955 state_1461036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460955
  · exact cover_1461036
#print axioms cover_1460954

def state_1461152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 4)))
theorem cover_1461152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461152 := by
  apply coveredState_split_literal (state := state_1461152) 3
    state_1461153 state_1461164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461153
  · exact cover_1461164
#print axioms cover_1461152

def state_1461231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 16)))
theorem cover_1461231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461231 := by
  apply coveredState_split_literal (state := state_1461231) 1
    state_1461232 state_1461281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461232
  · exact cover_1461281
#print axioms cover_1461231

def state_1461230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 8)))
theorem cover_1461230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461230 := by
  apply coveredState_split_literal (state := state_1461230) 4
    state_1461231 state_1461296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461231
  · exact cover_1461296
#print axioms cover_1461230

def state_1461224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 8)))
theorem cover_1461224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461224 := by
  apply coveredState_split_literal (state := state_1461224) 3
    state_1461225 state_1461230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461225
  · exact cover_1461230
#print axioms cover_1461224

def state_1461222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 8)))
theorem cover_1461222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461222 := by
  apply coveredState_split_literal (state := state_1461222) 0
    state_1461223 state_1461224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461223
  · exact cover_1461224
#print axioms cover_1461222

def state_1461221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 8)))
theorem cover_1461221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461221 := by
  apply coveredState_split_literal (state := state_1461221) 2
    state_1461222 state_1461299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461222
  · exact cover_1461299
#print axioms cover_1461221

def state_1461220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 8)))
theorem cover_1461220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461220 := by
  apply coveredState_split_literal (state := state_1461220) 1
    state_1461221 state_1461302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461221
  · exact cover_1461302
#print axioms cover_1461220

def state_1461219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 4)))
theorem cover_1461219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461219 := by
  apply coveredState_split_literal (state := state_1461219) 4
    state_1461220 state_1461315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461220
  · exact cover_1461315
#print axioms cover_1461219

def state_1461217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 4)))
theorem cover_1461217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461217 := by
  apply coveredState_split_literal (state := state_1461217) 3
    state_1461218 state_1461219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461218
  · exact cover_1461219
#print axioms cover_1461217

def state_1461151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_1461151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461151 := by
  apply coveredState_split_literal (state := state_1461151) 2
    state_1461152 state_1461217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461152
  · exact cover_1461217
#print axioms cover_1461151

def state_1460953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_1460953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460953 := by
  apply coveredState_split_literal (state := state_1460953) 1
    state_1460954 state_1461151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460954
  · exact cover_1461151
#print axioms cover_1460953

def state_1461332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 8)))
theorem cover_1461332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461332 := by
  apply coveredState_split_literal (state := state_1461332) 3
    state_1461333 state_1461340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461333
  · exact cover_1461340
#print axioms cover_1461332

def state_1461330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 8)))
theorem cover_1461330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461330 := by
  apply coveredState_split_literal (state := state_1461330) 1
    state_1461331 state_1461332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461331
  · exact cover_1461332
#print axioms cover_1461330

def state_1461329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 8)))
theorem cover_1461329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461329 := by
  apply coveredState_split_literal (state := state_1461329) 2
    state_1461330 state_1461399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461330
  · exact cover_1461399
#print axioms cover_1461329

def state_1461328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 8)))
theorem cover_1461328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461328 := by
  apply coveredState_split_literal (state := state_1461328) 0
    state_1461329 state_1461402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461329
  · exact cover_1461402
#print axioms cover_1461328

def state_1461327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 4)))
theorem cover_1461327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461327 := by
  apply coveredState_split_literal (state := state_1461327) 4
    state_1461328 state_1461405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461328
  · exact cover_1461405
#print axioms cover_1461327

def state_1461319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 4)))
theorem cover_1461319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461319 := by
  apply coveredState_split_literal (state := state_1461319) 3
    state_1461320 state_1461327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461320
  · exact cover_1461327
#print axioms cover_1461319

def state_1461317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_1461317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461317 := by
  apply coveredState_split_literal (state := state_1461317) 2
    state_1461318 state_1461319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461318
  · exact cover_1461319
#print axioms cover_1461317

def state_1461512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 32)))
theorem cover_1461512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461512 := by
  apply coveredState_split_literal (state := state_1461512) 1
    state_1461513 state_1461560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461513
  · exact cover_1461560
#print axioms cover_1461512

def state_1461511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 32)))
theorem cover_1461511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461511 := by
  apply coveredState_split_literal (state := state_1461511) 0
    state_1461512 state_1461591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461512
  · exact cover_1461591
#print axioms cover_1461511

def state_1461510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 16)))
theorem cover_1461510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461510 := by
  apply coveredState_split_literal (state := state_1461510) 4
    state_1461511 state_1461626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461511
  · exact cover_1461626
#print axioms cover_1461510

def state_1461484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 16)))
theorem cover_1461484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461484 := by
  apply coveredState_split_literal (state := state_1461484) 3
    state_1461485 state_1461510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461485
  · exact cover_1461510
#print axioms cover_1461484

def state_1461483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 16)))
theorem cover_1461483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461483 := by
  apply coveredState_split_literal (state := state_1461483) 2
    state_1461484 state_1461647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461484
  · exact cover_1461647
#print axioms cover_1461483

def state_1461482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 16)))
theorem cover_1461482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461482 := by
  apply coveredState_split_literal (state := state_1461482) 1
    state_1461483 state_1461648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461483
  · exact cover_1461648
#print axioms cover_1461482

def state_1461481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 16)))
theorem cover_1461481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461481 := by
  apply coveredState_split_literal (state := state_1461481) 0
    state_1461482 state_1461663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461482
  · exact cover_1461663
#print axioms cover_1461481

def state_1461480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 8)))
theorem cover_1461480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461480 := by
  apply coveredState_split_literal (state := state_1461480) 4
    state_1461481 state_1461680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461481
  · exact cover_1461680
#print axioms cover_1461480

def state_1461470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 8)))
theorem cover_1461470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461470 := by
  apply coveredState_split_literal (state := state_1461470) 3
    state_1461471 state_1461480
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461471
  · exact cover_1461480
#print axioms cover_1461470

def state_1461469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 8)))
theorem cover_1461469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461469 := by
  apply coveredState_split_literal (state := state_1461469) 2
    state_1461470 state_1461695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461470
  · exact cover_1461695
#print axioms cover_1461469

def state_1461468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 8)))
theorem cover_1461468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461468 := by
  apply coveredState_split_literal (state := state_1461468) 1
    state_1461469 state_1461696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461469
  · exact cover_1461696
#print axioms cover_1461468

def state_1461467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 8)))
theorem cover_1461467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461467 := by
  apply coveredState_split_literal (state := state_1461467) 0
    state_1461468 state_1461709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461468
  · exact cover_1461709
#print axioms cover_1461467
end Mub6.Numerical.CircleFullD0.Forest
