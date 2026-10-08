import CircleFullInterface
import CircleForestAssembly0151
import CircleForestChunk0577
import CircleForestChunk0581
import CircleForestChunk0582
import CircleForestChunk0583
import CircleForestChunk0584
import CircleForestChunk0585
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1327608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 5)))
theorem cover_1327608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327608 := by
  apply coveredState_split_literal (state := state_1327608) 3
    state_1327609 state_1328080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327609
  · exact cover_1328080
#print axioms cover_1327608

def state_1327576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_1327576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327576 := by
  apply coveredState_split_literal (state := state_1327576) 2
    state_1327577 state_1327608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327577
  · exact cover_1327608
#print axioms cover_1327576

def state_1328415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 11)))
theorem cover_1328415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328415 := by
  apply coveredState_split_literal (state := state_1328415) 1
    state_1328416 state_1328479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328416
  · exact cover_1328479
#print axioms cover_1328415

def state_1328403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 5)))
theorem cover_1328403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328403 := by
  apply coveredState_split_literal (state := state_1328403) 4
    state_1328404 state_1328415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328404
  · exact cover_1328415
#print axioms cover_1328403

def state_1328357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 5)))
theorem cover_1328357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328357 := by
  apply coveredState_split_literal (state := state_1328357) 3
    state_1328358 state_1328403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328358
  · exact cover_1328403
#print axioms cover_1328357

def state_1328325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_1328325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328325 := by
  apply coveredState_split_literal (state := state_1328325) 2
    state_1328326 state_1328357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328326
  · exact cover_1328357
#print axioms cover_1328325

def state_1327575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_1327575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327575 := by
  apply coveredState_split_literal (state := state_1327575) 0
    state_1327576 state_1328325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327576
  · exact cover_1328325
#print axioms cover_1327575

def state_1327569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_1327569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327569 := by
  apply coveredState_split_literal (state := state_1327569) 4
    state_1327570 state_1327575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327570
  · exact cover_1327575
#print axioms cover_1327569

def state_1327475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_1327475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327475 := by
  apply coveredState_split_literal (state := state_1327475) 3
    state_1327476 state_1327569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327476
  · exact cover_1327569
#print axioms cover_1327475

def state_1328526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 11)))
theorem cover_1328526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328526 := by
  apply coveredState_split_literal (state := state_1328526) 4
    state_1328527 state_1328536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328527
  · exact cover_1328536
#print axioms cover_1328526

def state_1328516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 11)))
theorem cover_1328516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328516 := by
  apply coveredState_split_literal (state := state_1328516) 0
    state_1328517 state_1328526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328517
  · exact cover_1328526
#print axioms cover_1328516

def state_1328515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
theorem cover_1328515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328515 := by
  apply coveredState_split_literal (state := state_1328515) 2
    state_1328516 state_1328591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328516
  · exact cover_1328591
#print axioms cover_1328515

def state_1328514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
theorem cover_1328514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328514 := by
  apply coveredState_split_literal (state := state_1328514) 1
    state_1328515 state_1328592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328515
  · exact cover_1328592
#print axioms cover_1328514

def state_1328506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 5)))
theorem cover_1328506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328506 := by
  apply coveredState_split_literal (state := state_1328506) 4
    state_1328507 state_1328514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328507
  · exact cover_1328514
#print axioms cover_1328506

def state_1328616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 11)))
theorem cover_1328616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328616 := by
  apply coveredState_split_literal (state := state_1328616) 3
    state_1328617 state_1328674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328617
  · exact cover_1328674
#print axioms cover_1328616

def state_1328691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 22)))
theorem cover_1328691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328691 := by
  apply coveredState_split_literal (state := state_1328691) 2
    state_1328692 state_1328741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328692
  · exact cover_1328741
#print axioms cover_1328691

def state_1328762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 56 else (if j.val < 4 then 44 else 46)))
theorem cover_1328762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328762 := by
  apply coveredState_split_literal (state := state_1328762) 1
    state_1328763 state_1328820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328763
  · exact cover_1328820
