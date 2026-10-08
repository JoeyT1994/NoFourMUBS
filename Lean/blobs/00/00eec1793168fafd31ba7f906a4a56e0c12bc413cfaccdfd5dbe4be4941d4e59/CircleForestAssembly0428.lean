import CircleFullInterface
import CircleForestAssembly0427
import CircleForestChunk1670
import CircleForestChunk1673
import CircleForestChunk1674
import CircleForestChunk1675
import CircleForestChunk1676
import CircleForestChunk1677
import CircleForestChunk1678
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2274030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2274030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274030 := by
  apply coveredState_split_literal (state := state_2274030) 1
    state_2274031 state_2274074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274031
  · exact cover_2274074
#print axioms cover_2274030

def state_2274029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2274029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274029 := by
  apply coveredState_split_literal (state := state_2274029) 0
    state_2274030 state_2274731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274030
  · exact cover_2274731
#print axioms cover_2274029

def state_2274028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 14)))
theorem cover_2274028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274028 := by
  apply coveredState_split_literal (state := state_2274028) 3
    state_2274029 state_2274786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274029
  · exact cover_2274786
#print axioms cover_2274028

def state_2274853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 22 else 28)))
theorem cover_2274853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274853 := by
  apply coveredState_split_literal (state := state_2274853) 3
    state_2274854 state_2274883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274854
  · exact cover_2274883
#print axioms cover_2274853

def state_2274852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 28)))
theorem cover_2274852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274852 := by
  apply coveredState_split_literal (state := state_2274852) 2
    state_2274853 state_2274928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274853
  · exact cover_2274928
#print axioms cover_2274852

def state_2274966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 92 else (if j.val < 4 then 89 else 58)))
theorem cover_2274966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274966 := by
  apply coveredState_split_literal (state := state_2274966) 4
    state_2274967 state_2274992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274967
  · exact cover_2274992
#print axioms cover_2274966

def state_2274948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 92 else (if j.val < 4 then 44 else 58)))
theorem cover_2274948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274948 := by
  apply coveredState_split_literal (state := state_2274948) 3
    state_2274949 state_2274966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274949
  · exact cover_2274966
#print axioms cover_2274948

def state_2274947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 58)))
theorem cover_2274947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274947 := by
  apply coveredState_split_literal (state := state_2274947) 2
    state_2274948 state_2275041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274948
  · exact cover_2275041
#print axioms cover_2274947

def state_2274937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 58)))
theorem cover_2274937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274937 := by
  apply coveredState_split_literal (state := state_2274937) 1
    state_2274938 state_2274947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274938
  · exact cover_2274947
#print axioms cover_2274937

def state_2274936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 58)))
theorem cover_2274936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274936 := by
  apply coveredState_split_literal (state := state_2274936) 0
    state_2274937 state_2275052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274937
  · exact cover_2275052
#print axioms cover_2274936

def state_2275189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 92 else (if j.val < 4 then 89 else 59)))
theorem cover_2275189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275189 := by
  apply coveredState_split_literal (state := state_2275189) 0
    state_2275190 state_2275211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275190
  · exact cover_2275211
#print axioms cover_2275189

def state_2275137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 92 else (if j.val < 4 then 44 else 59)))
theorem cover_2275137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275137 := by
  apply coveredState_split_literal (state := state_2275137) 3
    state_2275138 state_2275189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275138
  · exact cover_2275189
#print axioms cover_2275137

def state_2275136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 59)))
theorem cover_2275136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275136 := by
  apply coveredState_split_literal (state := state_2275136) 2
    state_2275137 state_2275264
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275137
  · exact cover_2275264
#print axioms cover_2275136

def state_2275108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 59)))
theorem cover_2275108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275108 := by
  apply coveredState_split_literal (state := state_2275108) 1
    state_2275109 state_2275136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275109
  · exact cover_2275136
#print axioms cover_2275108

def state_2275294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 55) else (if j.val < 3 then 92 else (if j.val < 4 then 44 else 59)))
theorem cover_2275294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275294 := by
  apply coveredState_split_literal (state := state_2275294) 3
    state_2275295 state_2275346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275295
  · exact cover_2275346
