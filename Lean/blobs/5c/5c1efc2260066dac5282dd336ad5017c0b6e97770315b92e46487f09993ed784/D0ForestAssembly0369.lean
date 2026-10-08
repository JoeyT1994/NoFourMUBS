import D0FullInterface
import D0ForestAssembly0368
import D0ForestChunk1435
import D0ForestChunk1436
import D0ForestChunk1437
import D0ForestChunk1438
import D0ForestChunk1439
import D0ForestChunk1440
import D0ForestChunk1441
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1645317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
theorem cover_1645317 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645317 := by
  apply coveredState_split_literal (state := state_1645317) 3
    state_1645318 state_1645625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645318
  · exact cover_1645625
#print axioms cover_1645317

def state_1645241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
theorem cover_1645241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645241 := by
  apply coveredState_split_literal (state := state_1645241) 0
    state_1645242 state_1645317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645242
  · exact cover_1645317
#print axioms cover_1645241

def state_1645217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
theorem cover_1645217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645217 := by
  apply coveredState_split_literal (state := state_1645217) 1
    state_1645218 state_1645241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645218
  · exact cover_1645241
#print axioms cover_1645217

def state_1645167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 20)))
theorem cover_1645167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645167 := by
  apply coveredState_split_literal (state := state_1645167) 2
    state_1645168 state_1645217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645168
  · exact cover_1645217
#print axioms cover_1645167

def state_1645637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 21)))
theorem cover_1645637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645637 := by
  apply coveredState_split_literal (state := state_1645637) 1
    state_1645638 state_1645657
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645638
  · exact cover_1645657
#print axioms cover_1645637

def state_1645721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 21)))
theorem cover_1645721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645721 := by
  apply coveredState_split_literal (state := state_1645721) 0
    state_1645722 state_1645745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645722
  · exact cover_1645745
#print axioms cover_1645721

def state_1645809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 21)))
theorem cover_1645809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645809 := by
  apply coveredState_split_literal (state := state_1645809) 3
    state_1645810 state_1645867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645810
  · exact cover_1645867
#print axioms cover_1645809

def state_1645992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 105 else 84)))
theorem cover_1645992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645992 := by
  apply coveredState_split_literal (state := state_1645992) 2
    state_1645993 state_1646028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645993
  · exact cover_1646028
#print axioms cover_1645992

def state_1645991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 105 else 42)))
theorem cover_1645991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645991 := by
  apply coveredState_split_literal (state := state_1645991) 4
    state_1645992 state_1646065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645992
  · exact cover_1646065
#print axioms cover_1645991

def state_1645979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 42)))
theorem cover_1645979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645979 := by
  apply coveredState_split_literal (state := state_1645979) 3
    state_1645980 state_1645991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645980
  · exact cover_1645991
#print axioms cover_1645979

def state_1646083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 105 else 84)))
theorem cover_1646083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646083 := by
  apply coveredState_split_literal (state := state_1646083) 2
    state_1646084 state_1646091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646084
  · exact cover_1646091
#print axioms cover_1646083

def state_1646082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 105 else 42)))
theorem cover_1646082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646082 := by
  apply coveredState_split_literal (state := state_1646082) 4
    state_1646083 state_1646152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646083
  · exact cover_1646152
#print axioms cover_1646082

def state_1646078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 42)))
theorem cover_1646078 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646078 := by
  apply coveredState_split_literal (state := state_1646078) 3
    state_1646079 state_1646082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646079
  · exact cover_1646082
#print axioms cover_1646078

def state_1645978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 42)))
theorem cover_1645978 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645978 := by
  apply coveredState_split_literal (state := state_1645978) 0
    state_1645979 state_1646078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645979
  · exact cover_1646078
#print axioms cover_1645978

def state_1645950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 42)))
theorem cover_1645950 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645950 := by
  apply coveredState_split_literal (state := state_1645950) 1
    state_1645951 state_1645978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645951
  · exact cover_1645978
#print axioms cover_1645950

