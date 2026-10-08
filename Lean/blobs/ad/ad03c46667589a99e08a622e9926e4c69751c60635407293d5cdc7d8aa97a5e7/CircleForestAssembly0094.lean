import CircleFullInterface
import CircleForestChunk0377
import CircleForestChunk0378
import CircleForestChunk0379
import CircleForestChunk0380
import CircleForestChunk0381
import CircleForestChunk0382
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_166034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_166034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166034 := by
  apply coveredState_split_literal (state := state_166034) 1
    state_166035 state_166056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166035
  · exact cover_166056
#print axioms cover_166034

def state_166002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_166002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166002 := by
  apply coveredState_split_literal (state := state_166002) 0
    state_166003 state_166034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166003
  · exact cover_166034
#print axioms cover_166002

def state_166134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 6)))
theorem cover_166134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166134 := by
  apply coveredState_split_literal (state := state_166134) 3
    state_166135 state_166154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166135
  · exact cover_166154
#print axioms cover_166134

def state_166133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
theorem cover_166133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166133 := by
  apply coveredState_split_literal (state := state_166133) 2
    state_166134 state_166207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166134
  · exact cover_166207
#print axioms cover_166133

def state_166274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
theorem cover_166274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166274 := by
  apply coveredState_split_literal (state := state_166274) 1
    state_166275 state_166318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166275
  · exact cover_166318
#print axioms cover_166274

def state_166412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 14)))
theorem cover_166412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166412 := by
  apply coveredState_split_literal (state := state_166412) 0
    state_166413 state_166444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166413
  · exact cover_166444
#print axioms cover_166412

def state_166382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 14)))
theorem cover_166382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166382 := by
  apply coveredState_split_literal (state := state_166382) 3
    state_166383 state_166412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166383
  · exact cover_166412
#print axioms cover_166382

def state_166381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 14)))
theorem cover_166381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166381 := by
  apply coveredState_split_literal (state := state_166381) 2
    state_166382 state_166479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166382
  · exact cover_166479
#print axioms cover_166381

def state_166380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
theorem cover_166380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166380 := by
  apply coveredState_split_literal (state := state_166380) 4
    state_166381 state_166498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166381
  · exact cover_166498
#print axioms cover_166380

def state_166621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 29)))
theorem cover_166621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166621 := by
  apply coveredState_split_literal (state := state_166621) 3
    state_166622 state_166659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166622
  · exact cover_166659
#print axioms cover_166621

def state_166593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 29)))
theorem cover_166593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166593 := by
  apply coveredState_split_literal (state := state_166593) 2
    state_166594 state_166621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166594
  · exact cover_166621
#print axioms cover_166593

def state_166573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 14)))
theorem cover_166573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166573 := by
  apply coveredState_split_literal (state := state_166573) 4
    state_166574 state_166593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166574
  · exact cover_166593
#print axioms cover_166573

def state_166572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 14)))
theorem cover_166572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166572 := by
  apply coveredState_split_literal (state := state_166572) 1
    state_166573 state_166716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166573
  · exact cover_166716
#print axioms cover_166572

def state_166859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 59)))
theorem cover_166859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166859 := by
  apply coveredState_split_literal (state := state_166859) 3
    state_166860 state_166905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166860
  · exact cover_166905
#print axioms cover_166859

def state_166843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 29)))
theorem cover_166843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166843 := by
  apply coveredState_split_literal (state := state_166843) 4
    state_166844 state_166859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166844
  · exact cover_166859
#print axioms cover_166843

def state_166821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 29)))
theorem cover_166821 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166821 := by
  apply coveredState_split_literal (state := state_166821) 1
    state_166822 state_166843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166822
  · exact cover_166843
#print axioms cover_166821

def state_166820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 29)))
theorem cover_166820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166820 := by
  apply coveredState_split_literal (state := state_166820) 0
    state_166821 state_166948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166821
  · exact cover_166948
#print axioms cover_166820

def state_166784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 29)))
theorem cover_166784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166784 := by
  apply coveredState_split_literal (state := state_166784) 3
    state_166785 state_166820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166785
  · exact cover_166820
#print axioms cover_166784

def state_166770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 29)))
theorem cover_166770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166770 := by
  apply coveredState_split_literal (state := state_166770) 2
    state_166771 state_166784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166771
  · exact cover_166784
#print axioms cover_166770

def state_166762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 14)))
theorem cover_166762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166762 := by
  apply coveredState_split_literal (state := state_166762) 4
    state_166763 state_166770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166763
  · exact cover_166770
#print axioms cover_166762

def state_167073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 99 else (if j.val < 4 then 95 else 59)))
theorem cover_167073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167073 := by
  apply coveredState_split_literal (state := state_167073) 0
    state_167074 state_167109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167074
  · exact cover_167109
#print axioms cover_167073

def state_167067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 49 else (if j.val < 4 then 95 else 59)))
theorem cover_167067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167067 := by
  apply coveredState_split_literal (state := state_167067) 2
    state_167068 state_167073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167068
  · exact cover_167073
#print axioms cover_167067

def state_167021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 59)))
theorem cover_167021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167021 := by
  apply coveredState_split_literal (state := state_167021) 3
    state_167022 state_167067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167022
  · exact cover_167067
#print axioms cover_167021

def state_167015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 29)))
theorem cover_167015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167015 := by
  apply coveredState_split_literal (state := state_167015) 4
    state_167016 state_167021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167016
  · exact cover_167021
#print axioms cover_167015

def state_167014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 29)))
theorem cover_167014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167014 := by
  apply coveredState_split_literal (state := state_167014) 1
    state_167015 state_167146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167015
  · exact cover_167146
#print axioms cover_167014

def state_167013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 29)))
theorem cover_167013 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167013 := by
  apply coveredState_split_literal (state := state_167013) 0
    state_167014 state_167151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_167014
  · exact cover_167151
#print axioms cover_167013

def state_166985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 29)))
theorem cover_166985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166985 := by
  apply coveredState_split_literal (state := state_166985) 3
    state_166986 state_167013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166986
  · exact cover_167013
#print axioms cover_166985

def state_166965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 29)))
theorem cover_166965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166965 := by
  apply coveredState_split_literal (state := state_166965) 2
    state_166966 state_166985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166966
  · exact cover_166985
#print axioms cover_166965

def state_166961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 14)))
theorem cover_166961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166961 := by
  apply coveredState_split_literal (state := state_166961) 4
    state_166962 state_166965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166962
  · exact cover_166965
#print axioms cover_166961

def state_166761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 14)))
theorem cover_166761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166761 := by
  apply coveredState_split_literal (state := state_166761) 1
    state_166762 state_166961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166762
  · exact cover_166961
#print axioms cover_166761

def state_166571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 14)))
theorem cover_166571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166571 := by
  apply coveredState_split_literal (state := state_166571) 0
    state_166572 state_166761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166572
  · exact cover_166761
#print axioms cover_166571

def state_166521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 14)))
theorem cover_166521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166521 := by
  apply coveredState_split_literal (state := state_166521) 3
    state_166522 state_166571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166522
  · exact cover_166571
#print axioms cover_166521
end Mub6.Numerical.CircleFullPrototype.Forest
