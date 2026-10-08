import CircleFullInterface
import CircleForestAssembly0101
import CircleForestAssembly0104
import CircleForestAssembly0107
import CircleForestChunk0429
import CircleForestChunk0430
import CircleForestChunk0431
import CircleForestChunk0432
import CircleForestChunk0433
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_175656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_175656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175656 := by
  apply coveredState_split_literal (state := state_175656) 0
    state_175657 state_177940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175657
  · exact cover_177940
#print axioms cover_175656

def state_172458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_172458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172458 := by
  apply coveredState_split_literal (state := state_172458) 4
    state_172459 state_175656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172459
  · exact cover_175656
#print axioms cover_172458

def state_172270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_172270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172270 := by
  apply coveredState_split_literal (state := state_172270) 3
    state_172271 state_172458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172271
  · exact cover_172458
#print axioms cover_172270

def state_178573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_178573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178573 := by
  apply coveredState_split_literal (state := state_178573) 1
    state_178574 state_178593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178574
  · exact cover_178593
#print axioms cover_178573

def state_178571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_178571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178571 := by
  apply coveredState_split_literal (state := state_178571) 0
    state_178572 state_178573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178572
  · exact cover_178573
#print axioms cover_178571

def state_178638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_178638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178638 := by
  apply coveredState_split_literal (state := state_178638) 0
    state_178639 state_178658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178639
  · exact cover_178658
#print axioms cover_178638

def state_178570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_178570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178570 := by
  apply coveredState_split_literal (state := state_178570) 4
    state_178571 state_178638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178571
  · exact cover_178638
#print axioms cover_178570

def state_178718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_178718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178718 := by
  apply coveredState_split_literal (state := state_178718) 0
    state_178719 state_178736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178719
  · exact cover_178736
#print axioms cover_178718

def state_178802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_178802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178802 := by
  apply coveredState_split_literal (state := state_178802) 2
    state_178803 state_178850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178803
  · exact cover_178850
#print axioms cover_178802

def state_178801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_178801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178801 := by
  apply coveredState_split_literal (state := state_178801) 1
    state_178802 state_178867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178802
  · exact cover_178867
#print axioms cover_178801

def state_178799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_178799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178799 := by
  apply coveredState_split_literal (state := state_178799) 4
    state_178800 state_178801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178800
  · exact cover_178801
#print axioms cover_178799

def state_178877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_178877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178877 := by
  apply coveredState_split_literal (state := state_178877) 1
    state_178878 state_178931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178878
  · exact cover_178931
#print axioms cover_178877

def state_178957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 14)))
theorem cover_178957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178957 := by
  apply coveredState_split_literal (state := state_178957) 3
    state_178958 state_178981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178958
  · exact cover_178981
#print axioms cover_178957

def state_178956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 24) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 14)))
theorem cover_178956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178956 := by
  apply coveredState_split_literal (state := state_178956) 2
    state_178957 state_179040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178957
  · exact cover_179040
#print axioms cover_178956

def state_178955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 14)))
theorem cover_178955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178955 := by
  apply coveredState_split_literal (state := state_178955) 1
    state_178956 state_179053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178956
  · exact cover_179053
#print axioms cover_178955

def state_178954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 7)))
theorem cover_178954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178954 := by
  apply coveredState_split_literal (state := state_178954) 4
    state_178955 state_179074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178955
  · exact cover_179074
#print axioms cover_178954

def state_179107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 7)))
theorem cover_179107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179107 := by
  apply coveredState_split_literal (state := state_179107) 4
    state_179108 state_179143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179108
  · exact cover_179143
#print axioms cover_179107

def state_178953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 7)))
theorem cover_178953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178953 := by
  apply coveredState_split_literal (state := state_178953) 3
    state_178954 state_179107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178954
  · exact cover_179107
#print axioms cover_178953

def state_179391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 59)))
theorem cover_179391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179391 := by
  apply coveredState_split_literal (state := state_179391) 1
    state_179392 state_179415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179392
  · exact cover_179415
#print axioms cover_179391

def state_179373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 29)))
theorem cover_179373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179373 := by
  apply coveredState_split_literal (state := state_179373) 4
    state_179374 state_179391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179374
  · exact cover_179391
#print axioms cover_179373

def state_179353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 29)))
theorem cover_179353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179353 := by
  apply coveredState_split_literal (state := state_179353) 3
    state_179354 state_179373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179354
  · exact cover_179373
#print axioms cover_179353

def state_179321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 29)))
theorem cover_179321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179321 := by
  apply coveredState_split_literal (state := state_179321) 0
    state_179322 state_179353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179322
  · exact cover_179353
#print axioms cover_179321

def state_179287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 49) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 29)))
theorem cover_179287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179287 := by
  apply coveredState_split_literal (state := state_179287) 2
    state_179288 state_179321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179288
  · exact cover_179321
#print axioms cover_179287

def state_179251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 29)))
theorem cover_179251 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179251 := by
  apply coveredState_split_literal (state := state_179251) 1
    state_179252 state_179287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179252
  · exact cover_179287
#print axioms cover_179251

def state_179225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 14)))
theorem cover_179225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179225 := by
  apply coveredState_split_literal (state := state_179225) 4
    state_179226 state_179251
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179226
  · exact cover_179251
#print axioms cover_179225

def state_179197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 14)))
theorem cover_179197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179197 := by
  apply coveredState_split_literal (state := state_179197) 3
    state_179198 state_179225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179198
  · exact cover_179225
#print axioms cover_179197

def state_179579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 99) else (if j.val < 3 then 99 else (if j.val < 4 then 59 else 59)))
theorem cover_179579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179579 := by
  apply coveredState_split_literal (state := state_179579) 0
    state_179580 state_179625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179580
  · exact cover_179625
#print axioms cover_179579

def state_179565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 99) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 59)))
theorem cover_179565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179565 := by
  apply coveredState_split_literal (state := state_179565) 2
    state_179566 state_179579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179566
  · exact cover_179579
#print axioms cover_179565

def state_179549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 59)))
theorem cover_179549 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179549 := by
  apply coveredState_split_literal (state := state_179549) 1
    state_179550 state_179565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179550
  · exact cover_179565
#print axioms cover_179549

def state_179535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 29)))
theorem cover_179535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179535 := by
  apply coveredState_split_literal (state := state_179535) 4
    state_179536 state_179549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179536
  · exact cover_179549
#print axioms cover_179535

def state_179521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 29)))
theorem cover_179521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179521 := by
  apply coveredState_split_literal (state := state_179521) 3
    state_179522 state_179535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179522
  · exact cover_179535
#print axioms cover_179521

def state_179520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 29)))
theorem cover_179520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179520 := by
  apply coveredState_split_literal (state := state_179520) 0
    state_179521 state_179644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179521
  · exact cover_179644
#print axioms cover_179520
end Mub6.Numerical.CircleFullPrototype.Forest
