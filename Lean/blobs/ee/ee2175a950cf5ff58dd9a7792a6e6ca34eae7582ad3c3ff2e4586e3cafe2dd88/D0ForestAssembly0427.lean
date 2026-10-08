import D0FullInterface
import D0ForestAssembly0426
import D0ForestChunk1668
import D0ForestChunk1669
import D0ForestChunk1670
import D0ForestChunk1671
import D0ForestChunk1672
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2273536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 14)))
theorem cover_2273536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273536 := by
  apply coveredState_split_literal (state := state_2273536) 0
    state_2273537 state_2273628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273537
  · exact cover_2273628
#print axioms cover_2273536

def state_2273258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 14)))
theorem cover_2273258 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273258 := by
  apply coveredState_split_literal (state := state_2273258) 2
    state_2273259 state_2273536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273259
  · exact cover_2273536
#print axioms cover_2273258

def state_2273732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 21 else 30)))
theorem cover_2273732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273732 := by
  apply coveredState_split_literal (state := state_2273732) 3
    state_2273733 state_2273746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273733
  · exact cover_2273746
#print axioms cover_2273732

def state_2273731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 30)))
theorem cover_2273731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273731 := by
  apply coveredState_split_literal (state := state_2273731) 2
    state_2273732 state_2273803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273732
  · exact cover_2273803
#print axioms cover_2273731

def state_2273730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 15)))
theorem cover_2273730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273730 := by
  apply coveredState_split_literal (state := state_2273730) 4
    state_2273731 state_2273830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273731
  · exact cover_2273830
#print axioms cover_2273730

def state_2273716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 15)))
theorem cover_2273716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273716 := by
  apply coveredState_split_literal (state := state_2273716) 3
    state_2273717 state_2273730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273717
  · exact cover_2273730
#print axioms cover_2273716

def state_2273702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 15)))
theorem cover_2273702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273702 := by
  apply coveredState_split_literal (state := state_2273702) 1
    state_2273703 state_2273716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273703
  · exact cover_2273716
#print axioms cover_2273702

def state_2273908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 30)))
theorem cover_2273908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273908 := by
  apply coveredState_split_literal (state := state_2273908) 2
    state_2273909 state_2273962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273909
  · exact cover_2273962
#print axioms cover_2273908

def state_2273907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 15)))
theorem cover_2273907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273907 := by
  apply coveredState_split_literal (state := state_2273907) 4
    state_2273908 state_2273977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273908
  · exact cover_2273977
#print axioms cover_2273907

def state_2273871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 15)))
theorem cover_2273871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273871 := by
  apply coveredState_split_literal (state := state_2273871) 3
    state_2273872 state_2273907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273872
  · exact cover_2273907
#print axioms cover_2273871

def state_2273865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 15)))
theorem cover_2273865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273865 := by
  apply coveredState_split_literal (state := state_2273865) 1
    state_2273866 state_2273871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273866
  · exact cover_2273871
#print axioms cover_2273865

def state_2273701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 15)))
theorem cover_2273701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273701 := by
  apply coveredState_split_literal (state := state_2273701) 0
    state_2273702 state_2273865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273702
  · exact cover_2273865
#print axioms cover_2273701

def state_2273649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 15)))
theorem cover_2273649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273649 := by
  apply coveredState_split_literal (state := state_2273649) 2
    state_2273650 state_2273701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273650
  · exact cover_2273701
#print axioms cover_2273649

def state_2273257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
theorem cover_2273257 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273257 := by
  apply coveredState_split_literal (state := state_2273257) 4
    state_2273258 state_2273649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273258
  · exact cover_2273649
#print axioms cover_2273257

def state_2274076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 28)))
theorem cover_2274076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274076 := by
  apply coveredState_split_literal (state := state_2274076) 3
    state_2274077 state_2274124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274077
  · exact cover_2274124
#print axioms cover_2274076