#print axioms cover_1328762

def state_1328761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 28 else (if j.val < 4 then 44 else 46)))
theorem cover_1328761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328761 := by
  apply coveredState_split_literal (state := state_1328761) 2
    state_1328762 state_1328853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328762
  · exact cover_1328853
#print axioms cover_1328761

def state_1328760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 46)))
theorem cover_1328760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328760 := by
  apply coveredState_split_literal (state := state_1328760) 3
    state_1328761 state_1328864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328761
  · exact cover_1328864
#print axioms cover_1328760

def state_1328893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 46)))
theorem cover_1328893 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328893 := by
  apply coveredState_split_literal (state := state_1328893) 3
    state_1328894 state_1328943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328894
  · exact cover_1328943
#print axioms cover_1328893

def state_1328759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 46)))
theorem cover_1328759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328759 := by
  apply coveredState_split_literal (state := state_1328759) 0
    state_1328760 state_1328893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328760
  · exact cover_1328893
#print axioms cover_1328759

def state_1328964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 28 else (if j.val < 4 then 44 else 47)))
theorem cover_1328964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328964 := by
  apply coveredState_split_literal (state := state_1328964) 2
    state_1328965 state_1329006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328965
  · exact cover_1329006
#print axioms cover_1328964

def state_1328963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 47)))
theorem cover_1328963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328963 := by
  apply coveredState_split_literal (state := state_1328963) 3
    state_1328964 state_1329029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328964
  · exact cover_1329029
#print axioms cover_1328963

def state_1329088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 33) else (if j.val < 3 then 56 else (if j.val < 4 then 44 else 47)))
theorem cover_1329088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329088 := by
  apply coveredState_split_literal (state := state_1329088) 4
    state_1329089 state_1329118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329089
  · exact cover_1329118
#print axioms cover_1329088

def state_1329052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 56 else (if j.val < 4 then 44 else 47)))
theorem cover_1329052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329052 := by
  apply coveredState_split_literal (state := state_1329052) 1
    state_1329053 state_1329088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329053
  · exact cover_1329088
#print axioms cover_1329052

def state_1329051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 28 else (if j.val < 4 then 44 else 47)))
theorem cover_1329051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329051 := by
  apply coveredState_split_literal (state := state_1329051) 2
    state_1329052 state_1329155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329052
  · exact cover_1329155
#print axioms cover_1329051

def state_1329198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 28 else (if j.val < 4 then 45 else 47)))
theorem cover_1329198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329198 := by
  apply coveredState_split_literal (state := state_1329198) 2
    state_1329199 state_1329228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329199
  · exact cover_1329228
#print axioms cover_1329198

def state_1329050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 47)))
theorem cover_1329050 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329050 := by
  apply coveredState_split_literal (state := state_1329050) 3
    state_1329051 state_1329198
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329051
  · exact cover_1329198
#print axioms cover_1329050

def state_1328962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 47)))
theorem cover_1328962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328962 := by
  apply coveredState_split_literal (state := state_1328962) 0
    state_1328963 state_1329050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328963
  · exact cover_1329050
#print axioms cover_1328962

def state_1328758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 23)))
theorem cover_1328758 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328758 := by
  apply coveredState_split_literal (state := state_1328758) 4
    state_1328759 state_1328962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328759
  · exact cover_1328962
#print axioms cover_1328758

def state_1329291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 47)))
theorem cover_1329291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329291 := by
  apply coveredState_split_literal (state := state_1329291) 0
    state_1329292 state_1329321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329292
  · exact cover_1329321
#print axioms cover_1329291

def state_1329271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 23)))
theorem cover_1329271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329271 := by
  apply coveredState_split_literal (state := state_1329271) 4
    state_1329272 state_1329291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329272
  · exact cover_1329291
#print axioms cover_1329271
end Mub6.Numerical.CircleFullD0.Forest
