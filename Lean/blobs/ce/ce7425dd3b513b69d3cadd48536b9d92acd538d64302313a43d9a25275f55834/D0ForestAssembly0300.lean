import D0FullInterface
import D0ForestAssembly0299
import D0ForestChunk1148
import D0ForestChunk1149
import D0ForestChunk1150
import D0ForestChunk1151
import D0ForestChunk1152
import D0ForestChunk1153
import D0ForestChunk1154
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1576410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 25)))
theorem cover_1576410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576410 := by
  apply coveredState_split_literal (state := state_1576410) 4
    state_1576411 state_1576418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576411
  · exact cover_1576418
#print axioms cover_1576410

def state_1576404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 25 else 25)))
theorem cover_1576404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576404 := by
  apply coveredState_split_literal (state := state_1576404) 3
    state_1576405 state_1576410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576405
  · exact cover_1576410
#print axioms cover_1576404

def state_1576403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 25)))
theorem cover_1576403 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576403 := by
  apply coveredState_split_literal (state := state_1576403) 2
    state_1576404 state_1576651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576404
  · exact cover_1576651
#print axioms cover_1576403

def state_1576402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 25)))
theorem cover_1576402 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576402 := by
  apply coveredState_split_literal (state := state_1576402) 1
    state_1576403 state_1576658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576403
  · exact cover_1576658
#print axioms cover_1576402

def state_1576172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 25)))
theorem cover_1576172 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576172 := by
  apply coveredState_split_literal (state := state_1576172) 0
    state_1576173 state_1576402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576173
  · exact cover_1576402
#print axioms cover_1576172

def state_1576162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 12)))
theorem cover_1576162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576162 := by
  apply coveredState_split_literal (state := state_1576162) 4
    state_1576163 state_1576172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576163
  · exact cover_1576172
#print axioms cover_1576162

def state_1576156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 12)))
theorem cover_1576156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576156 := by
  apply coveredState_split_literal (state := state_1576156) 3
    state_1576157 state_1576162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576157
  · exact cover_1576162
#print axioms cover_1576156

def state_1576155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 12)))
theorem cover_1576155 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576155 := by
  apply coveredState_split_literal (state := state_1576155) 2
    state_1576156 state_1576689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576156
  · exact cover_1576689
#print axioms cover_1576155

def state_1576154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 12)))
theorem cover_1576154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576154 := by
  apply coveredState_split_literal (state := state_1576154) 1
    state_1576155 state_1576696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576155
  · exact cover_1576696
#print axioms cover_1576154

def state_1576122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 12)))
theorem cover_1576122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576122 := by
  apply coveredState_split_literal (state := state_1576122) 0
    state_1576123 state_1576154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576123
  · exact cover_1576154
#print axioms cover_1576122

def state_1576868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 103 else 52)))
theorem cover_1576868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576868 := by
  apply coveredState_split_literal (state := state_1576868) 4
    state_1576869 state_1576916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576869
  · exact cover_1576916
#print axioms cover_1576868

def state_1576840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 51 else 52)))
theorem cover_1576840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576840 := by
  apply coveredState_split_literal (state := state_1576840) 3
    state_1576841 state_1576868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576841
  · exact cover_1576868
#print axioms cover_1576840

def state_1576839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 52)))
theorem cover_1576839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576839 := by
  apply coveredState_split_literal (state := state_1576839) 2
    state_1576840 state_1576939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576840
  · exact cover_1576939
#print axioms cover_1576839

def state_1576838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 52)))
theorem cover_1576838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576838 := by
  apply coveredState_split_literal (state := state_1576838) 1
    state_1576839 state_1576958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576839
  · exact cover_1576958
#print axioms cover_1576838

def state_1576837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 52)))
theorem cover_1576837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576837 := by
  apply coveredState_split_literal (state := state_1576837) 0
    state_1576838 state_1576997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576838
  · exact cover_1576997
