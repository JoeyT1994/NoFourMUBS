import D0FullInterface
import D0ForestAssembly0284
import D0ForestAssembly0286
import D0ForestChunk1102
import D0ForestChunk1103
import D0ForestChunk1104
import D0ForestChunk1105
import D0ForestChunk1106
import D0ForestChunk1107
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1565095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 107 else (if j.val < 4 then 85 else 90)))
theorem cover_1565095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565095 := by
  apply coveredState_split_literal (state := state_1565095) 1
    state_1565096 state_1565155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565096
  · exact cover_1565155
#print axioms cover_1565095

def state_1565087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 107 else (if j.val < 4 then 42 else 90)))
theorem cover_1565087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565087 := by
  apply coveredState_split_literal (state := state_1565087) 3
    state_1565088 state_1565095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565088
  · exact cover_1565095
#print axioms cover_1565087

def state_1565053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 90)))
theorem cover_1565053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565053 := by
  apply coveredState_split_literal (state := state_1565053) 2
    state_1565054 state_1565087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565054
  · exact cover_1565087
#print axioms cover_1565053

def state_1565052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 45)))
theorem cover_1565052 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565052 := by
  apply coveredState_split_literal (state := state_1565052) 4
    state_1565053 state_1565162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565053
  · exact cover_1565162
#print axioms cover_1565052

def state_1564930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 62) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 45)))
theorem cover_1564930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564930 := by
  apply coveredState_split_literal (state := state_1564930) 0
    state_1564931 state_1565052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564931
  · exact cover_1565052
#print axioms cover_1564930

def state_1564929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 45)))
theorem cover_1564929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564929 := by
  apply coveredState_split_literal (state := state_1564929) 1
    state_1564930 state_1565223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564930
  · exact cover_1565223
#print axioms cover_1564929

def state_1564928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 53 else (if j.val < 4 then 21 else 45)))
theorem cover_1564928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564928 := by
  apply coveredState_split_literal (state := state_1564928) 3
    state_1564929 state_1565240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564929
  · exact cover_1565240
#print axioms cover_1564928

def state_1564896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 45)))
theorem cover_1564896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564896 := by
  apply coveredState_split_literal (state := state_1564896) 2
    state_1564897 state_1564928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564897
  · exact cover_1564928
#print axioms cover_1564896

def state_1564790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 22)))
theorem cover_1564790 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564790 := by
  apply coveredState_split_literal (state := state_1564790) 4
    state_1564791 state_1564896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564791
  · exact cover_1564896
#print axioms cover_1564790

def state_1565289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 22)))
theorem cover_1565289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565289 := by
  apply coveredState_split_literal (state := state_1565289) 4
    state_1565290 state_1565319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565290
  · exact cover_1565319
#print axioms cover_1565289

def state_1564789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 22)))
theorem cover_1564789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564789 := by
  apply coveredState_split_literal (state := state_1564789) 0
    state_1564790 state_1565289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564790
  · exact cover_1565289
#print axioms cover_1564789

def state_1562387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 22)))
theorem cover_1562387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562387 := by
  apply coveredState_split_literal (state := state_1562387) 1
    state_1562388 state_1564789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562388
  · exact cover_1564789
#print axioms cover_1562387

def state_1559963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 22)))
theorem cover_1559963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559963 := by
  apply coveredState_split_literal (state := state_1559963) 3
    state_1559964 state_1562387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559964
  · exact cover_1562387
#print axioms cover_1559963

def state_1565456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 54 else (if j.val < 4 then 42 else 44)))
theorem cover_1565456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565456 := by
  apply coveredState_split_literal (state := state_1565456) 4
    state_1565457 state_1565490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565457
  · exact cover_1565490
#print axioms cover_1565456

def state_1565533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 54 else (if j.val < 4 then 42 else 44)))
theorem cover_1565533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565533 := by
  apply coveredState_split_literal (state := state_1565533) 4
    state_1565534 state_1565549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565534
  · exact cover_1565549
#print axioms cover_1565533

def state_1565455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 54 else (if j.val < 4 then 42 else 44)))
theorem cover_1565455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565455 := by
  apply coveredState_split_literal (state := state_1565455) 0
    state_1565456 state_1565533
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565456
  · exact cover_1565533
