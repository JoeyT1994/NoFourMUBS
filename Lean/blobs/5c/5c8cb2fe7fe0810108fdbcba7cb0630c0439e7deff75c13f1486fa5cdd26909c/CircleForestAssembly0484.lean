import CircleFullInterface
import CircleForestAssembly0483
import CircleForestChunk1904
import CircleForestChunk1905
import CircleForestChunk1906
import CircleForestChunk1907
import CircleForestChunk1908
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2330134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_2330134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330134 := by
  apply coveredState_split_literal (state := state_2330134) 2
    state_2330135 state_2330136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330135
  · exact cover_2330136
#print axioms cover_2330134

def state_2330056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_2330056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330056 := by
  apply coveredState_split_literal (state := state_2330056) 1
    state_2330057 state_2330134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330057
  · exact cover_2330134
#print axioms cover_2330056

def state_2329458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_2329458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329458 := by
  apply coveredState_split_literal (state := state_2329458) 4
    state_2329459 state_2330056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329459
  · exact cover_2330056
#print axioms cover_2329458

def state_2329457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_2329457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329457 := by
  apply coveredState_split_literal (state := state_2329457) 3
    state_2329458 state_2330237
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329458
  · exact cover_2330237
#print axioms cover_2329457

def state_2328499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2328499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328499 := by
  apply coveredState_split_literal (state := state_2328499) 2
    state_2328500 state_2329457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328500
  · exact cover_2329457
#print axioms cover_2328499

def state_2328498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2328498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328498 := by
  apply coveredState_split_literal (state := state_2328498) 1
    state_2328499 state_2330246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328499
  · exact cover_2330246
#print axioms cover_2328498

def state_2330305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_2330305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330305 := by
  apply coveredState_split_literal (state := state_2330305) 2
    state_2330306 state_2330337
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330306
  · exact cover_2330337
#print axioms cover_2330305

def state_2330304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_2330304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330304 := by
  apply coveredState_split_literal (state := state_2330304) 4
    state_2330305 state_2330394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330305
  · exact cover_2330394
#print axioms cover_2330304

def state_2330397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 12)))
theorem cover_2330397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330397 := by
  apply coveredState_split_literal (state := state_2330397) 1
    state_2330398 state_2330405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330398
  · exact cover_2330405
#print axioms cover_2330397

def state_2330396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_2330396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330396 := by
  apply coveredState_split_literal (state := state_2330396) 2
    state_2330397 state_2330462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330397
  · exact cover_2330462
#print axioms cover_2330396

def state_2330395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
theorem cover_2330395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330395 := by
  apply coveredState_split_literal (state := state_2330395) 4
    state_2330396 state_2330499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330396
  · exact cover_2330499
#print axioms cover_2330395

def state_2330303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_2330303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330303 := by
  apply coveredState_split_literal (state := state_2330303) 3
    state_2330304 state_2330395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330304
  · exact cover_2330395
#print axioms cover_2330303

def state_2330563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 24)))
theorem cover_2330563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330563 := by
  apply coveredState_split_literal (state := state_2330563) 2
    state_2330564 state_2330601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330564
  · exact cover_2330601
#print axioms cover_2330563

def state_2330562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 24)))
theorem cover_2330562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330562 := by
  apply coveredState_split_literal (state := state_2330562) 1
    state_2330563 state_2330652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330563
  · exact cover_2330652
#print axioms cover_2330562

def state_2330561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 24)))
theorem cover_2330561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330561 := by
  apply coveredState_split_literal (state := state_2330561) 0
    state_2330562 state_2330659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330562
  · exact cover_2330659
#print axioms cover_2330561

def state_2330560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 12)))
theorem cover_2330560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330560 := by
  apply coveredState_split_literal (state := state_2330560) 4
    state_2330561 state_2330668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330561
  · exact cover_2330668
#print axioms cover_2330560

def state_2330520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_2330520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330520 := by
  apply coveredState_split_literal (state := state_2330520) 3
    state_2330521 state_2330560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330521
  · exact cover_2330560
#print axioms cover_2330520

def state_2330504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_2330504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330504 := by
  apply coveredState_split_literal (state := state_2330504) 2
    state_2330505 state_2330520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330505
  · exact cover_2330520
#print axioms cover_2330504

def state_2330503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_2330503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330503 := by
  apply coveredState_split_literal (state := state_2330503) 4
    state_2330504 state_2330681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330504
  · exact cover_2330681
#print axioms cover_2330503

def state_2330704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 24)))
theorem cover_2330704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330704 := by
  apply coveredState_split_literal (state := state_2330704) 0
    state_2330705 state_2330716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330705
  · exact cover_2330716
#print axioms cover_2330704

def state_2330703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_2330703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330703 := by
  apply coveredState_split_literal (state := state_2330703) 4
    state_2330704 state_2330771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330704
  · exact cover_2330771
#print axioms cover_2330703

def state_2330687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_2330687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330687 := by
  apply coveredState_split_literal (state := state_2330687) 2
    state_2330688 state_2330703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330688
  · exact cover_2330703
#print axioms cover_2330687

def state_2330686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
theorem cover_2330686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330686 := by
  apply coveredState_split_literal (state := state_2330686) 4
    state_2330687 state_2330772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330687
  · exact cover_2330772
#print axioms cover_2330686

def state_2330502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_2330502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330502 := by
  apply coveredState_split_literal (state := state_2330502) 3
    state_2330503 state_2330686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330503
  · exact cover_2330686
#print axioms cover_2330502

def state_2330302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_2330302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330302 := by
  apply coveredState_split_literal (state := state_2330302) 1
    state_2330303 state_2330502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330303
  · exact cover_2330502
#print axioms cover_2330302

def state_2330829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
theorem cover_2330829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330829 := by
  apply coveredState_split_literal (state := state_2330829) 4
    state_2330830 state_2330893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330830
  · exact cover_2330893
#print axioms cover_2330829

def state_2330827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_2330827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330827 := by
  apply coveredState_split_literal (state := state_2330827) 3
    state_2330828 state_2330829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330828
  · exact cover_2330829
#print axioms cover_2330827

def state_2330773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_2330773 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330773 := by
  apply coveredState_split_literal (state := state_2330773) 1
    state_2330774 state_2330827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330774
  · exact cover_2330827
#print axioms cover_2330773

def state_2330301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_2330301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330301 := by
  apply coveredState_split_literal (state := state_2330301) 0
    state_2330302 state_2330773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330302
  · exact cover_2330773
#print axioms cover_2330301

def state_2330300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_2330300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330300 := by
  apply coveredState_split_literal (state := state_2330300) 4
    state_2330301 state_2330894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330301
  · exact cover_2330894
#print axioms cover_2330300

def state_2331008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 12)))
theorem cover_2331008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331008 := by
  apply coveredState_split_literal (state := state_2331008) 0
    state_2331009 state_2331034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331009
  · exact cover_2331034
#print axioms cover_2331008

def state_2331007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 12)))
theorem cover_2331007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331007 := by
  apply coveredState_split_literal (state := state_2331007) 3
    state_2331008 state_2331073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331008
  · exact cover_2331073
#print axioms cover_2331007
end Mub6.Numerical.CircleFullD0.Forest
