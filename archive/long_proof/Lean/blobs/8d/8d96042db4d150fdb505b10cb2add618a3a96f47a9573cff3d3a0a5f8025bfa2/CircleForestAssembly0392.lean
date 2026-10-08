import CircleFullInterface
import CircleForestAssembly0391
import CircleForestChunk1523
import CircleForestChunk1527
import CircleForestChunk1528
import CircleForestChunk1529
import CircleForestChunk1530
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1667415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 7)))
theorem cover_1667415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667415 := by
  apply coveredState_split_literal (state := state_1667415) 1
    state_1667416 state_1667427
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667416
  · exact cover_1667427
#print axioms cover_1667415

def state_1666469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 7)))
theorem cover_1666469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666469 := by
  apply coveredState_split_literal (state := state_1666469) 3
    state_1666470 state_1667415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666470
  · exact cover_1667415
#print axioms cover_1666469

def state_1667588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 25 else 31)))
theorem cover_1667588 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667588 := by
  apply coveredState_split_literal (state := state_1667588) 0
    state_1667589 state_1667592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667589
  · exact cover_1667592
#print axioms cover_1667588

def state_1667574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 25 else 15)))
theorem cover_1667574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667574 := by
  apply coveredState_split_literal (state := state_1667574) 4
    state_1667575 state_1667588
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667575
  · exact cover_1667588
#print axioms cover_1667574

def state_1667566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 25 else 15)))
theorem cover_1667566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667566 := by
  apply coveredState_split_literal (state := state_1667566) 1
    state_1667567 state_1667574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667567
  · exact cover_1667574
#print axioms cover_1667566

def state_1667565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 15)))
theorem cover_1667565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667565 := by
  apply coveredState_split_literal (state := state_1667565) 2
    state_1667566 state_1667653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667566
  · exact cover_1667653
#print axioms cover_1667565

def state_1667557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 15)))
theorem cover_1667557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667557 := by
  apply coveredState_split_literal (state := state_1667557) 3
    state_1667558 state_1667565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667558
  · exact cover_1667565
#print axioms cover_1667557

def state_1667553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 15)))
theorem cover_1667553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667553 := by
  apply coveredState_split_literal (state := state_1667553) 0
    state_1667554 state_1667557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667554
  · exact cover_1667557
#print axioms cover_1667553

def state_1667543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 7)))
theorem cover_1667543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667543 := by
  apply coveredState_split_literal (state := state_1667543) 4
    state_1667544 state_1667553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667544
  · exact cover_1667553
#print axioms cover_1667543

def state_1667535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 7)))
theorem cover_1667535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667535 := by
  apply coveredState_split_literal (state := state_1667535) 1
    state_1667536 state_1667543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667536
  · exact cover_1667543
#print axioms cover_1667535

def state_1667534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 7)))
theorem cover_1667534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667534 := by
  apply coveredState_split_literal (state := state_1667534) 3
    state_1667535 state_1667654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667535
  · exact cover_1667654
#print axioms cover_1667534

def state_1666468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_1666468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666468 := by
  apply coveredState_split_literal (state := state_1666468) 2
    state_1666469 state_1667534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666469
  · exact cover_1667534
#print axioms cover_1666468

def state_1667702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 31)))
theorem cover_1667702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667702 := by
  apply coveredState_split_literal (state := state_1667702) 2
    state_1667703 state_1667720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667703
  · exact cover_1667720
#print axioms cover_1667702

def state_1667698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 15)))
theorem cover_1667698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667698 := by
  apply coveredState_split_literal (state := state_1667698) 4
    state_1667699 state_1667702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667699
  · exact cover_1667702
#print axioms cover_1667698

def state_1667692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 15)))
theorem cover_1667692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667692 := by
  apply coveredState_split_literal (state := state_1667692) 1
    state_1667693 state_1667698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667693
  · exact cover_1667698
#print axioms cover_1667692

def state_1667691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 15)))
theorem cover_1667691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667691 := by
  apply coveredState_split_literal (state := state_1667691) 0
    state_1667692 state_1667771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667692
  · exact cover_1667771
#print axioms cover_1667691

def state_1667679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 15)))
theorem cover_1667679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667679 := by
  apply coveredState_split_literal (state := state_1667679) 3
    state_1667680 state_1667691
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667680
  · exact cover_1667691
#print axioms cover_1667679

def state_1667661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 15)))
theorem cover_1667661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667661 := by
  apply coveredState_split_literal (state := state_1667661) 2
    state_1667662 state_1667679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667662
  · exact cover_1667679
#print axioms cover_1667661

def state_1667659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_1667659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667659 := by
  apply coveredState_split_literal (state := state_1667659) 4
    state_1667660 state_1667661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667660
  · exact cover_1667661
#print axioms cover_1667659

def state_1667657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_1667657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667657 := by
  apply coveredState_split_literal (state := state_1667657) 1
    state_1667658 state_1667659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667658
  · exact cover_1667659
#print axioms cover_1667657

def state_1667656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 7)))
theorem cover_1667656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667656 := by
  apply coveredState_split_literal (state := state_1667656) 3
    state_1667657 state_1667772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667657
  · exact cover_1667772
#print axioms cover_1667656

def state_1667911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 15)))
theorem cover_1667911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667911 := by
  apply coveredState_split_literal (state := state_1667911) 0
    state_1667912 state_1667971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667912
  · exact cover_1667971
#print axioms cover_1667911

def state_1667905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 7)))
theorem cover_1667905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667905 := by
  apply coveredState_split_literal (state := state_1667905) 4
    state_1667906 state_1667911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667906
  · exact cover_1667911
#print axioms cover_1667905

def state_1667897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 7)))
theorem cover_1667897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667897 := by
  apply coveredState_split_literal (state := state_1667897) 1
    state_1667898 state_1667905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667898
  · exact cover_1667905
#print axioms cover_1667897

def state_1667833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 7)))
theorem cover_1667833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667833 := by
  apply coveredState_split_literal (state := state_1667833) 3
    state_1667834 state_1667897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667834
  · exact cover_1667897
#print axioms cover_1667833

def state_1667655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_1667655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667655 := by
  apply coveredState_split_literal (state := state_1667655) 2
    state_1667656 state_1667833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667656
  · exact cover_1667833
#print axioms cover_1667655

def state_1666467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_1666467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666467 := by
  apply coveredState_split_literal (state := state_1666467) 0
    state_1666468 state_1667655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666468
  · exact cover_1667655
#print axioms cover_1666467

def state_1666447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_1666447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666447 := by
  apply coveredState_split_literal (state := state_1666447) 4
    state_1666448 state_1666467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666448
  · exact cover_1666467
#print axioms cover_1666447

def state_1666446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1666446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666446 := by
  apply coveredState_split_literal (state := state_1666446) 3
    state_1666447 state_1667982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666447
  · exact cover_1667982
#print axioms cover_1666446

def state_1666445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1666445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666445 := by
  apply coveredState_split_literal (state := state_1666445) 2
    state_1666446 state_1667989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666446
  · exact cover_1667989
#print axioms cover_1666445

def state_1666381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1666381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666381 := by
  apply coveredState_split_literal (state := state_1666381) 1
    state_1666382 state_1666445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666382
  · exact cover_1666445
#print axioms cover_1666381

def state_1666380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1666380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666380 := by
  apply coveredState_split_literal (state := state_1666380) 0
    state_1666381 state_1667998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666381
  · exact cover_1667998
#print axioms cover_1666380
end Mub6.Numerical.CircleFullD0.Forest
