import D0FullInterface
import D0ForestAssembly0292
import D0ForestAssembly0294
import D0ForestChunk1131
import D0ForestChunk1133
import D0ForestChunk1134
import D0ForestChunk1135
import D0ForestChunk1136
import D0ForestChunk1137
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1572112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1572112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572112 := by
  apply coveredState_split_literal (state := state_1572112) 2
    state_1572113 state_1572122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572113
  · exact cover_1572122
#print axioms cover_1572112

def state_1572111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1572111 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572111 := by
  apply coveredState_split_literal (state := state_1572111) 1
    state_1572112 state_1572461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572112
  · exact cover_1572461
#print axioms cover_1572111

def state_1570633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1570633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570633 := by
  apply coveredState_split_literal (state := state_1570633) 0
    state_1570634 state_1572111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570634
  · exact cover_1572111
#print axioms cover_1570633

def state_1570409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1570409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570409 := by
  apply coveredState_split_literal (state := state_1570409) 4
    state_1570410 state_1570633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570410
  · exact cover_1570633
#print axioms cover_1570409

def state_1570135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1570135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570135 := by
  apply coveredState_split_literal (state := state_1570135) 3
    state_1570136 state_1570409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570136
  · exact cover_1570409
#print axioms cover_1570135

def state_1572552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_1572552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572552 := by
  apply coveredState_split_literal (state := state_1572552) 4
    state_1572553 state_1572606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572553
  · exact cover_1572606
#print axioms cover_1572552

def state_1572546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_1572546 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572546 := by
  apply coveredState_split_literal (state := state_1572546) 3
    state_1572547 state_1572552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572547
  · exact cover_1572552
#print axioms cover_1572546

def state_1572545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1572545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572545 := by
  apply coveredState_split_literal (state := state_1572545) 2
    state_1572546 state_1572621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572546
  · exact cover_1572621
#print axioms cover_1572545

def state_1572525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1572525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572525 := by
  apply coveredState_split_literal (state := state_1572525) 1
    state_1572526 state_1572545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572526
  · exact cover_1572545
#print axioms cover_1572525

def state_1572688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_1572688 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572688 := by
  apply coveredState_split_literal (state := state_1572688) 4
    state_1572689 state_1572738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572689
  · exact cover_1572738
#print axioms cover_1572688

def state_1572682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_1572682 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572682 := by
  apply coveredState_split_literal (state := state_1572682) 3
    state_1572683 state_1572688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572683
  · exact cover_1572688
#print axioms cover_1572682

def state_1572644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1572644 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572644 := by
  apply coveredState_split_literal (state := state_1572644) 2
    state_1572645 state_1572682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572645
  · exact cover_1572682
#print axioms cover_1572644

def state_1572628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1572628 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572628 := by
  apply coveredState_split_literal (state := state_1572628) 1
    state_1572629 state_1572644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572629
  · exact cover_1572644
#print axioms cover_1572628

def state_1572524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1572524 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572524 := by
  apply coveredState_split_literal (state := state_1572524) 0
    state_1572525 state_1572628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572525
  · exact cover_1572628
#print axioms cover_1572524

def state_1572793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1572793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572793 := by
  apply coveredState_split_literal (state := state_1572793) 1
    state_1572794 state_1572845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572794
  · exact cover_1572845
#print axioms cover_1572793

def state_1572753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1572753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572753 := by
  apply coveredState_split_literal (state := state_1572753) 0
    state_1572754 state_1572793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572754
  · exact cover_1572793
#print axioms cover_1572753

def state_1572523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1572523 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572523 := by
  apply coveredState_split_literal (state := state_1572523) 4
    state_1572524 state_1572753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572524
  · exact cover_1572753
#print axioms cover_1572523

def state_1572867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_1572867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572867 := by
  apply coveredState_split_literal (state := state_1572867) 4
    state_1572868 state_1572871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572868
  · exact cover_1572871
#print axioms cover_1572867

def state_1572866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1572866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572866 := by
  apply coveredState_split_literal (state := state_1572866) 3
    state_1572867 state_1572934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572867
  · exact cover_1572934
#print axioms cover_1572866

def state_1572865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1572865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572865 := by
  apply coveredState_split_literal (state := state_1572865) 2
    state_1572866 state_1572955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572866
  · exact cover_1572955
#print axioms cover_1572865

def state_1572963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1572963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572963 := by
  apply coveredState_split_literal (state := state_1572963) 1
    state_1572964 state_1572977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572964
  · exact cover_1572977
#print axioms cover_1572963

def state_1573036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_1573036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573036 := by
  apply coveredState_split_literal (state := state_1573036) 1
    state_1573037 state_1573084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573037
  · exact cover_1573084
#print axioms cover_1573036

def state_1572962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_1572962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572962 := by
  apply coveredState_split_literal (state := state_1572962) 4
    state_1572963 state_1573036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572963
  · exact cover_1573036
#print axioms cover_1572962

def state_1572961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1572961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572961 := by
  apply coveredState_split_literal (state := state_1572961) 3
    state_1572962 state_1573129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572962
  · exact cover_1573129
#print axioms cover_1572961

def state_1572960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1572960 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572960 := by
  apply coveredState_split_literal (state := state_1572960) 2
    state_1572961 state_1573136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572961
  · exact cover_1573136
#print axioms cover_1572960

def state_1572864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1572864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572864 := by
  apply coveredState_split_literal (state := state_1572864) 1
    state_1572865 state_1572960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572865
  · exact cover_1572960
#print axioms cover_1572864

def state_1573199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_1573199 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573199 := by
  apply coveredState_split_literal (state := state_1573199) 2
    state_1573200 state_1573253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573200
  · exact cover_1573253
#print axioms cover_1573199

def state_1573198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_1573198 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573198 := by
  apply coveredState_split_literal (state := state_1573198) 0
    state_1573199 state_1573264
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573199
  · exact cover_1573264
#print axioms cover_1573198

def state_1573190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_1573190 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573190 := by
  apply coveredState_split_literal (state := state_1573190) 4
    state_1573191 state_1573198
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573191
  · exact cover_1573198
#print axioms cover_1573190

def state_1573298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
theorem cover_1573298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573298 := by
  apply coveredState_split_literal (state := state_1573298) 2
    state_1573299 state_1573340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573299
  · exact cover_1573340
#print axioms cover_1573298

def state_1573297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_1573297 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573297 := by
  apply coveredState_split_literal (state := state_1573297) 3
    state_1573298 state_1573365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573298
  · exact cover_1573365
#print axioms cover_1573297

def state_1573281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_1573281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573281 := by
  apply coveredState_split_literal (state := state_1573281) 1
    state_1573282 state_1573297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573282
  · exact cover_1573297
#print axioms cover_1573281
end Mub6.Numerical.CircleFullD0.Forest
