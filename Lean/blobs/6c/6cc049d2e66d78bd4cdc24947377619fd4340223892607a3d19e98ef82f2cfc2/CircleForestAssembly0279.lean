import CircleFullInterface
import CircleForestAssembly0278
import CircleForestChunk1067
import CircleForestChunk1068
import CircleForestChunk1069
import CircleForestChunk1070
import CircleForestChunk1071
import CircleForestChunk1072
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1556990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 174)))
theorem cover_1556990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556990 := by
  apply coveredState_split_literal (state := state_1556990) 2
    state_1556991 state_1556992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556991
  · exact cover_1556992
#print axioms cover_1556990

def state_1556989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 87)))
theorem cover_1556989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556989 := by
  apply coveredState_split_literal (state := state_1556989) 4
    state_1556990 state_1557065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556990
  · exact cover_1557065
#print axioms cover_1556989

def state_1556988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 120) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 87)))
theorem cover_1556988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556988 := by
  apply coveredState_split_literal (state := state_1556988) 0
    state_1556989 state_1557116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556989
  · exact cover_1557116
#print axioms cover_1556988

def state_1557214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 211 else (if j.val < 4 then 167 else 175)))
theorem cover_1557214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557214 := by
  apply coveredState_split_literal (state := state_1557214) 1
    state_1557215 state_1557258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557215
  · exact cover_1557258
#print axioms cover_1557214

def state_1557202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 211 else (if j.val < 4 then 83 else 175)))
theorem cover_1557202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557202 := by
  apply coveredState_split_literal (state := state_1557202) 3
    state_1557203 state_1557214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557203
  · exact cover_1557214
#print axioms cover_1557202

def state_1557200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 175)))
theorem cover_1557200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557200 := by
  apply coveredState_split_literal (state := state_1557200) 2
    state_1557201 state_1557202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557201
  · exact cover_1557202
#print axioms cover_1557200

def state_1557172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 87)))
theorem cover_1557172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557172 := by
  apply coveredState_split_literal (state := state_1557172) 4
    state_1557173 state_1557200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557173
  · exact cover_1557200
#print axioms cover_1557172

def state_1557171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 121) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 87)))
theorem cover_1557171 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557171 := by
  apply coveredState_split_literal (state := state_1557171) 0
    state_1557172 state_1557281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557172
  · exact cover_1557281
#print axioms cover_1557171

def state_1556987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 87)))
theorem cover_1556987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556987 := by
  apply coveredState_split_literal (state := state_1556987) 1
    state_1556988 state_1557171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556988
  · exact cover_1557171
#print axioms cover_1556987

def state_1556953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 87)))
theorem cover_1556953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556953 := by
  apply coveredState_split_literal (state := state_1556953) 3
    state_1556954 state_1556987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556954
  · exact cover_1556987
#print axioms cover_1556953

def state_1556835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 43)))
theorem cover_1556835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556835 := by
  apply coveredState_split_literal (state := state_1556835) 4
    state_1556836 state_1556953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556836
  · exact cover_1556953
#print axioms cover_1556835

def state_1556749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 43)))
theorem cover_1556749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556749 := by
  apply coveredState_split_literal (state := state_1556749) 2
    state_1556750 state_1556835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556750
  · exact cover_1556835
#print axioms cover_1556749

def state_1556748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 43)))
theorem cover_1556748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556748 := by
  apply coveredState_split_literal (state := state_1556748) 0
    state_1556749 state_1557332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556749
  · exact cover_1557332
#print axioms cover_1556748

def state_1556747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 43)))
theorem cover_1556747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556747 := by
  apply coveredState_split_literal (state := state_1556747) 1
    state_1556748 state_1557393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556748
  · exact cover_1557393
#print axioms cover_1556747

def state_1556715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 43)))
theorem cover_1556715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556715 := by
  apply coveredState_split_literal (state := state_1556715) 3
    state_1556716 state_1556747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556716
  · exact cover_1556747
#print axioms cover_1556715

