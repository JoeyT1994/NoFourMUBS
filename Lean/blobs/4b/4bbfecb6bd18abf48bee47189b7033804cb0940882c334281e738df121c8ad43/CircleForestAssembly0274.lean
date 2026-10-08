import CircleFullInterface
import CircleForestAssembly0273
import CircleForestChunk1049
import CircleForestChunk1050
import CircleForestChunk1051
import CircleForestChunk1052
import CircleForestChunk1053
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1552226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 118) else (if j.val < 3 then 208 else (if j.val < 4 then 82 else 85)))
theorem cover_1552226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552226 := by
  apply coveredState_split_literal (state := state_1552226) 4
    state_1552227 state_1552258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552227
  · exact cover_1552258
#print axioms cover_1552226

def state_1552225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 118) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 85)))
theorem cover_1552225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552225 := by
  apply coveredState_split_literal (state := state_1552225) 2
    state_1552226 state_1552299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552226
  · exact cover_1552299
#print axioms cover_1552225

def state_1552207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 118) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 85)))
theorem cover_1552207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552207 := by
  apply coveredState_split_literal (state := state_1552207) 0
    state_1552208 state_1552225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552208
  · exact cover_1552225
#print axioms cover_1552207

def state_1552206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 118) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 85)))
theorem cover_1552206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552206 := by
  apply coveredState_split_literal (state := state_1552206) 3
    state_1552207 state_1552354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552207
  · exact cover_1552354
#print axioms cover_1552206

def state_1552364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 85)))
theorem cover_1552364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552364 := by
  apply coveredState_split_literal (state := state_1552364) 0
    state_1552365 state_1552374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552365
  · exact cover_1552374
#print axioms cover_1552364

def state_1552363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 85)))
theorem cover_1552363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552363 := by
  apply coveredState_split_literal (state := state_1552363) 3
    state_1552364 state_1552431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552364
  · exact cover_1552431
#print axioms cover_1552363

def state_1552205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 85)))
theorem cover_1552205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552205 := by
  apply coveredState_split_literal (state := state_1552205) 1
    state_1552206 state_1552363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552206
  · exact cover_1552363
#print axioms cover_1552205

def state_1552181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 42)))
theorem cover_1552181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552181 := by
  apply coveredState_split_literal (state := state_1552181) 4
    state_1552182 state_1552205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552182
  · exact cover_1552205
#print axioms cover_1552181

def state_1552463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 118) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 85)))
theorem cover_1552463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552463 := by
  apply coveredState_split_literal (state := state_1552463) 3
    state_1552464 state_1552491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552464
  · exact cover_1552491
#print axioms cover_1552463

def state_1552462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 85)))
theorem cover_1552462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552462 := by
  apply coveredState_split_literal (state := state_1552462) 1
    state_1552463 state_1552534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552463
  · exact cover_1552534
#print axioms cover_1552462

def state_1552432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 42)))
theorem cover_1552432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552432 := by
  apply coveredState_split_literal (state := state_1552432) 4
    state_1552433 state_1552462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552433
  · exact cover_1552462
#print axioms cover_1552432

def state_1552180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 42)))
theorem cover_1552180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552180 := by
  apply coveredState_split_literal (state := state_1552180) 2
    state_1552181 state_1552432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552181
  · exact cover_1552432
#print axioms cover_1552180

def state_1552160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 42)))
theorem cover_1552160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552160 := by
  apply coveredState_split_literal (state := state_1552160) 0
    state_1552161 state_1552180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552161
  · exact cover_1552180
#print axioms cover_1552160

def state_1552066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 42)))
theorem cover_1552066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552066 := by
  apply coveredState_split_literal (state := state_1552066) 3
    state_1552067 state_1552160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552067
  · exact cover_1552160
#print axioms cover_1552066

def state_1551858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 42)))
theorem cover_1551858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551858 := by
  apply coveredState_split_literal (state := state_1551858) 1
    state_1551859 state_1552066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551859
  · exact cover_1552066
#print axioms cover_1551858

