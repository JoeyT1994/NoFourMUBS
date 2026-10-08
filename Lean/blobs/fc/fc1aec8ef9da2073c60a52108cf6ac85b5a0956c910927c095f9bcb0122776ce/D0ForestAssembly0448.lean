import D0FullInterface
import D0ForestAssembly0444
import D0ForestAssembly0447
import D0ForestChunk1755
import D0ForestChunk1756
import D0ForestChunk1757
import D0ForestChunk1758
import D0ForestChunk1759
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2290623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_2290623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290623 := by
  apply coveredState_split_literal (state := state_2290623) 2
    state_2290624 state_2294073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290624
  · exact cover_2294073
#print axioms cover_2290623

def state_2290515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_2290515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290515 := by
  apply coveredState_split_literal (state := state_2290515) 4
    state_2290516 state_2290623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290516
  · exact cover_2290623
#print axioms cover_2290515

def state_2289805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_2289805 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289805 := by
  apply coveredState_split_literal (state := state_2289805) 3
    state_2289806 state_2290515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289806
  · exact cover_2290515
#print axioms cover_2289805

def state_2294511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
theorem cover_2294511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294511 := by
  apply coveredState_split_literal (state := state_2294511) 0
    state_2294512 state_2294551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294512
  · exact cover_2294551
#print axioms cover_2294511

def state_2294587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 46)))
theorem cover_2294587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294587 := by
  apply coveredState_split_literal (state := state_2294587) 3
    state_2294588 state_2294605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294588
  · exact cover_2294605
#print axioms cover_2294587

def state_2294586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 23)))
theorem cover_2294586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294586 := by
  apply coveredState_split_literal (state := state_2294586) 4
    state_2294587 state_2294660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294587
  · exact cover_2294660
#print axioms cover_2294586

def state_2294580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_2294580 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294580 := by
  apply coveredState_split_literal (state := state_2294580) 2
    state_2294581 state_2294586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294581
  · exact cover_2294586
#print axioms cover_2294580

def state_2294579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_2294579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294579 := by
  apply coveredState_split_literal (state := state_2294579) 1
    state_2294580 state_2294683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294580
  · exact cover_2294683
#print axioms cover_2294579

def state_2294578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_2294578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294578 := by
  apply coveredState_split_literal (state := state_2294578) 0
    state_2294579 state_2294684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294579
  · exact cover_2294684
#print axioms cover_2294578

def state_2294510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 11)))
theorem cover_2294510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294510 := by
  apply coveredState_split_literal (state := state_2294510) 4
    state_2294511 state_2294578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294511
  · exact cover_2294578
#print axioms cover_2294510

def state_2294490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_2294490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294490 := by
  apply coveredState_split_literal (state := state_2294490) 3
    state_2294491 state_2294510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294491
  · exact cover_2294510
#print axioms cover_2294490

def state_2294733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 23)))
theorem cover_2294733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294733 := by
  apply coveredState_split_literal (state := state_2294733) 4
    state_2294734 state_2294777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294734
  · exact cover_2294777
#print axioms cover_2294733

def state_2294719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 23)))
theorem cover_2294719 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294719 := by
  apply coveredState_split_literal (state := state_2294719) 3
    state_2294720 state_2294733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294720
  · exact cover_2294733
#print axioms cover_2294719

def state_2294718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
theorem cover_2294718 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294718 := by
  apply coveredState_split_literal (state := state_2294718) 2
    state_2294719 state_2294806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294719
  · exact cover_2294806
#print axioms cover_2294718

def state_2294717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
theorem cover_2294717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294717 := by
  apply coveredState_split_literal (state := state_2294717) 1
    state_2294718 state_2294865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294718
  · exact cover_2294865
#print axioms cover_2294717

def state_2294716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
theorem cover_2294716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294716 := by
  apply coveredState_split_literal (state := state_2294716) 0
    state_2294717 state_2294872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294717
  · exact cover_2294872
#print axioms cover_2294716

def state_2294686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 11)))
theorem cover_2294686 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294686 := by
  apply coveredState_split_literal (state := state_2294686) 4
    state_2294687 state_2294716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294687
  · exact cover_2294716
#print axioms cover_2294686

def state_2294881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 22)))
theorem cover_2294881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294881 := by
  apply coveredState_split_literal (state := state_2294881) 3
    state_2294882 state_2294907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294882
  · exact cover_2294907
#print axioms cover_2294881

def state_2294880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 22)))
theorem cover_2294880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294880 := by
  apply coveredState_split_literal (state := state_2294880) 2
    state_2294881 state_2294948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294881
  · exact cover_2294948
#print axioms cover_2294880

def state_2294879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 22)))
theorem cover_2294879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294879 := by
  apply coveredState_split_literal (state := state_2294879) 1
    state_2294880 state_2294971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294880
  · exact cover_2294971
#print axioms cover_2294879

def state_2294878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 22)))
theorem cover_2294878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294878 := by
  apply coveredState_split_literal (state := state_2294878) 0
    state_2294879 state_2294972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2294879
  · exact cover_2294972
#print axioms cover_2294878

def state_2295101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 50 else 46)))
theorem cover_2295101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295101 := by
  apply coveredState_split_literal (state := state_2295101) 0
    state_2295102 state_2295135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295102
  · exact cover_2295135
#print axioms cover_2295101

def state_2295039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 46)))
theorem cover_2295039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295039 := by
  apply coveredState_split_literal (state := state_2295039) 2
    state_2295040 state_2295101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295040
  · exact cover_2295101
#print axioms cover_2295039

def state_2295038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 46)))
theorem cover_2295038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295038 := by
  apply coveredState_split_literal (state := state_2295038) 1
    state_2295039 state_2295166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295039
  · exact cover_2295166
#print axioms cover_2295038

def state_2295187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 46)))
theorem cover_2295187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295187 := by
  apply coveredState_split_literal (state := state_2295187) 4
    state_2295188 state_2295241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295188
  · exact cover_2295241
#print axioms cover_2295187

def state_2295175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 46)))
theorem cover_2295175 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295175 := by
  apply coveredState_split_literal (state := state_2295175) 0
    state_2295176 state_2295187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295176
  · exact cover_2295187
#print axioms cover_2295175

def state_2295174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 46)))
theorem cover_2295174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295174 := by
  apply coveredState_split_literal (state := state_2295174) 2
    state_2295175 state_2295294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295175
  · exact cover_2295294
#print axioms cover_2295174

def state_2295173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 46)))
theorem cover_2295173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295173 := by
  apply coveredState_split_literal (state := state_2295173) 1
    state_2295174 state_2295351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295174
  · exact cover_2295351
#print axioms cover_2295173

def state_2295037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 46)))
theorem cover_2295037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295037 := by
  apply coveredState_split_literal (state := state_2295037) 3
    state_2295038 state_2295173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295038
  · exact cover_2295173
#print axioms cover_2295037

def state_2295370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 47)))
theorem cover_2295370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295370 := by
  apply coveredState_split_literal (state := state_2295370) 2
    state_2295371 state_2295400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295371
  · exact cover_2295400
#print axioms cover_2295370

def state_2295369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 47)))
theorem cover_2295369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295369 := by
  apply coveredState_split_literal (state := state_2295369) 1
    state_2295370 state_2295459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295370
  · exact cover_2295459
#print axioms cover_2295369

def state_2295468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 47)))
theorem cover_2295468 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295468 := by
  apply coveredState_split_literal (state := state_2295468) 1
    state_2295469 state_2295528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2295469
  · exact cover_2295528
#print axioms cover_2295468
end Mub6.Numerical.CircleFullD0.Forest
