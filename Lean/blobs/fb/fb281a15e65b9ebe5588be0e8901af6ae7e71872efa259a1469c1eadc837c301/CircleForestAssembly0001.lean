import CircleFullInterface
import CircleForestChunk0001
import CircleForestChunk0002
import CircleForestChunk0003
import CircleForestChunk0004
import CircleForestChunk0005
import CircleForestChunk0006
import CircleForestChunk0007
import CircleForestChunk0008
import CircleForestChunk0009
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_16 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_16 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_16 := by
  apply coveredState_split_literal (state := state_16) 1
    state_17 state_680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17
  · exact cover_680
#print axioms cover_16

def state_1449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1449 := by
  apply coveredState_split_literal (state := state_1449) 1
    state_1450 state_2259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1450
  · exact cover_2259
#print axioms cover_1449

def state_15 : State := rootState
theorem cover_15 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_15 := by
  apply coveredState_split_literal (state := state_15) 0
    state_16 state_1449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16
  · exact cover_1449
#print axioms cover_15

def state_3584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_3584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3584 := by
  apply coveredState_split_literal (state := state_3584) 3
    state_3585 state_4218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3585
  · exact cover_4218
#print axioms cover_3584

def state_2934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_2934 := by
  apply coveredState_split_literal (state := state_2934) 2
    state_2935 state_3584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2935
  · exact cover_3584
#print axioms cover_2934

def state_4684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_4684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4684 := by
  apply coveredState_split_literal (state := state_4684) 3
    state_4685 state_5100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4685
  · exact cover_5100
#print axioms cover_4684

def state_6886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 8)))
theorem cover_6886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6886 := by
  apply coveredState_split_literal (state := state_6886) 2
    state_6887 state_7270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6887
  · exact cover_7270
#print axioms cover_6886

def state_6108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 8)))
theorem cover_6108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6108 := by
  apply coveredState_split_literal (state := state_6108) 1
    state_6109 state_6886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6109
  · exact cover_6886
#print axioms cover_6108

def state_6107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 4)))
theorem cover_6107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6107 := by
  apply coveredState_split_literal (state := state_6107) 4
    state_6108 state_8025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6108
  · exact cover_8025
#print axioms cover_6107

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

def state_5764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_5764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5764 := by
  apply coveredState_split_literal (state := state_5764) 1
    state_5765 state_10900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5765
  · exact cover_10900
#print axioms cover_5764

def state_11446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_11446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11446 := by
  apply coveredState_split_literal (state := state_11446) 2
    state_11447 state_12124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11447
  · exact cover_12124
#print axioms cover_11446

def state_11445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_11445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11445 := by
  apply coveredState_split_literal (state := state_11445) 1
    state_11446 state_12551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11446
  · exact cover_12551
#print axioms cover_11445

def state_5763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_5763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5763 := by
  apply coveredState_split_literal (state := state_5763) 0
    state_5764 state_11445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5764
  · exact cover_11445
#print axioms cover_5763

def state_5762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_5762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5762 := by
  apply coveredState_split_literal (state := state_5762) 4
    state_5763 state_13380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5763
  · exact cover_13380
#print axioms cover_5762

def state_5761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_5761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5761 := by
  apply coveredState_split_literal (state := state_5761) 3
    state_5762 state_13467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5762
  · exact cover_13467
#print axioms cover_5761

def state_4683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_4683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4683 := by
  apply coveredState_split_literal (state := state_4683) 2
    state_4684 state_5761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4684
  · exact cover_5761
#print axioms cover_4683

def state_2933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_2933 := by
  apply coveredState_split_literal (state := state_2933) 1
    state_2934 state_4683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2934
  · exact cover_4683
#print axioms cover_2933

def state_13667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_13667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13667 := by
  apply coveredState_split_literal (state := state_13667) 2
    state_13668 state_14535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13668
  · exact cover_14535
#print axioms cover_13667

def state_16477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_16477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16477 := by
  apply coveredState_split_literal (state := state_16477) 3
    state_16478 state_16965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16478
  · exact cover_16965
#print axioms cover_16477

def state_16273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_16273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16273 := by
  apply coveredState_split_literal (state := state_16273) 2
    state_16274 state_16477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16274
  · exact cover_16477
#print axioms cover_16273

def state_15945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_15945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15945 := by
  apply coveredState_split_literal (state := state_15945) 1
    state_15946 state_16273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15946
  · exact cover_16273
#print axioms cover_15945

def state_18868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_18868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18868 := by
  apply coveredState_split_literal (state := state_18868) 2
    state_18869 state_19498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18869
  · exact cover_19498
#print axioms cover_18868

def state_21308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 10)))
theorem cover_21308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21308 := by
  apply coveredState_split_literal (state := state_21308) 4
    state_21309 state_21976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21309
  · exact cover_21976
#print axioms cover_21308

def state_21307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
theorem cover_21307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21307 := by
  apply coveredState_split_literal (state := state_21307) 3
    state_21308 state_22361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21308
  · exact cover_22361
#print axioms cover_21307

def state_20397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_20397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20397 := by
  apply coveredState_split_literal (state := state_20397) 2
    state_20398 state_21307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20398
  · exact cover_21307
#print axioms cover_20397

def state_18867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_18867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18867 := by
  apply coveredState_split_literal (state := state_18867) 1
    state_18868 state_20397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18868
  · exact cover_20397
#print axioms cover_18867

def state_18866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_18866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18866 := by
  apply coveredState_split_literal (state := state_18866) 0
    state_18867 state_23136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18867
  · exact cover_23136
#print axioms cover_18866

