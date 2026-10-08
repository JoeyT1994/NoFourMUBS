import D0FullInterface
import D0ForestAssembly0143
import D0ForestChunk0556
import D0ForestChunk0557
import D0ForestChunk0558
import D0ForestChunk0559
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1321243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_1321243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321243 := by
  apply coveredState_split_literal (state := state_1321243) 3
    state_1321244 state_1322117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321244
  · exact cover_1322117
#print axioms cover_1321243

def state_1322477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 21)))
theorem cover_1322477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322477 := by
  apply coveredState_split_literal (state := state_1322477) 1
    state_1322478 state_1322503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322478
  · exact cover_1322503
#print axioms cover_1322477

def state_1322475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 10)))
theorem cover_1322475 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322475 := by
  apply coveredState_split_literal (state := state_1322475) 4
    state_1322476 state_1322477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322476
  · exact cover_1322477
#print axioms cover_1322475

def state_1322473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
theorem cover_1322473 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322473 := by
  apply coveredState_split_literal (state := state_1322473) 3
    state_1322474 state_1322475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322474
  · exact cover_1322475
#print axioms cover_1322473

def state_1322472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
theorem cover_1322472 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322472 := by
  apply coveredState_split_literal (state := state_1322472) 0
    state_1322473 state_1322566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322473
  · exact cover_1322566
#print axioms cover_1322472

def state_1322460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_1322460 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322460 := by
  apply coveredState_split_literal (state := state_1322460) 2
    state_1322461 state_1322472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322461
  · exact cover_1322472
#print axioms cover_1322460

def state_1322430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_1322430 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322430 := by
  apply coveredState_split_literal (state := state_1322430) 1
    state_1322431 state_1322460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322431
  · exact cover_1322460
#print axioms cover_1322430

def state_1322643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 63) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 44)))
theorem cover_1322643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322643 := by
  apply coveredState_split_literal (state := state_1322643) 2
    state_1322644 state_1322655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322644
  · exact cover_1322655
#print axioms cover_1322643

def state_1322621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 44)))
theorem cover_1322621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322621 := by
  apply coveredState_split_literal (state := state_1322621) 1
    state_1322622 state_1322643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322622
  · exact cover_1322643
#print axioms cover_1322621

def state_1322615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 44)))
theorem cover_1322615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322615 := by
  apply coveredState_split_literal (state := state_1322615) 3
    state_1322616 state_1322621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322616
  · exact cover_1322621
#print axioms cover_1322615

def state_1322614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 22)))
theorem cover_1322614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322614 := by
  apply coveredState_split_literal (state := state_1322614) 4
    state_1322615 state_1322710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322615
  · exact cover_1322710
#print axioms cover_1322614

def state_1322613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 22)))
theorem cover_1322613 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322613 := by
  apply coveredState_split_literal (state := state_1322613) 0
    state_1322614 state_1322713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322614
  · exact cover_1322713
#print axioms cover_1322613

def state_1322605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 31) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 22)))
theorem cover_1322605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322605 := by
  apply coveredState_split_literal (state := state_1322605) 2
    state_1322606 state_1322613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322606
  · exact cover_1322613
#print axioms cover_1322605

def state_1322591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 22)))
theorem cover_1322591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322591 := by
  apply coveredState_split_literal (state := state_1322591) 1
    state_1322592 state_1322605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322592
  · exact cover_1322605
#print axioms cover_1322591

def state_1322585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 22)))
theorem cover_1322585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322585 := by
  apply coveredState_split_literal (state := state_1322585) 3
    state_1322586 state_1322591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322586
  · exact cover_1322591
#print axioms cover_1322585

def state_1322584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 11)))
theorem cover_1322584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322584 := by
  apply coveredState_split_literal (state := state_1322584) 4
    state_1322585 state_1322722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322585
  · exact cover_1322722
#print axioms cover_1322584

