import D0FullInterface
import D0ForestAssembly0112
import D0ForestAssembly0114
import D0ForestAssembly0115
import D0ForestChunk0450
import D0ForestChunk0456
import D0ForestChunk0457
import D0ForestChunk0458
import D0ForestChunk0459
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1047154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 13)))
theorem cover_1047154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047154 := by
  apply coveredState_split_literal (state := state_1047154) 3
    state_1047155 state_1047226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047155
  · exact cover_1047226
#print axioms cover_1047154

def state_1047153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 13)))
theorem cover_1047153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047153 := by
  apply coveredState_split_literal (state := state_1047153) 0
    state_1047154 state_1047227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047154
  · exact cover_1047227
#print axioms cover_1047153

def state_1047151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
theorem cover_1047151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047151 := by
  apply coveredState_split_literal (state := state_1047151) 2
    state_1047152 state_1047153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047152
  · exact cover_1047153
#print axioms cover_1047151

def state_1047149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
theorem cover_1047149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047149 := by
  apply coveredState_split_literal (state := state_1047149) 1
    state_1047150 state_1047151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047150
  · exact cover_1047151
#print axioms cover_1047149

def state_1046579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
theorem cover_1046579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046579 := by
  apply coveredState_split_literal (state := state_1046579) 4
    state_1046580 state_1047149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046580
  · exact cover_1047149
#print axioms cover_1046579

def state_1045821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1045821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045821 := by
  apply coveredState_split_literal (state := state_1045821) 3
    state_1045822 state_1046579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045822
  · exact cover_1046579
#print axioms cover_1045821

def state_1045820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1045820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045820 := by
  apply coveredState_split_literal (state := state_1045820) 0
    state_1045821 state_1047228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045821
  · exact cover_1047228
#print axioms cover_1045820

def state_1045819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_1045819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045819 := by
  apply coveredState_split_literal (state := state_1045819) 4
    state_1045820 state_1047239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045820
  · exact cover_1047239
#print axioms cover_1045819

def state_1045818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_1045818 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045818 := by
  apply coveredState_split_literal (state := state_1045818) 3
    state_1045819 state_1047254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045819
  · exact cover_1047254
#print axioms cover_1045818

def state_1047327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 6)))
theorem cover_1047327 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047327 := by
  apply coveredState_split_literal (state := state_1047327) 4
    state_1047328 state_1047387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047328
  · exact cover_1047387
#print axioms cover_1047327

def state_1047281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
theorem cover_1047281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047281 := by
  apply coveredState_split_literal (state := state_1047281) 3
    state_1047282 state_1047327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047282
  · exact cover_1047327
#print axioms cover_1047281

def state_1047280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1047280 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047280 := by
  apply coveredState_split_literal (state := state_1047280) 2
    state_1047281 state_1047448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047281
  · exact cover_1047448
#print axioms cover_1047280

def state_1047279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1047279 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047279 := by
  apply coveredState_split_literal (state := state_1047279) 0
    state_1047280 state_1047457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047280
  · exact cover_1047457
#print axioms cover_1047279

def state_1047465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1047465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047465 := by
  apply coveredState_split_literal (state := state_1047465) 2
    state_1047466 state_1047517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047466
  · exact cover_1047517
#print axioms cover_1047465

def state_1047464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1047464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047464 := by
  apply coveredState_split_literal (state := state_1047464) 0
    state_1047465 state_1047534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047465
  · exact cover_1047534
#print axioms cover_1047464

def state_1047278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_1047278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047278 := by
  apply coveredState_split_literal (state := state_1047278) 4
    state_1047279 state_1047464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047279
  · exact cover_1047464
#print axioms cover_1047278

def state_1047564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 12)))
theorem cover_1047564 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047564 := by
  apply coveredState_split_literal (state := state_1047564) 0
    state_1047565 state_1047622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047565
  · exact cover_1047622
#print axioms cover_1047564

def state_1047563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 12)))
theorem cover_1047563 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047563 := by
  apply coveredState_split_literal (state := state_1047563) 3
    state_1047564 state_1047631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047564
  · exact cover_1047631
#print axioms cover_1047563

def state_1047545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 12)))
theorem cover_1047545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047545 := by
  apply coveredState_split_literal (state := state_1047545) 1
    state_1047546 state_1047563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047546
  · exact cover_1047563
#print axioms cover_1047545

def state_1047544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 6)))
theorem cover_1047544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047544 := by
  apply coveredState_split_literal (state := state_1047544) 4
    state_1047545 state_1047644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047545
  · exact cover_1047644
#print axioms cover_1047544

def state_1047543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_1047543 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047543 := by
  apply coveredState_split_literal (state := state_1047543) 2
    state_1047544 state_1047657
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047544
  · exact cover_1047657
#print axioms cover_1047543

def state_1047542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_1047542 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047542 := by
  apply coveredState_split_literal (state := state_1047542) 0
    state_1047543 state_1047694
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047543
  · exact cover_1047694
#print axioms cover_1047542

def state_1047541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_1047541 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047541 := by
  apply coveredState_split_literal (state := state_1047541) 4
    state_1047542 state_1047705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047542
  · exact cover_1047705
#print axioms cover_1047541

def state_1047277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1047277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047277 := by
  apply coveredState_split_literal (state := state_1047277) 3
    state_1047278 state_1047541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047278
  · exact cover_1047541
#print axioms cover_1047277

def state_1045817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1045817 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045817 := by
  apply coveredState_split_literal (state := state_1045817) 2
    state_1045818 state_1047277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045818
  · exact cover_1047277
#print axioms cover_1045817

def state_1045765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1045765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045765 := by
  apply coveredState_split_literal (state := state_1045765) 1
    state_1045766 state_1045817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045766
  · exact cover_1045817
#print axioms cover_1045765

def state_1045764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1045764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045764 := by
  apply coveredState_split_literal (state := state_1045764) 0
    state_1045765 state_1047716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045765
  · exact cover_1047716
#print axioms cover_1045764

def state_1044062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1044062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044062 := by
  apply coveredState_split_literal (state := state_1044062) 4
    state_1044063 state_1045764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044063
  · exact cover_1045764
#print axioms cover_1044062

def state_1043814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1043814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043814 := by
  apply coveredState_split_literal (state := state_1043814) 3
    state_1043815 state_1044062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043815
  · exact cover_1044062
#print axioms cover_1043814

def state_1047747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1047747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047747 := by
  apply coveredState_split_literal (state := state_1047747) 2
    state_1047748 state_1047767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047748
  · exact cover_1047767
#print axioms cover_1047747

def state_1047746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1047746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047746 := by
  apply coveredState_split_literal (state := state_1047746) 1
    state_1047747 state_1047828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047747
  · exact cover_1047828
#print axioms cover_1047746

def state_1047745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1047745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047745 := by
  apply coveredState_split_literal (state := state_1047745) 0
    state_1047746 state_1047853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047746
  · exact cover_1047853
#print axioms cover_1047745
end Mub6.Numerical.CircleFullD0.Forest