def state_18865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 5)))
theorem cover_18865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18865 := by
  apply coveredState_split_literal (state := state_18865) 4
    state_18866 state_23315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18866
  · exact cover_23315
#print axioms cover_18865

def state_18864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_18864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18864 := by
  apply coveredState_split_literal (state := state_18864) 3
    state_18865 state_23388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18865
  · exact cover_23388
#print axioms cover_18864

def state_18592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_18592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18592 := by
  apply coveredState_split_literal (state := state_18592) 4
    state_18593 state_18864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18593
  · exact cover_18864
#print axioms cover_18592

def state_18208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_18208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18208 := by
  apply coveredState_split_literal (state := state_18208) 3
    state_18209 state_18592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18209
  · exact cover_18592
#print axioms cover_18208

def state_18076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_18076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18076 := by
  apply coveredState_split_literal (state := state_18076) 2
    state_18077 state_18208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18077
  · exact cover_18208
#print axioms cover_18076

def state_17906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_17906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17906 := by
  apply coveredState_split_literal (state := state_17906) 1
    state_17907 state_18076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17907
  · exact cover_18076
#print axioms cover_17906

def state_15944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_15944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15944 := by
  apply coveredState_split_literal (state := state_15944) 0
    state_15945 state_17906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15945
  · exact cover_17906
#print axioms cover_15944

def state_15943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_15943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15943 := by
  apply coveredState_split_literal (state := state_15943) 4
    state_15944 state_23471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15944
  · exact cover_23471
#print axioms cover_15943

def state_15942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_15942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15942 := by
  apply coveredState_split_literal (state := state_15942) 3
    state_15943 state_23764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15943
  · exact cover_23764
#print axioms cover_15942

def state_15244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_15244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15244 := by
  apply coveredState_split_literal (state := state_15244) 2
    state_15245 state_15942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15245
  · exact cover_15942
#print axioms cover_15244

def state_13666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_13666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13666 := by
  apply coveredState_split_literal (state := state_13666) 1
    state_13667 state_15244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13667
  · exact cover_15244
#print axioms cover_13666

def state_2932 : State := rootState
theorem cover_2932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_2932 := by
  apply coveredState_split_literal (state := state_2932) 0
    state_2933 state_13666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2933
  · exact cover_13666
#print axioms cover_2932

def state_46501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 10)))
theorem cover_46501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46501 := by
  apply coveredState_split_literal (state := state_46501) 2
    state_46502 state_47463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46502
  · exact cover_47463
#print axioms cover_46501

def state_46455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_46455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46455 := by
  apply coveredState_split_literal (state := state_46455) 3
    state_46456 state_46501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46456
  · exact cover_46501
#print axioms cover_46455

def state_46433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_46433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46433 := by
  apply coveredState_split_literal (state := state_46433) 1
    state_46434 state_46455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46434
  · exact cover_46455
#print axioms cover_46433

def state_46409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_46409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46409 := by
  apply coveredState_split_literal (state := state_46409) 0
    state_46410 state_46433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46410
  · exact cover_46433
#print axioms cover_46409

def state_46408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 5)))
theorem cover_46408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46408 := by
  apply coveredState_split_literal (state := state_46408) 4
    state_46409 state_47660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46409
  · exact cover_47660
#print axioms cover_46408

def state_46390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
theorem cover_46390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46390 := by
  apply coveredState_split_literal (state := state_46390) 3
    state_46391 state_46408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46391
  · exact cover_46408
#print axioms cover_46390

def state_46389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_46389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46389 := by
  apply coveredState_split_literal (state := state_46389) 2
    state_46390 state_47699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46390
  · exact cover_47699
#print axioms cover_46389

def state_46091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_46091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46091 := by
  apply coveredState_split_literal (state := state_46091) 4
    state_46092 state_46389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46092
  · exact cover_46389
#print axioms cover_46091

def state_46081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_46081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46081 := by
  apply coveredState_split_literal (state := state_46081) 3
    state_46082 state_46091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46082
  · exact cover_46091
#print axioms cover_46081

def state_45485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_45485 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45485 := by
  apply coveredState_split_literal (state := state_45485) 2
    state_45486 state_46081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45486
  · exact cover_46081
#print axioms cover_45485

def state_45484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_45484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45484 := by
  apply coveredState_split_literal (state := state_45484) 1
    state_45485 state_47750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45485
  · exact cover_47750
#print axioms cover_45484

def state_45483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_45483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45483 := by
  apply coveredState_split_literal (state := state_45483) 0
    state_45484 state_47987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45484
  · exact cover_47987
#print axioms cover_45483

def state_49297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 13)))
theorem cover_49297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49297 := by
  apply coveredState_split_literal (state := state_49297) 4
    state_49298 state_49665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49298
  · exact cover_49665
#print axioms cover_49297

def state_49261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 13)))
theorem cover_49261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49261 := by
  apply coveredState_split_literal (state := state_49261) 3
    state_49262 state_49297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49262
  · exact cover_49297
#print axioms cover_49261

def state_49260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
theorem cover_49260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49260 := by
  apply coveredState_split_literal (state := state_49260) 2
    state_49261 state_50422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49261
  · exact cover_50422
#print axioms cover_49260

def state_49212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
theorem cover_49212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49212 := by
  apply coveredState_split_literal (state := state_49212) 1
    state_49213 state_49260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49213
  · exact cover_49260
#print axioms cover_49212

def state_49106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
theorem cover_49106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49106 := by
  apply coveredState_split_literal (state := state_49106) 0
    state_49107 state_49212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49107
  · exact cover_49212
#print axioms cover_49106
end Mub6.Numerical.CircleFullPrototype.Forest
