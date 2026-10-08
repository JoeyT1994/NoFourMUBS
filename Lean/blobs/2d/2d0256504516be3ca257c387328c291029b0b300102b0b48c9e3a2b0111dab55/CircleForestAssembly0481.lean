import CircleFullInterface
import CircleForestAssembly0443
import CircleForestAssembly0471
import CircleForestAssembly0480
import CircleForestChunk1854
import CircleForestChunk1895
import CircleForestChunk1896
import CircleForestChunk1897
import CircleForestChunk1898
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2328087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 88 else (if j.val < 4 then 63 else 44)))
theorem cover_2328087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328087 := by
  apply coveredState_split_literal (state := state_2328087) 4
    state_2328088 state_2328177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328088
  · exact cover_2328177
#print axioms cover_2328087

def state_2328086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 44)))
theorem cover_2328086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328086 := by
  apply coveredState_split_literal (state := state_2328086) 2
    state_2328087 state_2328196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328087
  · exact cover_2328196
#print axioms cover_2328086

def state_2328068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 44)))
theorem cover_2328068 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328068 := by
  apply coveredState_split_literal (state := state_2328068) 0
    state_2328069 state_2328086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328069
  · exact cover_2328086
#print axioms cover_2328068

def state_2328002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 44)))
theorem cover_2328002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328002 := by
  apply coveredState_split_literal (state := state_2328002) 3
    state_2328003 state_2328068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328003
  · exact cover_2328068
#print axioms cover_2328002

def state_2327978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 44)))
theorem cover_2327978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327978 := by
  apply coveredState_split_literal (state := state_2327978) 1
    state_2327979 state_2328002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327979
  · exact cover_2328002
#print axioms cover_2327978

def state_2327977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 22)))
theorem cover_2327977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327977 := by
  apply coveredState_split_literal (state := state_2327977) 4
    state_2327978 state_2328211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327978
  · exact cover_2328211
#print axioms cover_2327977

def state_2327976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
theorem cover_2327976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327976 := by
  apply coveredState_split_literal (state := state_2327976) 2
    state_2327977 state_2328218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327977
  · exact cover_2328218
#print axioms cover_2327976

def state_2327968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
theorem cover_2327968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327968 := by
  apply coveredState_split_literal (state := state_2327968) 0
    state_2327969 state_2327976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327969
  · exact cover_2327976
#print axioms cover_2327968

def state_2327936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 22)))
theorem cover_2327936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327936 := by
  apply coveredState_split_literal (state := state_2327936) 3
    state_2327937 state_2327968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327937
  · exact cover_2327968
#print axioms cover_2327936

def state_2328314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 44)))
theorem cover_2328314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328314 := by
  apply coveredState_split_literal (state := state_2328314) 2
    state_2328315 state_2328378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328315
  · exact cover_2328378
#print axioms cover_2328314

def state_2328300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 44)))
theorem cover_2328300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328300 := by
  apply coveredState_split_literal (state := state_2328300) 0
    state_2328301 state_2328314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328301
  · exact cover_2328314
#print axioms cover_2328300

def state_2328264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 44)))
theorem cover_2328264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328264 := by
  apply coveredState_split_literal (state := state_2328264) 3
    state_2328265 state_2328300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328265
  · exact cover_2328300
#print axioms cover_2328264

def state_2328263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 44)))
theorem cover_2328263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328263 := by
  apply coveredState_split_literal (state := state_2328263) 1
    state_2328264 state_2328407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328264
  · exact cover_2328407
#print axioms cover_2328263

def state_2328262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 22)))
theorem cover_2328262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328262 := by
  apply coveredState_split_literal (state := state_2328262) 4
    state_2328263 state_2328416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328263
  · exact cover_2328416
#print axioms cover_2328262

def state_2328261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
theorem cover_2328261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328261 := by
  apply coveredState_split_literal (state := state_2328261) 2
    state_2328262 state_2328445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328262
  · exact cover_2328445
#print axioms cover_2328261

def state_2328253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
theorem cover_2328253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328253 := by
  apply coveredState_split_literal (state := state_2328253) 0
    state_2328254 state_2328261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328254
  · exact cover_2328261
#print axioms cover_2328253

def state_2328223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 22)))
theorem cover_2328223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328223 := by
  apply coveredState_split_literal (state := state_2328223) 3
    state_2328224 state_2328253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328224
  · exact cover_2328253
#print axioms cover_2328223

def state_2327935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 22)))
theorem cover_2327935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327935 := by
  apply coveredState_split_literal (state := state_2327935) 1
    state_2327936 state_2328223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327936
  · exact cover_2328223
#print axioms cover_2327935

def state_2327934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 11)))
theorem cover_2327934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327934 := by
  apply coveredState_split_literal (state := state_2327934) 4
    state_2327935 state_2328452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327935
  · exact cover_2328452
#print axioms cover_2327934

def state_2327933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 11)))
theorem cover_2327933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327933 := by
  apply coveredState_split_literal (state := state_2327933) 2
    state_2327934 state_2328461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327934
  · exact cover_2328461
#print axioms cover_2327933

def state_2327925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 11)))
theorem cover_2327925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327925 := by
  apply coveredState_split_literal (state := state_2327925) 0
    state_2327926 state_2327933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327926
  · exact cover_2327933
#print axioms cover_2327925

def state_2327883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
theorem cover_2327883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327883 := by
  apply coveredState_split_literal (state := state_2327883) 3
    state_2327884 state_2327925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327884
  · exact cover_2327925
#print axioms cover_2327883

def state_2327882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
theorem cover_2327882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327882 := by
  apply coveredState_split_literal (state := state_2327882) 1
    state_2327883 state_2328466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327883
  · exact cover_2328466
#print axioms cover_2327882

def state_2327442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 5)))
theorem cover_2327442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327442 := by
  apply coveredState_split_literal (state := state_2327442) 4
    state_2327443 state_2327882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327443
  · exact cover_2327882
#print axioms cover_2327442

def state_2318172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2318172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318172 := by
  apply coveredState_split_literal (state := state_2318172) 2
    state_2318173 state_2327442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318173
  · exact cover_2327442
#print axioms cover_2318172

def state_2318108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2318108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318108 := by
  apply coveredState_split_literal (state := state_2318108) 0
    state_2318109 state_2318172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318109
  · exact cover_2318172
#print axioms cover_2318108

def state_2318060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_2318060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318060 := by
  apply coveredState_split_literal (state := state_2318060) 4
    state_2318061 state_2318108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2318061
  · exact cover_2318108
#print axioms cover_2318060

def state_2317882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2317882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317882 := by
  apply coveredState_split_literal (state := state_2317882) 3
    state_2317883 state_2318060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317883
  · exact cover_2318060
#print axioms cover_2317882

def state_2317518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2317518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317518 := by
  apply coveredState_split_literal (state := state_2317518) 2
    state_2317519 state_2317882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317519
  · exact cover_2317882
#print axioms cover_2317518

def state_2289766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2289766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289766 := by
  apply coveredState_split_literal (state := state_2289766) 1
    state_2289767 state_2317518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289767
  · exact cover_2317518
#print axioms cover_2289766

def state_2287150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2287150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287150 := by
  apply coveredState_split_literal (state := state_2287150) 0
    state_2287151 state_2289766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287151
  · exact cover_2289766
#print axioms cover_2287150

def state_2328650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 48)))
theorem cover_2328650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328650 := by
  apply coveredState_split_literal (state := state_2328650) 2
    state_2328651 state_2328700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328651
  · exact cover_2328700
#print axioms cover_2328650
end Mub6.Numerical.CircleFullD0.Forest
