import CircleFullInterface
import CircleForestAssembly0279
import CircleForestChunk1071
import CircleForestChunk1072
import CircleForestChunk1073
import CircleForestChunk1074
import CircleForestChunk1075
import CircleForestChunk1076
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1557717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 43)))
theorem cover_1557717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557717 := by
  apply coveredState_split_literal (state := state_1557717) 2
    state_1557718 state_1557743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557718
  · exact cover_1557743
#print axioms cover_1557717

def state_1557716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 43)))
theorem cover_1557716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557716 := by
  apply coveredState_split_literal (state := state_1557716) 0
    state_1557717 state_1557844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557717
  · exact cover_1557844
#print axioms cover_1557716

def state_1557715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 43)))
theorem cover_1557715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557715 := by
  apply coveredState_split_literal (state := state_1557715) 1
    state_1557716 state_1557881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557716
  · exact cover_1557881
#print axioms cover_1557715

def state_1557701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 21)))
theorem cover_1557701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557701 := by
  apply coveredState_split_literal (state := state_1557701) 4
    state_1557702 state_1557715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557702
  · exact cover_1557715
#print axioms cover_1557701

def state_1557700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 21 else 21)))
theorem cover_1557700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557700 := by
  apply coveredState_split_literal (state := state_1557700) 3
    state_1557701 state_1557910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557701
  · exact cover_1557910
#print axioms cover_1557700

def state_1557955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 86)))
theorem cover_1557955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557955 := by
  apply coveredState_split_literal (state := state_1557955) 2
    state_1557956 state_1558001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557956
  · exact cover_1558001
#print axioms cover_1557955

def state_1558091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 87)))
theorem cover_1558091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558091 := by
  apply coveredState_split_literal (state := state_1558091) 4
    state_1558092 state_1558107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558092
  · exact cover_1558107
#print axioms cover_1558091

def state_1558090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 121) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 87)))
theorem cover_1558090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558090 := by
  apply coveredState_split_literal (state := state_1558090) 0
    state_1558091 state_1558164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558091
  · exact cover_1558164
#print axioms cover_1558090

def state_1558036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 87)))
theorem cover_1558036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558036 := by
  apply coveredState_split_literal (state := state_1558036) 1
    state_1558037 state_1558090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558037
  · exact cover_1558090
#print axioms cover_1558036

def state_1558035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 106 else (if j.val < 4 then 42 else 87)))
theorem cover_1558035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558035 := by
  apply coveredState_split_literal (state := state_1558035) 3
    state_1558036 state_1558211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558036
  · exact cover_1558211
#print axioms cover_1558035

def state_1558218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 107 else (if j.val < 4 then 42 else 87)))
theorem cover_1558218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558218 := by
  apply coveredState_split_literal (state := state_1558218) 3
    state_1558219 state_1558270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558219
  · exact cover_1558270
#print axioms cover_1558218

def state_1558034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 87)))
theorem cover_1558034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558034 := by
  apply coveredState_split_literal (state := state_1558034) 2
    state_1558035 state_1558218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558035
  · exact cover_1558218
#print axioms cover_1558034

def state_1557954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
theorem cover_1557954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557954 := by
  apply coveredState_split_literal (state := state_1557954) 4
    state_1557955 state_1558034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557955
  · exact cover_1558034
#print axioms cover_1557954

def state_1557953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
theorem cover_1557953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557953 := by
  apply coveredState_split_literal (state := state_1557953) 0
    state_1557954 state_1558291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557954
  · exact cover_1558291
#print axioms cover_1557953

def state_1558338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
theorem cover_1558338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558338 := by
  apply coveredState_split_literal (state := state_1558338) 0
    state_1558339 state_1558392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558339
  · exact cover_1558392
#print axioms cover_1558338

def state_1557952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
theorem cover_1557952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557952 := by
  apply coveredState_split_literal (state := state_1557952) 1
    state_1557953 state_1558338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557953
  · exact cover_1558338
#print axioms cover_1557952

def state_1557918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 21)))
theorem cover_1557918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557918 := by
  apply coveredState_split_literal (state := state_1557918) 4
    state_1557919 state_1557952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557919
  · exact cover_1557952
#print axioms cover_1557918

def state_1557917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 21 else 21)))
theorem cover_1557917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557917 := by
  apply coveredState_split_literal (state := state_1557917) 3
    state_1557918 state_1558411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557918
  · exact cover_1558411
#print axioms cover_1557917

def state_1557699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
theorem cover_1557699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557699 := by
  apply coveredState_split_literal (state := state_1557699) 2
    state_1557700 state_1557917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557700
  · exact cover_1557917
#print axioms cover_1557699

def state_1557698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
theorem cover_1557698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557698 := by
  apply coveredState_split_literal (state := state_1557698) 0
    state_1557699 state_1558428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557699
  · exact cover_1558428
#print axioms cover_1557698

def state_1557697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
theorem cover_1557697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557697 := by
  apply coveredState_split_literal (state := state_1557697) 1
    state_1557698 state_1558487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557698
  · exact cover_1558487
#print axioms cover_1557697

def state_1557685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 10)))
theorem cover_1557685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557685 := by
  apply coveredState_split_literal (state := state_1557685) 4
    state_1557686 state_1557697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1557686
  · exact cover_1557697
#print axioms cover_1557685

def state_1556679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 10)))
theorem cover_1556679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556679 := by
  apply coveredState_split_literal (state := state_1556679) 3
    state_1556680 state_1557685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556680
  · exact cover_1557685
#print axioms cover_1556679

def state_1558558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 54 else (if j.val < 4 then 42 else 43)))
theorem cover_1558558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558558 := by
  apply coveredState_split_literal (state := state_1558558) 1
    state_1558559 state_1558608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558559
  · exact cover_1558608
#print axioms cover_1558558

def state_1558557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 42 else 43)))
theorem cover_1558557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558557 := by
  apply coveredState_split_literal (state := state_1558557) 2
    state_1558558 state_1558625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558558
  · exact cover_1558625
#print axioms cover_1558557

def state_1558541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 42 else 21)))
theorem cover_1558541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558541 := by
  apply coveredState_split_literal (state := state_1558541) 4
    state_1558542 state_1558557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558542
  · exact cover_1558557
#print axioms cover_1558541

def state_1558540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 21)))
theorem cover_1558540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558540 := by
  apply coveredState_split_literal (state := state_1558540) 3
    state_1558541 state_1558630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558541
  · exact cover_1558630
#print axioms cover_1558540

def state_1558539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 21)))
theorem cover_1558539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558539 := by
  apply coveredState_split_literal (state := state_1558539) 0
    state_1558540 state_1558693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558540
  · exact cover_1558693
#print axioms cover_1558539

def state_1558538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 21)))
theorem cover_1558538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558538 := by
  apply coveredState_split_literal (state := state_1558538) 1
    state_1558539 state_1558726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558539
  · exact cover_1558726
#print axioms cover_1558538

def state_1558528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 10)))
theorem cover_1558528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558528 := by
  apply coveredState_split_literal (state := state_1558528) 4
    state_1558529 state_1558538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558529
  · exact cover_1558538
#print axioms cover_1558528

def state_1558510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 10)))
theorem cover_1558510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558510 := by
  apply coveredState_split_literal (state := state_1558510) 3
    state_1558511 state_1558528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558511
  · exact cover_1558528
#print axioms cover_1558510

def state_1556678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
theorem cover_1556678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556678 := by
  apply coveredState_split_literal (state := state_1556678) 2
    state_1556679 state_1558510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556679
  · exact cover_1558510
#print axioms cover_1556678
end Mub6.Numerical.CircleFullD0.Forest
