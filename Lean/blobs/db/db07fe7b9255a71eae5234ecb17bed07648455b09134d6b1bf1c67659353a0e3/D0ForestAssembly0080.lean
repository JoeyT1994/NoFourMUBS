import D0FullInterface
import D0ForestAssembly0079
import D0ForestChunk0316
import D0ForestChunk0318
import D0ForestChunk0319
import D0ForestChunk0320
import D0ForestChunk0321
import D0ForestChunk0322
import D0ForestChunk0323
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1013512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
theorem cover_1013512 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013512 := by
  apply coveredState_split_literal (state := state_1013512) 2
    state_1013513 state_1013794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013513
  · exact cover_1013794
#print axioms cover_1013512

def state_1013456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
theorem cover_1013456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013456 := by
  apply coveredState_split_literal (state := state_1013456) 0
    state_1013457 state_1013512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013457
  · exact cover_1013512
#print axioms cover_1013456

def state_1013906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 21)))
theorem cover_1013906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013906 := by
  apply coveredState_split_literal (state := state_1013906) 0
    state_1013907 state_1013948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013907
  · exact cover_1013948
#print axioms cover_1013906

def state_1013905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 21)))
theorem cover_1013905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013905 := by
  apply coveredState_split_literal (state := state_1013905) 3
    state_1013906 state_1014005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013906
  · exact cover_1014005
#print axioms cover_1013905

def state_1013904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 21)))
theorem cover_1013904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013904 := by
  apply coveredState_split_literal (state := state_1013904) 1
    state_1013905 state_1014018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013905
  · exact cover_1014018
#print axioms cover_1013904

def state_1013898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 10)))
theorem cover_1013898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013898 := by
  apply coveredState_split_literal (state := state_1013898) 4
    state_1013899 state_1013904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013899
  · exact cover_1013904
#print axioms cover_1013898

def state_1014060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 43)))
theorem cover_1014060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014060 := by
  apply coveredState_split_literal (state := state_1014060) 3
    state_1014061 state_1014120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014061
  · exact cover_1014120
#print axioms cover_1014060

def state_1014059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 43)))
theorem cover_1014059 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014059 := by
  apply coveredState_split_literal (state := state_1014059) 1
    state_1014060 state_1014155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014060
  · exact cover_1014155
#print axioms cover_1014059

def state_1014045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 21)))
theorem cover_1014045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014045 := by
  apply coveredState_split_literal (state := state_1014045) 4
    state_1014046 state_1014059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014046
  · exact cover_1014059
#print axioms cover_1014045

def state_1014044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 21)))
theorem cover_1014044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014044 := by
  apply coveredState_split_literal (state := state_1014044) 2
    state_1014045 state_1014178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014045
  · exact cover_1014178
#print axioms cover_1014044

def state_1014242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 43)))
theorem cover_1014242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014242 := by
  apply coveredState_split_literal (state := state_1014242) 0
    state_1014243 state_1014306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014243
  · exact cover_1014306
#print axioms cover_1014242

def state_1014328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 43)))
theorem cover_1014328 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014328 := by
  apply coveredState_split_literal (state := state_1014328) 4
    state_1014329 state_1014338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014329
  · exact cover_1014338
#print axioms cover_1014328

def state_1014327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 43)))
theorem cover_1014327 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014327 := by
  apply coveredState_split_literal (state := state_1014327) 0
    state_1014328 state_1014399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014328
  · exact cover_1014399
#print axioms cover_1014327

def state_1014241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 43)))
theorem cover_1014241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014241 := by
  apply coveredState_split_literal (state := state_1014241) 3
    state_1014242 state_1014327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014242
  · exact cover_1014327
#print axioms cover_1014241

def state_1014240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 43)))
theorem cover_1014240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014240 := by
  apply coveredState_split_literal (state := state_1014240) 1
    state_1014241 state_1014426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014241
  · exact cover_1014426
#print axioms cover_1014240