def state_1645926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 52 else 42)))
theorem cover_1645926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645926 := by
  apply coveredState_split_literal (state := state_1645926) 2
    state_1645927 state_1645950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645927
  · exact cover_1645950
#print axioms cover_1645926

def state_1645925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 52 else 21)))
theorem cover_1645925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645925 := by
  apply coveredState_split_literal (state := state_1645925) 4
    state_1645926 state_1646167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645926
  · exact cover_1646167
#print axioms cover_1645925

def state_1646249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 42)))
theorem cover_1646249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646249 := by
  apply coveredState_split_literal (state := state_1646249) 0
    state_1646250 state_1646313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646250
  · exact cover_1646313
#print axioms cover_1646249

def state_1646217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 42)))
theorem cover_1646217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646217 := by
  apply coveredState_split_literal (state := state_1646217) 1
    state_1646218 state_1646249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646218
  · exact cover_1646249
#print axioms cover_1646217

def state_1646181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 53 else 42)))
theorem cover_1646181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646181 := by
  apply coveredState_split_literal (state := state_1646181) 2
    state_1646182 state_1646217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646182
  · exact cover_1646217
#print axioms cover_1646181

def state_1646500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 43)))
theorem cover_1646500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646500 := by
  apply coveredState_split_literal (state := state_1646500) 4
    state_1646501 state_1646540
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646501
  · exact cover_1646540
#print axioms cover_1646500

def state_1646466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 43)))
theorem cover_1646466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646466 := by
  apply coveredState_split_literal (state := state_1646466) 0
    state_1646467 state_1646500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646467
  · exact cover_1646500
#print axioms cover_1646466

def state_1646426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 43)))
theorem cover_1646426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646426 := by
  apply coveredState_split_literal (state := state_1646426) 1
    state_1646427 state_1646466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646427
  · exact cover_1646466
#print axioms cover_1646426

def state_1646374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 53 else 43)))
theorem cover_1646374 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646374 := by
  apply coveredState_split_literal (state := state_1646374) 2
    state_1646375 state_1646426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646375
  · exact cover_1646426
#print axioms cover_1646374

def state_1646180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 53 else 21)))
theorem cover_1646180 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646180 := by
  apply coveredState_split_literal (state := state_1646180) 4
    state_1646181 state_1646374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646181
  · exact cover_1646374
#print axioms cover_1646180

def state_1645924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 21)))
theorem cover_1645924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645924 := by
  apply coveredState_split_literal (state := state_1645924) 3
    state_1645925 state_1646180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645925
  · exact cover_1646180
#print axioms cover_1645924

def state_1645808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 21)))
theorem cover_1645808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645808 := by
  apply coveredState_split_literal (state := state_1645808) 0
    state_1645809 state_1645924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645809
  · exact cover_1645924
#print axioms cover_1645808

def state_1645720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 21)))
theorem cover_1645720 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645720 := by
  apply coveredState_split_literal (state := state_1645720) 1
    state_1645721 state_1645808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645721
  · exact cover_1645808
#print axioms cover_1645720

def state_1645636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 21)))
theorem cover_1645636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645636 := by
  apply coveredState_split_literal (state := state_1645636) 2
    state_1645637 state_1645720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645637
  · exact cover_1645720
#print axioms cover_1645636

def state_1645166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 10)))
theorem cover_1645166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645166 := by
  apply coveredState_split_literal (state := state_1645166) 4
    state_1645167 state_1645636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645167
  · exact cover_1645636
#print axioms cover_1645166

def state_1646581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 21)))
theorem cover_1646581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646581 := by
  apply coveredState_split_literal (state := state_1646581) 2
    state_1646582 state_1646589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646582
  · exact cover_1646589
#print axioms cover_1646581

def state_1646577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 10)))
theorem cover_1646577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646577 := by
  apply coveredState_split_literal (state := state_1646577) 4
    state_1646578 state_1646581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646578
  · exact cover_1646581
#print axioms cover_1646577
end Mub6.Numerical.CircleFullD0.Forest
