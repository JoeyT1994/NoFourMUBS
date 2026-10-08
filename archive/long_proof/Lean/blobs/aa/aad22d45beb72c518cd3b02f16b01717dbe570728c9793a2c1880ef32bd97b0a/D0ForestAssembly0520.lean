import D0FullInterface
import D0ForestAssembly0519
import D0ForestChunk2045
import D0ForestChunk2047
import D0ForestChunk2048
import D0ForestChunk2049
import D0ForestChunk2050
import D0ForestChunk2051
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2571711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 24)))
theorem cover_2571711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571711 := by
  apply coveredState_split_literal (state := state_2571711) 3
    state_2571712 state_2571787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571712
  · exact cover_2571787
#print axioms cover_2571711

def state_2571551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 24)))
theorem cover_2571551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571551 := by
  apply coveredState_split_literal (state := state_2571551) 2
    state_2571552 state_2571711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571552
  · exact cover_2571711
#print axioms cover_2571551

def state_2571545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 24)))
theorem cover_2571545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571545 := by
  apply coveredState_split_literal (state := state_2571545) 0
    state_2571546 state_2571551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571546
  · exact cover_2571551
#print axioms cover_2571545

def state_2571544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_2571544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571544 := by
  apply coveredState_split_literal (state := state_2571544) 4
    state_2571545 state_2571824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571545
  · exact cover_2571824
#print axioms cover_2571544

def state_2571543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_2571543 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571543 := by
  apply coveredState_split_literal (state := state_2571543) 1
    state_2571544 state_2571831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571544
  · exact cover_2571831
#print axioms cover_2571543

def state_2571542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 12)))
theorem cover_2571542 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571542 := by
  apply coveredState_split_literal (state := state_2571542) 3
    state_2571543 state_2571840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571543
  · exact cover_2571840
#print axioms cover_2571542

def state_2571541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 12)))
theorem cover_2571541 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571541 := by
  apply coveredState_split_literal (state := state_2571541) 2
    state_2571542 state_2571877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571542
  · exact cover_2571877
#print axioms cover_2571541

def state_2571540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_2571540 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571540 := by
  apply coveredState_split_literal (state := state_2571540) 4
    state_2571541 state_2571928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571541
  · exact cover_2571928
#print axioms cover_2571540

def state_2571539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_2571539 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571539 := by
  apply coveredState_split_literal (state := state_2571539) 1
    state_2571540 state_2571929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571540
  · exact cover_2571929
#print axioms cover_2571539

def state_2571994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 96)))
theorem cover_2571994 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571994 := by
  apply coveredState_split_literal (state := state_2571994) 0
    state_2571995 state_2572026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571995
  · exact cover_2572026
#print axioms cover_2571994

def state_2571993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 48)))
theorem cover_2571993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571993 := by
  apply coveredState_split_literal (state := state_2571993) 4
    state_2571994 state_2572061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571994
  · exact cover_2572061
#print axioms cover_2571993

def state_2571992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 48)))
theorem cover_2571992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571992 := by
  apply coveredState_split_literal (state := state_2571992) 1
    state_2571993 state_2572114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571993
  · exact cover_2572114
#print axioms cover_2571992

def state_2571991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 48)))
theorem cover_2571991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571991 := by
  apply coveredState_split_literal (state := state_2571991) 3
    state_2571992 state_2572139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571992
  · exact cover_2572139
#print axioms cover_2571991

def state_2571959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_2571959 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571959 := by
  apply coveredState_split_literal (state := state_2571959) 2
    state_2571960 state_2571991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571960
  · exact cover_2571991
#print axioms cover_2571959

def state_2571958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_2571958 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571958 := by
  apply coveredState_split_literal (state := state_2571958) 0
    state_2571959 state_2572182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571959
  · exact cover_2572182
#print axioms cover_2571958