#print axioms cover_1576837

def state_1576836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 26)))
theorem cover_1576836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576836 := by
  apply coveredState_split_literal (state := state_1576836) 4
    state_1576837 state_1577022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576837
  · exact cover_1577022
#print axioms cover_1576836

def state_1576828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 25 else 26)))
theorem cover_1576828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576828 := by
  apply coveredState_split_literal (state := state_1576828) 3
    state_1576829 state_1576836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576829
  · exact cover_1576836
#print axioms cover_1576828

def state_1576827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 26)))
theorem cover_1576827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576827 := by
  apply coveredState_split_literal (state := state_1576827) 2
    state_1576828 state_1577051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576828
  · exact cover_1577051
#print axioms cover_1576827

def state_1576826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 26)))
theorem cover_1576826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576826 := by
  apply coveredState_split_literal (state := state_1576826) 1
    state_1576827 state_1577062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576827
  · exact cover_1577062
#print axioms cover_1576826

def state_1576764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 26)))
theorem cover_1576764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576764 := by
  apply coveredState_split_literal (state := state_1576764) 0
    state_1576765 state_1576826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576765
  · exact cover_1576826
#print axioms cover_1576764

def state_1576763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 13)))
theorem cover_1576763 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576763 := by
  apply coveredState_split_literal (state := state_1576763) 4
    state_1576764 state_1577103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576764
  · exact cover_1577103
#print axioms cover_1576763

def state_1576755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 13)))
theorem cover_1576755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576755 := by
  apply coveredState_split_literal (state := state_1576755) 3
    state_1576756 state_1576763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576756
  · exact cover_1576763
#print axioms cover_1576755

def state_1576754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 13)))
theorem cover_1576754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576754 := by
  apply coveredState_split_literal (state := state_1576754) 2
    state_1576755 state_1577134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576755
  · exact cover_1577134
#print axioms cover_1576754

def state_1576753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 13)))
theorem cover_1576753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576753 := by
  apply coveredState_split_literal (state := state_1576753) 1
    state_1576754 state_1577143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576754
  · exact cover_1577143
#print axioms cover_1576753

def state_1576737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 13)))
theorem cover_1576737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576737 := by
  apply coveredState_split_literal (state := state_1576737) 0
    state_1576738 state_1576753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576738
  · exact cover_1576753
#print axioms cover_1576737

def state_1576121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 6)))
theorem cover_1576121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576121 := by
  apply coveredState_split_literal (state := state_1576121) 4
    state_1576122 state_1576737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576122
  · exact cover_1576737
#print axioms cover_1576121

def state_1577244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 24)))
theorem cover_1577244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577244 := by
  apply coveredState_split_literal (state := state_1577244) 3
    state_1577245 state_1577282
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577245
  · exact cover_1577282
#print axioms cover_1577244

def state_1577382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 51)))
theorem cover_1577382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577382 := by
  apply coveredState_split_literal (state := state_1577382) 4
    state_1577383 state_1577426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577383
  · exact cover_1577426
#print axioms cover_1577382

def state_1577381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 32) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1577381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577381 := by
  apply coveredState_split_literal (state := state_1577381) 2
    state_1577382 state_1577463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577382
  · exact cover_1577463
#print axioms cover_1577381

def state_1577478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 33) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1577478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577478 := by
  apply coveredState_split_literal (state := state_1577478) 2
    state_1577479 state_1577524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577479
  · exact cover_1577524
#print axioms cover_1577478

def state_1577380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1577380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577380 := by
  apply coveredState_split_literal (state := state_1577380) 1
    state_1577381 state_1577478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577381
  · exact cover_1577478
#print axioms cover_1577380

def state_1577370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1577370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577370 := by
  apply coveredState_split_literal (state := state_1577370) 0
    state_1577371 state_1577380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577371
  · exact cover_1577380
#print axioms cover_1577370
end Mub6.Numerical.CircleFullD0.Forest
