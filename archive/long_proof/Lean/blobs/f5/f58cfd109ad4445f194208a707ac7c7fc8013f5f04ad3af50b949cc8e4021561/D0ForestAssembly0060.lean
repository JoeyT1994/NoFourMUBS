import D0FullInterface
import D0ForestAssembly0059
import D0ForestChunk0243
import D0ForestChunk0244
import D0ForestChunk0245
import D0ForestChunk0246
import D0ForestChunk0247
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_995839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 86)))
theorem cover_995839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995839 := by
  apply coveredState_split_literal (state := state_995839) 0
    state_995840 state_995861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995840
  · exact cover_995861
#print axioms cover_995839

def state_995838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 86)))
theorem cover_995838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995838 := by
  apply coveredState_split_literal (state := state_995838) 1
    state_995839 state_995926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995839
  · exact cover_995926
#print axioms cover_995838

def state_995837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 86)))
theorem cover_995837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995837 := by
  apply coveredState_split_literal (state := state_995837) 2
    state_995838 state_995961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995838
  · exact cover_995961
#print axioms cover_995837

def state_996046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 211 else 174)))
theorem cover_996046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996046 := by
  apply coveredState_split_literal (state := state_996046) 2
    state_996047 state_996090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996047
  · exact cover_996090
#print axioms cover_996046

def state_996044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 174)))
theorem cover_996044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996044 := by
  apply coveredState_split_literal (state := state_996044) 3
    state_996045 state_996046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996045
  · exact cover_996046
#print axioms cover_996044

def state_996157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 145 else (if j.val < 4 then 211 else 175)))
theorem cover_996157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996157 := by
  apply coveredState_split_literal (state := state_996157) 1
    state_996158 state_996189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996158
  · exact cover_996189
#print axioms cover_996157

def state_996127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 211 else 175)))
theorem cover_996127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996127 := by
  apply coveredState_split_literal (state := state_996127) 2
    state_996128 state_996157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996128
  · exact cover_996157
#print axioms cover_996127

def state_996125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 175)))
theorem cover_996125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996125 := by
  apply coveredState_split_literal (state := state_996125) 3
    state_996126 state_996127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996126
  · exact cover_996127
#print axioms cover_996125

def state_996043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 87)))
theorem cover_996043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996043 := by
  apply coveredState_split_literal (state := state_996043) 4
    state_996044 state_996125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996044
  · exact cover_996125
#print axioms cover_996043

def state_996007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 87)))
theorem cover_996007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996007 := by
  apply coveredState_split_literal (state := state_996007) 0
    state_996008 state_996043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996008
  · exact cover_996043
#print axioms cover_996007

def state_995973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 87)))
theorem cover_995973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995973 := by
  apply coveredState_split_literal (state := state_995973) 1
    state_995974 state_996007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995974
  · exact cover_996007
#print axioms cover_995973

def state_995972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 87)))
theorem cover_995972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995972 := by
  apply coveredState_split_literal (state := state_995972) 2
    state_995973 state_996226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995973
  · exact cover_996226
#print axioms cover_995972

def state_995836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 43)))
theorem cover_995836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995836 := by
  apply coveredState_split_literal (state := state_995836) 4
    state_995837 state_995972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995837
  · exact cover_995972
#print axioms cover_995836

def state_995808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 43)))
theorem cover_995808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995808 := by
  apply coveredState_split_literal (state := state_995808) 3
    state_995809 state_995836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995809
  · exact cover_995836
#print axioms cover_995808

def state_995762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 43)))
theorem cover_995762 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995762 := by
  apply coveredState_split_literal (state := state_995762) 0
    state_995763 state_995808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995763
  · exact cover_995808
#print axioms cover_995762

def state_995761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 43)))
theorem cover_995761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995761 := by
  apply coveredState_split_literal (state := state_995761) 1
    state_995762 state_996265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995762
  · exact cover_996265
#print axioms cover_995761

def state_995760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 43)))
theorem cover_995760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995760 := by
  apply coveredState_split_literal (state := state_995760) 2
    state_995761 state_996314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995761
  · exact cover_996314
#print axioms cover_995760

def state_995726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 21)))
theorem cover_995726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995726 := by
  apply coveredState_split_literal (state := state_995726) 4
    state_995727 state_995760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995727
  · exact cover_995760
#print axioms cover_995726

def state_996338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 42)))
theorem cover_996338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996338 := by
  apply coveredState_split_literal (state := state_996338) 3
    state_996339 state_996380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996339
  · exact cover_996380
#print axioms cover_996338

def state_996330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 42)))
theorem cover_996330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996330 := by
  apply coveredState_split_literal (state := state_996330) 0
    state_996331 state_996338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996331
  · exact cover_996338
#print axioms cover_996330

def state_996329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 42)))
theorem cover_996329 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996329 := by
  apply coveredState_split_literal (state := state_996329) 1
    state_996330 state_996411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996330
  · exact cover_996411
#print axioms cover_996329

def state_996328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 42)))
theorem cover_996328 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996328 := by
  apply coveredState_split_literal (state := state_996328) 2
    state_996329 state_996416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996329
  · exact cover_996416
#print axioms cover_996328

def state_996478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 86)))
theorem cover_996478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996478 := by
  apply coveredState_split_literal (state := state_996478) 1
    state_996479 state_996538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996479
  · exact cover_996538
#print axioms cover_996478

def state_996477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 106 else 86)))
theorem cover_996477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996477 := by
  apply coveredState_split_literal (state := state_996477) 2
    state_996478 state_996577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996478
  · exact cover_996577
#print axioms cover_996477

def state_996476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 86)))
theorem cover_996476 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996476 := by
  apply coveredState_split_literal (state := state_996476) 3
    state_996477 state_996626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996477
  · exact cover_996626
#print axioms cover_996476

def state_996707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 87)))
theorem cover_996707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996707 := by
  apply coveredState_split_literal (state := state_996707) 4
    state_996708 state_996769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996708
  · exact cover_996769
#print axioms cover_996707

def state_996695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 87)))
theorem cover_996695 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996695 := by
  apply coveredState_split_literal (state := state_996695) 0
    state_996696 state_996707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996696
  · exact cover_996707
#print axioms cover_996695

def state_996675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 87)))
theorem cover_996675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996675 := by
  apply coveredState_split_literal (state := state_996675) 1
    state_996676 state_996695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996676
  · exact cover_996695
#print axioms cover_996675

def state_996830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 87)))
theorem cover_996830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996830 := by
  apply coveredState_split_literal (state := state_996830) 4
    state_996831 state_996870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996831
  · exact cover_996870
#print axioms cover_996830

def state_996812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 87)))
theorem cover_996812 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996812 := by
  apply coveredState_split_literal (state := state_996812) 0
    state_996813 state_996830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996813
  · exact cover_996830
#print axioms cover_996812

def state_996800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 87)))
theorem cover_996800 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996800 := by
  apply coveredState_split_literal (state := state_996800) 1
    state_996801 state_996812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996801
  · exact cover_996812
#print axioms cover_996800

def state_996674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 106 else 87)))
theorem cover_996674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996674 := by
  apply coveredState_split_literal (state := state_996674) 2
    state_996675 state_996800
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_996675
  · exact cover_996800
#print axioms cover_996674
end Mub6.Numerical.CircleFullD0.Forest
