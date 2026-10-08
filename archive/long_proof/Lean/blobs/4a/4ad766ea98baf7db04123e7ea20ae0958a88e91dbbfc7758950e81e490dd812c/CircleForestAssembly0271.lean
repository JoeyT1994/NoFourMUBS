import CircleFullInterface
import CircleForestAssembly0268
import CircleForestAssembly0270
import CircleForestChunk1036
import CircleForestChunk1037
import CircleForestChunk1038
import CircleForestChunk1039
import CircleForestChunk1040
import CircleForestChunk1041
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1547689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 10)))
theorem cover_1547689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547689 := by
  apply coveredState_split_literal (state := state_1547689) 0
    state_1547690 state_1548471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547690
  · exact cover_1548471
#print axioms cover_1547689

def state_1543603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 10)))
theorem cover_1543603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543603 := by
  apply coveredState_split_literal (state := state_1543603) 1
    state_1543604 state_1547689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543604
  · exact cover_1547689
#print axioms cover_1543603

def state_1549221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 22)))
theorem cover_1549221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549221 := by
  apply coveredState_split_literal (state := state_1549221) 3
    state_1549222 state_1549285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549222
  · exact cover_1549285
#print axioms cover_1549221

def state_1549220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 11)))
theorem cover_1549220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549220 := by
  apply coveredState_split_literal (state := state_1549220) 4
    state_1549221 state_1549286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549221
  · exact cover_1549286
#print axioms cover_1549220

def state_1549218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 11)))
theorem cover_1549218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549218 := by
  apply coveredState_split_literal (state := state_1549218) 2
    state_1549219 state_1549220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549219
  · exact cover_1549220
#print axioms cover_1549218

def state_1549287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 11)))
theorem cover_1549287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549287 := by
  apply coveredState_split_literal (state := state_1549287) 2
    state_1549288 state_1549289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549288
  · exact cover_1549289
#print axioms cover_1549287

def state_1549217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 11)))
theorem cover_1549217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549217 := by
  apply coveredState_split_literal (state := state_1549217) 0
    state_1549218 state_1549287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549218
  · exact cover_1549287
#print axioms cover_1549217

def state_1549428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 50 else (if j.val < 4 then 40 else 44)))
theorem cover_1549428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549428 := by
  apply coveredState_split_literal (state := state_1549428) 2
    state_1549429 state_1549442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549429
  · exact cover_1549442
#print axioms cover_1549428

def state_1549418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 60) else (if j.val < 3 then 50 else (if j.val < 4 then 40 else 44)))
theorem cover_1549418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549418 := by
  apply coveredState_split_literal (state := state_1549418) 0
    state_1549419 state_1549428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549419
  · exact cover_1549428
#print axioms cover_1549418

def state_1549417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 40 else 44)))
theorem cover_1549417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549417 := by
  apply coveredState_split_literal (state := state_1549417) 1
    state_1549418 state_1549501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549418
  · exact cover_1549501
#print axioms cover_1549417

def state_1549416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 44)))
theorem cover_1549416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549416 := by
  apply coveredState_split_literal (state := state_1549416) 3
    state_1549417 state_1549508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549417
  · exact cover_1549508
#print axioms cover_1549416

def state_1549415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 22)))
theorem cover_1549415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549415 := by
  apply coveredState_split_literal (state := state_1549415) 4
    state_1549416 state_1549511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549416
  · exact cover_1549511
#print axioms cover_1549415

def state_1549559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 88)))
theorem cover_1549559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549559 := by
  apply coveredState_split_literal (state := state_1549559) 3
    state_1549560 state_1549579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549560
  · exact cover_1549579
#print axioms cover_1549559

def state_1549558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 44)))
theorem cover_1549558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549558 := by
  apply coveredState_split_literal (state := state_1549558) 4
    state_1549559 state_1549630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549559
  · exact cover_1549630
#print axioms cover_1549558

def state_1549653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 44)))
theorem cover_1549653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549653 := by
  apply coveredState_split_literal (state := state_1549653) 4
    state_1549654 state_1549717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549654
  · exact cover_1549717
