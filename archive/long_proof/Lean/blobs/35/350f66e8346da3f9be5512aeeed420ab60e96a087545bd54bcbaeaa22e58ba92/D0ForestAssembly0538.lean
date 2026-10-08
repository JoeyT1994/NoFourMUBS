import D0FullInterface
import D0ForestAssembly0537
import D0ForestChunk2118
import D0ForestChunk2120
import D0ForestChunk2122
import D0ForestChunk2123
import D0ForestChunk2124
import D0ForestChunk2125
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2589603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
theorem cover_2589603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589603 := by
  apply coveredState_split_literal (state := state_2589603) 0
    state_2589604 state_2590035
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589604
  · exact cover_2590035
#print axioms cover_2589603

def state_2589543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 19)))
theorem cover_2589543 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589543 := by
  apply coveredState_split_literal (state := state_2589543) 3
    state_2589544 state_2589603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589544
  · exact cover_2589603
#print axioms cover_2589543

def state_2590087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 39)))
theorem cover_2590087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590087 := by
  apply coveredState_split_literal (state := state_2590087) 1
    state_2590088 state_2590127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590088
  · exact cover_2590127
#print axioms cover_2590087

def state_2590073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 19)))
theorem cover_2590073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590073 := by
  apply coveredState_split_literal (state := state_2590073) 4
    state_2590074 state_2590087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590074
  · exact cover_2590087
#print axioms cover_2590073

def state_2590072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 19)))
theorem cover_2590072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590072 := by
  apply coveredState_split_literal (state := state_2590072) 0
    state_2590073 state_2590160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590073
  · exact cover_2590160
#print axioms cover_2590072

def state_2590056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 19)))
theorem cover_2590056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590056 := by
  apply coveredState_split_literal (state := state_2590056) 3
    state_2590057 state_2590072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590057
  · exact cover_2590072
#print axioms cover_2590056

def state_2589542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 19)))
theorem cover_2589542 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589542 := by
  apply coveredState_split_literal (state := state_2589542) 2
    state_2589543 state_2590056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589543
  · exact cover_2590056
#print axioms cover_2589542

def state_2589506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 9)))
theorem cover_2589506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589506 := by
  apply coveredState_split_literal (state := state_2589506) 4
    state_2589507 state_2589542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589507
  · exact cover_2589542
#print axioms cover_2589506

def state_2590214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
theorem cover_2590214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590214 := by
  apply coveredState_split_literal (state := state_2590214) 4
    state_2590215 state_2590238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590215
  · exact cover_2590238
#print axioms cover_2590214

def state_2590213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
theorem cover_2590213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590213 := by
  apply coveredState_split_literal (state := state_2590213) 1
    state_2590214 state_2590289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590214
  · exact cover_2590289
#print axioms cover_2590213

def state_2590212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
theorem cover_2590212 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590212 := by
  apply coveredState_split_literal (state := state_2590212) 0
    state_2590213 state_2590312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590213
  · exact cover_2590312
#print axioms cover_2590212

def state_2590196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 19)))
theorem cover_2590196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590196 := by
  apply coveredState_split_literal (state := state_2590196) 3
    state_2590197 state_2590212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590197
  · exact cover_2590212
#print axioms cover_2590196

def state_2590195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 19)))
theorem cover_2590195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590195 := by
  apply coveredState_split_literal (state := state_2590195) 2
    state_2590196 state_2590317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590196
  · exact cover_2590317
#print axioms cover_2590195

def state_2590165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 9)))
theorem cover_2590165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590165 := by
  apply coveredState_split_literal (state := state_2590165) 4
    state_2590166 state_2590195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590166
  · exact cover_2590195
#print axioms cover_2590165

def state_2589505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 9)))
theorem cover_2589505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589505 := by
  apply coveredState_split_literal (state := state_2589505) 1
    state_2589506 state_2590165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589506
  · exact cover_2590165
#print axioms cover_2589505

