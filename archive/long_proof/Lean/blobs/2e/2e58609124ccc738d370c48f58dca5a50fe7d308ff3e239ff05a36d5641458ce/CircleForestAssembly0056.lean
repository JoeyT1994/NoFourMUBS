import CircleFullInterface
import CircleForestAssembly0054
import CircleForestAssembly0055
import CircleForestChunk0222
import CircleForestChunk0223
import CircleForestChunk0224
import CircleForestChunk0225
import CircleForestChunk0226
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_74706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 42 else (if j.val < 4 then 48 else 41)))
theorem cover_74706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74706 := by
  apply coveredState_split_literal (state := state_74706) 3
    state_74707 state_74766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74707
  · exact cover_74766
#print axioms cover_74706

def state_74700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 42 else (if j.val < 4 then 48 else 20)))
theorem cover_74700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74700 := by
  apply coveredState_split_literal (state := state_74700) 4
    state_74701 state_74706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74701
  · exact cover_74706
#print axioms cover_74700

def state_74699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 21 else (if j.val < 4 then 48 else 20)))
theorem cover_74699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74699 := by
  apply coveredState_split_literal (state := state_74699) 2
    state_74700 state_74791
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74700
  · exact cover_74791
#print axioms cover_74699

def state_74698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 48 else 20)))
theorem cover_74698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74698 := by
  apply coveredState_split_literal (state := state_74698) 1
    state_74699 state_74792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74699
  · exact cover_74792
#print axioms cover_74698

def state_74697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 48 else 20)))
theorem cover_74697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74697 := by
  apply coveredState_split_literal (state := state_74697) 0
    state_74698 state_74819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74698
  · exact cover_74819
#print axioms cover_74697

def state_74696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 20)))
theorem cover_74696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74696 := by
  apply coveredState_split_literal (state := state_74696) 3
    state_74697 state_74832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74697
  · exact cover_74832
#print axioms cover_74696

def state_74914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 42 else (if j.val < 4 then 97 else 42)))
theorem cover_74914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74914 := by
  apply coveredState_split_literal (state := state_74914) 0
    state_74915 state_74972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74915
  · exact cover_74972
#print axioms cover_74914

def state_74866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 42 else (if j.val < 4 then 48 else 42)))
theorem cover_74866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74866 := by
  apply coveredState_split_literal (state := state_74866) 3
    state_74867 state_74914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74867
  · exact cover_74914
#print axioms cover_74866

def state_74865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 42 else (if j.val < 4 then 48 else 21)))
theorem cover_74865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74865 := by
  apply coveredState_split_literal (state := state_74865) 4
    state_74866 state_75015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74866
  · exact cover_75015
#print axioms cover_74865

def state_74864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 21 else (if j.val < 4 then 48 else 21)))
theorem cover_74864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74864 := by
  apply coveredState_split_literal (state := state_74864) 2
    state_74865 state_75020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74865
  · exact cover_75020
#print axioms cover_74864

def state_74863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 48 else 21)))
theorem cover_74863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74863 := by
  apply coveredState_split_literal (state := state_74863) 1
    state_74864 state_75027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74864
  · exact cover_75027
#print axioms cover_74863

def state_75062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 48 else 21)))
theorem cover_75062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75062 := by
  apply coveredState_split_literal (state := state_75062) 1
    state_75063 state_75100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75063
  · exact cover_75100
#print axioms cover_75062

def state_74862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 48 else 21)))
theorem cover_74862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74862 := by
  apply coveredState_split_literal (state := state_74862) 0
    state_74863 state_75062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74863
  · exact cover_75062
#print axioms cover_74862

def state_75134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 42 else (if j.val < 4 then 49 else 21)))
theorem cover_75134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75134 := by
  apply coveredState_split_literal (state := state_75134) 4
    state_75135 state_75198
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75135
  · exact cover_75198
#print axioms cover_75134

