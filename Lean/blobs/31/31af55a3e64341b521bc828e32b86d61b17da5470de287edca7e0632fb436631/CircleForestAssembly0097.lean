import CircleFullInterface
import CircleForestAssembly0094
import CircleForestAssembly0096
import CircleForestChunk0388
import CircleForestChunk0389
import CircleForestChunk0390
import CircleForestChunk0391
import CircleForestChunk0392
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_168707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_168707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168707 := by
  apply coveredState_split_literal (state := state_168707) 1
    state_168708 state_168789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168708
  · exact cover_168789
#print axioms cover_168707

def state_168705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_168705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168705 := by
  apply coveredState_split_literal (state := state_168705) 4
    state_168706 state_168707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168706
  · exact cover_168707
#print axioms cover_168705

def state_168697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_168697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168697 := by
  apply coveredState_split_literal (state := state_168697) 3
    state_168698 state_168705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168698
  · exact cover_168705
#print axioms cover_168697

def state_168696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_168696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168696 := by
  apply coveredState_split_literal (state := state_168696) 2
    state_168697 state_168790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168697
  · exact cover_168790
#print axioms cover_168696

def state_166112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_166112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166112 := by
  apply coveredState_split_literal (state := state_166112) 1
    state_166113 state_168696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166113
  · exact cover_168696
#print axioms cover_166112

def state_168954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 14)))
theorem cover_168954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168954 := by
  apply coveredState_split_literal (state := state_168954) 2
    state_168955 state_168992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168955
  · exact cover_168992
#print axioms cover_168954

def state_169027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 15)))
theorem cover_169027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169027 := by
  apply coveredState_split_literal (state := state_169027) 2
    state_169028 state_169069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169028
  · exact cover_169069
#print axioms cover_169027

def state_168953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
theorem cover_168953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168953 := by
  apply coveredState_split_literal (state := state_168953) 4
    state_168954 state_169027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168954
  · exact cover_169027
#print axioms cover_168953

def state_168915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
theorem cover_168915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168915 := by
  apply coveredState_split_literal (state := state_168915) 1
    state_168916 state_168953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168916
  · exact cover_168953
#print axioms cover_168915

def state_168899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 7)))
theorem cover_168899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168899 := by
  apply coveredState_split_literal (state := state_168899) 3
    state_168900 state_168915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168900
  · exact cover_168915
#print axioms cover_168899

def state_168898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_168898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168898 := by
  apply coveredState_split_literal (state := state_168898) 2
    state_168899 state_169102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168899
  · exact cover_169102
#print axioms cover_168898

def state_168897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_168897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168897 := by
  apply coveredState_split_literal (state := state_168897) 0
    state_168898 state_169123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168898
  · exact cover_169123
#print axioms cover_168897

def state_168843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_168843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168843 := by
  apply coveredState_split_literal (state := state_168843) 4
    state_168844 state_168897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168844
  · exact cover_168897
#print axioms cover_168843

def state_168837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_168837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168837 := by
  apply coveredState_split_literal (state := state_168837) 3
    state_168838 state_168843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168838
  · exact cover_168843
#print axioms cover_168837

def state_168836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_168836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168836 := by
  apply coveredState_split_literal (state := state_168836) 2
    state_168837 state_169142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168837
  · exact cover_169142
#print axioms cover_168836

def state_169206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_169206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169206 := by
  apply coveredState_split_literal (state := state_169206) 3
    state_169207 state_169220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169207
  · exact cover_169220
#print axioms cover_169206

def state_169205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_169205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169205 := by
  apply coveredState_split_literal (state := state_169205) 2
    state_169206 state_169275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169206
  · exact cover_169275
#print axioms cover_169205

def state_168835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_168835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168835 := by
  apply coveredState_split_literal (state := state_168835) 1
    state_168836 state_169205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_168836
  · exact cover_169205
#print axioms cover_168835

def state_166111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_166111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166111 := by
  apply coveredState_split_literal (state := state_166111) 0
    state_166112 state_168835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166112
  · exact cover_168835
#print axioms cover_166111

def state_166001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_166001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166001 := by
  apply coveredState_split_literal (state := state_166001) 4
    state_166002 state_166111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166002
  · exact cover_166111
#print axioms cover_166001

def state_169285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_169285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169285 := by
  apply coveredState_split_literal (state := state_169285) 0
    state_169286 state_169327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169286
  · exact cover_169327
#print axioms cover_169285

def state_169477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 14)))
theorem cover_169477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169477 := by
  apply coveredState_split_literal (state := state_169477) 0
    state_169478 state_169501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169478
  · exact cover_169501
#print axioms cover_169477

def state_169476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 14)))
theorem cover_169476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169476 := by
  apply coveredState_split_literal (state := state_169476) 3
    state_169477 state_169558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169477
  · exact cover_169558
#print axioms cover_169476

def state_169647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 96 else 59)))
theorem cover_169647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169647 := by
  apply coveredState_split_literal (state := state_169647) 2
    state_169648 state_169699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169648
  · exact cover_169699
#print axioms cover_169647

def state_169646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 59)))
theorem cover_169646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169646 := by
  apply coveredState_split_literal (state := state_169646) 3
    state_169647 state_169712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169647
  · exact cover_169712
#print axioms cover_169646

def state_169638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 29)))
theorem cover_169638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169638 := by
  apply coveredState_split_literal (state := state_169638) 4
    state_169639 state_169646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169639
  · exact cover_169646
#print axioms cover_169638

def state_169637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 29)))
theorem cover_169637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169637 := by
  apply coveredState_split_literal (state := state_169637) 1
    state_169638 state_169719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169638
  · exact cover_169719
#print axioms cover_169637

def state_169636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 29)))
theorem cover_169636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169636 := by
  apply coveredState_split_literal (state := state_169636) 0
    state_169637 state_169726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169637
  · exact cover_169726
#print axioms cover_169636

def state_169635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 48 else 29)))
theorem cover_169635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169635 := by
  apply coveredState_split_literal (state := state_169635) 2
    state_169636 state_169753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169636
  · exact cover_169753
#print axioms cover_169635

def state_169634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 29)))
theorem cover_169634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169634 := by
  apply coveredState_split_literal (state := state_169634) 3
    state_169635 state_169782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169635
  · exact cover_169782
#print axioms cover_169634

def state_169628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 14)))
theorem cover_169628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169628 := by
  apply coveredState_split_literal (state := state_169628) 4
    state_169629 state_169634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169629
  · exact cover_169634
#print axioms cover_169628

def state_169604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 14)))
theorem cover_169604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169604 := by
  apply coveredState_split_literal (state := state_169604) 1
    state_169605 state_169628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169605
  · exact cover_169628
#print axioms cover_169604
end Mub6.Numerical.CircleFullPrototype.Forest
