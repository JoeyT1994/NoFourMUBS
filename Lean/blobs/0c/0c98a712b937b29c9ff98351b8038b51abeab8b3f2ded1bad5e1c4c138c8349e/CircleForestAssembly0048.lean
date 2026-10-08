import CircleFullInterface
import CircleForestAssembly0047
import CircleForestChunk0191
import CircleForestChunk0192
import CircleForestChunk0193
import CircleForestChunk0194
import CircleForestChunk0195
import CircleForestChunk0196
import CircleForestChunk0197
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_983729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 41)))
theorem cover_983729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983729 := by
  apply coveredState_split_literal (state := state_983729) 0
    state_983730 state_983753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983730
  · exact cover_983753
#print axioms cover_983729

def state_983728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 41)))
theorem cover_983728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983728 := by
  apply coveredState_split_literal (state := state_983728) 2
    state_983729 state_983798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983729
  · exact cover_983798
#print axioms cover_983728

def state_983696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 20)))
theorem cover_983696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983696 := by
  apply coveredState_split_literal (state := state_983696) 4
    state_983697 state_983728
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983697
  · exact cover_983728
#print axioms cover_983696

def state_983825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 41)))
theorem cover_983825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983825 := by
  apply coveredState_split_literal (state := state_983825) 3
    state_983826 state_983879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983826
  · exact cover_983879
#print axioms cover_983825

def state_983894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 41)))
theorem cover_983894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983894 := by
  apply coveredState_split_literal (state := state_983894) 3
    state_983895 state_983938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983895
  · exact cover_983938
#print axioms cover_983894

def state_983824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 41)))
theorem cover_983824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983824 := by
  apply coveredState_split_literal (state := state_983824) 0
    state_983825 state_983894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983825
  · exact cover_983894
#print axioms cover_983824

def state_983823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 41)))
theorem cover_983823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983823 := by
  apply coveredState_split_literal (state := state_983823) 2
    state_983824 state_983971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983824
  · exact cover_983971
#print axioms cover_983823

def state_983815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 20)))
theorem cover_983815 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983815 := by
  apply coveredState_split_literal (state := state_983815) 4
    state_983816 state_983823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983816
  · exact cover_983823
#print axioms cover_983815

def state_983695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 20)))
theorem cover_983695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983695 := by
  apply coveredState_split_literal (state := state_983695) 1
    state_983696 state_983815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983696
  · exact cover_983815
#print axioms cover_983695

def state_983571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 20)))
theorem cover_983571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983571 := by
  apply coveredState_split_literal (state := state_983571) 3
    state_983572 state_983695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983572
  · exact cover_983695
#print axioms cover_983571

def state_983507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 20)))
theorem cover_983507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983507 := by
  apply coveredState_split_literal (state := state_983507) 0
    state_983508 state_983571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983508
  · exact cover_983571
#print axioms cover_983507

def state_982635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 20)))
theorem cover_982635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982635 := by
  apply coveredState_split_literal (state := state_982635) 2
    state_982636 state_983507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982636
  · exact cover_983507
#print axioms cover_982635

def state_984006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 21)))
theorem cover_984006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984006 := by
  apply coveredState_split_literal (state := state_984006) 3
    state_984007 state_984068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984007
  · exact cover_984068
#print axioms cover_984006

def state_984232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 106) else (if j.val < 3 then 33 else (if j.val < 4 then 101 else 84)))
theorem cover_984232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984232 := by
  apply coveredState_split_literal (state := state_984232) 2
    state_984233 state_984240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984233
  · exact cover_984240
#print axioms cover_984232

def state_984231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 106) else (if j.val < 3 then 33 else (if j.val < 4 then 101 else 42)))
theorem cover_984231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984231 := by
  apply coveredState_split_literal (state := state_984231) 4
    state_984232 state_984299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984232
  · exact cover_984299
#print axioms cover_984231