def state_2274187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 57)))
theorem cover_2274187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274187 := by
  apply coveredState_split_literal (state := state_2274187) 1
    state_2274188 state_2274227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274188
  · exact cover_2274227
#print axioms cover_2274187

def state_2274186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 57)))
theorem cover_2274186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274186 := by
  apply coveredState_split_literal (state := state_2274186) 0
    state_2274187 state_2274256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274187
  · exact cover_2274256
#print axioms cover_2274186

def state_2274166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 28)))
theorem cover_2274166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274166 := by
  apply coveredState_split_literal (state := state_2274166) 4
    state_2274167 state_2274186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274167
  · exact cover_2274186
#print axioms cover_2274166

def state_2274310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 57)))
theorem cover_2274310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274310 := by
  apply coveredState_split_literal (state := state_2274310) 1
    state_2274311 state_2274336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274311
  · exact cover_2274336
#print axioms cover_2274310

def state_2274309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 57)))
theorem cover_2274309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274309 := by
  apply coveredState_split_literal (state := state_2274309) 0
    state_2274310 state_2274375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274310
  · exact cover_2274375
#print axioms cover_2274309

def state_2274277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 28)))
theorem cover_2274277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274277 := by
  apply coveredState_split_literal (state := state_2274277) 4
    state_2274278 state_2274309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274278
  · exact cover_2274309
#print axioms cover_2274277

def state_2274165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 28)))
theorem cover_2274165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274165 := by
  apply coveredState_split_literal (state := state_2274165) 3
    state_2274166 state_2274277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274166
  · exact cover_2274277
#print axioms cover_2274165

def state_2274075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 28)))
theorem cover_2274075 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274075 := by
  apply coveredState_split_literal (state := state_2274075) 2
    state_2274076 state_2274165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274076
  · exact cover_2274165
#print axioms cover_2274075

def state_2274475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 91 else (if j.val < 4 then 44 else 58)))
theorem cover_2274475 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274475 := by
  apply coveredState_split_literal (state := state_2274475) 3
    state_2274476 state_2274505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274476
  · exact cover_2274505
#print axioms cover_2274475

def state_2274461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 58)))
theorem cover_2274461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274461 := by
  apply coveredState_split_literal (state := state_2274461) 2
    state_2274462 state_2274475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274462
  · exact cover_2274475
#print axioms cover_2274461

def state_2274413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 58)))
theorem cover_2274413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274413 := by
  apply coveredState_split_literal (state := state_2274413) 1
    state_2274414 state_2274461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274414
  · exact cover_2274461
#print axioms cover_2274413

def state_2274412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 58)))
theorem cover_2274412 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274412 := by
  apply coveredState_split_literal (state := state_2274412) 0
    state_2274413 state_2274554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274413
  · exact cover_2274554
#print axioms cover_2274412

def state_2274609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 59)))
theorem cover_2274609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274609 := by
  apply coveredState_split_literal (state := state_2274609) 0
    state_2274610 state_2274645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274610
  · exact cover_2274645
#print axioms cover_2274609

def state_2274411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 29)))
theorem cover_2274411 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274411 := by
  apply coveredState_split_literal (state := state_2274411) 4
    state_2274412 state_2274609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274412
  · exact cover_2274609
#print axioms cover_2274411

def state_2274410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 29)))
theorem cover_2274410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274410 := by
  apply coveredState_split_literal (state := state_2274410) 3
    state_2274411 state_2274676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274411
  · exact cover_2274676
#print axioms cover_2274410

def state_2274388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 29)))
theorem cover_2274388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274388 := by
  apply coveredState_split_literal (state := state_2274388) 2
    state_2274389 state_2274410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274389
  · exact cover_2274410
#print axioms cover_2274388

def state_2274074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2274074 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274074 := by
  apply coveredState_split_literal (state := state_2274074) 4
    state_2274075 state_2274388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274075
  · exact cover_2274388
#print axioms cover_2274074
end Mub6.Numerical.CircleFullD0.Forest