def state_2589504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 9)))
theorem cover_2589504 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589504 := by
  apply coveredState_split_literal (state := state_2589504) 0
    state_2589505 state_2590338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589505
  · exact cover_2590338
#print axioms cover_2589504

def state_2589488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 9)))
theorem cover_2589488 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589488 := by
  apply coveredState_split_literal (state := state_2589488) 3
    state_2589489 state_2589504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589489
  · exact cover_2589504
#print axioms cover_2589488

def state_2589487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 9)))
theorem cover_2589487 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589487 := by
  apply coveredState_split_literal (state := state_2589487) 2
    state_2589488 state_2590349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589488
  · exact cover_2590349
#print axioms cover_2589487

def state_2589477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
theorem cover_2589477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589477 := by
  apply coveredState_split_literal (state := state_2589477) 4
    state_2589478 state_2589487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589478
  · exact cover_2589487
#print axioms cover_2589477

def state_2589105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
theorem cover_2589105 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589105 := by
  apply coveredState_split_literal (state := state_2589105) 1
    state_2589106 state_2589477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589106
  · exact cover_2589477
#print axioms cover_2589105

def state_2589097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 4)))
theorem cover_2589097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589097 := by
  apply coveredState_split_literal (state := state_2589097) 3
    state_2589098 state_2589105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589098
  · exact cover_2589105
#print axioms cover_2589097

def state_2589096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_2589096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589096 := by
  apply coveredState_split_literal (state := state_2589096) 2
    state_2589097 state_2590372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589097
  · exact cover_2590372
#print axioms cover_2589096

def state_2584890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_2584890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584890 := by
  apply coveredState_split_literal (state := state_2584890) 0
    state_2584891 state_2589096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584891
  · exact cover_2589096
#print axioms cover_2584890

def state_2590508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 45 else 40)))
theorem cover_2590508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590508 := by
  apply coveredState_split_literal (state := state_2590508) 1
    state_2590509 state_2590552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590509
  · exact cover_2590552
#print axioms cover_2590508

def state_2590507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 45 else 20)))
theorem cover_2590507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590507 := by
  apply coveredState_split_literal (state := state_2590507) 4
    state_2590508 state_2590601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590508
  · exact cover_2590601
#print axioms cover_2590507

def state_2590469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 22 else 20)))
theorem cover_2590469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590469 := by
  apply coveredState_split_literal (state := state_2590469) 3
    state_2590470 state_2590507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590470
  · exact cover_2590507
#print axioms cover_2590469

def state_2590465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 22 else 20)))
theorem cover_2590465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590465 := by
  apply coveredState_split_literal (state := state_2590465) 0
    state_2590466 state_2590469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590466
  · exact cover_2590469
#print axioms cover_2590465

def state_2590423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 20)))
theorem cover_2590423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590423 := by
  apply coveredState_split_literal (state := state_2590423) 2
    state_2590424 state_2590465
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590424
  · exact cover_2590465
#print axioms cover_2590423

def state_2590602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 20)))
theorem cover_2590602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590602 := by
  apply coveredState_split_literal (state := state_2590602) 2
    state_2590603 state_2590626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590603
  · exact cover_2590626
#print axioms cover_2590602

def state_2590422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 20)))
theorem cover_2590422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590422 := by
  apply coveredState_split_literal (state := state_2590422) 1
    state_2590423 state_2590602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590423
  · exact cover_2590602
#print axioms cover_2590422

def state_2590421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 10)))
theorem cover_2590421 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590421 := by
  apply coveredState_split_literal (state := state_2590421) 4
    state_2590422 state_2590677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590422
  · exact cover_2590677
#print axioms cover_2590421

def state_2590420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 10)))
theorem cover_2590420 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590420 := by
  apply coveredState_split_literal (state := state_2590420) 3
    state_2590421 state_2590678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590421
  · exact cover_2590678
#print axioms cover_2590420
end Mub6.Numerical.CircleFullD0.Forest
