import CircleFullInterface
import CircleForestAssembly0040
import CircleForestChunk0159
import CircleForestChunk0160
import CircleForestChunk0161
import CircleForestChunk0162
import CircleForestChunk0163
import CircleForestChunk0164
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_59750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
theorem cover_59750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59750 := by
  apply coveredState_split_literal (state := state_59750) 4
    state_59751 state_59792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59751
  · exact cover_59792
#print axioms cover_59750

def state_59742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
theorem cover_59742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59742 := by
  apply coveredState_split_literal (state := state_59742) 0
    state_59743 state_59750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59743
  · exact cover_59750
#print axioms cover_59742

def state_59740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 4)))
theorem cover_59740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59740 := by
  apply coveredState_split_literal (state := state_59740) 3
    state_59741 state_59742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59741
  · exact cover_59742
#print axioms cover_59740

def state_59732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_59732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59732 := by
  apply coveredState_split_literal (state := state_59732) 2
    state_59733 state_59740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59733
  · exact cover_59740
#print axioms cover_59732

def state_59731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_59731 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59731 := by
  apply coveredState_split_literal (state := state_59731) 1
    state_59732 state_59823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59732
  · exact cover_59823
#print axioms cover_59731

def state_59730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_59730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59730 := by
  apply coveredState_split_literal (state := state_59730) 4
    state_59731 state_59830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59731
  · exact cover_59830
#print axioms cover_59730

def state_59728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_59728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59728 := by
  apply coveredState_split_literal (state := state_59728) 3
    state_59729 state_59730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59729
  · exact cover_59730
#print axioms cover_59728

def state_59846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
theorem cover_59846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59846 := by
  apply coveredState_split_literal (state := state_59846) 1
    state_59847 state_59900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59847
  · exact cover_59900
#print axioms cover_59846

def state_59845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_59845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59845 := by
  apply coveredState_split_literal (state := state_59845) 4
    state_59846 state_59913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59846
  · exact cover_59913
#print axioms cover_59845

def state_59839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_59839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59839 := by
  apply coveredState_split_literal (state := state_59839) 3
    state_59840 state_59845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59840
  · exact cover_59845
#print axioms cover_59839

def state_59727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_59727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59727 := by
  apply coveredState_split_literal (state := state_59727) 2
    state_59728 state_59839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59728
  · exact cover_59839
#print axioms cover_59727

def state_57917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_57917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57917 := by
  apply coveredState_split_literal (state := state_57917) 1
    state_57918 state_59727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57918
  · exact cover_59727
#print axioms cover_57917

def state_59994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
theorem cover_59994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59994 := by
  apply coveredState_split_literal (state := state_59994) 4
    state_59995 state_60058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59995
  · exact cover_60058
#print axioms cover_59994

def state_59966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
theorem cover_59966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59966 := by
  apply coveredState_split_literal (state := state_59966) 1
    state_59967 state_59994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59967
  · exact cover_59994
#print axioms cover_59966

def state_59956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 4)))
theorem cover_59956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59956 := by
  apply coveredState_split_literal (state := state_59956) 3
    state_59957 state_59966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59957
  · exact cover_59966
#print axioms cover_59956

def state_59922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_59922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59922 := by
  apply coveredState_split_literal (state := state_59922) 2
    state_59923 state_59956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59923
  · exact cover_59956
#print axioms cover_59922

def state_59921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_59921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59921 := by
  apply coveredState_split_literal (state := state_59921) 0
    state_59922 state_60095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59922
  · exact cover_60095
#print axioms cover_59921

def state_59920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_59920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59920 := by
  apply coveredState_split_literal (state := state_59920) 4
    state_59921 state_60124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59921
  · exact cover_60124
#print axioms cover_59920

def state_59918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_59918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59918 := by
  apply coveredState_split_literal (state := state_59918) 3
    state_59919 state_59920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59919
  · exact cover_59920
#print axioms cover_59918

def state_60161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
theorem cover_60161 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60161 := by
  apply coveredState_split_literal (state := state_60161) 3
    state_60162 state_60179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60162
  · exact cover_60179
#print axioms cover_60161

def state_60160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
theorem cover_60160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60160 := by
  apply coveredState_split_literal (state := state_60160) 0
    state_60161 state_60230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60161
  · exact cover_60230
#print axioms cover_60160

def state_60159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_60159 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60159 := by
  apply coveredState_split_literal (state := state_60159) 4
    state_60160 state_60265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60160
  · exact cover_60265
#print axioms cover_60159

def state_60145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_60145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60145 := by
  apply coveredState_split_literal (state := state_60145) 3
    state_60146 state_60159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60146
  · exact cover_60159
#print axioms cover_60145

def state_59917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_59917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59917 := by
  apply coveredState_split_literal (state := state_59917) 2
    state_59918 state_60145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59918
  · exact cover_60145
#print axioms cover_59917

def state_60286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_60286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60286 := by
  apply coveredState_split_literal (state := state_60286) 2
    state_60287 state_60318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60287
  · exact cover_60318
#print axioms cover_60286

def state_59916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_59916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59916 := by
  apply coveredState_split_literal (state := state_59916) 1
    state_59917 state_60286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59917
  · exact cover_60286
#print axioms cover_59916

def state_57916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_57916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57916 := by
  apply coveredState_split_literal (state := state_57916) 0
    state_57917 state_59916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57917
  · exact cover_59916
#print axioms cover_57916

def state_57915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_57915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57915 := by
  apply coveredState_split_literal (state := state_57915) 4
    state_57916 state_60357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57916
  · exact cover_60357
#print axioms cover_57915

def state_60388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
theorem cover_60388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60388 := by
  apply coveredState_split_literal (state := state_60388) 0
    state_60389 state_60412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60389
  · exact cover_60412
#print axioms cover_60388

def state_60387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
theorem cover_60387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60387 := by
  apply coveredState_split_literal (state := state_60387) 3
    state_60388 state_60469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60388
  · exact cover_60469
#print axioms cover_60387

def state_60514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 8)))
theorem cover_60514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60514 := by
  apply coveredState_split_literal (state := state_60514) 0
    state_60515 state_60544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60515
  · exact cover_60544
#print axioms cover_60514

def state_60799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 55 else (if j.val < 4 then 48 else 17)))
theorem cover_60799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60799 := by
  apply coveredState_split_literal (state := state_60799) 4
    state_60800 state_60819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60800
  · exact cover_60819
#print axioms cover_60799
end Mub6.Numerical.CircleFullPrototype.Forest
