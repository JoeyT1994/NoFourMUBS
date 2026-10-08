import CircleFullInterface
import CircleForestAssembly0155
import CircleForestChunk0611
import CircleForestChunk0612
import CircleForestChunk0613
import CircleForestChunk0614
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_385654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 4)))
theorem cover_385654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385654 := by
  apply coveredState_split_literal (state := state_385654) 4
    state_385655 state_385726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385655
  · exact cover_385726
#print axioms cover_385654

def state_385638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 4)))
theorem cover_385638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385638 := by
  apply coveredState_split_literal (state := state_385638) 0
    state_385639 state_385654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385639
  · exact cover_385654
#print axioms cover_385638

def state_385578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 4)))
theorem cover_385578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385578 := by
  apply coveredState_split_literal (state := state_385578) 3
    state_385579 state_385638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385579
  · exact cover_385638
#print axioms cover_385578

def state_385747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 4)))
theorem cover_385747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385747 := by
  apply coveredState_split_literal (state := state_385747) 3
    state_385748 state_385773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385748
  · exact cover_385773
#print axioms cover_385747

def state_385577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_385577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385577 := by
  apply coveredState_split_literal (state := state_385577) 2
    state_385578 state_385747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385578
  · exact cover_385747
#print axioms cover_385577

def state_385539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_385539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385539 := by
  apply coveredState_split_literal (state := state_385539) 1
    state_385540 state_385577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385540
  · exact cover_385577
#print axioms cover_385539

def state_385538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_385538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385538 := by
  apply coveredState_split_literal (state := state_385538) 4
    state_385539 state_385824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385539
  · exact cover_385824
#print axioms cover_385538

def state_385520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_385520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385520 := by
  apply coveredState_split_literal (state := state_385520) 3
    state_385521 state_385538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385521
  · exact cover_385538
#print axioms cover_385520

def state_385488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_385488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385488 := by
  apply coveredState_split_literal (state := state_385488) 2
    state_385489 state_385520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385489
  · exact cover_385520
#print axioms cover_385488

def state_385894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
theorem cover_385894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385894 := by
  apply coveredState_split_literal (state := state_385894) 0
    state_385895 state_385904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385895
  · exact cover_385904
#print axioms cover_385894

def state_385886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 4)))
theorem cover_385886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385886 := by
  apply coveredState_split_literal (state := state_385886) 3
    state_385887 state_385894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385887
  · exact cover_385894
#print axioms cover_385886

def state_385854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_385854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385854 := by
  apply coveredState_split_literal (state := state_385854) 2
    state_385855 state_385886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385855
  · exact cover_385886
#print axioms cover_385854

def state_385853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_385853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385853 := by
  apply coveredState_split_literal (state := state_385853) 4
    state_385854 state_385967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385854
  · exact cover_385967
#print axioms cover_385853

def state_385847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_385847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385847 := by
  apply coveredState_split_literal (state := state_385847) 3
    state_385848 state_385853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385848
  · exact cover_385853
#print axioms cover_385847

def state_385839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_385839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385839 := by
  apply coveredState_split_literal (state := state_385839) 2
    state_385840 state_385847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385840
  · exact cover_385847
#print axioms cover_385839

def state_385487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_385487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385487 := by
  apply coveredState_split_literal (state := state_385487) 1
    state_385488 state_385839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385488
  · exact cover_385839
#print axioms cover_385487

def state_385297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_385297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385297 := by
  apply coveredState_split_literal (state := state_385297) 0
    state_385298 state_385487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385298
  · exact cover_385487
#print axioms cover_385297

def state_385996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_385996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385996 := by
  apply coveredState_split_literal (state := state_385996) 0
    state_385997 state_386046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385997
  · exact cover_386046
#print axioms cover_385996

def state_385296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_385296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385296 := by
  apply coveredState_split_literal (state := state_385296) 4
    state_385297 state_385996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385297
  · exact cover_385996
#print axioms cover_385296

def state_386156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 11)))
theorem cover_386156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386156 := by
  apply coveredState_split_literal (state := state_386156) 0
    state_386157 state_386220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386157
  · exact cover_386220
#print axioms cover_386156

def state_386148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 5)))
theorem cover_386148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386148 := by
  apply coveredState_split_literal (state := state_386148) 4
    state_386149 state_386156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386149
  · exact cover_386156
#print axioms cover_386148

def state_386122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 5)))
theorem cover_386122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386122 := by
  apply coveredState_split_literal (state := state_386122) 3
    state_386123 state_386148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386123
  · exact cover_386148
#print axioms cover_386122

def state_386120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_386120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386120 := by
  apply coveredState_split_literal (state := state_386120) 2
    state_386121 state_386122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386121
  · exact cover_386122
#print axioms cover_386120

def state_386096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_386096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386096 := by
  apply coveredState_split_literal (state := state_386096) 1
    state_386097 state_386120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386097
  · exact cover_386120
#print axioms cover_386096

def state_386095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_386095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386095 := by
  apply coveredState_split_literal (state := state_386095) 0
    state_386096 state_386243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386096
  · exact cover_386243
#print axioms cover_386095

def state_386085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_386085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386085 := by
  apply coveredState_split_literal (state := state_386085) 4
    state_386086 state_386095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386086
  · exact cover_386095
#print axioms cover_386085

def state_386084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_386084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386084 := by
  apply coveredState_split_literal (state := state_386084) 3
    state_386085 state_386292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386085
  · exact cover_386292
#print axioms cover_386084

def state_386074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_386074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386074 := by
  apply coveredState_split_literal (state := state_386074) 2
    state_386075 state_386084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386075
  · exact cover_386084
#print axioms cover_386074

def state_386363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_386363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386363 := by
  apply coveredState_split_literal (state := state_386363) 4
    state_386364 state_386375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386364
  · exact cover_386375
#print axioms cover_386363

def state_386343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_386343 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386343 := by
  apply coveredState_split_literal (state := state_386343) 3
    state_386344 state_386363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386344
  · exact cover_386363
#print axioms cover_386343

def state_386341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_386341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386341 := by
  apply coveredState_split_literal (state := state_386341) 2
    state_386342 state_386343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386342
  · exact cover_386343
#print axioms cover_386341

def state_386073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_386073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386073 := by
  apply coveredState_split_literal (state := state_386073) 1
    state_386074 state_386341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386074
  · exact cover_386341
#print axioms cover_386073
end Mub6.Numerical.CircleFullPrototype.Forest
