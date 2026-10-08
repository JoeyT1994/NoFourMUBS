import D0FullInterface
import D0ForestAssembly0415
import D0ForestChunk1622
import D0ForestChunk1623
import D0ForestChunk1624
import D0ForestChunk1625
import D0ForestChunk1626
import D0ForestChunk1627
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2262640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 54)))
theorem cover_2262640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262640 := by
  apply coveredState_split_literal (state := state_2262640) 0
    state_2262641 state_2262660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262641
  · exact cover_2262660
#print axioms cover_2262640

def state_2262755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 92 else 55)))
theorem cover_2262755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262755 := by
  apply coveredState_split_literal (state := state_2262755) 4
    state_2262756 state_2262797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262756
  · exact cover_2262797
#print axioms cover_2262755

def state_2262754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 88 else (if j.val < 4 then 92 else 55)))
theorem cover_2262754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262754 := by
  apply coveredState_split_literal (state := state_2262754) 1
    state_2262755 state_2262822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262755
  · exact cover_2262822
#print axioms cover_2262754

def state_2262753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 92 else 55)))
theorem cover_2262753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262753 := by
  apply coveredState_split_literal (state := state_2262753) 2
    state_2262754 state_2262829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262754
  · exact cover_2262829
#print axioms cover_2262753

def state_2262752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 55)))
theorem cover_2262752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262752 := by
  apply coveredState_split_literal (state := state_2262752) 3
    state_2262753 state_2262834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262753
  · exact cover_2262834
#print axioms cover_2262752

def state_2262860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 92 else 55)))
theorem cover_2262860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262860 := by
  apply coveredState_split_literal (state := state_2262860) 4
    state_2262861 state_2262922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262861
  · exact cover_2262922
#print axioms cover_2262860

def state_2262859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 88 else (if j.val < 4 then 92 else 55)))
theorem cover_2262859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262859 := by
  apply coveredState_split_literal (state := state_2262859) 1
    state_2262860 state_2262961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262860
  · exact cover_2262961
#print axioms cover_2262859

def state_2262858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 92 else 55)))
theorem cover_2262858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262858 := by
  apply coveredState_split_literal (state := state_2262858) 2
    state_2262859 state_2263002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262859
  · exact cover_2263002
#print axioms cover_2262858

def state_2262857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 55)))
theorem cover_2262857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262857 := by
  apply coveredState_split_literal (state := state_2262857) 3
    state_2262858 state_2263037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262858
  · exact cover_2263037
#print axioms cover_2262857

def state_2262751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 55)))
theorem cover_2262751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262751 := by
  apply coveredState_split_literal (state := state_2262751) 0
    state_2262752 state_2262857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262752
  · exact cover_2262857
#print axioms cover_2262751

def state_2262639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 27)))
theorem cover_2262639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262639 := by
  apply coveredState_split_literal (state := state_2262639) 4
    state_2262640 state_2262751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262640
  · exact cover_2262751
#print axioms cover_2262639

def state_2262638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 27)))
theorem cover_2262638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262638 := by
  apply coveredState_split_literal (state := state_2262638) 1
    state_2262639 state_2263078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262639
  · exact cover_2263078
#print axioms cover_2262638

def state_2262637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 46 else 27)))
theorem cover_2262637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262637 := by
  apply coveredState_split_literal (state := state_2262637) 2
    state_2262638 state_2263103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262638
  · exact cover_2263103
#print axioms cover_2262637

def state_2262636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 27)))
theorem cover_2262636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262636 := by
  apply coveredState_split_literal (state := state_2262636) 3
    state_2262637 state_2263122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262637
  · exact cover_2263122
#print axioms cover_2262636

def state_2262606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 27)))
theorem cover_2262606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262606 := by
  apply coveredState_split_literal (state := state_2262606) 0
    state_2262607 state_2262636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262607
  · exact cover_2262636
#print axioms cover_2262606