def state_984230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 33 else (if j.val < 4 then 101 else 42)))
theorem cover_984230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984230 := by
  apply coveredState_split_literal (state := state_984230) 1
    state_984231 state_984312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984231
  · exact cover_984312
#print axioms cover_984230

def state_984168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 33 else (if j.val < 4 then 50 else 42)))
theorem cover_984168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984168 := by
  apply coveredState_split_literal (state := state_984168) 3
    state_984169 state_984230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984169
  · exact cover_984230
#print axioms cover_984168

def state_984375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 33 else (if j.val < 4 then 101 else 42)))
theorem cover_984375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984375 := by
  apply coveredState_split_literal (state := state_984375) 1
    state_984376 state_984401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984376
  · exact cover_984401
#print axioms cover_984375

def state_984339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 33 else (if j.val < 4 then 50 else 42)))
theorem cover_984339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984339 := by
  apply coveredState_split_literal (state := state_984339) 3
    state_984340 state_984375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984340
  · exact cover_984375
#print axioms cover_984339

def state_984167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 33 else (if j.val < 4 then 50 else 42)))
theorem cover_984167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984167 := by
  apply coveredState_split_literal (state := state_984167) 0
    state_984168 state_984339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984168
  · exact cover_984339
#print axioms cover_984167

def state_984151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 42)))
theorem cover_984151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984151 := by
  apply coveredState_split_literal (state := state_984151) 2
    state_984152 state_984167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984152
  · exact cover_984167
#print axioms cover_984151

def state_984150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 21)))
theorem cover_984150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984150 := by
  apply coveredState_split_literal (state := state_984150) 4
    state_984151 state_984460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984151
  · exact cover_984460
#print axioms cover_984150

def state_984098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 21)))
theorem cover_984098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984098 := by
  apply coveredState_split_literal (state := state_984098) 1
    state_984099 state_984150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984099
  · exact cover_984150
#print axioms cover_984098

def state_984512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 33 else (if j.val < 4 then 51 else 42)))
theorem cover_984512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984512 := by
  apply coveredState_split_literal (state := state_984512) 0
    state_984513 state_984536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984513
  · exact cover_984536
#print axioms cover_984512

def state_984508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 42)))
theorem cover_984508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984508 := by
  apply coveredState_split_literal (state := state_984508) 2
    state_984509 state_984512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984509
  · exact cover_984512
#print axioms cover_984508

def state_984507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 21)))
theorem cover_984507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984507 := by
  apply coveredState_split_literal (state := state_984507) 4
    state_984508 state_984589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984508
  · exact cover_984589
#print axioms cover_984507

def state_984489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 21)))
theorem cover_984489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984489 := by
  apply coveredState_split_literal (state := state_984489) 1
    state_984490 state_984507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984490
  · exact cover_984507
#print axioms cover_984489

def state_984097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 21)))
theorem cover_984097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984097 := by
  apply coveredState_split_literal (state := state_984097) 3
    state_984098 state_984489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984098
  · exact cover_984489
#print axioms cover_984097

def state_984005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 21)))
theorem cover_984005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984005 := by
  apply coveredState_split_literal (state := state_984005) 0
    state_984006 state_984097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984006
  · exact cover_984097
#print axioms cover_984005

def state_984597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 21)))
theorem cover_984597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984597 := by
  apply coveredState_split_literal (state := state_984597) 3
    state_984598 state_984623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984598
  · exact cover_984623
#print axioms cover_984597

def state_984724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 101 else 42)))
theorem cover_984724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984724 := by
  apply coveredState_split_literal (state := state_984724) 1
    state_984725 state_984782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984725
  · exact cover_984782
#print axioms cover_984724

def state_984718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 50 else 42)))
theorem cover_984718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984718 := by
  apply coveredState_split_literal (state := state_984718) 3
    state_984719 state_984724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984719
  · exact cover_984724
#print axioms cover_984718
end Mub6.Numerical.CircleFullD0.Forest
