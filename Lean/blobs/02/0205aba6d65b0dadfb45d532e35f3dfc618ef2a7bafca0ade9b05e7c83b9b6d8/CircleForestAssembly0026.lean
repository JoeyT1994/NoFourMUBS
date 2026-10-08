import CircleFullInterface
import CircleForestAssembly0025
import CircleForestChunk0101
import CircleForestChunk0102
import CircleForestChunk0103
import CircleForestChunk0104
import CircleForestChunk0105
import CircleForestChunk0106
import CircleForestChunk0107
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_45897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 10)))
theorem cover_45897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45897 := by
  apply coveredState_split_literal (state := state_45897) 3
    state_45898 state_45907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45898
  · exact cover_45907
#print axioms cover_45897

def state_45895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 10)))
theorem cover_45895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45895 := by
  apply coveredState_split_literal (state := state_45895) 2
    state_45896 state_45897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45896
  · exact cover_45897
#print axioms cover_45895

def state_45861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 10)))
theorem cover_45861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45861 := by
  apply coveredState_split_literal (state := state_45861) 1
    state_45862 state_45895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45862
  · exact cover_45895
#print axioms cover_45861

def state_45805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 10)))
theorem cover_45805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45805 := by
  apply coveredState_split_literal (state := state_45805) 0
    state_45806 state_45861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45806
  · exact cover_45861
#print axioms cover_45805

def state_45804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 5)))
theorem cover_45804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45804 := by
  apply coveredState_split_literal (state := state_45804) 4
    state_45805 state_46030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45805
  · exact cover_46030
#print axioms cover_45804

def state_45780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_45780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45780 := by
  apply coveredState_split_literal (state := state_45780) 3
    state_45781 state_45804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45781
  · exact cover_45804
#print axioms cover_45780

def state_45512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
theorem cover_45512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45512 := by
  apply coveredState_split_literal (state := state_45512) 4
    state_45513 state_45780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45513
  · exact cover_45780
#print axioms cover_45512

def state_45486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_45486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45486 := by
  apply coveredState_split_literal (state := state_45486) 3
    state_45487 state_45512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45487
  · exact cover_45512
#print axioms cover_45486

def state_46108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 4)))
theorem cover_46108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46108 := by
  apply coveredState_split_literal (state := state_46108) 1
    state_46109 state_46144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46109
  · exact cover_46144
#print axioms cover_46108

def state_46211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 9)))
theorem cover_46211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46211 := by
  apply coveredState_split_literal (state := state_46211) 1
    state_46212 state_46255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46212
  · exact cover_46255
#print axioms cover_46211

def state_46210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 9)))
theorem cover_46210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46210 := by
  apply coveredState_split_literal (state := state_46210) 0
    state_46211 state_46304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46211
  · exact cover_46304
#print axioms cover_46210

def state_46209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 9)))
theorem cover_46209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46209 := by
  apply coveredState_split_literal (state := state_46209) 2
    state_46210 state_46315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46210
  · exact cover_46315
#print axioms cover_46209

def state_46199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 9)))
theorem cover_46199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46199 := by
  apply coveredState_split_literal (state := state_46199) 3
    state_46200 state_46209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46200
  · exact cover_46209
#print axioms cover_46199

def state_46197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 4)))
theorem cover_46197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46197 := by
  apply coveredState_split_literal (state := state_46197) 4
    state_46198 state_46199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46198
  · exact cover_46199
#print axioms cover_46197

def state_46177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 4)))
theorem cover_46177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46177 := by
  apply coveredState_split_literal (state := state_46177) 1
    state_46178 state_46197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46178
  · exact cover_46197
#print axioms cover_46177

def state_46107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 4)))
theorem cover_46107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46107 := by
  apply coveredState_split_literal (state := state_46107) 0
    state_46108 state_46177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46108
  · exact cover_46177
#print axioms cover_46107

def state_46093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 4)))
theorem cover_46093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46093 := by
  apply coveredState_split_literal (state := state_46093) 3
    state_46094 state_46107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46094
  · exact cover_46107
#print axioms cover_46093

def state_46092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_46092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46092 := by
  apply coveredState_split_literal (state := state_46092) 2
    state_46093 state_46332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46093
  · exact cover_46332
#print axioms cover_46092

def state_46576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 37) else (if j.val < 3 then 40 else (if j.val < 4 then 47 else 20)))
theorem cover_46576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46576 := by
  apply coveredState_split_literal (state := state_46576) 4
    state_46577 state_46634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46577
  · exact cover_46634
#print axioms cover_46576

def state_46575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 37) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_46575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46575 := by
  apply coveredState_split_literal (state := state_46575) 2
    state_46576 state_46653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46576
  · exact cover_46653
#print axioms cover_46575

def state_46555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_46555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46555 := by
  apply coveredState_split_literal (state := state_46555) 1
    state_46556 state_46575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46556
  · exact cover_46575
#print axioms cover_46555

def state_46535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_46535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46535 := by
  apply coveredState_split_literal (state := state_46535) 0
    state_46536 state_46555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46536
  · exact cover_46555
#print axioms cover_46535

def state_46505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
theorem cover_46505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46505 := by
  apply coveredState_split_literal (state := state_46505) 3
    state_46506 state_46535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46506
  · exact cover_46535
#print axioms cover_46505

def state_46719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 38) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 20)))
theorem cover_46719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46719 := by
  apply coveredState_split_literal (state := state_46719) 4
    state_46720 state_46771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46720
  · exact cover_46771
#print axioms cover_46719

def state_46689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 38) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_46689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46689 := by
  apply coveredState_split_literal (state := state_46689) 2
    state_46690 state_46719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46690
  · exact cover_46719
#print axioms cover_46689

def state_46683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 38) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_46683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46683 := by
  apply coveredState_split_literal (state := state_46683) 0
    state_46684 state_46689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46684
  · exact cover_46689
#print axioms cover_46683

def state_46682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_46682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46682 := by
  apply coveredState_split_literal (state := state_46682) 1
    state_46683 state_46798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46683
  · exact cover_46798
#print axioms cover_46682

def state_46674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
theorem cover_46674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46674 := by
  apply coveredState_split_literal (state := state_46674) 3
    state_46675 state_46682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46675
  · exact cover_46682
#print axioms cover_46674

def state_46504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
theorem cover_46504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46504 := by
  apply coveredState_split_literal (state := state_46504) 1
    state_46505 state_46674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46505
  · exact cover_46674
#print axioms cover_46504

def state_46838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 37) else (if j.val < 3 then 40 else (if j.val < 4 then 47 else 20)))
theorem cover_46838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46838 := by
  apply coveredState_split_literal (state := state_46838) 4
    state_46839 state_46854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46839
  · exact cover_46854
#print axioms cover_46838

def state_46837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 37) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_46837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46837 := by
  apply coveredState_split_literal (state := state_46837) 2
    state_46838 state_46905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46838
  · exact cover_46905
#print axioms cover_46837

def state_46829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_46829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46829 := by
  apply coveredState_split_literal (state := state_46829) 1
    state_46830 state_46837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46830
  · exact cover_46837
#print axioms cover_46829
end Mub6.Numerical.CircleFullPrototype.Forest
