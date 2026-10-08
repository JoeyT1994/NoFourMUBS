import CircleFullInterface
import CircleForestAssembly0068
import CircleForestChunk0274
import CircleForestChunk0275
import CircleForestChunk0276
import CircleForestChunk0277
import CircleForestChunk0278
import CircleForestChunk0279
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_141583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 40 else 59)))
theorem cover_141583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141583 := by
  apply coveredState_split_literal (state := state_141583) 0
    state_141584 state_141621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141584
  · exact cover_141621
#print axioms cover_141583

def state_141662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 41 else 59)))
theorem cover_141662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141662 := by
  apply coveredState_split_literal (state := state_141662) 0
    state_141663 state_141706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141663
  · exact cover_141706
#print axioms cover_141662

def state_141582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 20 else 59)))
theorem cover_141582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141582 := by
  apply coveredState_split_literal (state := state_141582) 3
    state_141583 state_141662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141583
  · exact cover_141662
#print axioms cover_141582

def state_141560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 20 else 29)))
theorem cover_141560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141560 := by
  apply coveredState_split_literal (state := state_141560) 4
    state_141561 state_141582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141561
  · exact cover_141582
#print axioms cover_141560

def state_141743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 57 else (if j.val < 4 then 20 else 29)))
theorem cover_141743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141743 := by
  apply coveredState_split_literal (state := state_141743) 4
    state_141744 state_141753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141744
  · exact cover_141753
#print axioms cover_141743

def state_141559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 29)))
theorem cover_141559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141559 := by
  apply coveredState_split_literal (state := state_141559) 2
    state_141560 state_141743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141560
  · exact cover_141743
#print axioms cover_141559

def state_141908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 56 else (if j.val < 4 then 41 else 59)))
theorem cover_141908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141908 := by
  apply coveredState_split_literal (state := state_141908) 2
    state_141909 state_141924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141909
  · exact cover_141924
#print axioms cover_141908

def state_141907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 56 else (if j.val < 4 then 41 else 59)))
theorem cover_141907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141907 := by
  apply coveredState_split_literal (state := state_141907) 1
    state_141908 state_141985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141908
  · exact cover_141985
#print axioms cover_141907

def state_141859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 56 else (if j.val < 4 then 41 else 59)))
theorem cover_141859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141859 := by
  apply coveredState_split_literal (state := state_141859) 0
    state_141860 state_141907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141860
  · exact cover_141907
#print axioms cover_141859

def state_141835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 56 else (if j.val < 4 then 20 else 59)))
theorem cover_141835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141835 := by
  apply coveredState_split_literal (state := state_141835) 3
    state_141836 state_141859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141836
  · exact cover_141859
#print axioms cover_141835

def state_141813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 56 else (if j.val < 4 then 20 else 29)))
theorem cover_141813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141813 := by
  apply coveredState_split_literal (state := state_141813) 4
    state_141814 state_141835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141814
  · exact cover_141835
#print axioms cover_141813

def state_142041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 57 else (if j.val < 4 then 41 else 59)))
theorem cover_142041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142041 := by
  apply coveredState_split_literal (state := state_142041) 2
    state_142042 state_142103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142042
  · exact cover_142103
#print axioms cover_142041

def state_142040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 41 else 59)))
theorem cover_142040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142040 := by
  apply coveredState_split_literal (state := state_142040) 1
    state_142041 state_142110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142041
  · exact cover_142110
#print axioms cover_142040

def state_142020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 41 else 59)))
theorem cover_142020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142020 := by
  apply coveredState_split_literal (state := state_142020) 0
    state_142021 state_142040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142021
  · exact cover_142040
#print axioms cover_142020

def state_142004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 20 else 59)))
theorem cover_142004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142004 := by
  apply coveredState_split_literal (state := state_142004) 3
    state_142005 state_142020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142005
  · exact cover_142020
#print axioms cover_142004

def state_142000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 20 else 29)))
theorem cover_142000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142000 := by
  apply coveredState_split_literal (state := state_142000) 4
    state_142001 state_142004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142001
  · exact cover_142004
#print axioms cover_142000

def state_141812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 29)))
theorem cover_141812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141812 := by
  apply coveredState_split_literal (state := state_141812) 2
    state_141813 state_142000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141813
  · exact cover_142000
#print axioms cover_141812

def state_141558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 29)))
theorem cover_141558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141558 := by
  apply coveredState_split_literal (state := state_141558) 1
    state_141559 state_141812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141559
  · exact cover_141812
#print axioms cover_141558

def state_141478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 29)))
theorem cover_141478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141478 := by
  apply coveredState_split_literal (state := state_141478) 0
    state_141479 state_141558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141479
  · exact cover_141558
#print axioms cover_141478

def state_141446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 14)))
theorem cover_141446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141446 := by
  apply coveredState_split_literal (state := state_141446) 4
    state_141447 state_141478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141447
  · exact cover_141478
#print axioms cover_141446

def state_141445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 14)))
theorem cover_141445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141445 := by
  apply coveredState_split_literal (state := state_141445) 2
    state_141446 state_142119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141446
  · exact cover_142119
#print axioms cover_141445

def state_141444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 14)))
theorem cover_141444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141444 := by
  apply coveredState_split_literal (state := state_141444) 1
    state_141445 state_142150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141445
  · exact cover_142150
#print axioms cover_141444

def state_142199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 21 else 14)))
theorem cover_142199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142199 := by
  apply coveredState_split_literal (state := state_142199) 4
    state_142200 state_142207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142200
  · exact cover_142207
#print axioms cover_142199

def state_142198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 14)))
theorem cover_142198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142198 := by
  apply coveredState_split_literal (state := state_142198) 2
    state_142199 state_142266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142199
  · exact cover_142266
#print axioms cover_142198

def state_142197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 14)))
theorem cover_142197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142197 := by
  apply coveredState_split_literal (state := state_142197) 1
    state_142198 state_142275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142198
  · exact cover_142275
#print axioms cover_142197

def state_141443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
theorem cover_141443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141443 := by
  apply coveredState_split_literal (state := state_141443) 3
    state_141444 state_142197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141444
  · exact cover_142197
#print axioms cover_141443

def state_141393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
theorem cover_141393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141393 := by
  apply coveredState_split_literal (state := state_141393) 0
    state_141394 state_141443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141394
  · exact cover_141443
#print axioms cover_141393

def state_142333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 30)))
theorem cover_142333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142333 := by
  apply coveredState_split_literal (state := state_142333) 2
    state_142334 state_142381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142334
  · exact cover_142381
#print axioms cover_142333

def state_142417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 56 else (if j.val < 4 then 20 else 30)))
theorem cover_142417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142417 := by
  apply coveredState_split_literal (state := state_142417) 3
    state_142418 state_142481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142418
  · exact cover_142481
#print axioms cover_142417

def state_142416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 30)))
theorem cover_142416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142416 := by
  apply coveredState_split_literal (state := state_142416) 2
    state_142417 state_142486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142417
  · exact cover_142486
#print axioms cover_142416

def state_142332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 30)))
theorem cover_142332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142332 := by
  apply coveredState_split_literal (state := state_142332) 1
    state_142333 state_142416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142333
  · exact cover_142416
#print axioms cover_142332

def state_142302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 30)))
theorem cover_142302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142302 := by
  apply coveredState_split_literal (state := state_142302) 0
    state_142303 state_142332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142303
  · exact cover_142332
#print axioms cover_142302
end Mub6.Numerical.CircleFullPrototype.Forest
