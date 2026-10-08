import D0FullInterface
import D0ForestAssembly0278
import D0ForestAssembly0280
import D0ForestChunk1076
import D0ForestChunk1077
import D0ForestChunk1078
import D0ForestChunk1079
import D0ForestChunk1080
import D0ForestChunk1081
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1556086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
theorem cover_1556086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556086 := by
  apply coveredState_split_literal (state := state_1556086) 0
    state_1556087 state_1556678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556087
  · exact cover_1556678
#print axioms cover_1556086

def state_1551002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
theorem cover_1551002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551002 := by
  apply coveredState_split_literal (state := state_1551002) 1
    state_1551003 state_1556086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551003
  · exact cover_1556086
#print axioms cover_1551002

def state_1558760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
theorem cover_1558760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558760 := by
  apply coveredState_split_literal (state := state_1558760) 0
    state_1558761 state_1558766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558761
  · exact cover_1558766
#print axioms cover_1558760

def state_1558754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
theorem cover_1558754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558754 := by
  apply coveredState_split_literal (state := state_1558754) 1
    state_1558755 state_1558760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558755
  · exact cover_1558760
#print axioms cover_1558754

def state_1558753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 22)))
theorem cover_1558753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558753 := by
  apply coveredState_split_literal (state := state_1558753) 3
    state_1558754 state_1558829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558754
  · exact cover_1558829
#print axioms cover_1558753

def state_1558752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 22)))
theorem cover_1558752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558752 := by
  apply coveredState_split_literal (state := state_1558752) 2
    state_1558753 state_1558846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558753
  · exact cover_1558846
#print axioms cover_1558752

def state_1558751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
theorem cover_1558751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558751 := by
  apply coveredState_split_literal (state := state_1558751) 4
    state_1558752 state_1558867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558752
  · exact cover_1558867
#print axioms cover_1558751

def state_1558876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 22)))
theorem cover_1558876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558876 := by
  apply coveredState_split_literal (state := state_1558876) 3
    state_1558877 state_1558936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558877
  · exact cover_1558936
#print axioms cover_1558876

def state_1558875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 22)))
theorem cover_1558875 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558875 := by
  apply coveredState_split_literal (state := state_1558875) 2
    state_1558876 state_1558995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558876
  · exact cover_1558995
#print axioms cover_1558875

def state_1558874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
theorem cover_1558874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558874 := by
  apply coveredState_split_literal (state := state_1558874) 4
    state_1558875 state_1559012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558875
  · exact cover_1559012
#print axioms cover_1558874

def state_1558750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
theorem cover_1558750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558750 := by
  apply coveredState_split_literal (state := state_1558750) 0
    state_1558751 state_1558874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558751
  · exact cover_1558874
#print axioms cover_1558750

def state_1559096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 88)))
theorem cover_1559096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559096 := by
  apply coveredState_split_literal (state := state_1559096) 2
    state_1559097 state_1559158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559097
  · exact cover_1559158
#print axioms cover_1559096

def state_1559095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 44)))
theorem cover_1559095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559095 := by
  apply coveredState_split_literal (state := state_1559095) 4
    state_1559096 state_1559203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559096
  · exact cover_1559203
#print axioms cover_1559095

def state_1559085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 44)))
theorem cover_1559085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559085 := by
  apply coveredState_split_literal (state := state_1559085) 0
    state_1559086 state_1559095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559086
  · exact cover_1559095
#print axioms cover_1559085

def state_1559244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 44)))
theorem cover_1559244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559244 := by
  apply coveredState_split_literal (state := state_1559244) 4
    state_1559245 state_1559294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559245
  · exact cover_1559294
#print axioms cover_1559244

def state_1559230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 44)))
theorem cover_1559230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559230 := by
  apply coveredState_split_literal (state := state_1559230) 0
    state_1559231 state_1559244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559231
  · exact cover_1559244
#print axioms cover_1559230

def state_1559084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 44)))
theorem cover_1559084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559084 := by
  apply coveredState_split_literal (state := state_1559084) 1
    state_1559085 state_1559230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559085
  · exact cover_1559230
#print axioms cover_1559084

def state_1559046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 44)))
theorem cover_1559046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559046 := by
  apply coveredState_split_literal (state := state_1559046) 3
    state_1559047 state_1559084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559047
  · exact cover_1559084
#print axioms cover_1559046

def state_1559045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 44)))
theorem cover_1559045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559045 := by
  apply coveredState_split_literal (state := state_1559045) 2
    state_1559046 state_1559345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559046
  · exact cover_1559345
#print axioms cover_1559045

def state_1559394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 45)))
theorem cover_1559394 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559394 := by
  apply coveredState_split_literal (state := state_1559394) 2
    state_1559395 state_1559436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559395
  · exact cover_1559436
#print axioms cover_1559394

def state_1559044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
theorem cover_1559044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559044 := by
  apply coveredState_split_literal (state := state_1559044) 4
    state_1559045 state_1559394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559045
  · exact cover_1559394
#print axioms cover_1559044

def state_1559026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
theorem cover_1559026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559026 := by
  apply coveredState_split_literal (state := state_1559026) 0
    state_1559027 state_1559044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559027
  · exact cover_1559044
#print axioms cover_1559026

def state_1559025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
theorem cover_1559025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559025 := by
  apply coveredState_split_literal (state := state_1559025) 1
    state_1559026 state_1559459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559026
  · exact cover_1559459
#print axioms cover_1559025

def state_1559559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 44)))
theorem cover_1559559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559559 := by
  apply coveredState_split_literal (state := state_1559559) 1
    state_1559560 state_1559579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559560
  · exact cover_1559579
#print axioms cover_1559559

def state_1559558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 21 else 44)))
theorem cover_1559558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559558 := by
  apply coveredState_split_literal (state := state_1559558) 3
    state_1559559 state_1559636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559559
  · exact cover_1559636
#print axioms cover_1559558

def state_1559518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 44)))
theorem cover_1559518 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559518 := by
  apply coveredState_split_literal (state := state_1559518) 2
    state_1559519 state_1559558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559519
  · exact cover_1559558
#print axioms cover_1559518

def state_1559517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 22)))
theorem cover_1559517 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559517 := by
  apply coveredState_split_literal (state := state_1559517) 4
    state_1559518 state_1559645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559518
  · exact cover_1559645
#print axioms cover_1559517

def state_1559509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 22)))
theorem cover_1559509 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559509 := by
  apply coveredState_split_literal (state := state_1559509) 0
    state_1559510 state_1559517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559510
  · exact cover_1559517
#print axioms cover_1559509

def state_1559508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 22)))
theorem cover_1559508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559508 := by
  apply coveredState_split_literal (state := state_1559508) 1
    state_1559509 state_1559668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559509
  · exact cover_1559668
#print axioms cover_1559508

def state_1559024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 22)))
theorem cover_1559024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559024 := by
  apply coveredState_split_literal (state := state_1559024) 3
    state_1559025 state_1559508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559025
  · exact cover_1559508
#print axioms cover_1559024

def state_1559735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 22)))
theorem cover_1559735 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559735 := by
  apply coveredState_split_literal (state := state_1559735) 1
    state_1559736 state_1559799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559736
  · exact cover_1559799
#print axioms cover_1559735

def state_1559721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 22)))
theorem cover_1559721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559721 := by
  apply coveredState_split_literal (state := state_1559721) 3
    state_1559722 state_1559735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559722
  · exact cover_1559735
#print axioms cover_1559721
end Mub6.Numerical.CircleFullD0.Forest
