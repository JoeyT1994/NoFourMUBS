import CircleFullInterface
import CircleForestAssembly0109
import CircleForestChunk0436
import CircleForestChunk0437
import CircleForestChunk0438
import CircleForestChunk0439
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_180287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 30)))
theorem cover_180287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180287 := by
  apply coveredState_split_literal (state := state_180287) 0
    state_180288 state_180299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180288
  · exact cover_180299
#print axioms cover_180287

def state_180286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 49) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 30)))
theorem cover_180286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180286 := by
  apply coveredState_split_literal (state := state_180286) 2
    state_180287 state_180374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180287
  · exact cover_180374
#print axioms cover_180286

def state_180268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 30)))
theorem cover_180268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180268 := by
  apply coveredState_split_literal (state := state_180268) 1
    state_180269 state_180286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180269
  · exact cover_180286
#print axioms cover_180268

def state_180267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 15)))
theorem cover_180267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180267 := by
  apply coveredState_split_literal (state := state_180267) 4
    state_180268 state_180377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180268
  · exact cover_180377
#print axioms cover_180267

def state_180247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 15)))
theorem cover_180247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180247 := by
  apply coveredState_split_literal (state := state_180247) 3
    state_180248 state_180267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180248
  · exact cover_180267
#print axioms cover_180247

def state_180433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 99) else (if j.val < 3 then 100 else (if j.val < 4 then 59 else 60)))
theorem cover_180433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180433 := by
  apply coveredState_split_literal (state := state_180433) 0
    state_180434 state_180491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180434
  · exact cover_180491
#print axioms cover_180433

def state_180432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 99) else (if j.val < 3 then 50 else (if j.val < 4 then 59 else 60)))
theorem cover_180432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180432 := by
  apply coveredState_split_literal (state := state_180432) 2
    state_180433 state_180516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180433
  · exact cover_180516
#print axioms cover_180432

def state_180418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 59 else 60)))
theorem cover_180418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180418 := by
  apply coveredState_split_literal (state := state_180418) 1
    state_180419 state_180432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180419
  · exact cover_180432
#print axioms cover_180418

def state_180417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 59 else 30)))
theorem cover_180417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180417 := by
  apply coveredState_split_literal (state := state_180417) 4
    state_180418 state_180537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180418
  · exact cover_180537
#print axioms cover_180417

def state_180405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 30)))
theorem cover_180405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180405 := by
  apply coveredState_split_literal (state := state_180405) 3
    state_180406 state_180417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180406
  · exact cover_180417
#print axioms cover_180405

def state_180404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 30)))
theorem cover_180404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180404 := by
  apply coveredState_split_literal (state := state_180404) 0
    state_180405 state_180560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180405
  · exact cover_180560
#print axioms cover_180404

def state_180403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 30)))
theorem cover_180403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180403 := by
  apply coveredState_split_literal (state := state_180403) 2
    state_180404 state_180573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180404
  · exact cover_180573
#print axioms cover_180403

def state_180393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 30)))
theorem cover_180393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180393 := by
  apply coveredState_split_literal (state := state_180393) 1
    state_180394 state_180403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180394
  · exact cover_180403
#print axioms cover_180393

def state_180392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 15)))
theorem cover_180392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180392 := by
  apply coveredState_split_literal (state := state_180392) 4
    state_180393 state_180600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180393
  · exact cover_180600
#print axioms cover_180392

def state_180380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 15)))
theorem cover_180380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180380 := by
  apply coveredState_split_literal (state := state_180380) 3
    state_180381 state_180392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180381
  · exact cover_180392
#print axioms cover_180380

def state_180246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 15)))
theorem cover_180246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180246 := by
  apply coveredState_split_literal (state := state_180246) 0
    state_180247 state_180380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180247
  · exact cover_180380
#print axioms cover_180246

def state_180012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 15)))
theorem cover_180012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180012 := by
  apply coveredState_split_literal (state := state_180012) 2
    state_180013 state_180246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180013
  · exact cover_180246
#print axioms cover_180012

def state_180748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 100) else (if j.val < 3 then 100 else (if j.val < 4 then 59 else 60)))
theorem cover_180748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180748 := by
  apply coveredState_split_literal (state := state_180748) 0
    state_180749 state_180770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180749
  · exact cover_180770
#print axioms cover_180748

def state_180747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 100) else (if j.val < 3 then 50 else (if j.val < 4 then 59 else 60)))
theorem cover_180747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180747 := by
  apply coveredState_split_literal (state := state_180747) 2
    state_180748 state_180817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180748
  · exact cover_180817
#print axioms cover_180747

def state_180746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 59 else 60)))
theorem cover_180746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180746 := by
  apply coveredState_split_literal (state := state_180746) 1
    state_180747 state_180834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180747
  · exact cover_180834
#print axioms cover_180746

def state_180745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 59 else 30)))
theorem cover_180745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180745 := by
  apply coveredState_split_literal (state := state_180745) 4
    state_180746 state_180843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180746
  · exact cover_180843
#print axioms cover_180745

def state_180737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 30)))
theorem cover_180737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180737 := by
  apply coveredState_split_literal (state := state_180737) 3
    state_180738 state_180745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180738
  · exact cover_180745
#print axioms cover_180737

def state_180736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 30)))
theorem cover_180736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180736 := by
  apply coveredState_split_literal (state := state_180736) 0
    state_180737 state_180862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180737
  · exact cover_180862
#print axioms cover_180736

def state_180735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 30)))
theorem cover_180735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180735 := by
  apply coveredState_split_literal (state := state_180735) 2
    state_180736 state_180919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180736
  · exact cover_180919
#print axioms cover_180735

def state_180734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 30)))
theorem cover_180734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180734 := by
  apply coveredState_split_literal (state := state_180734) 1
    state_180735 state_180936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180735
  · exact cover_180936
#print axioms cover_180734

def state_180733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 15)))
theorem cover_180733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180733 := by
  apply coveredState_split_literal (state := state_180733) 4
    state_180734 state_180949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180734
  · exact cover_180949
#print axioms cover_180733

def state_180719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 15)))
theorem cover_180719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180719 := by
  apply coveredState_split_literal (state := state_180719) 3
    state_180720 state_180733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180720
  · exact cover_180733
#print axioms cover_180719

def state_180677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 15)))
theorem cover_180677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180677 := by
  apply coveredState_split_literal (state := state_180677) 0
    state_180678 state_180719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180678
  · exact cover_180719
#print axioms cover_180677

def state_180623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 15)))
theorem cover_180623 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180623 := by
  apply coveredState_split_literal (state := state_180623) 2
    state_180624 state_180677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180624
  · exact cover_180677
#print axioms cover_180623

def state_180011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 15)))
theorem cover_180011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180011 := by
  apply coveredState_split_literal (state := state_180011) 1
    state_180012 state_180623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180012
  · exact cover_180623
#print axioms cover_180011

def state_179193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 7)))
theorem cover_179193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179193 := by
  apply coveredState_split_literal (state := state_179193) 4
    state_179194 state_180011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179194
  · exact cover_180011
#print axioms cover_179193

def state_180998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 29)))
theorem cover_180998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180998 := by
  apply coveredState_split_literal (state := state_180998) 3
    state_180999 state_181062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180999
  · exact cover_181062
#print axioms cover_180998
end Mub6.Numerical.CircleFullPrototype.Forest
