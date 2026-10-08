import CircleFullInterface
import CircleForestChunk0057
import CircleForestChunk0058
import CircleForestChunk0059
import CircleForestChunk0060
import CircleForestChunk0061
import CircleForestChunk0062
import CircleForestChunk0063
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_13671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_13671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13671 := by
  apply coveredState_split_literal (state := state_13671) 1
    state_13672 state_13713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13672
  · exact cover_13713
#print axioms cover_13671

def state_13670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_13670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13670 := by
  apply coveredState_split_literal (state := state_13670) 0
    state_13671 state_13758
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13671
  · exact cover_13758
#print axioms cover_13670

def state_13816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
theorem cover_13816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13816 := by
  apply coveredState_split_literal (state := state_13816) 4
    state_13817 state_13862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13817
  · exact cover_13862
#print axioms cover_13816

def state_13815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_13815 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13815 := by
  apply coveredState_split_literal (state := state_13815) 3
    state_13816 state_13885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13816
  · exact cover_13885
#print axioms cover_13815

def state_13783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_13783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13783 := by
  apply coveredState_split_literal (state := state_13783) 2
    state_13784 state_13815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13784
  · exact cover_13815
#print axioms cover_13783

def state_13910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_13910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13910 := by
  apply coveredState_split_literal (state := state_13910) 2
    state_13911 state_13964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13911
  · exact cover_13964
#print axioms cover_13910

def state_13782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_13782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13782 := by
  apply coveredState_split_literal (state := state_13782) 1
    state_13783 state_13910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13783
  · exact cover_13910
#print axioms cover_13782

def state_14033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_14033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14033 := by
  apply coveredState_split_literal (state := state_14033) 2
    state_14034 state_14069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14034
  · exact cover_14069
#print axioms cover_14033

def state_14005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_14005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14005 := by
  apply coveredState_split_literal (state := state_14005) 1
    state_14006 state_14033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14006
  · exact cover_14033
#print axioms cover_14005

def state_13781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_13781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13781 := by
  apply coveredState_split_literal (state := state_13781) 0
    state_13782 state_14005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13782
  · exact cover_14005
#print axioms cover_13781

def state_13669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_13669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13669 := by
  apply coveredState_split_literal (state := state_13669) 4
    state_13670 state_13781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13670
  · exact cover_13781
#print axioms cover_13669

def state_14107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_14107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14107 := by
  apply coveredState_split_literal (state := state_14107) 2
    state_14108 state_14139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14108
  · exact cover_14139
#print axioms cover_14107

def state_14195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_14195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14195 := by
  apply coveredState_split_literal (state := state_14195) 3
    state_14196 state_14257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14196
  · exact cover_14257
#print axioms cover_14195

def state_14194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_14194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14194 := by
  apply coveredState_split_literal (state := state_14194) 2
    state_14195 state_14288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14195
  · exact cover_14288
#print axioms cover_14194

def state_14106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_14106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14106 := by
  apply coveredState_split_literal (state := state_14106) 1
    state_14107 state_14194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14107
  · exact cover_14194
#print axioms cover_14106

def state_14333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_14333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14333 := by
  apply coveredState_split_literal (state := state_14333) 1
    state_14334 state_14377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14334
  · exact cover_14377
#print axioms cover_14333

def state_14105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_14105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14105 := by
  apply coveredState_split_literal (state := state_14105) 0
    state_14106 state_14333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14106
  · exact cover_14333
#print axioms cover_14105

def state_14433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_14433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14433 := by
  apply coveredState_split_literal (state := state_14433) 1
    state_14434 state_14461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14434
  · exact cover_14461
#print axioms cover_14433

def state_14432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_14432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14432 := by
  apply coveredState_split_literal (state := state_14432) 0
    state_14433 state_14506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14433
  · exact cover_14506
#print axioms cover_14432

def state_14104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_14104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14104 := by
  apply coveredState_split_literal (state := state_14104) 4
    state_14105 state_14432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14105
  · exact cover_14432
#print axioms cover_14104

def state_13668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_13668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13668 := by
  apply coveredState_split_literal (state := state_13668) 3
    state_13669 state_14104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13669
  · exact cover_14104
#print axioms cover_13668

def state_14537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_14537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14537 := by
  apply coveredState_split_literal (state := state_14537) 0
    state_14538 state_14583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14538
  · exact cover_14583
#print axioms cover_14537

def state_14674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_14674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14674 := by
  apply coveredState_split_literal (state := state_14674) 1
    state_14675 state_14696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14675
  · exact cover_14696
#print axioms cover_14674

def state_14626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_14626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14626 := by
  apply coveredState_split_literal (state := state_14626) 0
    state_14627 state_14674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14627
  · exact cover_14674
#print axioms cover_14626

def state_14536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_14536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14536 := by
  apply coveredState_split_literal (state := state_14536) 4
    state_14537 state_14626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14537
  · exact cover_14626
#print axioms cover_14536

def state_14809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_14809 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14809 := by
  apply coveredState_split_literal (state := state_14809) 2
    state_14810 state_14865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14810
  · exact cover_14865
#print axioms cover_14809

def state_14745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_14745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14745 := by
  apply coveredState_split_literal (state := state_14745) 1
    state_14746 state_14809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14746
  · exact cover_14809
#print axioms cover_14745

def state_14927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_14927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14927 := by
  apply coveredState_split_literal (state := state_14927) 3
    state_14928 state_14935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14928
  · exact cover_14935
#print axioms cover_14927

def state_14926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_14926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14926 := by
  apply coveredState_split_literal (state := state_14926) 2
    state_14927 state_14998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14927
  · exact cover_14998
#print axioms cover_14926

def state_14878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_14878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14878 := by
  apply coveredState_split_literal (state := state_14878) 1
    state_14879 state_14926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14879
  · exact cover_14926
#print axioms cover_14878

def state_14744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_14744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14744 := by
  apply coveredState_split_literal (state := state_14744) 0
    state_14745 state_14878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14745
  · exact cover_14878
#print axioms cover_14744

def state_15062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_15062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15062 := by
  apply coveredState_split_literal (state := state_15062) 1
    state_15063 state_15092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15063
  · exact cover_15092
#print axioms cover_15062
end Mub6.Numerical.CircleFullPrototype.Forest