def state_1556685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 21)))
theorem cover_1556685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556685 := by
  apply coveredState_split_literal (state := state_1556685) 4
    state_1556686 state_1556715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556686
  · exact cover_1556715
#print axioms cover_1556685

def state_1557526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 120) else (if j.val < 3 then 106 else (if j.val < 4 then 83 else 87)))
theorem cover_1557526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557526 := by
  apply coveredState_split_literal (state := state_1557526) 0
    state_1557527 state_1557572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557527
  · exact cover_1557572
#print axioms cover_1557526

def state_1557525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 106 else (if j.val < 4 then 83 else 87)))
theorem cover_1557525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557525 := by
  apply coveredState_split_literal (state := state_1557525) 1
    state_1557526 state_1557593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557526
  · exact cover_1557593
#print axioms cover_1557525

def state_1557521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 106 else (if j.val < 4 then 41 else 87)))
theorem cover_1557521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557521 := by
  apply coveredState_split_literal (state := state_1557521) 3
    state_1557522 state_1557525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557522
  · exact cover_1557525
#print axioms cover_1557521

def state_1557520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 87)))
theorem cover_1557520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557520 := by
  apply coveredState_split_literal (state := state_1557520) 2
    state_1557521 state_1557632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557521
  · exact cover_1557632
#print axioms cover_1557520

def state_1557460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 43)))
theorem cover_1557460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557460 := by
  apply coveredState_split_literal (state := state_1557460) 4
    state_1557461 state_1557520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557461
  · exact cover_1557520
#print axioms cover_1557460

def state_1557459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 43)))
theorem cover_1557459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557459 := by
  apply coveredState_split_literal (state := state_1557459) 0
    state_1557460 state_1557637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557460
  · exact cover_1557637
#print axioms cover_1557459

def state_1557458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 43)))
theorem cover_1557458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557458 := by
  apply coveredState_split_literal (state := state_1557458) 1
    state_1557459 state_1557650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557459
  · exact cover_1557650
#print axioms cover_1557458

def state_1557452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 43)))
theorem cover_1557452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557452 := by
  apply coveredState_split_literal (state := state_1557452) 3
    state_1557453 state_1557458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557453
  · exact cover_1557458
#print axioms cover_1557452

def state_1557430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 21)))
theorem cover_1557430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557430 := by
  apply coveredState_split_literal (state := state_1557430) 4
    state_1557431 state_1557452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557431
  · exact cover_1557452
#print axioms cover_1557430

def state_1556684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1556684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556684 := by
  apply coveredState_split_literal (state := state_1556684) 2
    state_1556685 state_1557430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556685
  · exact cover_1557430
#print axioms cover_1556684

def state_1556683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1556683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556683 := by
  apply coveredState_split_literal (state := state_1556683) 0
    state_1556684 state_1557663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556684
  · exact cover_1557663
#print axioms cover_1556683

def state_1556682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1556682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556682 := by
  apply coveredState_split_literal (state := state_1556682) 1
    state_1556683 state_1557680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556683
  · exact cover_1557680
#print axioms cover_1556682

def state_1556680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 10)))
theorem cover_1556680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556680 := by
  apply coveredState_split_literal (state := state_1556680) 4
    state_1556681 state_1556682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556681
  · exact cover_1556682
#print axioms cover_1556680

def state_1557762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 87)))
theorem cover_1557762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557762 := by
  apply coveredState_split_literal (state := state_1557762) 1
    state_1557763 state_1557792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557763
  · exact cover_1557792
#print axioms cover_1557762

def state_1557761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 42 else 87)))
theorem cover_1557761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557761 := by
  apply coveredState_split_literal (state := state_1557761) 3
    state_1557762 state_1557839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557762
  · exact cover_1557839
#print axioms cover_1557761

def state_1557743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 42 else 43)))
theorem cover_1557743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557743 := by
  apply coveredState_split_literal (state := state_1557743) 4
    state_1557744 state_1557761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557744
  · exact cover_1557761
#print axioms cover_1557743
end Mub6.Numerical.CircleFullD0.Forest