def state_1014226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 21)))
theorem cover_1014226 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014226 := by
  apply coveredState_split_literal (state := state_1014226) 4
    state_1014227 state_1014240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014227
  · exact cover_1014240
#print axioms cover_1014226

def state_1014481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 43)))
theorem cover_1014481 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014481 := by
  apply coveredState_split_literal (state := state_1014481) 1
    state_1014482 state_1014503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014482
  · exact cover_1014503
#print axioms cover_1014481

def state_1014477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 21)))
theorem cover_1014477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014477 := by
  apply coveredState_split_literal (state := state_1014477) 4
    state_1014478 state_1014481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014478
  · exact cover_1014481
#print axioms cover_1014477

def state_1014225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 21)))
theorem cover_1014225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014225 := by
  apply coveredState_split_literal (state := state_1014225) 2
    state_1014226 state_1014477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014226
  · exact cover_1014477
#print axioms cover_1014225

def state_1014043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 21)))
theorem cover_1014043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014043 := by
  apply coveredState_split_literal (state := state_1014043) 0
    state_1014044 state_1014225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014044
  · exact cover_1014225
#print axioms cover_1014043

def state_1014678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 43)))
theorem cover_1014678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014678 := by
  apply coveredState_split_literal (state := state_1014678) 2
    state_1014679 state_1014724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014679
  · exact cover_1014724
#print axioms cover_1014678

def state_1014753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 43)))
theorem cover_1014753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014753 := by
  apply coveredState_split_literal (state := state_1014753) 2
    state_1014754 state_1014817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014754
  · exact cover_1014817
#print axioms cover_1014753

def state_1014677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 43)))
theorem cover_1014677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014677 := by
  apply coveredState_split_literal (state := state_1014677) 0
    state_1014678 state_1014753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014678
  · exact cover_1014753
#print axioms cover_1014677

def state_1014872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 43)))
theorem cover_1014872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014872 := by
  apply coveredState_split_literal (state := state_1014872) 2
    state_1014873 state_1014898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014873
  · exact cover_1014898
#print axioms cover_1014872

def state_1014858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 43)))
theorem cover_1014858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014858 := by
  apply coveredState_split_literal (state := state_1014858) 0
    state_1014859 state_1014872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014859
  · exact cover_1014872
#print axioms cover_1014858

def state_1014676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 43)))
theorem cover_1014676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014676 := by
  apply coveredState_split_literal (state := state_1014676) 3
    state_1014677 state_1014858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014677
  · exact cover_1014858
#print axioms cover_1014676

def state_1014668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 43)))
theorem cover_1014668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014668 := by
  apply coveredState_split_literal (state := state_1014668) 1
    state_1014669 state_1014676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014669
  · exact cover_1014676
#print axioms cover_1014668

def state_1014658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 21)))
theorem cover_1014658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014658 := by
  apply coveredState_split_literal (state := state_1014658) 4
    state_1014659 state_1014668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014659
  · exact cover_1014668
#print axioms cover_1014658

def state_1014598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 21)))
theorem cover_1014598 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014598 := by
  apply coveredState_split_literal (state := state_1014598) 2
    state_1014599 state_1014658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014599
  · exact cover_1014658
#print axioms cover_1014598

def state_1014554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 21)))
theorem cover_1014554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014554 := by
  apply coveredState_split_literal (state := state_1014554) 0
    state_1014555 state_1014598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014555
  · exact cover_1014598
#print axioms cover_1014554

def state_1014042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 21)))
theorem cover_1014042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014042 := by
  apply coveredState_split_literal (state := state_1014042) 3
    state_1014043 state_1014554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014043
  · exact cover_1014554
#print axioms cover_1014042

def state_1014041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 21)))
theorem cover_1014041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014041 := by
  apply coveredState_split_literal (state := state_1014041) 1
    state_1014042 state_1014949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014042
  · exact cover_1014949
#print axioms cover_1014041
end Mub6.Numerical.CircleFullD0.Forest
