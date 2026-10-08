import CircleFullInterface
import CircleForestAssembly0431
import CircleForestAssembly0432
import CircleForestAssembly0433
import CircleForestAssembly0435
import CircleForestAssembly0437
import CircleForestChunk1681
import CircleForestChunk1714
import CircleForestChunk1717
import CircleForestChunk1718
import CircleForestChunk1719
import CircleForestChunk1720
import CircleForestChunk1721
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2285419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 89 else 63)))
theorem cover_2285419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285419 := by
  apply coveredState_split_literal (state := state_2285419) 0
    state_2285420 state_2285455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285420
  · exact cover_2285455
#print axioms cover_2285419

def state_2284659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 63)))
theorem cover_2284659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284659 := by
  apply coveredState_split_literal (state := state_2284659) 3
    state_2284660 state_2285419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284660
  · exact cover_2285419
#print axioms cover_2284659

def state_2284601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 63)))
theorem cover_2284601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284601 := by
  apply coveredState_split_literal (state := state_2284601) 2
    state_2284602 state_2284659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2284602
  · exact cover_2284659
#print axioms cover_2284601

def state_2282747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
theorem cover_2282747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282747 := by
  apply coveredState_split_literal (state := state_2282747) 4
    state_2282748 state_2284601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282748
  · exact cover_2284601
#print axioms cover_2282747

def state_2282531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
theorem cover_2282531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282531 := by
  apply coveredState_split_literal (state := state_2282531) 1
    state_2282532 state_2282747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282532
  · exact cover_2282747
#print axioms cover_2282531

def state_2282177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
theorem cover_2282177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282177 := by
  apply coveredState_split_literal (state := state_2282177) 0
    state_2282178 state_2282531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282178
  · exact cover_2282531
#print axioms cover_2282177

def state_2285520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 45 else 31)))
theorem cover_2285520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285520 := by
  apply coveredState_split_literal (state := state_2285520) 0
    state_2285521 state_2285566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285521
  · exact cover_2285566
#print axioms cover_2285520

def state_2282176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 31)))
theorem cover_2282176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282176 := by
  apply coveredState_split_literal (state := state_2282176) 3
    state_2282177 state_2285520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282177
  · exact cover_2285520
#print axioms cover_2282176

def state_2282102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 31)))
theorem cover_2282102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282102 := by
  apply coveredState_split_literal (state := state_2282102) 2
    state_2282103 state_2282176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282103
  · exact cover_2282176
#print axioms cover_2282102

def state_2280220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2280220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280220 := by
  apply coveredState_split_literal (state := state_2280220) 4
    state_2280221 state_2282102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280221
  · exact cover_2282102
#print axioms cover_2280220

def state_2285612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 30)))
theorem cover_2285612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285612 := by
  apply coveredState_split_literal (state := state_2285612) 2
    state_2285613 state_2285634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285613
  · exact cover_2285634
#print axioms cover_2285612

def state_2285728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 58) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 62)))
theorem cover_2285728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285728 := by
  apply coveredState_split_literal (state := state_2285728) 2
    state_2285729 state_2285750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285729
  · exact cover_2285750
#print axioms cover_2285728

def state_2285811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 58) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 63)))
theorem cover_2285811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285811 := by
  apply coveredState_split_literal (state := state_2285811) 3
    state_2285812 state_2285849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285812
  · exact cover_2285849
#print axioms cover_2285811

def state_2285795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 58) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 63)))
theorem cover_2285795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285795 := by
  apply coveredState_split_literal (state := state_2285795) 2
    state_2285796 state_2285811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285796
  · exact cover_2285811
#print axioms cover_2285795

def state_2285727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 58) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
theorem cover_2285727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285727 := by
  apply coveredState_split_literal (state := state_2285727) 4
    state_2285728 state_2285795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285728
  · exact cover_2285795
#print axioms cover_2285727

def state_2285726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
theorem cover_2285726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285726 := by
  apply coveredState_split_literal (state := state_2285726) 1
    state_2285727 state_2285892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285727
  · exact cover_2285892
#print axioms cover_2285726

def state_2285708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
theorem cover_2285708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285708 := by
  apply coveredState_split_literal (state := state_2285708) 0
    state_2285709 state_2285726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285709
  · exact cover_2285726
#print axioms cover_2285708

def state_2285707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 31)))
theorem cover_2285707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285707 := by
  apply coveredState_split_literal (state := state_2285707) 3
    state_2285708 state_2285901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285708
  · exact cover_2285901
#print axioms cover_2285707

def state_2285689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 31)))
theorem cover_2285689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285689 := by
  apply coveredState_split_literal (state := state_2285689) 2
    state_2285690 state_2285707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285690
  · exact cover_2285707
#print axioms cover_2285689

def state_2285611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2285611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285611 := by
  apply coveredState_split_literal (state := state_2285611) 4
    state_2285612 state_2285689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285612
  · exact cover_2285689
#print axioms cover_2285611

def state_2280219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2280219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280219 := by
  apply coveredState_split_literal (state := state_2280219) 1
    state_2280220 state_2285611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280220
  · exact cover_2285611
#print axioms cover_2280219

def state_2279673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2279673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279673 := by
  apply coveredState_split_literal (state := state_2279673) 0
    state_2279674 state_2280219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279674
  · exact cover_2280219
#print axioms cover_2279673

def state_2285944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 15)))
theorem cover_2285944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285944 := by
  apply coveredState_split_literal (state := state_2285944) 0
    state_2285945 state_2285984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2285945
  · exact cover_2285984
#print axioms cover_2285944

def state_2279672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 15)))
theorem cover_2279672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279672 := by
  apply coveredState_split_literal (state := state_2279672) 3
    state_2279673 state_2285944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279673
  · exact cover_2285944
#print axioms cover_2279672

def state_2279592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 15)))
theorem cover_2279592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279592 := by
  apply coveredState_split_literal (state := state_2279592) 2
    state_2279593 state_2279672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279593
  · exact cover_2279672
#print axioms cover_2279592

def state_2278640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2278640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278640 := by
  apply coveredState_split_literal (state := state_2278640) 4
    state_2278641 state_2279592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278641
  · exact cover_2279592
#print axioms cover_2278640

def state_2278639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2278639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278639 := by
  apply coveredState_split_literal (state := state_2278639) 1
    state_2278640 state_2286021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278640
  · exact cover_2286021
#print axioms cover_2278639

def state_2276815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 7)))
theorem cover_2276815 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276815 := by
  apply coveredState_split_literal (state := state_2276815) 3
    state_2276816 state_2278639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276816
  · exact cover_2278639
#print axioms cover_2276815

def state_2276761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2276761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276761 := by
  apply coveredState_split_literal (state := state_2276761) 2
    state_2276762 state_2276815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276762
  · exact cover_2276815
#print axioms cover_2276761

def state_2286342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 43 else 63)))
theorem cover_2286342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286342 := by
  apply coveredState_split_literal (state := state_2286342) 3
    state_2286343 state_2286366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286343
  · exact cover_2286366
#print axioms cover_2286342

def state_2286341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 43 else 63)))
theorem cover_2286341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286341 := by
  apply coveredState_split_literal (state := state_2286341) 0
    state_2286342 state_2286413
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286342
  · exact cover_2286413
#print axioms cover_2286341

def state_2286321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 63)))
theorem cover_2286321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286321 := by
  apply coveredState_split_literal (state := state_2286321) 2
    state_2286322 state_2286341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286322
  · exact cover_2286341
#print axioms cover_2286321
end Mub6.Numerical.CircleFullD0.Forest
