import CircleFullInterface
import CircleForestAssembly0211
import CircleForestChunk0800
import CircleForestChunk0801
import CircleForestChunk0802
import CircleForestChunk0803
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1492854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 30)))
theorem cover_1492854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492854 := by
  apply coveredState_split_literal (state := state_1492854) 0
    state_1492855 state_1492870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492855
  · exact cover_1492870
#print axioms cover_1492854

def state_1492853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 15)))
theorem cover_1492853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492853 := by
  apply coveredState_split_literal (state := state_1492853) 4
    state_1492854 state_1493101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492854
  · exact cover_1493101
#print axioms cover_1492853

def state_1492745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 15)))
theorem cover_1492745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492745 := by
  apply coveredState_split_literal (state := state_1492745) 2
    state_1492746 state_1492853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492746
  · exact cover_1492853
#print axioms cover_1492745

def state_1493140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 60)))
theorem cover_1493140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493140 := by
  apply coveredState_split_literal (state := state_1493140) 3
    state_1493141 state_1493194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493141
  · exact cover_1493194
#print axioms cover_1493140

def state_1493130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 60)))
theorem cover_1493130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493130 := by
  apply coveredState_split_literal (state := state_1493130) 0
    state_1493131 state_1493140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493131
  · exact cover_1493140
#print axioms cover_1493130

def state_1493129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 30)))
theorem cover_1493129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493129 := by
  apply coveredState_split_literal (state := state_1493129) 4
    state_1493130 state_1493209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493130
  · exact cover_1493209
#print axioms cover_1493129

def state_1493125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 30)))
theorem cover_1493125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493125 := by
  apply coveredState_split_literal (state := state_1493125) 2
    state_1493126 state_1493129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493126
  · exact cover_1493129
#print axioms cover_1493125

def state_1493124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 30)))
theorem cover_1493124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493124 := by
  apply coveredState_split_literal (state := state_1493124) 3
    state_1493125 state_1493224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493125
  · exact cover_1493224
#print axioms cover_1493124

def state_1493123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 30)))
theorem cover_1493123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493123 := by
  apply coveredState_split_literal (state := state_1493123) 1
    state_1493124 state_1493233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493124
  · exact cover_1493233
#print axioms cover_1493123

def state_1493111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 30)))
theorem cover_1493111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493111 := by
  apply coveredState_split_literal (state := state_1493111) 0
    state_1493112 state_1493123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493112
  · exact cover_1493123
#print axioms cover_1493111

def state_1493110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 15)))
theorem cover_1493110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493110 := by
  apply coveredState_split_literal (state := state_1493110) 4
    state_1493111 state_1493268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493111
  · exact cover_1493268
#print axioms cover_1493110

def state_1493108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 15)))
theorem cover_1493108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493108 := by
  apply coveredState_split_literal (state := state_1493108) 2
    state_1493109 state_1493110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493109
  · exact cover_1493110
#print axioms cover_1493108

def state_1492744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 15)))
theorem cover_1492744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492744 := by
  apply coveredState_split_literal (state := state_1492744) 3
    state_1492745 state_1493108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492745
  · exact cover_1493108
#print axioms cover_1492744

def state_1492743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 15)))
theorem cover_1492743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492743 := by
  apply coveredState_split_literal (state := state_1492743) 1
    state_1492744 state_1493281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492744
  · exact cover_1493281
#print axioms cover_1492743

def state_1493392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 30)))
theorem cover_1493392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493392 := by
  apply coveredState_split_literal (state := state_1493392) 1
    state_1493393 state_1493448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493393
  · exact cover_1493448
#print axioms cover_1493392

def state_1493391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 30)))
theorem cover_1493391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493391 := by
  apply coveredState_split_literal (state := state_1493391) 0
    state_1493392 state_1493469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493392
  · exact cover_1493469
#print axioms cover_1493391

def state_1493361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 30)))
theorem cover_1493361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493361 := by
  apply coveredState_split_literal (state := state_1493361) 3
    state_1493362 state_1493391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493362
  · exact cover_1493391
#print axioms cover_1493361

def state_1493360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 15)))
theorem cover_1493360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493360 := by
  apply coveredState_split_literal (state := state_1493360) 4
    state_1493361 state_1493474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493361
  · exact cover_1493474
#print axioms cover_1493360

def state_1493342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 15)))
theorem cover_1493342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493342 := by
  apply coveredState_split_literal (state := state_1493342) 2
    state_1493343 state_1493360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493343
  · exact cover_1493360
#print axioms cover_1493342

def state_1493509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 60)))
theorem cover_1493509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493509 := by
  apply coveredState_split_literal (state := state_1493509) 3
    state_1493510 state_1493553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493510
  · exact cover_1493553
#print axioms cover_1493509

def state_1493508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 60)))
theorem cover_1493508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493508 := by
  apply coveredState_split_literal (state := state_1493508) 0
    state_1493509 state_1493578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493509
  · exact cover_1493578
#print axioms cover_1493508

def state_1493507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 30)))
theorem cover_1493507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493507 := by
  apply coveredState_split_literal (state := state_1493507) 4
    state_1493508 state_1493585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493508
  · exact cover_1493585
#print axioms cover_1493507

def state_1493497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 30)))
theorem cover_1493497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493497 := by
  apply coveredState_split_literal (state := state_1493497) 2
    state_1493498 state_1493507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493498
  · exact cover_1493507
#print axioms cover_1493497

def state_1493496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 30)))
theorem cover_1493496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493496 := by
  apply coveredState_split_literal (state := state_1493496) 3
    state_1493497 state_1493598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493497
  · exact cover_1493598
#print axioms cover_1493496

def state_1493495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 30)))
theorem cover_1493495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493495 := by
  apply coveredState_split_literal (state := state_1493495) 1
    state_1493496 state_1493613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493496
  · exact cover_1493613
#print axioms cover_1493495

def state_1493494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 30)))
theorem cover_1493494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493494 := by
  apply coveredState_split_literal (state := state_1493494) 0
    state_1493495 state_1493634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493495
  · exact cover_1493634
#print axioms cover_1493494

def state_1493493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 15)))
theorem cover_1493493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493493 := by
  apply coveredState_split_literal (state := state_1493493) 4
    state_1493494 state_1493639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493494
  · exact cover_1493639
#print axioms cover_1493493

def state_1493491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 15)))
theorem cover_1493491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493491 := by
  apply coveredState_split_literal (state := state_1493491) 2
    state_1493492 state_1493493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493492
  · exact cover_1493493
#print axioms cover_1493491

def state_1493341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 15)))
theorem cover_1493341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493341 := by
  apply coveredState_split_literal (state := state_1493341) 3
    state_1493342 state_1493491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493342
  · exact cover_1493491
#print axioms cover_1493341

def state_1493340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 15)))
theorem cover_1493340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493340 := by
  apply coveredState_split_literal (state := state_1493340) 1
    state_1493341 state_1493646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493341
  · exact cover_1493646
#print axioms cover_1493340

def state_1492742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 15)))
theorem cover_1492742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492742 := by
  apply coveredState_split_literal (state := state_1492742) 0
    state_1492743 state_1493340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492743
  · exact cover_1493340
#print axioms cover_1492742

def state_1492300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 7)))
theorem cover_1492300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492300 := by
  apply coveredState_split_literal (state := state_1492300) 4
    state_1492301 state_1492742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492301
  · exact cover_1492742
#print axioms cover_1492300
end Mub6.Numerical.CircleFullD0.Forest
