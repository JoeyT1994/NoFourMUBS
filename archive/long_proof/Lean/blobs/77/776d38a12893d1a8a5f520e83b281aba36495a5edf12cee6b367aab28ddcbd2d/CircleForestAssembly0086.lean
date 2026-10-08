import CircleFullInterface
import CircleForestAssembly0085
import CircleForestChunk0343
import CircleForestChunk0344
import CircleForestChunk0345
import CircleForestChunk0346
import CircleForestChunk0347
import CircleForestChunk0348
import CircleForestChunk0349
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1019849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
theorem cover_1019849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019849 := by
  apply coveredState_split_literal (state := state_1019849) 1
    state_1019850 state_1019953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019850
  · exact cover_1019953
#print axioms cover_1019849

def state_1019848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 49)))
theorem cover_1019848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019848 := by
  apply coveredState_split_literal (state := state_1019848) 2
    state_1019849 state_1019966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019849
  · exact cover_1019966
#print axioms cover_1019848

def state_1019828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 49)))
theorem cover_1019828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019828 := by
  apply coveredState_split_literal (state := state_1019828) 3
    state_1019829 state_1019848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019829
  · exact cover_1019848
#print axioms cover_1019828

def state_1019796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 24)))
theorem cover_1019796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019796 := by
  apply coveredState_split_literal (state := state_1019796) 4
    state_1019797 state_1019828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019797
  · exact cover_1019828
#print axioms cover_1019796

def state_1020060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
theorem cover_1020060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020060 := by
  apply coveredState_split_literal (state := state_1020060) 4
    state_1020061 state_1020098
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020061
  · exact cover_1020098
#print axioms cover_1020060

def state_1020059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
theorem cover_1020059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020059 := by
  apply coveredState_split_literal (state := state_1020059) 0
    state_1020060 state_1020153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020060
  · exact cover_1020153
#print axioms cover_1020059

def state_1020160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 61) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
theorem cover_1020160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020160 := by
  apply coveredState_split_literal (state := state_1020160) 0
    state_1020161 state_1020222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020161
  · exact cover_1020222
#print axioms cover_1020160

def state_1020058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
theorem cover_1020058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020058 := by
  apply coveredState_split_literal (state := state_1020058) 1
    state_1020059 state_1020160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020059
  · exact cover_1020160
#print axioms cover_1020058

def state_1020229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 60) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 49)))
theorem cover_1020229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020229 := by
  apply coveredState_split_literal (state := state_1020229) 4
    state_1020230 state_1020263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020230
  · exact cover_1020263
#print axioms cover_1020229

def state_1020228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 60) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 49)))
theorem cover_1020228 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020228 := by
  apply coveredState_split_literal (state := state_1020228) 0
    state_1020229 state_1020312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020229
  · exact cover_1020312
#print axioms cover_1020228

def state_1020227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 49)))
theorem cover_1020227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020227 := by
  apply coveredState_split_literal (state := state_1020227) 1
    state_1020228 state_1020329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020228
  · exact cover_1020329
#print axioms cover_1020227

def state_1020057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 49)))
theorem cover_1020057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020057 := by
  apply coveredState_split_literal (state := state_1020057) 2
    state_1020058 state_1020227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020058
  · exact cover_1020227
#print axioms cover_1020057

def state_1020023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 49)))
theorem cover_1020023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020023 := by
  apply coveredState_split_literal (state := state_1020023) 3
    state_1020024 state_1020057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020024
  · exact cover_1020057
#print axioms cover_1020023

def state_1020003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 24)))
theorem cover_1020003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020003 := by
  apply coveredState_split_literal (state := state_1020003) 4
    state_1020004 state_1020023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020004
  · exact cover_1020023
#print axioms cover_1020003

def state_1019795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 24)))
theorem cover_1019795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019795 := by
  apply coveredState_split_literal (state := state_1019795) 0
    state_1019796 state_1020003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019796
  · exact cover_1020003
