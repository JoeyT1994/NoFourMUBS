import CircleFullInterface
import CircleForestChunk2068
import CircleForestChunk2069
import CircleForestChunk2070
import CircleForestChunk2071
import CircleForestChunk2072
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2576801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 48 else 16)))
theorem cover_2576801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576801 := by
  apply coveredState_split_literal (state := state_2576801) 0
    state_2576802 state_2576825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576802
  · exact cover_2576825
#print axioms cover_2576801

def state_2576994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 45 else (if j.val < 4 then 49 else 33)))
theorem cover_2576994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576994 := by
  apply coveredState_split_literal (state := state_2576994) 3
    state_2576995 state_2577034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576995
  · exact cover_2577034
#print axioms cover_2576994

def state_2576942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 45 else (if j.val < 4 then 49 else 16)))
theorem cover_2576942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576942 := by
  apply coveredState_split_literal (state := state_2576942) 4
    state_2576943 state_2576994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576943
  · exact cover_2576994
#print axioms cover_2576942

def state_2576920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 45 else (if j.val < 4 then 49 else 16)))
theorem cover_2576920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576920 := by
  apply coveredState_split_literal (state := state_2576920) 1
    state_2576921 state_2576942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576921
  · exact cover_2576942
#print axioms cover_2576920

def state_2576900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 49 else 16)))
theorem cover_2576900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576900 := by
  apply coveredState_split_literal (state := state_2576900) 2
    state_2576901 state_2576920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576901
  · exact cover_2576920
#print axioms cover_2576900

def state_2576882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 49 else 16)))
theorem cover_2576882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576882 := by
  apply coveredState_split_literal (state := state_2576882) 0
    state_2576883 state_2576900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576883
  · exact cover_2576900
#print axioms cover_2576882

def state_2576800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 16)))
theorem cover_2576800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576800 := by
  apply coveredState_split_literal (state := state_2576800) 3
    state_2576801 state_2576882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576801
  · exact cover_2576882
#print axioms cover_2576800

def state_2577078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 45 else (if j.val < 4 then 48 else 17)))
theorem cover_2577078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577078 := by
  apply coveredState_split_literal (state := state_2577078) 1
    state_2577079 state_2577102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577079
  · exact cover_2577102
#print axioms cover_2577078

def state_2577072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 48 else 17)))
theorem cover_2577072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577072 := by
  apply coveredState_split_literal (state := state_2577072) 2
    state_2577073 state_2577078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577073
  · exact cover_2577078
#print axioms cover_2577072

def state_2577060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 48 else 17)))
theorem cover_2577060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577060 := by
  apply coveredState_split_literal (state := state_2577060) 0
    state_2577061 state_2577072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577061
  · exact cover_2577072
#print axioms cover_2577060

def state_2577157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 49 else 17)))
theorem cover_2577157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577157 := by
  apply coveredState_split_literal (state := state_2577157) 0
    state_2577158 state_2577163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577158
  · exact cover_2577163
#print axioms cover_2577157

def state_2577059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 17)))
theorem cover_2577059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577059 := by
  apply coveredState_split_literal (state := state_2577059) 3
    state_2577060 state_2577157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577060
  · exact cover_2577157
#print axioms cover_2577059

def state_2576799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 8)))
theorem cover_2576799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576799 := by
  apply coveredState_split_literal (state := state_2576799) 4
    state_2576800 state_2577059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576800
  · exact cover_2577059
#print axioms cover_2576799

def state_2576789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 8)))
theorem cover_2576789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576789 := by
  apply coveredState_split_literal (state := state_2576789) 1
    state_2576790 state_2576799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576790
  · exact cover_2576799
#print axioms cover_2576789

def state_2577238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 8)))
theorem cover_2577238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577238 := by
  apply coveredState_split_literal (state := state_2577238) 4
    state_2577239 state_2577298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577239
  · exact cover_2577298
#print axioms cover_2577238

def state_2577224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 8)))
theorem cover_2577224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577224 := by
  apply coveredState_split_literal (state := state_2577224) 1
    state_2577225 state_2577238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577225
  · exact cover_2577238