def state_2262604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 13)))
theorem cover_2262604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262604 := by
  apply coveredState_split_literal (state := state_2262604) 4
    state_2262605 state_2262606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262605
  · exact cover_2262606
#print axioms cover_2262604

def state_2262603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 13)))
theorem cover_2262603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262603 := by
  apply coveredState_split_literal (state := state_2262603) 1
    state_2262604 state_2263155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262604
  · exact cover_2263155
#print axioms cover_2262603

def state_2261987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 13)))
theorem cover_2261987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261987 := by
  apply coveredState_split_literal (state := state_2261987) 3
    state_2261988 state_2262603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261988
  · exact cover_2262603
#print axioms cover_2261987

def state_2261986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 13)))
theorem cover_2261986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261986 := by
  apply coveredState_split_literal (state := state_2261986) 2
    state_2261987 state_2263156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261987
  · exact cover_2263156
#print axioms cover_2261986

def state_2263207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 27)))
theorem cover_2263207 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263207 := by
  apply coveredState_split_literal (state := state_2263207) 1
    state_2263208 state_2263227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263208
  · exact cover_2263227
#print axioms cover_2263207

def state_2263370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 54)))
theorem cover_2263370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263370 := by
  apply coveredState_split_literal (state := state_2263370) 4
    state_2263371 state_2263378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263371
  · exact cover_2263378
#print axioms cover_2263370

def state_2263322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 54)))
theorem cover_2263322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263322 := by
  apply coveredState_split_literal (state := state_2263322) 0
    state_2263323 state_2263370
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263323
  · exact cover_2263370
#print axioms cover_2263322

def state_2263310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 54)))
theorem cover_2263310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263310 := by
  apply coveredState_split_literal (state := state_2263310) 1
    state_2263311 state_2263322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263311
  · exact cover_2263322
#print axioms cover_2263310

def state_2263309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 54)))
theorem cover_2263309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263309 := by
  apply coveredState_split_literal (state := state_2263309) 2
    state_2263310 state_2263437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263310
  · exact cover_2263437
#print axioms cover_2263309

def state_2263289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 54)))
theorem cover_2263289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263289 := by
  apply coveredState_split_literal (state := state_2263289) 3
    state_2263290 state_2263309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263290
  · exact cover_2263309
#print axioms cover_2263289

def state_2263512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 111)))
theorem cover_2263512 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263512 := by
  apply coveredState_split_literal (state := state_2263512) 0
    state_2263513 state_2263548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263513
  · exact cover_2263548
#print axioms cover_2263512

def state_2263454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 55)))
theorem cover_2263454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263454 := by
  apply coveredState_split_literal (state := state_2263454) 4
    state_2263455 state_2263512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263455
  · exact cover_2263512
#print axioms cover_2263454

def state_2263444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 55)))
theorem cover_2263444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263444 := by
  apply coveredState_split_literal (state := state_2263444) 1
    state_2263445 state_2263454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263445
  · exact cover_2263454
#print axioms cover_2263444

def state_2263443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 90 else 55)))
theorem cover_2263443 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263443 := by
  apply coveredState_split_literal (state := state_2263443) 2
    state_2263444 state_2263583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263444
  · exact cover_2263583
#print axioms cover_2263443

def state_2263598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
theorem cover_2263598 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263598 := by
  apply coveredState_split_literal (state := state_2263598) 4
    state_2263599 state_2263632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263599
  · exact cover_2263632
#print axioms cover_2263598

def state_2263679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 72 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 110)))
theorem cover_2263679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263679 := by
  apply coveredState_split_literal (state := state_2263679) 3
    state_2263680 state_2263727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263680
  · exact cover_2263727
#print axioms cover_2263679

def state_2263778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 110)))
theorem cover_2263778 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263778 := by
  apply coveredState_split_literal (state := state_2263778) 3
    state_2263779 state_2263838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263779
  · exact cover_2263838
#print axioms cover_2263778
end Mub6.Numerical.CircleFullD0.Forest