def state_1552605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 40 else 43)))
theorem cover_1552605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552605 := by
  apply coveredState_split_literal (state := state_1552605) 4
    state_1552606 state_1552665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552606
  · exact cover_1552665
#print axioms cover_1552605

def state_1552604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 43)))
theorem cover_1552604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552604 := by
  apply coveredState_split_literal (state := state_1552604) 2
    state_1552605 state_1552688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552605
  · exact cover_1552688
#print axioms cover_1552604

def state_1552582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 43)))
theorem cover_1552582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552582 := by
  apply coveredState_split_literal (state := state_1552582) 0
    state_1552583 state_1552604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552583
  · exact cover_1552604
#print axioms cover_1552582

def state_1552756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 208 else (if j.val < 4 then 82 else 172)))
theorem cover_1552756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552756 := by
  apply coveredState_split_literal (state := state_1552756) 1
    state_1552757 state_1552810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552757
  · exact cover_1552810
#print axioms cover_1552756

def state_1552755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 208 else (if j.val < 4 then 82 else 86)))
theorem cover_1552755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552755 := by
  apply coveredState_split_literal (state := state_1552755) 4
    state_1552756 state_1552827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552756
  · exact cover_1552827
#print axioms cover_1552755

def state_1552754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 86)))
theorem cover_1552754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552754 := by
  apply coveredState_split_literal (state := state_1552754) 2
    state_1552755 state_1552828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552755
  · exact cover_1552828
#print axioms cover_1552754

def state_1552736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 86)))
theorem cover_1552736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552736 := by
  apply coveredState_split_literal (state := state_1552736) 0
    state_1552737 state_1552754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552737
  · exact cover_1552754
#print axioms cover_1552736

def state_1552735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 86)))
theorem cover_1552735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552735 := by
  apply coveredState_split_literal (state := state_1552735) 3
    state_1552736 state_1552877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552736
  · exact cover_1552877
#print axioms cover_1552735

def state_1552709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 86)))
theorem cover_1552709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552709 := by
  apply coveredState_split_literal (state := state_1552709) 1
    state_1552710 state_1552735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552710
  · exact cover_1552735
#print axioms cover_1552709

def state_1552708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 43)))
theorem cover_1552708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552708 := by
  apply coveredState_split_literal (state := state_1552708) 4
    state_1552709 state_1552890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552709
  · exact cover_1552890
#print axioms cover_1552708

def state_1552942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 86)))
theorem cover_1552942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552942 := by
  apply coveredState_split_literal (state := state_1552942) 0
    state_1552943 state_1552956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552943
  · exact cover_1552956
#print axioms cover_1552942

def state_1552918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 86)))
theorem cover_1552918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552918 := by
  apply coveredState_split_literal (state := state_1552918) 3
    state_1552919 state_1552942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552919
  · exact cover_1552942
#print axioms cover_1552918

def state_1552898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 86)))
theorem cover_1552898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552898 := by
  apply coveredState_split_literal (state := state_1552898) 1
    state_1552899 state_1552918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552899
  · exact cover_1552918
#print axioms cover_1552898

def state_1552897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 43)))
theorem cover_1552897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552897 := by
  apply coveredState_split_literal (state := state_1552897) 4
    state_1552898 state_1553007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552898
  · exact cover_1553007
#print axioms cover_1552897

def state_1552707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 43)))
theorem cover_1552707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552707 := by
  apply coveredState_split_literal (state := state_1552707) 2
    state_1552708 state_1552897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552708
  · exact cover_1552897
#print axioms cover_1552707

def state_1552697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 43)))
theorem cover_1552697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552697 := by
  apply coveredState_split_literal (state := state_1552697) 0
    state_1552698 state_1552707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552698
  · exact cover_1552707
#print axioms cover_1552697

def state_1552581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 43)))
theorem cover_1552581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552581 := by
  apply coveredState_split_literal (state := state_1552581) 3
    state_1552582 state_1552697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552582
  · exact cover_1552697
#print axioms cover_1552581
end Mub6.Numerical.CircleFullD0.Forest