#print axioms cover_1019795

def state_1019794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 24)))
theorem cover_1019794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019794 := by
  apply coveredState_split_literal (state := state_1019794) 1
    state_1019795 state_1020390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019795
  · exact cover_1020390
#print axioms cover_1019794

def state_1019793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 24)))
theorem cover_1019793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019793 := by
  apply coveredState_split_literal (state := state_1019793) 2
    state_1019794 state_1020421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019794
  · exact cover_1020421
#print axioms cover_1019793

def state_1020484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 50)))
theorem cover_1020484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020484 := by
  apply coveredState_split_literal (state := state_1020484) 2
    state_1020485 state_1020542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020485
  · exact cover_1020542
#print axioms cover_1020484

def state_1020483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 25)))
theorem cover_1020483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020483 := by
  apply coveredState_split_literal (state := state_1020483) 4
    state_1020484 state_1020557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020484
  · exact cover_1020557
#print axioms cover_1020483

def state_1020455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1020455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020455 := by
  apply coveredState_split_literal (state := state_1020455) 3
    state_1020456 state_1020483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020456
  · exact cover_1020483
#print axioms cover_1020455

def state_1020628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 100)))
theorem cover_1020628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020628 := by
  apply coveredState_split_literal (state := state_1020628) 3
    state_1020629 state_1020654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020629
  · exact cover_1020654
#print axioms cover_1020628

def state_1020627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
theorem cover_1020627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020627 := by
  apply coveredState_split_literal (state := state_1020627) 4
    state_1020628 state_1020701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020628
  · exact cover_1020701
#print axioms cover_1020627

def state_1020626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 61) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
theorem cover_1020626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020626 := by
  apply coveredState_split_literal (state := state_1020626) 0
    state_1020627 state_1020732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020627
  · exact cover_1020732
#print axioms cover_1020626

def state_1020604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
theorem cover_1020604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020604 := by
  apply coveredState_split_literal (state := state_1020604) 1
    state_1020605 state_1020626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020605
  · exact cover_1020626
#print axioms cover_1020604

def state_1020868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 123) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 100)))
theorem cover_1020868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020868 := by
  apply coveredState_split_literal (state := state_1020868) 4
    state_1020869 state_1020892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020869
  · exact cover_1020892
#print axioms cover_1020868

def state_1020856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 123) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 100)))
theorem cover_1020856 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020856 := by
  apply coveredState_split_literal (state := state_1020856) 0
    state_1020857 state_1020868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020857
  · exact cover_1020868
#print axioms cover_1020856

def state_1020812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 100)))
theorem cover_1020812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020812 := by
  apply coveredState_split_literal (state := state_1020812) 1
    state_1020813 state_1020856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020813
  · exact cover_1020856
#print axioms cover_1020812

def state_1020811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 100)))
theorem cover_1020811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020811 := by
  apply coveredState_split_literal (state := state_1020811) 2
    state_1020812 state_1020945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020812
  · exact cover_1020945
#print axioms cover_1020811

def state_1020783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 100)))
theorem cover_1020783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020783 := by
  apply coveredState_split_literal (state := state_1020783) 3
    state_1020784 state_1020811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020784
  · exact cover_1020811
#print axioms cover_1020783

def state_1020782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
theorem cover_1020782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020782 := by
  apply coveredState_split_literal (state := state_1020782) 4
    state_1020783 state_1020978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020783
  · exact cover_1020978
#print axioms cover_1020782

def state_1021042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 100)))
theorem cover_1021042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021042 := by
  apply coveredState_split_literal (state := state_1021042) 3
    state_1021043 state_1021064
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021043
  · exact cover_1021064
#print axioms cover_1021042

def state_1021123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 101)))
theorem cover_1021123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021123 := by
  apply coveredState_split_literal (state := state_1021123) 3
    state_1021124 state_1021139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021124
  · exact cover_1021139
#print axioms cover_1021123
end Mub6.Numerical.CircleFullD0.Forest
