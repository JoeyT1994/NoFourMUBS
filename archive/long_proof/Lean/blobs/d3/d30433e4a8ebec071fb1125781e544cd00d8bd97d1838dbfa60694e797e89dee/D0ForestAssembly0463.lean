import D0FullInterface
import D0ForestChunk1816
import D0ForestChunk1817
import D0ForestChunk1818
import D0ForestChunk1819
import D0ForestChunk1820
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2309213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 56 else 91)))
theorem cover_2309213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309213 := by
  apply coveredState_split_literal (state := state_2309213) 0
    state_2309214 state_2309237
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309214
  · exact cover_2309237
#print axioms cover_2309213

def state_2309191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 56 else 45)))
theorem cover_2309191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309191 := by
  apply coveredState_split_literal (state := state_2309191) 4
    state_2309192 state_2309213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309192
  · exact cover_2309213
#print axioms cover_2309191

def state_2309165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 56 else 45)))
theorem cover_2309165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309165 := by
  apply coveredState_split_literal (state := state_2309165) 2
    state_2309166 state_2309191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309166
  · exact cover_2309191
#print axioms cover_2309165

def state_2309164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 45)))
theorem cover_2309164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309164 := by
  apply coveredState_split_literal (state := state_2309164) 3
    state_2309165 state_2309278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309165
  · exact cover_2309278
#print axioms cover_2309164

def state_2309163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 45)))
theorem cover_2309163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309163 := by
  apply coveredState_split_literal (state := state_2309163) 1
    state_2309164 state_2309297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309164
  · exact cover_2309297
#print axioms cover_2309163

def state_2309137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 22)))
theorem cover_2309137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309137 := by
  apply coveredState_split_literal (state := state_2309137) 4
    state_2309138 state_2309163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309138
  · exact cover_2309163
#print axioms cover_2309137

def state_2309136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 22)))
theorem cover_2309136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309136 := by
  apply coveredState_split_literal (state := state_2309136) 0
    state_2309137 state_2309308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309137
  · exact cover_2309308
#print axioms cover_2309136

def state_2309122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 22)))
theorem cover_2309122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309122 := by
  apply coveredState_split_literal (state := state_2309122) 2
    state_2309123 state_2309136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309123
  · exact cover_2309136
#print axioms cover_2309122

def state_2309121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 22)))
theorem cover_2309121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309121 := by
  apply coveredState_split_literal (state := state_2309121) 3
    state_2309122 state_2309347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309122
  · exact cover_2309347
#print axioms cover_2309121

def state_2309120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 22)))
theorem cover_2309120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309120 := by
  apply coveredState_split_literal (state := state_2309120) 1
    state_2309121 state_2309376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309121
  · exact cover_2309376
#print axioms cover_2309120

def state_2309415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 46)))
theorem cover_2309415 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309415 := by
  apply coveredState_split_literal (state := state_2309415) 1
    state_2309416 state_2309477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309416
  · exact cover_2309477
#print axioms cover_2309415

def state_2309414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 46)))
theorem cover_2309414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309414 := by
  apply coveredState_split_literal (state := state_2309414) 0
    state_2309415 state_2309488
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309415
  · exact cover_2309488
#print axioms cover_2309414

def state_2309413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 23)))
theorem cover_2309413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309413 := by
  apply coveredState_split_literal (state := state_2309413) 4
    state_2309414 state_2309521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309414
  · exact cover_2309521
#print axioms cover_2309413

def state_2309387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 23)))
theorem cover_2309387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309387 := by
  apply coveredState_split_literal (state := state_2309387) 2
    state_2309388 state_2309413
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309388
  · exact cover_2309413
#print axioms cover_2309387

def state_2309386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 23)))
theorem cover_2309386 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309386 := by
  apply coveredState_split_literal (state := state_2309386) 3
    state_2309387 state_2309544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309387
  · exact cover_2309544
#print axioms cover_2309386

