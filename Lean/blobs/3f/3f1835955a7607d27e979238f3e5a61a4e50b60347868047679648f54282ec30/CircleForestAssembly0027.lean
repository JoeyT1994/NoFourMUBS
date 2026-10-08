import CircleFullInterface
import CircleForestAssembly0026
import CircleForestChunk0103
import CircleForestChunk0105
import CircleForestChunk0106
import CircleForestChunk0107
import CircleForestChunk0108
import CircleForestChunk0109
import CircleForestChunk0110
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_46828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_46828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46828 := by
  apply coveredState_split_literal (state := state_46828) 0
    state_46829 state_46942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46829
  · exact cover_46942
#print axioms cover_46828

def state_46816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
theorem cover_46816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46816 := by
  apply coveredState_split_literal (state := state_46816) 3
    state_46817 state_46828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46817
  · exact cover_46828
#print axioms cover_46816

def state_47065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 20)))
theorem cover_47065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47065 := by
  apply coveredState_split_literal (state := state_47065) 4
    state_47066 state_47091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47066
  · exact cover_47091
#print axioms cover_47065

def state_47011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_47011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47011 := by
  apply coveredState_split_literal (state := state_47011) 2
    state_47012 state_47065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47012
  · exact cover_47065
#print axioms cover_47011

def state_47010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_47010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47010 := by
  apply coveredState_split_literal (state := state_47010) 1
    state_47011 state_47140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47011
  · exact cover_47140
#print axioms cover_47010

def state_47187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_47187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47187 := by
  apply coveredState_split_literal (state := state_47187) 1
    state_47188 state_47241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47188
  · exact cover_47241
#print axioms cover_47187

def state_47009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_47009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47009 := by
  apply coveredState_split_literal (state := state_47009) 0
    state_47010 state_47187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47010
  · exact cover_47187
#print axioms cover_47009

def state_46961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
theorem cover_46961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46961 := by
  apply coveredState_split_literal (state := state_46961) 3
    state_46962 state_47009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46962
  · exact cover_47009
#print axioms cover_46961

def state_46815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
theorem cover_46815 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46815 := by
  apply coveredState_split_literal (state := state_46815) 1
    state_46816 state_46961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46816
  · exact cover_46961
#print axioms cover_46815

def state_46503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
theorem cover_46503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46503 := by
  apply coveredState_split_literal (state := state_46503) 0
    state_46504 state_46815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46504
  · exact cover_46815
#print axioms cover_46503

def state_47337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 42)))
theorem cover_47337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47337 := by
  apply coveredState_split_literal (state := state_47337) 0
    state_47338 state_47399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47338
  · exact cover_47399
#print axioms cover_47337

def state_47336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 21)))
theorem cover_47336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47336 := by
  apply coveredState_split_literal (state := state_47336) 4
    state_47337 state_47452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47337
  · exact cover_47452
#print axioms cover_47336

def state_47324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 21)))
theorem cover_47324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47324 := by
  apply coveredState_split_literal (state := state_47324) 3
    state_47325 state_47336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47325
  · exact cover_47336
#print axioms cover_47324

def state_47312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 21)))
theorem cover_47312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47312 := by
  apply coveredState_split_literal (state := state_47312) 1
    state_47313 state_47324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47313
  · exact cover_47324
#print axioms cover_47312

def state_47286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 21)))
theorem cover_47286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47286 := by
  apply coveredState_split_literal (state := state_47286) 0
    state_47287 state_47312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47287
  · exact cover_47312
#print axioms cover_47286

def state_46502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 10)))
theorem cover_46502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46502 := by
  apply coveredState_split_literal (state := state_46502) 4
    state_46503 state_47286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_46503
  · exact cover_47286
#print axioms cover_46502

def state_47513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 42 else (if j.val < 4 then 47 else 20)))
theorem cover_47513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47513 := by
  apply coveredState_split_literal (state := state_47513) 0
    state_47514 state_47569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47514
  · exact cover_47569
#print axioms cover_47513

def state_47512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 21 else (if j.val < 4 then 47 else 20)))
theorem cover_47512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47512 := by
  apply coveredState_split_literal (state := state_47512) 2
    state_47513 state_47626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47513
  · exact cover_47626
#print axioms cover_47512

def state_47502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 20)))
theorem cover_47502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47502 := by
  apply coveredState_split_literal (state := state_47502) 3
    state_47503 state_47512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47503
  · exact cover_47512
#print axioms cover_47502

def state_47480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 20)))
theorem cover_47480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47480 := by
  apply coveredState_split_literal (state := state_47480) 1
    state_47481 state_47502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47481
  · exact cover_47502
#print axioms cover_47480

def state_47464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 20)))
theorem cover_47464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47464 := by
  apply coveredState_split_literal (state := state_47464) 0
    state_47465 state_47480
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47465
  · exact cover_47480
#print axioms cover_47464

def state_47463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 10)))
theorem cover_47463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47463 := by
  apply coveredState_split_literal (state := state_47463) 4
    state_47464 state_47637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47464
  · exact cover_47637
#print axioms cover_47463

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
end Mub6.Numerical.CircleFullPrototype.Forest