#print axioms cover_2577224

def state_2576788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 22 else (if j.val < 4 then 12 else 8)))
theorem cover_2576788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576788 := by
  apply coveredState_split_literal (state := state_2576788) 3
    state_2576789 state_2577224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576789
  · exact cover_2577224
#print axioms cover_2576788

def state_2577491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 35)))
theorem cover_2577491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577491 := by
  apply coveredState_split_literal (state := state_2577491) 3
    state_2577492 state_2577511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577492
  · exact cover_2577511
#print axioms cover_2577491

def state_2577475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 17)))
theorem cover_2577475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577475 := by
  apply coveredState_split_literal (state := state_2577475) 4
    state_2577476 state_2577491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577476
  · exact cover_2577491
#print axioms cover_2577475

def state_2577618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 97 else 35)))
theorem cover_2577618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577618 := by
  apply coveredState_split_literal (state := state_2577618) 2
    state_2577619 state_2577676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577619
  · exact cover_2577676
#print axioms cover_2577618

def state_2577598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 35)))
theorem cover_2577598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577598 := by
  apply coveredState_split_literal (state := state_2577598) 3
    state_2577599 state_2577618
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577599
  · exact cover_2577618
#print axioms cover_2577598

def state_2577566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 17)))
theorem cover_2577566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577566 := by
  apply coveredState_split_literal (state := state_2577566) 4
    state_2577567 state_2577598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577567
  · exact cover_2577598
#print axioms cover_2577566

def state_2577474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 17)))
theorem cover_2577474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577474 := by
  apply coveredState_split_literal (state := state_2577474) 1
    state_2577475 state_2577566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577475
  · exact cover_2577566
#print axioms cover_2577474

def state_2577440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 17)))
theorem cover_2577440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577440 := by
  apply coveredState_split_literal (state := state_2577440) 0
    state_2577441 state_2577474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577441
  · exact cover_2577474
#print axioms cover_2577440

def state_2577777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 92 else (if j.val < 4 then 49 else 34)))
theorem cover_2577777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577777 := by
  apply coveredState_split_literal (state := state_2577777) 3
    state_2577778 state_2577823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577778
  · exact cover_2577823
#print axioms cover_2577777

def state_2577776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 34)))
theorem cover_2577776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577776 := by
  apply coveredState_split_literal (state := state_2577776) 2
    state_2577777 state_2577846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577777
  · exact cover_2577846
#print axioms cover_2577776

def state_2577901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 93 else (if j.val < 4 then 49 else 35)))
theorem cover_2577901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577901 := by
  apply coveredState_split_literal (state := state_2577901) 3
    state_2577902 state_2577963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577902
  · exact cover_2577963
#print axioms cover_2577901

def state_2577865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 35)))
theorem cover_2577865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577865 := by
  apply coveredState_split_literal (state := state_2577865) 2
    state_2577866 state_2577901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577866
  · exact cover_2577901
#print axioms cover_2577865

def state_2577775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 17)))
theorem cover_2577775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577775 := by
  apply coveredState_split_literal (state := state_2577775) 4
    state_2577776 state_2577865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577776
  · exact cover_2577865
#print axioms cover_2577775

def state_2577727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 17)))
theorem cover_2577727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577727 := by
  apply coveredState_split_literal (state := state_2577727) 1
    state_2577728 state_2577775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577728
  · exact cover_2577775
#print axioms cover_2577727

def state_2577715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 17)))
theorem cover_2577715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577715 := by
  apply coveredState_split_literal (state := state_2577715) 0
    state_2577716 state_2577727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577716
  · exact cover_2577727
#print axioms cover_2577715

def state_2577439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 24 else 17)))
theorem cover_2577439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577439 := by
  apply coveredState_split_literal (state := state_2577439) 3
    state_2577440 state_2577715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577440
  · exact cover_2577715
#print axioms cover_2577439
end Mub6.Numerical.CircleFullD0.Forest
