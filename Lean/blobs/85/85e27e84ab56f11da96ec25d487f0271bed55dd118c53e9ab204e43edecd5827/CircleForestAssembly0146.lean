import CircleFullInterface
import CircleForestAssembly0145
import CircleForestChunk0560
import CircleForestChunk0561
import CircleForestChunk0562
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1323404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 25)))
theorem cover_1323404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323404 := by
  apply coveredState_split_literal (state := state_1323404) 3
    state_1323405 state_1323516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323405
  · exact cover_1323516
#print axioms cover_1323404

def state_1323403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 25)))
theorem cover_1323403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323403 := by
  apply coveredState_split_literal (state := state_1323403) 0
    state_1323404 state_1323527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323404
  · exact cover_1323527
#print axioms cover_1323403

def state_1323402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 25)))
theorem cover_1323402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323402 := by
  apply coveredState_split_literal (state := state_1323402) 2
    state_1323403 state_1323536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323403
  · exact cover_1323536
#print axioms cover_1323402

def state_1323398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 12)))
theorem cover_1323398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323398 := by
  apply coveredState_split_literal (state := state_1323398) 4
    state_1323399 state_1323402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323399
  · exact cover_1323402
#print axioms cover_1323398

def state_1323388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 12)))
theorem cover_1323388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323388 := by
  apply coveredState_split_literal (state := state_1323388) 1
    state_1323389 state_1323398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323389
  · exact cover_1323398
#print axioms cover_1323388

def state_1323387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
theorem cover_1323387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323387 := by
  apply coveredState_split_literal (state := state_1323387) 3
    state_1323388 state_1323541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323388
  · exact cover_1323541
#print axioms cover_1323387

def state_1323386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
theorem cover_1323386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323386 := by
  apply coveredState_split_literal (state := state_1323386) 0
    state_1323387 state_1323544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323387
  · exact cover_1323544
#print axioms cover_1323386

def state_1323564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 26)))
theorem cover_1323564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323564 := by
  apply coveredState_split_literal (state := state_1323564) 3
    state_1323565 state_1323628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323565
  · exact cover_1323628
#print axioms cover_1323564

def state_1323563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 26)))
theorem cover_1323563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323563 := by
  apply coveredState_split_literal (state := state_1323563) 0
    state_1323564 state_1323645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323564
  · exact cover_1323645
#print axioms cover_1323563

def state_1323562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 13)))
theorem cover_1323562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323562 := by
  apply coveredState_split_literal (state := state_1323562) 4
    state_1323563 state_1323654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323563
  · exact cover_1323654
#print axioms cover_1323562

def state_1323561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_1323561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323561 := by
  apply coveredState_split_literal (state := state_1323561) 2
    state_1323562 state_1323655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323562
  · exact cover_1323655
#print axioms cover_1323561

def state_1323551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_1323551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323551 := by
  apply coveredState_split_literal (state := state_1323551) 1
    state_1323552 state_1323561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323552
  · exact cover_1323561
#print axioms cover_1323551

def state_1323550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
theorem cover_1323550 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323550 := by
  apply coveredState_split_literal (state := state_1323550) 3
    state_1323551 state_1323656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323551
  · exact cover_1323656
#print axioms cover_1323550

def state_1323549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
theorem cover_1323549 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323549 := by
  apply coveredState_split_literal (state := state_1323549) 0
    state_1323550 state_1323677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323550
  · exact cover_1323677
#print axioms cover_1323549

def state_1323385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 6)))
theorem cover_1323385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323385 := by
  apply coveredState_split_literal (state := state_1323385) 4
    state_1323386 state_1323549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323386
  · exact cover_1323549
#print axioms cover_1323385

def state_1323061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_1323061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323061 := by
  apply coveredState_split_literal (state := state_1323061) 2
    state_1323062 state_1323385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323062
  · exact cover_1323385
#print axioms cover_1323061

def state_1323731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 51)))
theorem cover_1323731 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323731 := by
  apply coveredState_split_literal (state := state_1323731) 3
    state_1323732 state_1323787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323732
  · exact cover_1323787
#print axioms cover_1323731

def state_1323730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 51)))
theorem cover_1323730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323730 := by
  apply coveredState_split_literal (state := state_1323730) 0
    state_1323731 state_1323798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323731
  · exact cover_1323798
#print axioms cover_1323730

def state_1323729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 51)))
theorem cover_1323729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323729 := by
  apply coveredState_split_literal (state := state_1323729) 1
    state_1323730 state_1323819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323730
  · exact cover_1323819
#print axioms cover_1323729

def state_1323725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 25)))
theorem cover_1323725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323725 := by
  apply coveredState_split_literal (state := state_1323725) 4
    state_1323726 state_1323729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323726
  · exact cover_1323729
#print axioms cover_1323725

def state_1323715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 25)))
theorem cover_1323715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323715 := by
  apply coveredState_split_literal (state := state_1323715) 2
    state_1323716 state_1323725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323716
  · exact cover_1323725
#print axioms cover_1323715

def state_1323714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 25)))
theorem cover_1323714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323714 := by
  apply coveredState_split_literal (state := state_1323714) 3
    state_1323715 state_1323824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323715
  · exact cover_1323824
#print axioms cover_1323714

def state_1323713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 25)))
theorem cover_1323713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323713 := by
  apply coveredState_split_literal (state := state_1323713) 0
    state_1323714 state_1323831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323714
  · exact cover_1323831
#print axioms cover_1323713

def state_1323712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 25)))
theorem cover_1323712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323712 := by
  apply coveredState_split_literal (state := state_1323712) 1
    state_1323713 state_1323844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323713
  · exact cover_1323844
#print axioms cover_1323712

def state_1323708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 12)))
theorem cover_1323708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323708 := by
  apply coveredState_split_literal (state := state_1323708) 4
    state_1323709 state_1323712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323709
  · exact cover_1323712
#print axioms cover_1323708

def state_1323700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 12)))
theorem cover_1323700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323700 := by
  apply coveredState_split_literal (state := state_1323700) 2
    state_1323701 state_1323708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323701
  · exact cover_1323708
#print axioms cover_1323700

def state_1323699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
theorem cover_1323699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323699 := by
  apply coveredState_split_literal (state := state_1323699) 3
    state_1323700 state_1323849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323700
  · exact cover_1323849
#print axioms cover_1323699

def state_1323698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
theorem cover_1323698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323698 := by
  apply coveredState_split_literal (state := state_1323698) 0
    state_1323699 state_1323852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323699
  · exact cover_1323852
#print axioms cover_1323698

def state_1323869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 26)))
theorem cover_1323869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323869 := by
  apply coveredState_split_literal (state := state_1323869) 0
    state_1323870 state_1323933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323870
  · exact cover_1323933
#print axioms cover_1323869

def state_1323868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 13)))
theorem cover_1323868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323868 := by
  apply coveredState_split_literal (state := state_1323868) 4
    state_1323869 state_1323958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323869
  · exact cover_1323958
#print axioms cover_1323868

def state_1323867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 13)))
theorem cover_1323867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323867 := by
  apply coveredState_split_literal (state := state_1323867) 1
    state_1323868 state_1323959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323868
  · exact cover_1323959
#print axioms cover_1323867

def state_1323859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
theorem cover_1323859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323859 := by
  apply coveredState_split_literal (state := state_1323859) 2
    state_1323860 state_1323867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323860
  · exact cover_1323867
#print axioms cover_1323859
end Mub6.Numerical.CircleFullD0.Forest
