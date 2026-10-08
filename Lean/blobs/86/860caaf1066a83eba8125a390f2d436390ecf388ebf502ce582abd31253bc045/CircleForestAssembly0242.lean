import CircleFullInterface
import CircleForestAssembly0241
import CircleForestChunk0921
import CircleForestChunk0922
import CircleForestChunk0923
import CircleForestChunk0924
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1521619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 43)))
theorem cover_1521619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521619 := by
  apply coveredState_split_literal (state := state_1521619) 3
    state_1521620 state_1521649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521620
  · exact cover_1521649
#print axioms cover_1521619

def state_1521611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 43)))
theorem cover_1521611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521611 := by
  apply coveredState_split_literal (state := state_1521611) 1
    state_1521612 state_1521619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521612
  · exact cover_1521619
#print axioms cover_1521611

def state_1521601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 21)))
theorem cover_1521601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521601 := by
  apply coveredState_split_literal (state := state_1521601) 4
    state_1521602 state_1521611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521602
  · exact cover_1521611
#print axioms cover_1521601

def state_1521329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 21)))
theorem cover_1521329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521329 := by
  apply coveredState_split_literal (state := state_1521329) 2
    state_1521330 state_1521601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521330
  · exact cover_1521601
#print axioms cover_1521329

def state_1521328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 21)))
theorem cover_1521328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521328 := by
  apply coveredState_split_literal (state := state_1521328) 0
    state_1521329 state_1521770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521329
  · exact cover_1521770
#print axioms cover_1521328

def state_1521822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 21)))
theorem cover_1521822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521822 := by
  apply coveredState_split_literal (state := state_1521822) 4
    state_1521823 state_1521852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521823
  · exact cover_1521852
#print axioms cover_1521822

def state_1521788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 21)))
theorem cover_1521788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521788 := by
  apply coveredState_split_literal (state := state_1521788) 2
    state_1521789 state_1521822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521789
  · exact cover_1521822
#print axioms cover_1521788

def state_1521787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 21)))
theorem cover_1521787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521787 := by
  apply coveredState_split_literal (state := state_1521787) 0
    state_1521788 state_1521913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521788
  · exact cover_1521913
#print axioms cover_1521787

def state_1521327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 21)))
theorem cover_1521327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521327 := by
  apply coveredState_split_literal (state := state_1521327) 3
    state_1521328 state_1521787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521328
  · exact cover_1521787
#print axioms cover_1521327

def state_1521952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 43)))
theorem cover_1521952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521952 := by
  apply coveredState_split_literal (state := state_1521952) 4
    state_1521953 state_1521954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521953
  · exact cover_1521954
#print axioms cover_1521952

def state_1521940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 43)))
theorem cover_1521940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521940 := by
  apply coveredState_split_literal (state := state_1521940) 2
    state_1521941 state_1521952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521941
  · exact cover_1521952
#print axioms cover_1521940

def state_1521939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 43)))
theorem cover_1521939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521939 := by
  apply coveredState_split_literal (state := state_1521939) 0
    state_1521940 state_1522017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521940
  · exact cover_1522017
#print axioms cover_1521939

def state_1522026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 87)))
theorem cover_1522026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522026 := by
  apply coveredState_split_literal (state := state_1522026) 3
    state_1522027 state_1522074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522027
  · exact cover_1522074
#print axioms cover_1522026

def state_1522025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 87)))
theorem cover_1522025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522025 := by
  apply coveredState_split_literal (state := state_1522025) 1
    state_1522026 state_1522091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522026
  · exact cover_1522091
#print axioms cover_1522025

def state_1522023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 43)))
theorem cover_1522023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522023 := by
  apply coveredState_split_literal (state := state_1522023) 4
    state_1522024 state_1522025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522024
  · exact cover_1522025
#print axioms cover_1522023

def state_1522021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 43)))
theorem cover_1522021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522021 := by
  apply coveredState_split_literal (state := state_1522021) 2
    state_1522022 state_1522023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522022
  · exact cover_1522023
