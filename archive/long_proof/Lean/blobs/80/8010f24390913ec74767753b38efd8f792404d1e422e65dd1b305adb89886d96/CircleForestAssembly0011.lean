import CircleFullInterface
import CircleForestAssembly0006
import CircleForestAssembly0009
import CircleForestAssembly0010
import CircleForestChunk0041
import CircleForestChunk0043
import CircleForestChunk0044
import CircleForestChunk0045
import CircleForestChunk0046
import CircleForestChunk0047
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_10368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 37 else 18)))
theorem cover_10368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10368 := by
  apply coveredState_split_literal (state := state_10368) 4
    state_10369 state_10406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10369
  · exact cover_10406
#print axioms cover_10368

def state_10076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 18)))
theorem cover_10076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10076 := by
  apply coveredState_split_literal (state := state_10076) 3
    state_10077 state_10368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10077
  · exact cover_10368
#print axioms cover_10076

def state_9968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 18)))
theorem cover_9968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9968 := by
  apply coveredState_split_literal (state := state_9968) 0
    state_9969 state_10076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9969
  · exact cover_10076
#print axioms cover_9968

def state_9967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 9)))
theorem cover_9967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9967 := by
  apply coveredState_split_literal (state := state_9967) 4
    state_9968 state_10435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9968
  · exact cover_10435
#print axioms cover_9967

def state_9966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 9)))
theorem cover_9966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9966 := by
  apply coveredState_split_literal (state := state_9966) 3
    state_9967 state_10456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9967
  · exact cover_10456
#print axioms cover_9966

def state_9934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 9)))
theorem cover_9934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9934 := by
  apply coveredState_split_literal (state := state_9934) 0
    state_9935 state_9966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9935
  · exact cover_9966
#print axioms cover_9934

def state_9894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
theorem cover_9894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9894 := by
  apply coveredState_split_literal (state := state_9894) 2
    state_9895 state_9934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9895
  · exact cover_9934
#print axioms cover_9894

def state_9852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
theorem cover_9852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9852 := by
  apply coveredState_split_literal (state := state_9852) 1
    state_9853 state_9894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_9853
  · exact cover_9894
#print axioms cover_9852

def state_8932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 4)))
theorem cover_8932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8932 := by
  apply coveredState_split_literal (state := state_8932) 4
    state_8933 state_9852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8933
  · exact cover_9852
#print axioms cover_8932

def state_6106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_6106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6106 := by
  apply coveredState_split_literal (state := state_6106) 3
    state_6107 state_8932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6107
  · exact cover_8932
#print axioms cover_6106

def state_5926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_5926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5926 := by
  apply coveredState_split_literal (state := state_5926) 0
    state_5927 state_6106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5927
  · exact cover_6106
#print axioms cover_5926

def state_5856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_5856 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5856 := by
  apply coveredState_split_literal (state := state_5856) 2
    state_5857 state_5926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5857
  · exact cover_5926
#print axioms cover_5856

def state_5768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_5768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5768 := by
  apply coveredState_split_literal (state := state_5768) 1
    state_5769 state_5856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5769
  · exact cover_5856
#print axioms cover_5768

def state_5767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_5767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5767 := by
  apply coveredState_split_literal (state := state_5767) 4
    state_5768 state_10481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5768
  · exact cover_10481
#print axioms cover_5767

def state_5766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_5766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5766 := by
  apply coveredState_split_literal (state := state_5766) 3
    state_5767 state_10502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5767
  · exact cover_10502
#print axioms cover_5766

def state_10629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 9)))
theorem cover_10629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10629 := by
  apply coveredState_split_literal (state := state_10629) 1
    state_10630 state_10661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10630
  · exact cover_10661
#print axioms cover_10629

def state_10585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 4)))
theorem cover_10585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10585 := by
  apply coveredState_split_literal (state := state_10585) 4
    state_10586 state_10629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10586
  · exact cover_10629
#print axioms cover_10585

def state_10718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 4)))
theorem cover_10718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10718 := by
  apply coveredState_split_literal (state := state_10718) 4
    state_10719 state_10742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10719
  · exact cover_10742
#print axioms cover_10718

def state_10584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 4)))
theorem cover_10584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10584 := by
  apply coveredState_split_literal (state := state_10584) 3
    state_10585 state_10718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10585
  · exact cover_10718
#print axioms cover_10584

def state_10583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_10583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10583 := by
  apply coveredState_split_literal (state := state_10583) 2
    state_10584 state_10795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10584
  · exact cover_10795
#print axioms cover_10583

def state_10563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_10563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10563 := by
  apply coveredState_split_literal (state := state_10563) 0
    state_10564 state_10583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10564
  · exact cover_10583
#print axioms cover_10563

def state_10527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_10527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10527 := by
  apply coveredState_split_literal (state := state_10527) 1
    state_10528 state_10563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10528
  · exact cover_10563
#print axioms cover_10527

def state_10804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_10804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10804 := by
  apply coveredState_split_literal (state := state_10804) 1
    state_10805 state_10830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10805
  · exact cover_10830
#print axioms cover_10804

def state_10526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
theorem cover_10526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10526 := by
  apply coveredState_split_literal (state := state_10526) 4
    state_10527 state_10804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10527
  · exact cover_10804
#print axioms cover_10526

def state_10525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_10525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10525 := by
  apply coveredState_split_literal (state := state_10525) 3
    state_10526 state_10873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10526
  · exact cover_10873
#print axioms cover_10525

def state_5765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_5765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5765 := by
  apply coveredState_split_literal (state := state_5765) 2
    state_5766 state_10525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5766
  · exact cover_10525
#print axioms cover_5765

def state_10953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 4)))
theorem cover_10953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10953 := by
  apply coveredState_split_literal (state := state_10953) 4
    state_10954 state_10997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10954
  · exact cover_10997
#print axioms cover_10953

def state_11021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_11021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11021 := by
  apply coveredState_split_literal (state := state_11021) 2
    state_11022 state_11053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11022
  · exact cover_11053
#print axioms cover_11021

def state_11020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 4)))
theorem cover_11020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11020 := by
  apply coveredState_split_literal (state := state_11020) 4
    state_11021 state_11110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11021
  · exact cover_11110
#print axioms cover_11020

def state_10952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_10952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10952 := by
  apply coveredState_split_literal (state := state_10952) 3
    state_10953 state_11020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10953
  · exact cover_11020
#print axioms cover_10952

def state_10951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_10951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10951 := by
  apply coveredState_split_literal (state := state_10951) 1
    state_10952 state_11169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10952
  · exact cover_11169
#print axioms cover_10951

def state_10933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_10933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10933 := by
  apply coveredState_split_literal (state := state_10933) 0
    state_10934 state_10951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_10934
  · exact cover_10951
#print axioms cover_10933
end Mub6.Numerical.CircleFullPrototype.Forest