#print axioms cover_1565455

def state_1565421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 54 else (if j.val < 4 then 42 else 44)))
theorem cover_1565421 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565421 := by
  apply coveredState_split_literal (state := state_1565421) 1
    state_1565422 state_1565455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565422
  · exact cover_1565455
#print axioms cover_1565421

def state_1565420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 42 else 44)))
theorem cover_1565420 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565420 := by
  apply coveredState_split_literal (state := state_1565420) 2
    state_1565421 state_1565602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565421
  · exact cover_1565602
#print axioms cover_1565420

def state_1565628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 44)))
theorem cover_1565628 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565628 := by
  apply coveredState_split_literal (state := state_1565628) 0
    state_1565629 state_1565674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565629
  · exact cover_1565674
#print axioms cover_1565628

def state_1565610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 44)))
theorem cover_1565610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565610 := by
  apply coveredState_split_literal (state := state_1565610) 1
    state_1565611 state_1565628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565611
  · exact cover_1565628
#print axioms cover_1565610

def state_1565609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 43 else 44)))
theorem cover_1565609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565609 := by
  apply coveredState_split_literal (state := state_1565609) 2
    state_1565610 state_1565697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565610
  · exact cover_1565697
#print axioms cover_1565609

def state_1565419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 44)))
theorem cover_1565419 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565419 := by
  apply coveredState_split_literal (state := state_1565419) 3
    state_1565420 state_1565609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565420
  · exact cover_1565609
#print axioms cover_1565419

def state_1565782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 43 else 45)))
theorem cover_1565782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565782 := by
  apply coveredState_split_literal (state := state_1565782) 2
    state_1565783 state_1565836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565783
  · exact cover_1565836
#print axioms cover_1565782

def state_1565728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 45)))
theorem cover_1565728 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565728 := by
  apply coveredState_split_literal (state := state_1565728) 3
    state_1565729 state_1565782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565729
  · exact cover_1565782
#print axioms cover_1565728

def state_1565418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 22)))
theorem cover_1565418 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565418 := by
  apply coveredState_split_literal (state := state_1565418) 4
    state_1565419 state_1565728
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565419
  · exact cover_1565728
#print axioms cover_1565418

def state_1565417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 22)))
theorem cover_1565417 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565417 := by
  apply coveredState_split_literal (state := state_1565417) 0
    state_1565418 state_1565851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565418
  · exact cover_1565851
#print axioms cover_1565417

def state_1565956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 62) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 44)))
theorem cover_1565956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565956 := by
  apply coveredState_split_literal (state := state_1565956) 0
    state_1565957 state_1565998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565957
  · exact cover_1565998
#print axioms cover_1565956

def state_1565955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 44)))
theorem cover_1565955 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565955 := by
  apply coveredState_split_literal (state := state_1565955) 1
    state_1565956 state_1566033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565956
  · exact cover_1566033
#print axioms cover_1565955

def state_1565954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 43 else 44)))
theorem cover_1565954 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565954 := by
  apply coveredState_split_literal (state := state_1565954) 2
    state_1565955 state_1566040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565955
  · exact cover_1566040
#print axioms cover_1565954

def state_1565916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 44)))
theorem cover_1565916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565916 := by
  apply coveredState_split_literal (state := state_1565916) 3
    state_1565917 state_1565954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565917
  · exact cover_1565954
#print axioms cover_1565916

def state_1566072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 62) else (if j.val < 3 then 54 else (if j.val < 4 then 42 else 45)))
theorem cover_1566072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566072 := by
  apply coveredState_split_literal (state := state_1566072) 0
    state_1566073 state_1566120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566073
  · exact cover_1566120
#print axioms cover_1566072

def state_1566071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 54 else (if j.val < 4 then 42 else 45)))
theorem cover_1566071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566071 := by
  apply coveredState_split_literal (state := state_1566071) 1
    state_1566072 state_1566177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566072
  · exact cover_1566177
#print axioms cover_1566071
end Mub6.Numerical.CircleFullD0.Forest
