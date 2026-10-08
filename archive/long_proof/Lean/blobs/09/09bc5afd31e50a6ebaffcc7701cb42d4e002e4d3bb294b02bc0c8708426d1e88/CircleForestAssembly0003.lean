import CircleFullInterface
import CircleForestAssembly0002
import CircleForestChunk0013
import CircleForestChunk0014
import CircleForestChunk0015
import CircleForestChunk0016
import CircleForestChunk0017
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_940665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_940665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940665 := by
  apply coveredState_split_literal (state := state_940665) 2
    state_940666 state_940729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940666
  · exact cover_940729
#print axioms cover_940665

def state_940571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_940571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940571 := by
  apply coveredState_split_literal (state := state_940571) 1
    state_940572 state_940665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940572
  · exact cover_940665
#print axioms cover_940571

def state_940369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_940369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940369 := by
  apply coveredState_split_literal (state := state_940369) 0
    state_940370 state_940571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940370
  · exact cover_940571
#print axioms cover_940369

def state_940837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_940837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940837 := by
  apply coveredState_split_literal (state := state_940837) 2
    state_940838 state_940883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940838
  · exact cover_940883
#print axioms cover_940837

def state_940787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_940787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940787 := by
  apply coveredState_split_literal (state := state_940787) 1
    state_940788 state_940837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940788
  · exact cover_940837
#print axioms cover_940787

def state_940949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
theorem cover_940949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940949 := by
  apply coveredState_split_literal (state := state_940949) 3
    state_940950 state_941007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940950
  · exact cover_941007
#print axioms cover_940949

def state_940935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
theorem cover_940935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940935 := by
  apply coveredState_split_literal (state := state_940935) 1
    state_940936 state_940949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940936
  · exact cover_940949
#print axioms cover_940935

def state_940934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 6)))
theorem cover_940934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940934 := by
  apply coveredState_split_literal (state := state_940934) 4
    state_940935 state_941022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940935
  · exact cover_941022
#print axioms cover_940934

def state_941037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 6)))
theorem cover_941037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941037 := by
  apply coveredState_split_literal (state := state_941037) 4
    state_941038 state_941083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941038
  · exact cover_941083
#print axioms cover_941037

def state_940933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_940933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940933 := by
  apply coveredState_split_literal (state := state_940933) 2
    state_940934 state_941037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940934
  · exact cover_941037
#print axioms cover_940933

def state_941146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 16 else 25)))
theorem cover_941146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941146 := by
  apply coveredState_split_literal (state := state_941146) 2
    state_941147 state_941168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941147
  · exact cover_941168
#print axioms cover_941146

def state_941145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 25)))
theorem cover_941145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941145 := by
  apply coveredState_split_literal (state := state_941145) 3
    state_941146 state_941227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941146
  · exact cover_941227
#print axioms cover_941145

def state_941141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 25)))
theorem cover_941141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941141 := by
  apply coveredState_split_literal (state := state_941141) 1
    state_941142 state_941145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941142
  · exact cover_941145
#print axioms cover_941141

def state_941125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 12)))
theorem cover_941125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941125 := by
  apply coveredState_split_literal (state := state_941125) 4
    state_941126 state_941141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941126
  · exact cover_941141
#print axioms cover_941125

def state_941257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 25)))
theorem cover_941257 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941257 := by
  apply coveredState_split_literal (state := state_941257) 0
    state_941258 state_941281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941258
  · exact cover_941281
#print axioms cover_941257

def state_941256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 25)))
theorem cover_941256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941256 := by
  apply coveredState_split_literal (state := state_941256) 3
    state_941257 state_941342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941257
  · exact cover_941342
#print axioms cover_941256

def state_941238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 25)))
theorem cover_941238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941238 := by
  apply coveredState_split_literal (state := state_941238) 1
    state_941239 state_941256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941239
  · exact cover_941256
#print axioms cover_941238

def state_941234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 12)))
theorem cover_941234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941234 := by
  apply coveredState_split_literal (state := state_941234) 4
    state_941235 state_941238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941235
  · exact cover_941238
#print axioms cover_941234

def state_941124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 12)))
theorem cover_941124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941124 := by
  apply coveredState_split_literal (state := state_941124) 2
    state_941125 state_941234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941125
  · exact cover_941234
#print axioms cover_941124

def state_941123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 12)))
theorem cover_941123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941123 := by
  apply coveredState_split_literal (state := state_941123) 0
    state_941124 state_941361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941124
  · exact cover_941361
#print axioms cover_941123

def state_941122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
theorem cover_941122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941122 := by
  apply coveredState_split_literal (state := state_941122) 3
    state_941123 state_941408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941123
  · exact cover_941408
#print axioms cover_941122

def state_941108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
theorem cover_941108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941108 := by
  apply coveredState_split_literal (state := state_941108) 1
    state_941109 state_941122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941109
  · exact cover_941122
#print axioms cover_941108

def state_941427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
theorem cover_941427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941427 := by
  apply coveredState_split_literal (state := state_941427) 2
    state_941428 state_941473
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941428
  · exact cover_941473
#print axioms cover_941427

def state_941426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
theorem cover_941426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941426 := by
  apply coveredState_split_literal (state := state_941426) 0
    state_941427 state_941516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941427
  · exact cover_941516
#print axioms cover_941426

def state_941425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 13)))
theorem cover_941425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941425 := by
  apply coveredState_split_literal (state := state_941425) 3
    state_941426 state_941543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941426
  · exact cover_941543
#print axioms cover_941425

def state_941423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 13)))
theorem cover_941423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941423 := by
  apply coveredState_split_literal (state := state_941423) 1
    state_941424 state_941425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941424
  · exact cover_941425
#print axioms cover_941423

def state_941107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 6)))
theorem cover_941107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941107 := by
  apply coveredState_split_literal (state := state_941107) 4
    state_941108 state_941423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941108
  · exact cover_941423
#print axioms cover_941107

def state_941563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
theorem cover_941563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941563 := by
  apply coveredState_split_literal (state := state_941563) 3
    state_941564 state_941621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941564
  · exact cover_941621
#print axioms cover_941563

def state_941549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
theorem cover_941549 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941549 := by
  apply coveredState_split_literal (state := state_941549) 1
    state_941550 state_941563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941550
  · exact cover_941563
#print axioms cover_941549

def state_941684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_941684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941684 := by
  apply coveredState_split_literal (state := state_941684) 0
    state_941685 state_941730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941685
  · exact cover_941730
#print axioms cover_941684

def state_941652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
theorem cover_941652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941652 := by
  apply coveredState_split_literal (state := state_941652) 3
    state_941653 state_941684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941653
  · exact cover_941684
#print axioms cover_941652

def state_941644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
theorem cover_941644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941644 := by
  apply coveredState_split_literal (state := state_941644) 1
    state_941645 state_941652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941645
  · exact cover_941652
#print axioms cover_941644
end Mub6.Numerical.CircleFullD0.Forest
