import D0FullInterface
import D0ForestAssembly0282
import D0ForestChunk1081
import D0ForestChunk1086
import D0ForestChunk1087
import D0ForestChunk1088
import D0ForestChunk1089
import D0ForestChunk1090
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1561163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 88)))
theorem cover_1561163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561163 := by
  apply coveredState_split_literal (state := state_1561163) 4
    state_1561164 state_1561183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561164
  · exact cover_1561183
#print axioms cover_1561163

def state_1561039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 88)))
theorem cover_1561039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561039 := by
  apply coveredState_split_literal (state := state_1561039) 0
    state_1561040 state_1561163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561040
  · exact cover_1561163
#print axioms cover_1561039

def state_1561038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 88)))
theorem cover_1561038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561038 := by
  apply coveredState_split_literal (state := state_1561038) 1
    state_1561039 state_1561296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561039
  · exact cover_1561296
#print axioms cover_1561038

def state_1561020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 88)))
theorem cover_1561020 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561020 := by
  apply coveredState_split_literal (state := state_1561020) 3
    state_1561021 state_1561038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561021
  · exact cover_1561038
#print axioms cover_1561020

def state_1560930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 88)))
theorem cover_1560930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560930 := by
  apply coveredState_split_literal (state := state_1560930) 2
    state_1560931 state_1561020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560931
  · exact cover_1561020
#print axioms cover_1560930

def state_1561307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 89)))
theorem cover_1561307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561307 := by
  apply coveredState_split_literal (state := state_1561307) 1
    state_1561308 state_1561363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561308
  · exact cover_1561363
#print axioms cover_1561307

def state_1561306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 89)))
theorem cover_1561306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561306 := by
  apply coveredState_split_literal (state := state_1561306) 3
    state_1561307 state_1561376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561307
  · exact cover_1561376
#print axioms cover_1561306

def state_1561455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 89)))
theorem cover_1561455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561455 := by
  apply coveredState_split_literal (state := state_1561455) 4
    state_1561456 state_1561509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561456
  · exact cover_1561509
#print axioms cover_1561455

def state_1561521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 178)))
theorem cover_1561521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561521 := by
  apply coveredState_split_literal (state := state_1561521) 2
    state_1561522 state_1561563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561522
  · exact cover_1561563
#print axioms cover_1561521

def state_1561520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 89)))
theorem cover_1561520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561520 := by
  apply coveredState_split_literal (state := state_1561520) 4
    state_1561521 state_1561598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561521
  · exact cover_1561598
#print axioms cover_1561520

def state_1561454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 89)))
theorem cover_1561454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561454 := by
  apply coveredState_split_literal (state := state_1561454) 0
    state_1561455 state_1561520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561455
  · exact cover_1561520
#print axioms cover_1561454

def state_1561453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 89)))
theorem cover_1561453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561453 := by
  apply coveredState_split_literal (state := state_1561453) 1
    state_1561454 state_1561613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561454
  · exact cover_1561613
#print axioms cover_1561453

def state_1561435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 89)))
theorem cover_1561435 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561435 := by
  apply coveredState_split_literal (state := state_1561435) 3
    state_1561436 state_1561453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561436
  · exact cover_1561453
#print axioms cover_1561435

def state_1561305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 89)))
theorem cover_1561305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561305 := by
  apply coveredState_split_literal (state := state_1561305) 2
    state_1561306 state_1561435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561306
  · exact cover_1561435
#print axioms cover_1561305

def state_1560929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 44)))
theorem cover_1560929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560929 := by
  apply coveredState_split_literal (state := state_1560929) 4
    state_1560930 state_1561305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560930
  · exact cover_1561305
#print axioms cover_1560929

def state_1561656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 44)))
theorem cover_1561656 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561656 := by
  apply coveredState_split_literal (state := state_1561656) 4
    state_1561657 state_1561684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561657
  · exact cover_1561684
#print axioms cover_1561656