#print axioms cover_1522021

def state_1522020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 43)))
theorem cover_1522020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522020 := by
  apply coveredState_split_literal (state := state_1522020) 0
    state_1522021 state_1522096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522021
  · exact cover_1522096
#print axioms cover_1522020

def state_1521938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 43)))
theorem cover_1521938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521938 := by
  apply coveredState_split_literal (state := state_1521938) 3
    state_1521939 state_1522020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521939
  · exact cover_1522020
#print axioms cover_1521938

def state_1521937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 43)))
theorem cover_1521937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521937 := by
  apply coveredState_split_literal (state := state_1521937) 1
    state_1521938 state_1522113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521938
  · exact cover_1522113
#print axioms cover_1521937

def state_1521933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 21)))
theorem cover_1521933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521933 := by
  apply coveredState_split_literal (state := state_1521933) 4
    state_1521934 state_1521937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521934
  · exact cover_1521937
#print axioms cover_1521933

def state_1522172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 87)))
theorem cover_1522172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522172 := by
  apply coveredState_split_literal (state := state_1522172) 3
    state_1522173 state_1522202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522173
  · exact cover_1522202
#print axioms cover_1522172

def state_1522171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 87)))
theorem cover_1522171 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522171 := by
  apply coveredState_split_literal (state := state_1522171) 1
    state_1522172 state_1522257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522172
  · exact cover_1522257
#print axioms cover_1522171

def state_1522167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 43)))
theorem cover_1522167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522167 := by
  apply coveredState_split_literal (state := state_1522167) 4
    state_1522168 state_1522171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522168
  · exact cover_1522171
#print axioms cover_1522167

def state_1522166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 33 else 43)))
theorem cover_1522166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522166 := by
  apply coveredState_split_literal (state := state_1522166) 2
    state_1522167 state_1522290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522167
  · exact cover_1522290
#print axioms cover_1522166

def state_1522165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 33 else 43)))
theorem cover_1522165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522165 := by
  apply coveredState_split_literal (state := state_1522165) 0
    state_1522166 state_1522313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522166
  · exact cover_1522313
#print axioms cover_1522165

def state_1522137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 43)))
theorem cover_1522137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522137 := by
  apply coveredState_split_literal (state := state_1522137) 3
    state_1522138 state_1522165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522138
  · exact cover_1522165
#print axioms cover_1522137

def state_1522136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 43)))
theorem cover_1522136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522136 := by
  apply coveredState_split_literal (state := state_1522136) 1
    state_1522137 state_1522324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522137
  · exact cover_1522324
#print axioms cover_1522136

def state_1522134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 21)))
theorem cover_1522134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522134 := by
  apply coveredState_split_literal (state := state_1522134) 4
    state_1522135 state_1522136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522135
  · exact cover_1522136
#print axioms cover_1522134

def state_1521932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 21)))
theorem cover_1521932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521932 := by
  apply coveredState_split_literal (state := state_1521932) 2
    state_1521933 state_1522134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521933
  · exact cover_1522134
#print axioms cover_1521932

def state_1521931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 21)))
theorem cover_1521931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521931 := by
  apply coveredState_split_literal (state := state_1521931) 0
    state_1521932 state_1522353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521932
  · exact cover_1522353
#print axioms cover_1521931

def state_1522428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 91 else (if j.val < 4 then 34 else 43)))
theorem cover_1522428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522428 := by
  apply coveredState_split_literal (state := state_1522428) 4
    state_1522429 state_1522438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522429
  · exact cover_1522438
#print axioms cover_1522428

def state_1522388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 34 else 43)))
theorem cover_1522388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522388 := by
  apply coveredState_split_literal (state := state_1522388) 2
    state_1522389 state_1522428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1522389
  · exact cover_1522428
#print axioms cover_1522388
end Mub6.Numerical.CircleFullD0.Forest