def state_2571957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_2571957 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571957 := by
  apply coveredState_split_literal (state := state_2571957) 4
    state_2571958 state_2572205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571958
  · exact cover_2572205
#print axioms cover_2571957

def state_2571956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_2571956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571956 := by
  apply coveredState_split_literal (state := state_2571956) 1
    state_2571957 state_2572244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571957
  · exact cover_2572244
#print axioms cover_2571956

def state_2571938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 24)))
theorem cover_2571938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571938 := by
  apply coveredState_split_literal (state := state_2571938) 3
    state_2571939 state_2571956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2571939
  · exact cover_2571956
#print axioms cover_2571938

def state_2572304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 96)))
theorem cover_2572304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572304 := by
  apply coveredState_split_literal (state := state_2572304) 0
    state_2572305 state_2572334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572305
  · exact cover_2572334
#print axioms cover_2572304

def state_2572303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 48)))
theorem cover_2572303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572303 := by
  apply coveredState_split_literal (state := state_2572303) 4
    state_2572304 state_2572369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572304
  · exact cover_2572369
#print axioms cover_2572303

def state_2572302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 48)))
theorem cover_2572302 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572302 := by
  apply coveredState_split_literal (state := state_2572302) 1
    state_2572303 state_2572390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572303
  · exact cover_2572390
#print axioms cover_2572302

def state_2572301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 48)))
theorem cover_2572301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572301 := by
  apply coveredState_split_literal (state := state_2572301) 2
    state_2572302 state_2572447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572302
  · exact cover_2572447
#print axioms cover_2572301

def state_2572269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 48)))
theorem cover_2572269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572269 := by
  apply coveredState_split_literal (state := state_2572269) 3
    state_2572270 state_2572301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572270
  · exact cover_2572301
#print axioms cover_2572269

def state_2572268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 48)))
theorem cover_2572268 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572268 := by
  apply coveredState_split_literal (state := state_2572268) 0
    state_2572269 state_2572490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572269
  · exact cover_2572490
#print axioms cover_2572268

def state_2572267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 24)))
theorem cover_2572267 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572267 := by
  apply coveredState_split_literal (state := state_2572267) 4
    state_2572268 state_2572513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572268
  · exact cover_2572513
#print axioms cover_2572267

def state_2572266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 24)))
theorem cover_2572266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572266 := by
  apply coveredState_split_literal (state := state_2572266) 1
    state_2572267 state_2572528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572267
  · exact cover_2572528
#print axioms cover_2572266

def state_2572580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 96)))
theorem cover_2572580 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572580 := by
  apply coveredState_split_literal (state := state_2572580) 0
    state_2572581 state_2572610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572581
  · exact cover_2572610
#print axioms cover_2572580

def state_2572579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 48)))
theorem cover_2572579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572579 := by
  apply coveredState_split_literal (state := state_2572579) 4
    state_2572580 state_2572655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572580
  · exact cover_2572655
#print axioms cover_2572579

def state_2572710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 48)))
theorem cover_2572710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572710 := by
  apply coveredState_split_literal (state := state_2572710) 4
    state_2572711 state_2572766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572711
  · exact cover_2572766
#print axioms cover_2572710

def state_2572578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 48)))
theorem cover_2572578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572578 := by
  apply coveredState_split_literal (state := state_2572578) 1
    state_2572579 state_2572710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572579
  · exact cover_2572710
#print axioms cover_2572578

def state_2572577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 29 else 48)))
theorem cover_2572577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572577 := by
  apply coveredState_split_literal (state := state_2572577) 3
    state_2572578 state_2572789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572578
  · exact cover_2572789
#print axioms cover_2572577

def state_2572576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 48)))
theorem cover_2572576 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572576 := by
  apply coveredState_split_literal (state := state_2572576) 2
    state_2572577 state_2572820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2572577
  · exact cover_2572820
#print axioms cover_2572576
end Mub6.Numerical.CircleFullD0.Forest
