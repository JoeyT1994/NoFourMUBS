import CircleFullInterface
import CircleForestAssembly0141
import CircleForestAssembly0142
import CircleForestChunk0555
import CircleForestChunk0557
import CircleForestChunk0561
import CircleForestChunk0562
import CircleForestChunk0563
import CircleForestChunk0564
import CircleForestChunk0565
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_373538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 11)))
theorem cover_373538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373538 := by
  apply coveredState_split_literal (state := state_373538) 4
    state_373539 state_373550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373539
  · exact cover_373550
#print axioms cover_373538

def state_373859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 47)))
theorem cover_373859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373859 := by
  apply coveredState_split_literal (state := state_373859) 0
    state_373860 state_373905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373860
  · exact cover_373905
#print axioms cover_373859

def state_373855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 23)))
theorem cover_373855 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373855 := by
  apply coveredState_split_literal (state := state_373855) 4
    state_373856 state_373859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373856
  · exact cover_373859
#print axioms cover_373855

def state_373854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 23)))
theorem cover_373854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373854 := by
  apply coveredState_split_literal (state := state_373854) 3
    state_373855 state_373952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373855
  · exact cover_373952
#print axioms cover_373854

def state_373853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 23) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 23)))
theorem cover_373853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373853 := by
  apply coveredState_split_literal (state := state_373853) 1
    state_373854 state_373957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373854
  · exact cover_373957
#print axioms cover_373853

def state_373843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 23)))
theorem cover_373843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373843 := by
  apply coveredState_split_literal (state := state_373843) 2
    state_373844 state_373853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373844
  · exact cover_373853
#print axioms cover_373843

def state_373831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 23)))
theorem cover_373831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373831 := by
  apply coveredState_split_literal (state := state_373831) 0
    state_373832 state_373843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373832
  · exact cover_373843
#print axioms cover_373831

def state_373825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 11)))
theorem cover_373825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373825 := by
  apply coveredState_split_literal (state := state_373825) 4
    state_373826 state_373831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373826
  · exact cover_373831
#print axioms cover_373825

def state_373537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 11)))
theorem cover_373537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373537 := by
  apply coveredState_split_literal (state := state_373537) 3
    state_373538 state_373825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373538
  · exact cover_373825
#print axioms cover_373537

def state_372709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 11)))
theorem cover_372709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372709 := by
  apply coveredState_split_literal (state := state_372709) 1
    state_372710 state_373537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372710
  · exact cover_373537
#print axioms cover_372709

def state_372679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
theorem cover_372679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372679 := by
  apply coveredState_split_literal (state := state_372679) 2
    state_372680 state_372709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372680
  · exact cover_372709
#print axioms cover_372679

def state_372637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
theorem cover_372637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372637 := by
  apply coveredState_split_literal (state := state_372637) 0
    state_372638 state_372679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372638
  · exact cover_372679
#print axioms cover_372637

def state_372615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 5)))
theorem cover_372615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372615 := by
  apply coveredState_split_literal (state := state_372615) 4
    state_372616 state_372637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372616
  · exact cover_372637
#print axioms cover_372615

def state_372443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_372443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372443 := by
  apply coveredState_split_literal (state := state_372443) 3
    state_372444 state_372615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372444
  · exact cover_372615
#print axioms cover_372443

def state_372223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_372223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372223 := by
  apply coveredState_split_literal (state := state_372223) 1
    state_372224 state_372443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372224
  · exact cover_372443
#print axioms cover_372223

def state_372215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
theorem cover_372215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372215 := by
  apply coveredState_split_literal (state := state_372215) 4
    state_372216 state_372223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372216
  · exact cover_372223
#print axioms cover_372215

def state_372137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_372137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372137 := by
  apply coveredState_split_literal (state := state_372137) 3
    state_372138 state_372215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372138
  · exact cover_372215
#print axioms cover_372137

def state_374064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 11)))
theorem cover_374064 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374064 := by
  apply coveredState_split_literal (state := state_374064) 3
    state_374065 state_374074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374065
  · exact cover_374074
#print axioms cover_374064

def state_374135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 11)))
theorem cover_374135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374135 := by
  apply coveredState_split_literal (state := state_374135) 3
    state_374136 state_374149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374136
  · exact cover_374149
#print axioms cover_374135

def state_374063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 11)))
theorem cover_374063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374063 := by
  apply coveredState_split_literal (state := state_374063) 1
    state_374064 state_374135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374064
  · exact cover_374135
#print axioms cover_374063

def state_374055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 11)))
theorem cover_374055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374055 := by
  apply coveredState_split_literal (state := state_374055) 0
    state_374056 state_374063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374056
  · exact cover_374063
#print axioms cover_374055

def state_374047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 5)))
theorem cover_374047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374047 := by
  apply coveredState_split_literal (state := state_374047) 4
    state_374048 state_374055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374048
  · exact cover_374055
#print axioms cover_374047

def state_374045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
theorem cover_374045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374045 := by
  apply coveredState_split_literal (state := state_374045) 3
    state_374046 state_374047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374046
  · exact cover_374047
#print axioms cover_374045

def state_374044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_374044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374044 := by
  apply coveredState_split_literal (state := state_374044) 2
    state_374045 state_374210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374045
  · exact cover_374210
#print axioms cover_374044

def state_373984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_373984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373984 := by
  apply coveredState_split_literal (state := state_373984) 1
    state_373985 state_374044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373985
  · exact cover_374044
#print axioms cover_373984

def state_373978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_373978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373978 := by
  apply coveredState_split_literal (state := state_373978) 4
    state_373979 state_373984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373979
  · exact cover_373984
#print axioms cover_373978

def state_373964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_373964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373964 := by
  apply coveredState_split_literal (state := state_373964) 3
    state_373965 state_373978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_373965
  · exact cover_373978
#print axioms cover_373964

def state_372136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_372136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372136 := by
  apply coveredState_split_literal (state := state_372136) 2
    state_372137 state_373964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372137
  · exact cover_373964
#print axioms cover_372136

def state_371978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_371978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371978 := by
  apply coveredState_split_literal (state := state_371978) 1
    state_371979 state_372136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371979
  · exact cover_372136
#print axioms cover_371978

def state_374411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 11)))
theorem cover_374411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374411 := by
  apply coveredState_split_literal (state := state_374411) 3
    state_374412 state_374473
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374412
  · exact cover_374473
#print axioms cover_374411

def state_374387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 11)))
theorem cover_374387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374387 := by
  apply coveredState_split_literal (state := state_374387) 1
    state_374388 state_374411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374388
  · exact cover_374411
#print axioms cover_374387

def state_374381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
theorem cover_374381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374381 := by
  apply coveredState_split_literal (state := state_374381) 2
    state_374382 state_374387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374382
  · exact cover_374387
#print axioms cover_374381
end Mub6.Numerical.CircleFullPrototype.Forest
