import CircleFullInterface
import CircleForestAssembly0170
import CircleForestChunk0667
import CircleForestChunk0668
import CircleForestChunk0669
import CircleForestChunk0670
import CircleForestChunk0671
import CircleForestChunk0672
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_766058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
theorem cover_766058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766058 := by
  apply coveredState_split_literal (state := state_766058) 4
    state_766059 state_766164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766059
  · exact cover_766164
#print axioms cover_766058

def state_765980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_765980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765980 := by
  apply coveredState_split_literal (state := state_765980) 2
    state_765981 state_766058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765981
  · exact cover_766058
#print axioms cover_765980

def state_765979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_765979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765979 := by
  apply coveredState_split_literal (state := state_765979) 1
    state_765980 state_766183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765980
  · exact cover_766183
#print axioms cover_765979

def state_765905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_765905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765905 := by
  apply coveredState_split_literal (state := state_765905) 4
    state_765906 state_765979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765906
  · exact cover_765979
#print axioms cover_765905

def state_765887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_765887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765887 := by
  apply coveredState_split_literal (state := state_765887) 3
    state_765888 state_765905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765888
  · exact cover_765905
#print axioms cover_765887

def state_766212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_766212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766212 := by
  apply coveredState_split_literal (state := state_766212) 3
    state_766213 state_766220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766213
  · exact cover_766220
#print axioms cover_766212

def state_765886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_765886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765886 := by
  apply coveredState_split_literal (state := state_765886) 2
    state_765887 state_766212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765887
  · exact cover_766212
#print axioms cover_765886

def state_765740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_765740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765740 := by
  apply coveredState_split_literal (state := state_765740) 1
    state_765741 state_765886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765741
  · exact cover_765886
#print axioms cover_765740

def state_765628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_765628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765628 := by
  apply coveredState_split_literal (state := state_765628) 0
    state_765629 state_765740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765629
  · exact cover_765740
#print axioms cover_765628

def state_766280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_766280 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766280 := by
  apply coveredState_split_literal (state := state_766280) 1
    state_766281 state_766298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766281
  · exact cover_766298
#print axioms cover_766280

def state_766279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_766279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766279 := by
  apply coveredState_split_literal (state := state_766279) 0
    state_766280 state_766353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766280
  · exact cover_766353
#print axioms cover_766279

def state_765627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_765627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765627 := by
  apply coveredState_split_literal (state := state_765627) 4
    state_765628 state_766279
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765628
  · exact cover_766279
#print axioms cover_765627

def state_765511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_765511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765511 := by
  apply coveredState_split_literal (state := state_765511) 3
    state_765512 state_765627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765512
  · exact cover_765627
#print axioms cover_765511

def state_764019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_764019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764019 := by
  apply coveredState_split_literal (state := state_764019) 2
    state_764020 state_765511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764020
  · exact cover_765511
#print axioms cover_764019

def state_766458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_766458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766458 := by
  apply coveredState_split_literal (state := state_766458) 2
    state_766459 state_766498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766459
  · exact cover_766498
#print axioms cover_766458

def state_766457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_766457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766457 := by
  apply coveredState_split_literal (state := state_766457) 1
    state_766458 state_766531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766458
  · exact cover_766531
#print axioms cover_766457

def state_766628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_766628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766628 := by
  apply coveredState_split_literal (state := state_766628) 1
    state_766629 state_766678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766629
  · exact cover_766678
#print axioms cover_766628

def state_766608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_766608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766608 := by
  apply coveredState_split_literal (state := state_766608) 4
    state_766609 state_766628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766609
  · exact cover_766628
#print axioms cover_766608

def state_766566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_766566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766566 := by
  apply coveredState_split_literal (state := state_766566) 3
    state_766567 state_766608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766567
  · exact cover_766608
#print axioms cover_766566

def state_766712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 7)))
theorem cover_766712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766712 := by
  apply coveredState_split_literal (state := state_766712) 1
    state_766713 state_766770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766713
  · exact cover_766770
#print axioms cover_766712

def state_766702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
theorem cover_766702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766702 := by
  apply coveredState_split_literal (state := state_766702) 4
    state_766703 state_766712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766703
  · exact cover_766712
#print axioms cover_766702

def state_766802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 7)))
theorem cover_766802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766802 := by
  apply coveredState_split_literal (state := state_766802) 0
    state_766803 state_766824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766803
  · exact cover_766824
#print axioms cover_766802

def state_766801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 7)))
theorem cover_766801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766801 := by
  apply coveredState_split_literal (state := state_766801) 3
    state_766802 state_766875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766802
  · exact cover_766875
#print axioms cover_766801

def state_766800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_766800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766800 := by
  apply coveredState_split_literal (state := state_766800) 2
    state_766801 state_766878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766801
  · exact cover_766878
#print axioms cover_766800

def state_766909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 7)))
theorem cover_766909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766909 := by
  apply coveredState_split_literal (state := state_766909) 4
    state_766910 state_766925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766910
  · exact cover_766925
#print axioms cover_766909

def state_766887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 7)))
theorem cover_766887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766887 := by
  apply coveredState_split_literal (state := state_766887) 0
    state_766888 state_766909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766888
  · exact cover_766909
#print axioms cover_766887

def state_766886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 7)))
theorem cover_766886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766886 := by
  apply coveredState_split_literal (state := state_766886) 3
    state_766887 state_766988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766887
  · exact cover_766988
#print axioms cover_766886

def state_766885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_766885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766885 := by
  apply coveredState_split_literal (state := state_766885) 2
    state_766886 state_767005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766886
  · exact cover_767005
#print axioms cover_766885

def state_766799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_766799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766799 := by
  apply coveredState_split_literal (state := state_766799) 1
    state_766800 state_766885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766800
  · exact cover_766885
#print axioms cover_766799

def state_766795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_766795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766795 := by
  apply coveredState_split_literal (state := state_766795) 4
    state_766796 state_766799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766796
  · exact cover_766799
#print axioms cover_766795

def state_766701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_766701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766701 := by
  apply coveredState_split_literal (state := state_766701) 3
    state_766702 state_766795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766702
  · exact cover_766795
#print axioms cover_766701

def state_766565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_766565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766565 := by
  apply coveredState_split_literal (state := state_766565) 2
    state_766566 state_766701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766566
  · exact cover_766701
#print axioms cover_766565
end Mub6.Numerical.CircleFullPrototype.Forest