def state_2309385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 23)))
theorem cover_2309385 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309385 := by
  apply coveredState_split_literal (state := state_2309385) 1
    state_2309386 state_2309553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309386
  · exact cover_2309553
#print axioms cover_2309385

def state_2309119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
theorem cover_2309119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309119 := by
  apply coveredState_split_literal (state := state_2309119) 4
    state_2309120 state_2309385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309120
  · exact cover_2309385
#print axioms cover_2309119

def state_2309118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
theorem cover_2309118 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309118 := by
  apply coveredState_split_literal (state := state_2309118) 0
    state_2309119 state_2309564
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309119
  · exact cover_2309564
#print axioms cover_2309118

def state_2309117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 11)))
theorem cover_2309117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309117 := by
  apply coveredState_split_literal (state := state_2309117) 3
    state_2309118 state_2309597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309118
  · exact cover_2309597
#print axioms cover_2309117

def state_2309655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 56 else 44)))
theorem cover_2309655 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309655 := by
  apply coveredState_split_literal (state := state_2309655) 2
    state_2309656 state_2309669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309656
  · exact cover_2309669
#print axioms cover_2309655

def state_2309654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 44)))
theorem cover_2309654 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309654 := by
  apply coveredState_split_literal (state := state_2309654) 3
    state_2309655 state_2309726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309655
  · exact cover_2309726
#print axioms cover_2309654

def state_2309630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 44)))
theorem cover_2309630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309630 := by
  apply coveredState_split_literal (state := state_2309630) 1
    state_2309631 state_2309654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309631
  · exact cover_2309654
#print axioms cover_2309630

def state_2309800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 56 else 91)))
theorem cover_2309800 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309800 := by
  apply coveredState_split_literal (state := state_2309800) 0
    state_2309801 state_2309808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309801
  · exact cover_2309808
#print axioms cover_2309800

def state_2309744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 56 else 45)))
theorem cover_2309744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309744 := by
  apply coveredState_split_literal (state := state_2309744) 4
    state_2309745 state_2309800
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309745
  · exact cover_2309800
#print axioms cover_2309744

def state_2309743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 56 else 45)))
theorem cover_2309743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309743 := by
  apply coveredState_split_literal (state := state_2309743) 2
    state_2309744 state_2309871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309744
  · exact cover_2309871
#print axioms cover_2309743

def state_2309742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 45)))
theorem cover_2309742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309742 := by
  apply coveredState_split_literal (state := state_2309742) 3
    state_2309743 state_2309908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309743
  · exact cover_2309908
#print axioms cover_2309742

def state_2310003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 56 else 90)))
theorem cover_2310003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310003 := by
  apply coveredState_split_literal (state := state_2310003) 1
    state_2310004 state_2310055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310004
  · exact cover_2310055
#print axioms cover_2310003

def state_2309983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 56 else 90)))
theorem cover_2309983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309983 := by
  apply coveredState_split_literal (state := state_2309983) 0
    state_2309984 state_2310003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309984
  · exact cover_2310003
#print axioms cover_2309983

def state_2309982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 56 else 45)))
theorem cover_2309982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309982 := by
  apply coveredState_split_literal (state := state_2309982) 4
    state_2309983 state_2310094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309983
  · exact cover_2310094
#print axioms cover_2309982

def state_2309918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 56 else 45)))
theorem cover_2309918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309918 := by
  apply coveredState_split_literal (state := state_2309918) 2
    state_2309919 state_2309982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309919
  · exact cover_2309982
#print axioms cover_2309918

def state_2309917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 45)))
theorem cover_2309917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309917 := by
  apply coveredState_split_literal (state := state_2309917) 3
    state_2309918 state_2310125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309918
  · exact cover_2310125
#print axioms cover_2309917

def state_2309741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 45)))
theorem cover_2309741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309741 := by
  apply coveredState_split_literal (state := state_2309741) 1
    state_2309742 state_2309917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309742
  · exact cover_2309917
#print axioms cover_2309741
end Mub6.Numerical.CircleFullD0.Forest
