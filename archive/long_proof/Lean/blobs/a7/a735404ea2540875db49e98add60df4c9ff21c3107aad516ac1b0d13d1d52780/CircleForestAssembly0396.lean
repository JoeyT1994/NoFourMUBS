import CircleFullInterface
import CircleForestAssembly0395
import CircleForestChunk1540
import CircleForestChunk1541
import CircleForestChunk1542
import CircleForestChunk1543
import CircleForestChunk1544
import CircleForestChunk1545
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2243847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 32 else 44)))
theorem cover_2243847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243847 := by
  apply coveredState_split_literal (state := state_2243847) 0
    state_2243848 state_2243897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243848
  · exact cover_2243897
#print axioms cover_2243847

def state_2243846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 16 else 44)))
theorem cover_2243846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243846 := by
  apply coveredState_split_literal (state := state_2243846) 3
    state_2243847 state_2243916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243847
  · exact cover_2243916
#print axioms cover_2243846

def state_2243822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 16 else 44)))
theorem cover_2243822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243822 := by
  apply coveredState_split_literal (state := state_2243822) 2
    state_2243823 state_2243846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243823
  · exact cover_2243846
#print axioms cover_2243822

def state_2243821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 16 else 22)))
theorem cover_2243821 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243821 := by
  apply coveredState_split_literal (state := state_2243821) 4
    state_2243822 state_2243935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243822
  · exact cover_2243935
#print axioms cover_2243821

def state_2243820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 16 else 22)))
theorem cover_2243820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243820 := by
  apply coveredState_split_literal (state := state_2243820) 1
    state_2243821 state_2243944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243821
  · exact cover_2243944
#print axioms cover_2243820

def state_2243819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 16 else 22)))
theorem cover_2243819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243819 := by
  apply coveredState_split_literal (state := state_2243819) 0
    state_2243820 state_2243959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243820
  · exact cover_2243959
#print axioms cover_2243819

def state_2243818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 8 else 22)))
theorem cover_2243818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243818 := by
  apply coveredState_split_literal (state := state_2243818) 3
    state_2243819 state_2243980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243819
  · exact cover_2243980
#print axioms cover_2243818

def state_2243796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 8 else 22)))
theorem cover_2243796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243796 := by
  apply coveredState_split_literal (state := state_2243796) 2
    state_2243797 state_2243818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243797
  · exact cover_2243818
#print axioms cover_2243796

def state_2243795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 8 else 11)))
theorem cover_2243795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243795 := by
  apply coveredState_split_literal (state := state_2243795) 4
    state_2243796 state_2243995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243796
  · exact cover_2243995
#print axioms cover_2243795

def state_2243794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 8 else 11)))
theorem cover_2243794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243794 := by
  apply coveredState_split_literal (state := state_2243794) 1
    state_2243795 state_2244004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243795
  · exact cover_2244004
#print axioms cover_2243794

def state_2243793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 8 else 11)))
theorem cover_2243793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243793 := by
  apply coveredState_split_literal (state := state_2243793) 0
    state_2243794 state_2244019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243794
  · exact cover_2244019
#print axioms cover_2243793

def state_2243792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 11)))
theorem cover_2243792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243792 := by
  apply coveredState_split_literal (state := state_2243792) 3
    state_2243793 state_2244040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243793
  · exact cover_2244040
#print axioms cover_2243792

def state_2243774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 11)))
theorem cover_2243774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243774 := by
  apply coveredState_split_literal (state := state_2243774) 2
    state_2243775 state_2243792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243775
  · exact cover_2243792
#print axioms cover_2243774

def state_2243728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_2243728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243728 := by
  apply coveredState_split_literal (state := state_2243728) 4
    state_2243729 state_2243774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243729
  · exact cover_2243774
#print axioms cover_2243728

def state_2243644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_2243644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243644 := by
  apply coveredState_split_literal (state := state_2243644) 1
    state_2243645 state_2243728
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243645
  · exact cover_2243728
#print axioms cover_2243644

def state_2243436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_2243436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243436 := by
  apply coveredState_split_literal (state := state_2243436) 0
    state_2243437 state_2243644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243437
  · exact cover_2243644
#print axioms cover_2243436

def state_2243398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
theorem cover_2243398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243398 := by
  apply coveredState_split_literal (state := state_2243398) 4
    state_2243399 state_2243436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243399
  · exact cover_2243436
#print axioms cover_2243398

def state_2243397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_2243397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243397 := by
  apply coveredState_split_literal (state := state_2243397) 3
    state_2243398 state_2244049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243398
  · exact cover_2244049
#print axioms cover_2243397

def state_2243231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2243231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243231 := by
  apply coveredState_split_literal (state := state_2243231) 2
    state_2243232 state_2243397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243232
  · exact cover_2243397
#print axioms cover_2243231

def state_2243195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2243195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243195 := by
  apply coveredState_split_literal (state := state_2243195) 1
    state_2243196 state_2243231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243196
  · exact cover_2243231
#print axioms cover_2243195

def state_2243141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2243141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243141 := by
  apply coveredState_split_literal (state := state_2243141) 0
    state_2243142 state_2243195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243142
  · exact cover_2243195
#print axioms cover_2243141

def state_2244104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2244104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244104 := by
  apply coveredState_split_literal (state := state_2244104) 1
    state_2244105 state_2244120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244105
  · exact cover_2244120
#print axioms cover_2244104

def state_2244072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2244072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244072 := by
  apply coveredState_split_literal (state := state_2244072) 0
    state_2244073 state_2244104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244073
  · exact cover_2244104
#print axioms cover_2244072

def state_2243140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_2243140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243140 := by
  apply coveredState_split_literal (state := state_2243140) 4
    state_2243141 state_2244072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243141
  · exact cover_2244072
#print axioms cover_2243140

def state_2244220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2244220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244220 := by
  apply coveredState_split_literal (state := state_2244220) 1
    state_2244221 state_2244240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244221
  · exact cover_2244240
#print axioms cover_2244220

def state_2244184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2244184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244184 := by
  apply coveredState_split_literal (state := state_2244184) 0
    state_2244185 state_2244220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244185
  · exact cover_2244220
#print axioms cover_2244184

def state_2244302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2244302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244302 := by
  apply coveredState_split_literal (state := state_2244302) 1
    state_2244303 state_2244324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244303
  · exact cover_2244324
#print axioms cover_2244302

def state_2244301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2244301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244301 := by
  apply coveredState_split_literal (state := state_2244301) 0
    state_2244302 state_2244369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244302
  · exact cover_2244369
#print axioms cover_2244301

def state_2244183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_2244183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244183 := by
  apply coveredState_split_literal (state := state_2244183) 4
    state_2244184 state_2244301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244184
  · exact cover_2244301
#print axioms cover_2244183

def state_2243139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2243139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243139 := by
  apply coveredState_split_literal (state := state_2243139) 3
    state_2243140 state_2244183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243140
  · exact cover_2244183
#print axioms cover_2243139

def state_2240853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2240853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240853 := by
  apply coveredState_split_literal (state := state_2240853) 2
    state_2240854 state_2243139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240854
  · exact cover_2243139
#print axioms cover_2240853

def state_2244471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 11)))
theorem cover_2244471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244471 := by
  apply coveredState_split_literal (state := state_2244471) 1
    state_2244472 state_2244535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244472
  · exact cover_2244535
#print axioms cover_2244471
end Mub6.Numerical.CircleFullD0.Forest
