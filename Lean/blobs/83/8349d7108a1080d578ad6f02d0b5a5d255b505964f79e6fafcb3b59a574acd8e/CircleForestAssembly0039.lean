import CircleFullInterface
import CircleForestAssembly0038
import CircleForestChunk0154
import CircleForestChunk0155
import CircleForestChunk0156
import CircleForestChunk0157
import CircleForestChunk0158
import CircleForestChunk0159
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_974806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 28)))
theorem cover_974806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974806 := by
  apply coveredState_split_literal (state := state_974806) 3
    state_974807 state_974926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974807
  · exact cover_974926
#print axioms cover_974806

def state_974788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 28)))
theorem cover_974788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974788 := by
  apply coveredState_split_literal (state := state_974788) 1
    state_974789 state_974806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974789
  · exact cover_974806
#print axioms cover_974788

def state_974990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 60 else (if j.val < 4 then 42 else 56)))
theorem cover_974990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974990 := by
  apply coveredState_split_literal (state := state_974990) 0
    state_974991 state_975054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974991
  · exact cover_975054
#print axioms cover_974990

def state_975076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 43) else (if j.val < 3 then 61 else (if j.val < 4 then 42 else 56)))
theorem cover_975076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975076 := by
  apply coveredState_split_literal (state := state_975076) 1
    state_975077 state_975086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975077
  · exact cover_975086
#print axioms cover_975076

def state_975075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 61 else (if j.val < 4 then 42 else 56)))
theorem cover_975075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975075 := by
  apply coveredState_split_literal (state := state_975075) 0
    state_975076 state_975147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975076
  · exact cover_975147
#print axioms cover_975075

def state_974989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 56)))
theorem cover_974989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974989 := by
  apply coveredState_split_literal (state := state_974989) 2
    state_974990 state_975075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974990
  · exact cover_975075
#print axioms cover_974989

def state_974988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 28)))
theorem cover_974988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974988 := by
  apply coveredState_split_literal (state := state_974988) 4
    state_974989 state_975174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974989
  · exact cover_975174
#print axioms cover_974988

def state_975225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 30 else (if j.val < 4 then 43 else 28)))
theorem cover_975225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975225 := by
  apply coveredState_split_literal (state := state_975225) 4
    state_975226 state_975247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975226
  · exact cover_975247
#print axioms cover_975225

def state_974987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 28)))
theorem cover_974987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974987 := by
  apply coveredState_split_literal (state := state_974987) 3
    state_974988 state_975225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974988
  · exact cover_975225
#print axioms cover_974987

def state_974965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 28)))
theorem cover_974965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974965 := by
  apply coveredState_split_literal (state := state_974965) 1
    state_974966 state_974987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974966
  · exact cover_974987
#print axioms cover_974965

def state_974787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 28)))
theorem cover_974787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974787 := by
  apply coveredState_split_literal (state := state_974787) 0
    state_974788 state_974965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974788
  · exact cover_974965
#print axioms cover_974787

def state_975434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 87) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 57)))
theorem cover_975434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975434 := by
  apply coveredState_split_literal (state := state_975434) 3
    state_975435 state_975476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975435
  · exact cover_975476
#print axioms cover_975434

def state_975426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 43) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 57)))
theorem cover_975426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975426 := by
  apply coveredState_split_literal (state := state_975426) 1
    state_975427 state_975434
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975427
  · exact cover_975434
#print axioms cover_975426

def state_975507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 87) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 57)))
theorem cover_975507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975507 := by
  apply coveredState_split_literal (state := state_975507) 3
    state_975508 state_975569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975508
  · exact cover_975569
#print axioms cover_975507

def state_975501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 43) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 57)))
theorem cover_975501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975501 := by
  apply coveredState_split_literal (state := state_975501) 1
    state_975502 state_975507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975502
  · exact cover_975507
#print axioms cover_975501

def state_975425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 57)))
theorem cover_975425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975425 := by
  apply coveredState_split_literal (state := state_975425) 0
    state_975426 state_975501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975426
  · exact cover_975501
#print axioms cover_975425

def state_975628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 87) else (if j.val < 3 then 63 else (if j.val < 4 then 43 else 57)))
theorem cover_975628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975628 := by
  apply coveredState_split_literal (state := state_975628) 3
    state_975629 state_975652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975629
  · exact cover_975652
#print axioms cover_975628

def state_975622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 43) else (if j.val < 3 then 63 else (if j.val < 4 then 43 else 57)))
theorem cover_975622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975622 := by
  apply coveredState_split_literal (state := state_975622) 1
    state_975623 state_975628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975623
  · exact cover_975628
#print axioms cover_975622

def state_975608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 63 else (if j.val < 4 then 43 else 57)))
theorem cover_975608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975608 := by
  apply coveredState_split_literal (state := state_975608) 0
    state_975609 state_975622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975609
  · exact cover_975622
#print axioms cover_975608

def state_975424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 57)))
theorem cover_975424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975424 := by
  apply coveredState_split_literal (state := state_975424) 2
    state_975425 state_975608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975425
  · exact cover_975608
#print axioms cover_975424

def state_975416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 28)))
theorem cover_975416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975416 := by
  apply coveredState_split_literal (state := state_975416) 4
    state_975417 state_975424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975417
  · exact cover_975424
#print axioms cover_975416

def state_975364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
theorem cover_975364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975364 := by
  apply coveredState_split_literal (state := state_975364) 3
    state_975365 state_975416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975365
  · exact cover_975416
#print axioms cover_975364

def state_975346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
theorem cover_975346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975346 := by
  apply coveredState_split_literal (state := state_975346) 1
    state_975347 state_975364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975347
  · exact cover_975364
#print axioms cover_975346

def state_975298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
theorem cover_975298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975298 := by
  apply coveredState_split_literal (state := state_975298) 0
    state_975299 state_975346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975299
  · exact cover_975346
#print axioms cover_975298

def state_974786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 28)))
theorem cover_974786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974786 := by
  apply coveredState_split_literal (state := state_974786) 2
    state_974787 state_975298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974787
  · exact cover_975298
#print axioms cover_974786

def state_974785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 14)))
theorem cover_974785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974785 := by
  apply coveredState_split_literal (state := state_974785) 4
    state_974786 state_975699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974786
  · exact cover_975699
#print axioms cover_974785

def state_974665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_974665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974665 := by
  apply coveredState_split_literal (state := state_974665) 3
    state_974666 state_974785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974666
  · exact cover_974785
#print axioms cover_974665

def state_974641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_974641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974641 := by
  apply coveredState_split_literal (state := state_974641) 1
    state_974642 state_974665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974642
  · exact cover_974665
#print axioms cover_974641

def state_974599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_974599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974599 := by
  apply coveredState_split_literal (state := state_974599) 0
    state_974600 state_974641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974600
  · exact cover_974641
#print axioms cover_974599

def state_974598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 7)))
theorem cover_974598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974598 := by
  apply coveredState_split_literal (state := state_974598) 4
    state_974599 state_975740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974599
  · exact cover_975740
#print axioms cover_974598

def state_974196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_974196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974196 := by
  apply coveredState_split_literal (state := state_974196) 2
    state_974197 state_974598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974197
  · exact cover_974598
#print axioms cover_974196

def state_975778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 28)))
theorem cover_975778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975778 := by
  apply coveredState_split_literal (state := state_975778) 2
    state_975779 state_975794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975779
  · exact cover_975794
#print axioms cover_975778
end Mub6.Numerical.CircleFullD0.Forest
