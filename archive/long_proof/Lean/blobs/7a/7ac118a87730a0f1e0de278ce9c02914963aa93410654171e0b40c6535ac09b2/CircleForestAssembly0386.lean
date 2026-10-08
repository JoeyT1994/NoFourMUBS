import CircleFullInterface
import CircleForestChunk1503
import CircleForestChunk1504
import CircleForestChunk1505
import CircleForestChunk1506
import CircleForestChunk1507
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1661561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1661561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661561 := by
  apply coveredState_split_literal (state := state_1661561) 3
    state_1661562 state_1661585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661562
  · exact cover_1661585
#print axioms cover_1661561

def state_1661707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 12)))
theorem cover_1661707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661707 := by
  apply coveredState_split_literal (state := state_1661707) 3
    state_1661708 state_1661763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661708
  · exact cover_1661763
#print axioms cover_1661707

def state_1661706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 12)))
theorem cover_1661706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661706 := by
  apply coveredState_split_literal (state := state_1661706) 2
    state_1661707 state_1661772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661707
  · exact cover_1661772
#print axioms cover_1661706

def state_1661705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_1661705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661705 := by
  apply coveredState_split_literal (state := state_1661705) 4
    state_1661706 state_1661787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661706
  · exact cover_1661787
#print axioms cover_1661705

def state_1661704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_1661704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661704 := by
  apply coveredState_split_literal (state := state_1661704) 1
    state_1661705 state_1661788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661705
  · exact cover_1661788
#print axioms cover_1661704

def state_1661833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 48)))
theorem cover_1661833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661833 := by
  apply coveredState_split_literal (state := state_1661833) 1
    state_1661834 state_1661893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661834
  · exact cover_1661893
#print axioms cover_1661833

def state_1661832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 48)))
theorem cover_1661832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661832 := by
  apply coveredState_split_literal (state := state_1661832) 3
    state_1661833 state_1661900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661833
  · exact cover_1661900
#print axioms cover_1661832

def state_1661822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_1661822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661822 := by
  apply coveredState_split_literal (state := state_1661822) 2
    state_1661823 state_1661832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661823
  · exact cover_1661832
#print axioms cover_1661822

def state_1661821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_1661821 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661821 := by
  apply coveredState_split_literal (state := state_1661821) 0
    state_1661822 state_1661909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661822
  · exact cover_1661909
#print axioms cover_1661821

def state_1661820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_1661820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661820 := by
  apply coveredState_split_literal (state := state_1661820) 4
    state_1661821 state_1661916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661821
  · exact cover_1661916
#print axioms cover_1661820

def state_1661819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_1661819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661819 := by
  apply coveredState_split_literal (state := state_1661819) 1
    state_1661820 state_1661943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661820
  · exact cover_1661943
#print axioms cover_1661819

def state_1661801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 24)))
theorem cover_1661801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661801 := by
  apply coveredState_split_literal (state := state_1661801) 3
    state_1661802 state_1661819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661802
  · exact cover_1661819
#print axioms cover_1661801

def state_1661963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 48)))
theorem cover_1661963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661963 := by
  apply coveredState_split_literal (state := state_1661963) 1
    state_1661964 state_1661997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661964
  · exact cover_1661997
#print axioms cover_1661963

def state_1661962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 48)))
theorem cover_1661962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661962 := by
  apply coveredState_split_literal (state := state_1661962) 2
    state_1661963 state_1662032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661963
  · exact cover_1662032
#print axioms cover_1661962

def state_1661952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 48)))
theorem cover_1661952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661952 := by
  apply coveredState_split_literal (state := state_1661952) 3
    state_1661953 state_1661962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661953
  · exact cover_1661962
#print axioms cover_1661952

def state_1661951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 48)))
theorem cover_1661951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661951 := by
  apply coveredState_split_literal (state := state_1661951) 0
    state_1661952 state_1662043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661952
  · exact cover_1662043
#print axioms cover_1661951

def state_1661950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 24)))
theorem cover_1661950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661950 := by
  apply coveredState_split_literal (state := state_1661950) 4
    state_1661951 state_1662050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661951
  · exact cover_1662050
#print axioms cover_1661950

def state_1661949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 24)))
theorem cover_1661949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661949 := by
  apply coveredState_split_literal (state := state_1661949) 1
    state_1661950 state_1662053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661950
  · exact cover_1662053
#print axioms cover_1661949

def state_1662088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 48)))
theorem cover_1662088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662088 := by
  apply coveredState_split_literal (state := state_1662088) 4
    state_1662089 state_1662128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662089
  · exact cover_1662128
#print axioms cover_1662088

def state_1662087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 48)))
theorem cover_1662087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662087 := by
  apply coveredState_split_literal (state := state_1662087) 1
    state_1662088 state_1662161
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662088
  · exact cover_1662161
#print axioms cover_1662087

def state_1662086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 29 else 48)))
theorem cover_1662086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662086 := by
  apply coveredState_split_literal (state := state_1662086) 3
    state_1662087 state_1662202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662087
  · exact cover_1662202
#print axioms cover_1662086

def state_1662085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 48)))
theorem cover_1662085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662085 := by
  apply coveredState_split_literal (state := state_1662085) 2
    state_1662086 state_1662203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662086
  · exact cover_1662203
#print axioms cover_1662085

def state_1662084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 48)))
theorem cover_1662084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662084 := by
  apply coveredState_split_literal (state := state_1662084) 0
    state_1662085 state_1662206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662085
  · exact cover_1662206
#print axioms cover_1662084

def state_1662083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 24)))
theorem cover_1662083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662083 := by
  apply coveredState_split_literal (state := state_1662083) 4
    state_1662084 state_1662243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662084
  · exact cover_1662243
#print axioms cover_1662083

def state_1662082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 24)))
theorem cover_1662082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662082 := by
  apply coveredState_split_literal (state := state_1662082) 1
    state_1662083 state_1662284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662083
  · exact cover_1662284
#print axioms cover_1662082

def state_1661948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 24)))
theorem cover_1661948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661948 := by
  apply coveredState_split_literal (state := state_1661948) 3
    state_1661949 state_1662082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661949
  · exact cover_1662082
#print axioms cover_1661948

def state_1661800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 24)))
theorem cover_1661800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661800 := by
  apply coveredState_split_literal (state := state_1661800) 2
    state_1661801 state_1661948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661801
  · exact cover_1661948
#print axioms cover_1661800

def state_1661799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_1661799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661799 := by
  apply coveredState_split_literal (state := state_1661799) 4
    state_1661800 state_1662347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661800
  · exact cover_1662347
#print axioms cover_1661799

def state_1661798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_1661798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661798 := by
  apply coveredState_split_literal (state := state_1661798) 1
    state_1661799 state_1662360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661799
  · exact cover_1662360
#print axioms cover_1661798

def state_1661797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_1661797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661797 := by
  apply coveredState_split_literal (state := state_1661797) 0
    state_1661798 state_1662377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661798
  · exact cover_1662377
#print axioms cover_1661797

def state_1662412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
theorem cover_1662412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662412 := by
  apply coveredState_split_literal (state := state_1662412) 4
    state_1662413 state_1662456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662413
  · exact cover_1662456
#print axioms cover_1662412

def state_1662411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
theorem cover_1662411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662411 := by
  apply coveredState_split_literal (state := state_1662411) 1
    state_1662412 state_1662495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662412
  · exact cover_1662495
#print axioms cover_1662411
end Mub6.Numerical.CircleFullD0.Forest