def state_1560928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 44)))
theorem cover_1560928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560928 := by
  apply coveredState_split_literal (state := state_1560928) 0
    state_1560929 state_1561656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560929
  · exact cover_1561656
#print axioms cover_1560928

def state_1560022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 44)))
theorem cover_1560022 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560022 := by
  apply coveredState_split_literal (state := state_1560022) 1
    state_1560023 state_1560928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560023
  · exact cover_1560928
#print axioms cover_1560022

def state_1559968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 44)))
theorem cover_1559968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559968 := by
  apply coveredState_split_literal (state := state_1559968) 3
    state_1559969 state_1560022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559969
  · exact cover_1560022
#print axioms cover_1559968

def state_1561807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 106 else (if j.val < 4 then 83 else 88)))
theorem cover_1561807 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561807 := by
  apply coveredState_split_literal (state := state_1561807) 4
    state_1561808 state_1561853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561808
  · exact cover_1561853
#print axioms cover_1561807

def state_1561765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 121) else (if j.val < 3 then 106 else (if j.val < 4 then 83 else 88)))
theorem cover_1561765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561765 := by
  apply coveredState_split_literal (state := state_1561765) 0
    state_1561766 state_1561807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561766
  · exact cover_1561807
#print axioms cover_1561765

def state_1561755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 106 else (if j.val < 4 then 83 else 88)))
theorem cover_1561755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561755 := by
  apply coveredState_split_literal (state := state_1561755) 1
    state_1561756 state_1561765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561756
  · exact cover_1561765
#print axioms cover_1561755

def state_1561749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 106 else (if j.val < 4 then 41 else 88)))
theorem cover_1561749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561749 := by
  apply coveredState_split_literal (state := state_1561749) 3
    state_1561750 state_1561755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561750
  · exact cover_1561755
#print axioms cover_1561749

def state_1561748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 88)))
theorem cover_1561748 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561748 := by
  apply coveredState_split_literal (state := state_1561748) 2
    state_1561749 state_1561872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561749
  · exact cover_1561872
#print axioms cover_1561748

def state_1561747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 44)))
theorem cover_1561747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561747 := by
  apply coveredState_split_literal (state := state_1561747) 4
    state_1561748 state_1561879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561748
  · exact cover_1561879
#print axioms cover_1561747

def state_1561746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 44)))
theorem cover_1561746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561746 := by
  apply coveredState_split_literal (state := state_1561746) 0
    state_1561747 state_1561894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561747
  · exact cover_1561894
#print axioms cover_1561746

def state_1561952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 89)))
theorem cover_1561952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561952 := by
  apply coveredState_split_literal (state := state_1561952) 2
    state_1561953 state_1562014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561953
  · exact cover_1562014
#print axioms cover_1561952

def state_1561908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 44)))
theorem cover_1561908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561908 := by
  apply coveredState_split_literal (state := state_1561908) 4
    state_1561909 state_1561952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561909
  · exact cover_1561952
#print axioms cover_1561908

def state_1561907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 44)))
theorem cover_1561907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561907 := by
  apply coveredState_split_literal (state := state_1561907) 0
    state_1561908 state_1562021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561908
  · exact cover_1562021
#print axioms cover_1561907

def state_1561745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 44)))
theorem cover_1561745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561745 := by
  apply coveredState_split_literal (state := state_1561745) 1
    state_1561746 state_1561907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561746
  · exact cover_1561907
#print axioms cover_1561745

def state_1561741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 44)))
theorem cover_1561741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561741 := by
  apply coveredState_split_literal (state := state_1561741) 3
    state_1561742 state_1561745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1561742
  · exact cover_1561745
#print axioms cover_1561741

def state_1559967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 44)))
theorem cover_1559967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559967 := by
  apply coveredState_split_literal (state := state_1559967) 2
    state_1559968 state_1561741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559968
  · exact cover_1561741
#print axioms cover_1559967
end Mub6.Numerical.CircleFullD0.Forest