#print axioms cover_1549653

def state_1549557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 44)))
theorem cover_1549557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549557 := by
  apply coveredState_split_literal (state := state_1549557) 2
    state_1549558 state_1549653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549558
  · exact cover_1549653
#print axioms cover_1549557

def state_1549541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 44)))
theorem cover_1549541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549541 := by
  apply coveredState_split_literal (state := state_1549541) 0
    state_1549542 state_1549557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549542
  · exact cover_1549557
#print axioms cover_1549541

def state_1549540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 44)))
theorem cover_1549540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549540 := by
  apply coveredState_split_literal (state := state_1549540) 1
    state_1549541 state_1549730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549541
  · exact cover_1549730
#print axioms cover_1549540

def state_1549761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 44)))
theorem cover_1549761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549761 := by
  apply coveredState_split_literal (state := state_1549761) 1
    state_1549762 state_1549823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549762
  · exact cover_1549823
#print axioms cover_1549761

def state_1549539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 44)))
theorem cover_1549539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549539 := by
  apply coveredState_split_literal (state := state_1549539) 3
    state_1549540 state_1549761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549540
  · exact cover_1549761
#print axioms cover_1549539

def state_1549538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 22)))
theorem cover_1549538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549538 := by
  apply coveredState_split_literal (state := state_1549538) 4
    state_1549539 state_1549832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549539
  · exact cover_1549832
#print axioms cover_1549538

def state_1549414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 22)))
theorem cover_1549414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549414 := by
  apply coveredState_split_literal (state := state_1549414) 2
    state_1549415 state_1549538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549415
  · exact cover_1549538
#print axioms cover_1549414

def state_1549392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 22)))
theorem cover_1549392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549392 := by
  apply coveredState_split_literal (state := state_1549392) 0
    state_1549393 state_1549414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549393
  · exact cover_1549414
#print axioms cover_1549392

def state_1549391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 22)))
theorem cover_1549391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549391 := by
  apply coveredState_split_literal (state := state_1549391) 1
    state_1549392 state_1549877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549392
  · exact cover_1549877
#print axioms cover_1549391

def state_1549390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 22)))
theorem cover_1549390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549390 := by
  apply coveredState_split_literal (state := state_1549390) 3
    state_1549391 state_1549906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549391
  · exact cover_1549906
#print axioms cover_1549390

def state_1549389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 11)))
theorem cover_1549389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549389 := by
  apply coveredState_split_literal (state := state_1549389) 4
    state_1549390 state_1549919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549390
  · exact cover_1549919
#print axioms cover_1549389

def state_1549353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 11)))
theorem cover_1549353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549353 := by
  apply coveredState_split_literal (state := state_1549353) 2
    state_1549354 state_1549389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549354
  · exact cover_1549389
#print axioms cover_1549353

def state_1549981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 40 else 44)))
theorem cover_1549981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549981 := by
  apply coveredState_split_literal (state := state_1549981) 1
    state_1549982 state_1550039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549982
  · exact cover_1550039
#print axioms cover_1549981

def state_1549980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 44)))
theorem cover_1549980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549980 := by
  apply coveredState_split_literal (state := state_1549980) 3
    state_1549981 state_1550070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549981
  · exact cover_1550070
#print axioms cover_1549980

def state_1549979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 22)))
theorem cover_1549979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549979 := by
  apply coveredState_split_literal (state := state_1549979) 4
    state_1549980 state_1550075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549980
  · exact cover_1550075
#print axioms cover_1549979

def state_1550152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 88)))
theorem cover_1550152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550152 := by
  apply coveredState_split_literal (state := state_1550152) 1
    state_1550153 state_1550174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550153
  · exact cover_1550174
#print axioms cover_1550152

def state_1550112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 88)))
theorem cover_1550112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550112 := by
  apply coveredState_split_literal (state := state_1550112) 3
    state_1550113 state_1550152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550113
  · exact cover_1550152
#print axioms cover_1550112
end Mub6.Numerical.CircleFullD0.Forest