#print axioms cover_2275294

def state_2275293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 55) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 59)))
theorem cover_2275293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275293 := by
  apply coveredState_split_literal (state := state_2275293) 2
    state_2275294 state_2275407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275294
  · exact cover_2275407
#print axioms cover_2275293

def state_2275285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 59)))
theorem cover_2275285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275285 := by
  apply coveredState_split_literal (state := state_2275285) 1
    state_2275286 state_2275293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275286
  · exact cover_2275293
#print axioms cover_2275285

def state_2275107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 59)))
theorem cover_2275107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275107 := by
  apply coveredState_split_literal (state := state_2275107) 0
    state_2275108 state_2275285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275108
  · exact cover_2275285
#print axioms cover_2275107

def state_2274935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 29)))
theorem cover_2274935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274935 := by
  apply coveredState_split_literal (state := state_2274935) 4
    state_2274936 state_2275107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274936
  · exact cover_2275107
#print axioms cover_2274935

def state_2275468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 58)))
theorem cover_2275468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275468 := by
  apply coveredState_split_literal (state := state_2275468) 1
    state_2275469 state_2275482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275469
  · exact cover_2275482
#print axioms cover_2275468

def state_2275467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 58)))
theorem cover_2275467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275467 := by
  apply coveredState_split_literal (state := state_2275467) 0
    state_2275468 state_2275537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275468
  · exact cover_2275537
#print axioms cover_2275467

def state_2275550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 59)))
theorem cover_2275550 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275550 := by
  apply coveredState_split_literal (state := state_2275550) 0
    state_2275551 state_2275600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275551
  · exact cover_2275600
#print axioms cover_2275550

def state_2275466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 29)))
theorem cover_2275466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275466 := by
  apply coveredState_split_literal (state := state_2275466) 4
    state_2275467 state_2275550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275467
  · exact cover_2275550
#print axioms cover_2275466

def state_2274934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 22 else 29)))
theorem cover_2274934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274934 := by
  apply coveredState_split_literal (state := state_2274934) 3
    state_2274935 state_2275466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274935
  · exact cover_2275466
#print axioms cover_2274934

def state_2274933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 29)))
theorem cover_2274933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274933 := by
  apply coveredState_split_literal (state := state_2274933) 2
    state_2274934 state_2275627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274934
  · exact cover_2275627
#print axioms cover_2274933

def state_2274851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
theorem cover_2274851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274851 := by
  apply coveredState_split_literal (state := state_2274851) 4
    state_2274852 state_2274933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274852
  · exact cover_2274933
#print axioms cover_2274851

def state_2274843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
theorem cover_2274843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274843 := by
  apply coveredState_split_literal (state := state_2274843) 1
    state_2274844 state_2274851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274844
  · exact cover_2274851
#print axioms cover_2274843

def state_2274842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
theorem cover_2274842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274842 := by
  apply coveredState_split_literal (state := state_2274842) 0
    state_2274843 state_2275664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274843
  · exact cover_2275664
#print axioms cover_2274842

def state_2274841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 14)))
theorem cover_2274841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274841 := by
  apply coveredState_split_literal (state := state_2274841) 3
    state_2274842 state_2275711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274842
  · exact cover_2275711
#print axioms cover_2274841

def state_2274027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 14)))
theorem cover_2274027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274027 := by
  apply coveredState_split_literal (state := state_2274027) 2
    state_2274028 state_2274841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274028
  · exact cover_2274841
#print axioms cover_2274027

def state_2275824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
theorem cover_2275824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275824 := by
  apply coveredState_split_literal (state := state_2275824) 1
    state_2275825 state_2275838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275825
  · exact cover_2275838
#print axioms cover_2275824

def state_2275926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 55) else (if j.val < 3 then 93 else (if j.val < 4 then 44 else 60)))
theorem cover_2275926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275926 := by
  apply coveredState_split_literal (state := state_2275926) 3
    state_2275927 state_2275972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275927
  · exact cover_2275972
#print axioms cover_2275926
end Mub6.Numerical.CircleFullD0.Forest