def state_75133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 21 else (if j.val < 4 then 49 else 21)))
theorem cover_75133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75133 := by
  apply coveredState_split_literal (state := state_75133) 2
    state_75134 state_75207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75134
  · exact cover_75207
#print axioms cover_75133

def state_75132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 49 else 21)))
theorem cover_75132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75132 := by
  apply coveredState_split_literal (state := state_75132) 1
    state_75133 state_75222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75133
  · exact cover_75222
#print axioms cover_75132

def state_75255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 49 else 21)))
theorem cover_75255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75255 := by
  apply coveredState_split_literal (state := state_75255) 1
    state_75256 state_75287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75256
  · exact cover_75287
#print axioms cover_75255

def state_75131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 49 else 21)))
theorem cover_75131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75131 := by
  apply coveredState_split_literal (state := state_75131) 0
    state_75132 state_75255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75132
  · exact cover_75255
#print axioms cover_75131

def state_74861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 21)))
theorem cover_74861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74861 := by
  apply coveredState_split_literal (state := state_74861) 3
    state_74862 state_75131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74862
  · exact cover_75131
#print axioms cover_74861

def state_74695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 10)))
theorem cover_74695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74695 := by
  apply coveredState_split_literal (state := state_74695) 4
    state_74696 state_74861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74696
  · exact cover_74861
#print axioms cover_74695

def state_74001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
theorem cover_74001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74001 := by
  apply coveredState_split_literal (state := state_74001) 2
    state_74002 state_74695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74002
  · exact cover_74695
#print axioms cover_74001

def state_75364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 25 else 21)))
theorem cover_75364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75364 := by
  apply coveredState_split_literal (state := state_75364) 0
    state_75365 state_75396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75365
  · exact cover_75396
#print axioms cover_75364

def state_75358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 25 else 10)))
theorem cover_75358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75358 := by
  apply coveredState_split_literal (state := state_75358) 4
    state_75359 state_75364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75359
  · exact cover_75364
#print axioms cover_75358

def state_75340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 10)))
theorem cover_75340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75340 := by
  apply coveredState_split_literal (state := state_75340) 2
    state_75341 state_75358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75341
  · exact cover_75358
#print axioms cover_75340

def state_74000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_74000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74000 := by
  apply coveredState_split_literal (state := state_74000) 3
    state_74001 state_75340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74001
  · exact cover_75340
#print axioms cover_74000

def state_73710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_73710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73710 := by
  apply coveredState_split_literal (state := state_73710) 1
    state_73711 state_74000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73711
  · exact cover_74000
#print axioms cover_73710

def state_73140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_73140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73140 := by
  apply coveredState_split_literal (state := state_73140) 0
    state_73141 state_73710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73141
  · exact cover_73710
#print axioms cover_73140

def state_75433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 11)))
theorem cover_75433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75433 := by
  apply coveredState_split_literal (state := state_75433) 0
    state_75434 state_75451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75434
  · exact cover_75451
#print axioms cover_75433

def state_73139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 5)))
theorem cover_73139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73139 := by
  apply coveredState_split_literal (state := state_73139) 4
    state_73140 state_75433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73140
  · exact cover_75433
#print axioms cover_73139

def state_73138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
theorem cover_73138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73138 := by
  apply coveredState_split_literal (state := state_73138) 3
    state_73139 state_75504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73139
  · exact cover_75504
#print axioms cover_73138

def state_75525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 10)))
theorem cover_75525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75525 := by
  apply coveredState_split_literal (state := state_75525) 0
    state_75526 state_75563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75526
  · exact cover_75563
#print axioms cover_75525

def state_75524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 5)))
theorem cover_75524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75524 := by
  apply coveredState_split_literal (state := state_75524) 4
    state_75525 state_75598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75525
  · exact cover_75598
#print axioms cover_75524
end Mub6.Numerical.CircleFullPrototype.Forest
