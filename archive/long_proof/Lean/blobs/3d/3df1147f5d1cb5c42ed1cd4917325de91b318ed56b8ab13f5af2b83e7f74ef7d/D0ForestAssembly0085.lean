import D0FullInterface
import D0ForestAssembly0084
import D0ForestChunk0339
import D0ForestChunk0340
import D0ForestChunk0341
import D0ForestChunk0342
import D0ForestChunk0343
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1018842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 24)))
theorem cover_1018842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018842 := by
  apply coveredState_split_literal (state := state_1018842) 4
    state_1018843 state_1018930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018843
  · exact cover_1018930
#print axioms cover_1018842

def state_1018841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 24)))
theorem cover_1018841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018841 := by
  apply coveredState_split_literal (state := state_1018841) 0
    state_1018842 state_1018965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018842
  · exact cover_1018965
#print axioms cover_1018841

def state_1018833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 24)))
theorem cover_1018833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018833 := by
  apply coveredState_split_literal (state := state_1018833) 2
    state_1018834 state_1018841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018834
  · exact cover_1018841
#print axioms cover_1018833

def state_1018811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 24)))
theorem cover_1018811 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018811 := by
  apply coveredState_split_literal (state := state_1018811) 1
    state_1018812 state_1018833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018812
  · exact cover_1018833
#print axioms cover_1018811

def state_1018810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 12)))
theorem cover_1018810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018810 := by
  apply coveredState_split_literal (state := state_1018810) 4
    state_1018811 state_1018982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018811
  · exact cover_1018982
#print axioms cover_1018810

def state_1018790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
theorem cover_1018790 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018790 := by
  apply coveredState_split_literal (state := state_1018790) 3
    state_1018791 state_1018810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018791
  · exact cover_1018810
#print axioms cover_1018790

def state_1018718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
theorem cover_1018718 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018718 := by
  apply coveredState_split_literal (state := state_1018718) 0
    state_1018719 state_1018790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018719
  · exact cover_1018790
#print axioms cover_1018718

def state_1019128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 59) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 48)))
theorem cover_1019128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019128 := by
  apply coveredState_split_literal (state := state_1019128) 4
    state_1019129 state_1019158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019129
  · exact cover_1019158
#print axioms cover_1019128

def state_1019127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 59) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 48)))
theorem cover_1019127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019127 := by
  apply coveredState_split_literal (state := state_1019127) 2
    state_1019128 state_1019215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019128
  · exact cover_1019215
#print axioms cover_1019127

def state_1019083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 48)))
theorem cover_1019083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019083 := by
  apply coveredState_split_literal (state := state_1019083) 1
    state_1019084 state_1019127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019084
  · exact cover_1019127
#print axioms cover_1019083

def state_1019065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 48)))
theorem cover_1019065 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019065 := by
  apply coveredState_split_literal (state := state_1019065) 3
    state_1019066 state_1019083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019066
  · exact cover_1019083
#print axioms cover_1019065

def state_1019064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 24)))
theorem cover_1019064 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019064 := by
  apply coveredState_split_literal (state := state_1019064) 4
    state_1019065 state_1019230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019065
  · exact cover_1019230
#print axioms cover_1019064

def state_1019274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 48)))
theorem cover_1019274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019274 := by
  apply coveredState_split_literal (state := state_1019274) 1
    state_1019275 state_1019292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019275
  · exact cover_1019292
#print axioms cover_1019274

def state_1019272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 48)))
theorem cover_1019272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019272 := by
  apply coveredState_split_literal (state := state_1019272) 3
    state_1019273 state_1019274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019273
  · exact cover_1019274
#print axioms cover_1019272

def state_1019271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 24)))
theorem cover_1019271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019271 := by
  apply coveredState_split_literal (state := state_1019271) 4
    state_1019272 state_1019341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019272
  · exact cover_1019341
#print axioms cover_1019271

def state_1019063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 24)))
theorem cover_1019063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019063 := by
  apply coveredState_split_literal (state := state_1019063) 0
    state_1019064 state_1019271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019064
  · exact cover_1019271
#print axioms cover_1019063

def state_1019062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 24)))
theorem cover_1019062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019062 := by
  apply coveredState_split_literal (state := state_1019062) 2
    state_1019063 state_1019388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019063
  · exact cover_1019388
#print axioms cover_1019062

def state_1019050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 24)))
theorem cover_1019050 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019050 := by
  apply coveredState_split_literal (state := state_1019050) 1
    state_1019051 state_1019062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019051
  · exact cover_1019062
#print axioms cover_1019050

def state_1019049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 12)))
theorem cover_1019049 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019049 := by
  apply coveredState_split_literal (state := state_1019049) 4
    state_1019050 state_1019395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019050
  · exact cover_1019395
#print axioms cover_1019049

def state_1019029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1019029 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019029 := by
  apply coveredState_split_literal (state := state_1019029) 3
    state_1019030 state_1019049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019030
  · exact cover_1019049
#print axioms cover_1019029

def state_1019009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1019009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019009 := by
  apply coveredState_split_literal (state := state_1019009) 0
    state_1019010 state_1019029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019010
  · exact cover_1019029
#print axioms cover_1019009

def state_1018717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1018717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018717 := by
  apply coveredState_split_literal (state := state_1018717) 2
    state_1018718 state_1019009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018718
  · exact cover_1019009
#print axioms cover_1018717

def state_1019499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 24)))
theorem cover_1019499 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019499 := by
  apply coveredState_split_literal (state := state_1019499) 0
    state_1019500 state_1019549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019500
  · exact cover_1019549
#print axioms cover_1019499

def state_1019493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 24)))
theorem cover_1019493 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019493 := by
  apply coveredState_split_literal (state := state_1019493) 2
    state_1019494 state_1019499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019494
  · exact cover_1019499
#print axioms cover_1019493

def state_1019492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 24)))
theorem cover_1019492 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019492 := by
  apply coveredState_split_literal (state := state_1019492) 1
    state_1019493 state_1019582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019493
  · exact cover_1019582
#print axioms cover_1019492

def state_1019603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 25)))
theorem cover_1019603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019603 := by
  apply coveredState_split_literal (state := state_1019603) 1
    state_1019604 state_1019649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019604
  · exact cover_1019649
#print axioms cover_1019603

def state_1019491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 12)))
theorem cover_1019491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019491 := by
  apply coveredState_split_literal (state := state_1019491) 4
    state_1019492 state_1019603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019492
  · exact cover_1019603
#print axioms cover_1019491

def state_1019445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
theorem cover_1019445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019445 := by
  apply coveredState_split_literal (state := state_1019445) 3
    state_1019446 state_1019491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019446
  · exact cover_1019491
#print axioms cover_1019445

def state_1019429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
theorem cover_1019429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019429 := by
  apply coveredState_split_literal (state := state_1019429) 0
    state_1019430 state_1019445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019430
  · exact cover_1019445
#print axioms cover_1019429

def state_1019685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1019685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019685 := by
  apply coveredState_split_literal (state := state_1019685) 3
    state_1019686 state_1019697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019686
  · exact cover_1019697
#print axioms cover_1019685

def state_1019860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
theorem cover_1019860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019860 := by
  apply coveredState_split_literal (state := state_1019860) 4
    state_1019861 state_1019914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019861
  · exact cover_1019914
#print axioms cover_1019860

def state_1019850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
theorem cover_1019850 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019850 := by
  apply coveredState_split_literal (state := state_1019850) 0
    state_1019851 state_1019860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019851
  · exact cover_1019860
#print axioms cover_1019850
end Mub6.Numerical.CircleFullD0.Forest
