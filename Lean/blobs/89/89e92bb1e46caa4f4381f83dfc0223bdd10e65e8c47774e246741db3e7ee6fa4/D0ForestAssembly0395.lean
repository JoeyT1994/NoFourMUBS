import D0FullInterface
import D0ForestAssembly0393
import D0ForestAssembly0394
import D0ForestChunk1530
import D0ForestChunk1537
import D0ForestChunk1538
import D0ForestChunk1539
import D0ForestChunk1540
import D0ForestChunk1541
import D0ForestChunk1542
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2240964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_2240964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240964 := by
  apply coveredState_split_literal (state := state_2240964) 3
    state_2240965 state_2242496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240965
  · exact cover_2242496
#print axioms cover_2240964

def state_2240954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2240954 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240954 := by
  apply coveredState_split_literal (state := state_2240954) 2
    state_2240955 state_2240964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240955
  · exact cover_2240964
#print axioms cover_2240954

def state_2240924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2240924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240924 := by
  apply coveredState_split_literal (state := state_2240924) 1
    state_2240925 state_2240954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240925
  · exact cover_2240954
#print axioms cover_2240924

def state_2240856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2240856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240856 := by
  apply coveredState_split_literal (state := state_2240856) 0
    state_2240857 state_2240924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240857
  · exact cover_2240924
#print axioms cover_2240856

def state_2242584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_2242584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242584 := by
  apply coveredState_split_literal (state := state_2242584) 4
    state_2242585 state_2242640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2242585
  · exact cover_2242640
#print axioms cover_2242584

def state_2242576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_2242576 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242576 := by
  apply coveredState_split_literal (state := state_2242576) 3
    state_2242577 state_2242584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2242577
  · exact cover_2242584
#print axioms cover_2242576

def state_2242536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2242536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242536 := by
  apply coveredState_split_literal (state := state_2242536) 2
    state_2242537 state_2242576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2242537
  · exact cover_2242576
#print axioms cover_2242536

def state_2242520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2242520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242520 := by
  apply coveredState_split_literal (state := state_2242520) 1
    state_2242521 state_2242536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2242521
  · exact cover_2242536
#print axioms cover_2242520

def state_2242669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2242669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242669 := by
  apply coveredState_split_literal (state := state_2242669) 1
    state_2242670 state_2242685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2242670
  · exact cover_2242685
#print axioms cover_2242669

def state_2242519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2242519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242519 := by
  apply coveredState_split_literal (state := state_2242519) 0
    state_2242520 state_2242669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2242520
  · exact cover_2242669
#print axioms cover_2242519

def state_2240855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2240855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240855 := by
  apply coveredState_split_literal (state := state_2240855) 4
    state_2240856 state_2242519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240856
  · exact cover_2242519
#print axioms cover_2240855

def state_2242828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_2242828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242828 := by
  apply coveredState_split_literal (state := state_2242828) 3
    state_2242829 state_2242888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2242829
  · exact cover_2242888
#print axioms cover_2242828

def state_2242827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2242827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242827 := by
  apply coveredState_split_literal (state := state_2242827) 2
    state_2242828 state_2242923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2242828
  · exact cover_2242923
#print axioms cover_2242827

def state_2242805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2242805 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242805 := by
  apply coveredState_split_literal (state := state_2242805) 1
    state_2242806 state_2242827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2242806
  · exact cover_2242827
#print axioms cover_2242805

def state_2242745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2242745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242745 := by
  apply coveredState_split_literal (state := state_2242745) 0
    state_2242746 state_2242805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2242746
  · exact cover_2242805
#print axioms cover_2242745

def state_2242973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2242973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242973 := by
  apply coveredState_split_literal (state := state_2242973) 1
    state_2242974 state_2243001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2242974
  · exact cover_2243001
#print axioms cover_2242973

def state_2243062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2243062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243062 := by
  apply coveredState_split_literal (state := state_2243062) 1
    state_2243063 state_2243080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243063
  · exact cover_2243080
#print axioms cover_2243062

def state_2242972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2242972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242972 := by
  apply coveredState_split_literal (state := state_2242972) 0
    state_2242973 state_2243062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2242973
  · exact cover_2243062
#print axioms cover_2242972

def state_2242744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_2242744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242744 := by
  apply coveredState_split_literal (state := state_2242744) 4
    state_2242745 state_2242972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2242745
  · exact cover_2242972
#print axioms cover_2242744

def state_2240854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2240854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240854 := by
  apply coveredState_split_literal (state := state_2240854) 3
    state_2240855 state_2242744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240855
  · exact cover_2242744
#print axioms cover_2240854

def state_2243234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_2243234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243234 := by
  apply coveredState_split_literal (state := state_2243234) 0
    state_2243235 state_2243266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243235
  · exact cover_2243266
#print axioms cover_2243234

def state_2243233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_2243233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243233 := by
  apply coveredState_split_literal (state := state_2243233) 4
    state_2243234 state_2243319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243234
  · exact cover_2243319
#print axioms cover_2243233

def state_2243232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_2243232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243232 := by
  apply coveredState_split_literal (state := state_2243232) 3
    state_2243233 state_2243368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243233
  · exact cover_2243368
#print axioms cover_2243232

def state_2243458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 8 else 10)))
theorem cover_2243458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243458 := by
  apply coveredState_split_literal (state := state_2243458) 1
    state_2243459 state_2243462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243459
  · exact cover_2243462
#print axioms cover_2243458

def state_2243452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 8 else 10)))
theorem cover_2243452 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243452 := by
  apply coveredState_split_literal (state := state_2243452) 0
    state_2243453 state_2243458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243453
  · exact cover_2243458
#print axioms cover_2243452

def state_2243451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 10)))
theorem cover_2243451 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243451 := by
  apply coveredState_split_literal (state := state_2243451) 3
    state_2243452 state_2243523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243452
  · exact cover_2243523
#print axioms cover_2243451

def state_2243439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 10)))
theorem cover_2243439 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243439 := by
  apply coveredState_split_literal (state := state_2243439) 2
    state_2243440 state_2243451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243440
  · exact cover_2243451
#print axioms cover_2243439

def state_2243438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_2243438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243438 := by
  apply coveredState_split_literal (state := state_2243438) 4
    state_2243439 state_2243528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243439
  · exact cover_2243528
#print axioms cover_2243438

def state_2243573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 11)))
theorem cover_2243573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243573 := by
  apply coveredState_split_literal (state := state_2243573) 2
    state_2243574 state_2243589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243574
  · exact cover_2243589
#print axioms cover_2243573

def state_2243545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_2243545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243545 := by
  apply coveredState_split_literal (state := state_2243545) 4
    state_2243546 state_2243573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243546
  · exact cover_2243573
#print axioms cover_2243545

def state_2243437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_2243437 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243437 := by
  apply coveredState_split_literal (state := state_2243437) 1
    state_2243438 state_2243545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243438
  · exact cover_2243545
#print axioms cover_2243437

def state_2243645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_2243645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243645 := by
  apply coveredState_split_literal (state := state_2243645) 4
    state_2243646 state_2243685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243646
  · exact cover_2243685
#print axioms cover_2243645
end Mub6.Numerical.CircleFullD0.Forest
