import CircleFullInterface
import CircleForestAssembly0522
import CircleForestChunk2054
import CircleForestChunk2055
import CircleForestChunk2056
import CircleForestChunk2060
import CircleForestChunk2061
import CircleForestChunk2062
import CircleForestChunk2063
import CircleForestChunk2064
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2574958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 18)))
theorem cover_2574958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574958 := by
  apply coveredState_split_literal (state := state_2574958) 0
    state_2574959 state_2574982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574959
  · exact cover_2574982
#print axioms cover_2574958

def state_2574942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 23 else 18)))
theorem cover_2574942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574942 := by
  apply coveredState_split_literal (state := state_2574942) 3
    state_2574943 state_2574958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574943
  · exact cover_2574958
#print axioms cover_2574942

def state_2574896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 18)))
theorem cover_2574896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574896 := by
  apply coveredState_split_literal (state := state_2574896) 2
    state_2574897 state_2574942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574897
  · exact cover_2574942
#print axioms cover_2574896

def state_2574895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 9)))
theorem cover_2574895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574895 := by
  apply coveredState_split_literal (state := state_2574895) 4
    state_2574896 state_2575203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574896
  · exact cover_2575203
#print axioms cover_2574895

def state_2574123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 9)))
theorem cover_2574123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574123 := by
  apply coveredState_split_literal (state := state_2574123) 1
    state_2574124 state_2574895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574124
  · exact cover_2574895
#print axioms cover_2574123

def state_2574109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 9)))
theorem cover_2574109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574109 := by
  apply coveredState_split_literal (state := state_2574109) 3
    state_2574110 state_2574123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574110
  · exact cover_2574123
#print axioms cover_2574109

def state_2574093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 9)))
theorem cover_2574093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574093 := by
  apply coveredState_split_literal (state := state_2574093) 2
    state_2574094 state_2574109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574094
  · exact cover_2574109
#print axioms cover_2574093

def state_2574067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 9)))
theorem cover_2574067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574067 := by
  apply coveredState_split_literal (state := state_2574067) 0
    state_2574068 state_2574093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574068
  · exact cover_2574093
#print axioms cover_2574067

def state_2573869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
theorem cover_2573869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573869 := by
  apply coveredState_split_literal (state := state_2573869) 4
    state_2573870 state_2574067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573870
  · exact cover_2574067
#print axioms cover_2573869

def state_2573647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
theorem cover_2573647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573647 := by
  apply coveredState_split_literal (state := state_2573647) 1
    state_2573648 state_2573869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573648
  · exact cover_2573869
#print axioms cover_2573647

def state_2573635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 4)))
theorem cover_2573635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573635 := by
  apply coveredState_split_literal (state := state_2573635) 3
    state_2573636 state_2573647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573636
  · exact cover_2573647
#print axioms cover_2573635

def state_2573621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_2573621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573621 := by
  apply coveredState_split_literal (state := state_2573621) 2
    state_2573622 state_2573635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573622
  · exact cover_2573635
#print axioms cover_2573621

def state_2575386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 19)))
theorem cover_2575386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575386 := by
  apply coveredState_split_literal (state := state_2575386) 0
    state_2575387 state_2575448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575387
  · exact cover_2575448
#print axioms cover_2575386

def state_2575380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 23 else 19)))
theorem cover_2575380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575380 := by
  apply coveredState_split_literal (state := state_2575380) 3
    state_2575381 state_2575386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575381
  · exact cover_2575386
#print axioms cover_2575380

def state_2575372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 19)))
theorem cover_2575372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575372 := by
  apply coveredState_split_literal (state := state_2575372) 2
    state_2575373 state_2575380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575373
  · exact cover_2575380
#print axioms cover_2575372

def state_2575334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 9)))
theorem cover_2575334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575334 := by
  apply coveredState_split_literal (state := state_2575334) 4
    state_2575335 state_2575372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575335
  · exact cover_2575372
#print axioms cover_2575334

def state_2575460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 23 else 18)))
theorem cover_2575460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575460 := by
  apply coveredState_split_literal (state := state_2575460) 3
    state_2575461 state_2575466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575461
  · exact cover_2575466
#print axioms cover_2575460

def state_2575452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 18)))
theorem cover_2575452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575452 := by
  apply coveredState_split_literal (state := state_2575452) 2
    state_2575453 state_2575460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575453
  · exact cover_2575460
#print axioms cover_2575452

def state_2575537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 23 else 19)))
theorem cover_2575537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575537 := by
  apply coveredState_split_literal (state := state_2575537) 3
    state_2575538 state_2575545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575538
  · exact cover_2575545
#print axioms cover_2575537

def state_2575527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 19)))
theorem cover_2575527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575527 := by
  apply coveredState_split_literal (state := state_2575527) 2
    state_2575528 state_2575537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575528
  · exact cover_2575537
#print axioms cover_2575527

def state_2575451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 9)))
theorem cover_2575451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575451 := by
  apply coveredState_split_literal (state := state_2575451) 4
    state_2575452 state_2575527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575452
  · exact cover_2575527
#print axioms cover_2575451

def state_2575333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 9)))
theorem cover_2575333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575333 := by
  apply coveredState_split_literal (state := state_2575333) 1
    state_2575334 state_2575451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575334
  · exact cover_2575451
#print axioms cover_2575333

def state_2575332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 9)))
theorem cover_2575332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575332 := by
  apply coveredState_split_literal (state := state_2575332) 0
    state_2575333 state_2575606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575333
  · exact cover_2575606
#print axioms cover_2575332

def state_2575324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 9)))
theorem cover_2575324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575324 := by
  apply coveredState_split_literal (state := state_2575324) 3
    state_2575325 state_2575332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575325
  · exact cover_2575332
#print axioms cover_2575324

def state_2575314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 9)))
theorem cover_2575314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575314 := by
  apply coveredState_split_literal (state := state_2575314) 2
    state_2575315 state_2575324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575315
  · exact cover_2575324
#print axioms cover_2575314

def state_2575276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
theorem cover_2575276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575276 := by
  apply coveredState_split_literal (state := state_2575276) 4
    state_2575277 state_2575314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575277
  · exact cover_2575314
#print axioms cover_2575276

def state_2575224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
theorem cover_2575224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575224 := by
  apply coveredState_split_literal (state := state_2575224) 1
    state_2575225 state_2575276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575225
  · exact cover_2575276
#print axioms cover_2575224

def state_2575222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 4)))
theorem cover_2575222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575222 := by
  apply coveredState_split_literal (state := state_2575222) 3
    state_2575223 state_2575224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575223
  · exact cover_2575224
#print axioms cover_2575222

def state_2575220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_2575220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575220 := by
  apply coveredState_split_literal (state := state_2575220) 2
    state_2575221 state_2575222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575221
  · exact cover_2575222
#print axioms cover_2575220

def state_2573620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_2573620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573620 := by
  apply coveredState_split_literal (state := state_2573620) 0
    state_2573621 state_2575220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573621
  · exact cover_2575220
#print axioms cover_2573620

def state_2575707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 10)))
theorem cover_2575707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575707 := by
  apply coveredState_split_literal (state := state_2575707) 2
    state_2575708 state_2575719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575708
  · exact cover_2575719
#print axioms cover_2575707

def state_2575778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 10)))
theorem cover_2575778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575778 := by
  apply coveredState_split_literal (state := state_2575778) 2
    state_2575779 state_2575794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575779
  · exact cover_2575794
#print axioms cover_2575778
end Mub6.Numerical.CircleFullD0.Forest