def state_1322583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 11)))
theorem cover_1322583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322583 := by
  apply coveredState_split_literal (state := state_1322583) 0
    state_1322584 state_1322725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322584
  · exact cover_1322725
#print axioms cover_1322583

def state_1322579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
theorem cover_1322579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322579 := by
  apply coveredState_split_literal (state := state_1322579) 2
    state_1322580 state_1322583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322580
  · exact cover_1322583
#print axioms cover_1322579

def state_1322573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
theorem cover_1322573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322573 := by
  apply coveredState_split_literal (state := state_1322573) 1
    state_1322574 state_1322579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322574
  · exact cover_1322579
#print axioms cover_1322573

def state_1322429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 5)))
theorem cover_1322429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322429 := by
  apply coveredState_split_literal (state := state_1322429) 4
    state_1322430 state_1322573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322430
  · exact cover_1322573
#print axioms cover_1322429

def state_1322868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 63) else (if j.val < 3 then 63 else (if j.val < 4 then 88 else 44)))
theorem cover_1322868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322868 := by
  apply coveredState_split_literal (state := state_1322868) 4
    state_1322869 state_1322926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322869
  · exact cover_1322926
#print axioms cover_1322868

def state_1322867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 63) else (if j.val < 3 then 63 else (if j.val < 4 then 44 else 44)))
theorem cover_1322867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322867 := by
  apply coveredState_split_literal (state := state_1322867) 3
    state_1322868 state_1322933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322868
  · exact cover_1322933
#print axioms cover_1322867

def state_1322866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 63) else (if j.val < 3 then 63 else (if j.val < 4 then 44 else 44)))
theorem cover_1322866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322866 := by
  apply coveredState_split_literal (state := state_1322866) 0
    state_1322867 state_1322958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322867
  · exact cover_1322958
#print axioms cover_1322866

def state_1322842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 63) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 44)))
theorem cover_1322842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322842 := by
  apply coveredState_split_literal (state := state_1322842) 2
    state_1322843 state_1322866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322843
  · exact cover_1322866
#print axioms cover_1322842

def state_1322816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 44)))
theorem cover_1322816 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322816 := by
  apply coveredState_split_literal (state := state_1322816) 1
    state_1322817 state_1322842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322817
  · exact cover_1322842
#print axioms cover_1322816

def state_1322815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 22)))
theorem cover_1322815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322815 := by
  apply coveredState_split_literal (state := state_1322815) 4
    state_1322816 state_1322993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322816
  · exact cover_1322993
#print axioms cover_1322815

def state_1322814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 22)))
theorem cover_1322814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322814 := by
  apply coveredState_split_literal (state := state_1322814) 3
    state_1322815 state_1322994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322815
  · exact cover_1322994
#print axioms cover_1322814

def state_1322813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 22)))
theorem cover_1322813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322813 := by
  apply coveredState_split_literal (state := state_1322813) 0
    state_1322814 state_1323007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322814
  · exact cover_1323007
#print axioms cover_1322813

def state_1322805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 31) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 22)))
theorem cover_1322805 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322805 := by
  apply coveredState_split_literal (state := state_1322805) 2
    state_1322806 state_1322813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322806
  · exact cover_1322813
#print axioms cover_1322805

def state_1322795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 22)))
theorem cover_1322795 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322795 := by
  apply coveredState_split_literal (state := state_1322795) 1
    state_1322796 state_1322805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322796
  · exact cover_1322805
#print axioms cover_1322795

def state_1322794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 11)))
theorem cover_1322794 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322794 := by
  apply coveredState_split_literal (state := state_1322794) 4
    state_1322795 state_1323024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322795
  · exact cover_1323024
#print axioms cover_1322794

def state_1322793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 11)))
theorem cover_1322793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322793 := by
  apply coveredState_split_literal (state := state_1322793) 3
    state_1322794 state_1323025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322794
  · exact cover_1323025
#print axioms cover_1322793
end Mub6.Numerical.CircleFullD0.Forest
