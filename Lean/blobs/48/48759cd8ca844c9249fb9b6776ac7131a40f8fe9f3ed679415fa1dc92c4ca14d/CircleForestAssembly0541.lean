import CircleFullInterface
import CircleForestAssembly0540
import CircleForestChunk2101
import CircleForestChunk2133
import CircleForestChunk2134
import CircleForestChunk2135
import CircleForestChunk2136
import CircleForestChunk2137
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2584873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_2584873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584873 := by
  apply coveredState_split_literal (state := state_2584873) 3
    state_2584874 state_2584889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584874
  · exact cover_2584889
#print axioms cover_2584873

def state_2584872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2584872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584872 := by
  apply coveredState_split_literal (state := state_2584872) 2
    state_2584873 state_2592594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584873
  · exact cover_2592594
#print axioms cover_2584872

def state_2592625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_2592625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592625 := by
  apply coveredState_split_literal (state := state_2592625) 0
    state_2592626 state_2592689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592626
  · exact cover_2592689
#print axioms cover_2592625

def state_2592794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 5)))
theorem cover_2592794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592794 := by
  apply coveredState_split_literal (state := state_2592794) 3
    state_2592795 state_2592798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592795
  · exact cover_2592798
#print axioms cover_2592794

def state_2592793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_2592793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592793 := by
  apply coveredState_split_literal (state := state_2592793) 2
    state_2592794 state_2592861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592794
  · exact cover_2592861
#print axioms cover_2592793

def state_2592792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_2592792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592792 := by
  apply coveredState_split_literal (state := state_2592792) 1
    state_2592793 state_2592872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592793
  · exact cover_2592872
#print axioms cover_2592792

def state_2592748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_2592748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592748 := by
  apply coveredState_split_literal (state := state_2592748) 0
    state_2592749 state_2592792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592749
  · exact cover_2592792
#print axioms cover_2592748

def state_2592624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_2592624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592624 := by
  apply coveredState_split_literal (state := state_2592624) 4
    state_2592625 state_2592748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592625
  · exact cover_2592748
#print axioms cover_2592624

def state_2592618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_2592618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592618 := by
  apply coveredState_split_literal (state := state_2592618) 3
    state_2592619 state_2592624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592619
  · exact cover_2592624
#print axioms cover_2592618

def state_2592617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2592617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592617 := by
  apply coveredState_split_literal (state := state_2592617) 2
    state_2592618 state_2592887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592618
  · exact cover_2592887
#print axioms cover_2592617

def state_2584871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2584871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584871 := by
  apply coveredState_split_literal (state := state_2584871) 1
    state_2584872 state_2592617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584872
  · exact cover_2592617
#print axioms cover_2584871

def state_2592929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 5)))
theorem cover_2592929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592929 := by
  apply coveredState_split_literal (state := state_2592929) 4
    state_2592930 state_2592957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592930
  · exact cover_2592957
#print axioms cover_2592929

def state_2592927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 5)))
theorem cover_2592927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592927 := by
  apply coveredState_split_literal (state := state_2592927) 3
    state_2592928 state_2592929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592928
  · exact cover_2592929
#print axioms cover_2592927

def state_2592926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_2592926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592926 := by
  apply coveredState_split_literal (state := state_2592926) 2
    state_2592927 state_2593008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592927
  · exact cover_2593008
#print axioms cover_2592926

def state_2592910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_2592910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592910 := by
  apply coveredState_split_literal (state := state_2592910) 4
    state_2592911 state_2592926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592911
  · exact cover_2592926
#print axioms cover_2592910

def state_2592904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_2592904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592904 := by
  apply coveredState_split_literal (state := state_2592904) 3
    state_2592905 state_2592910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592905
  · exact cover_2592910
#print axioms cover_2592904

def state_2592903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2592903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592903 := by
  apply coveredState_split_literal (state := state_2592903) 2
    state_2592904 state_2593037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592904
  · exact cover_2593037
#print axioms cover_2592903

def state_2592902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2592902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592902 := by
  apply coveredState_split_literal (state := state_2592902) 1
    state_2592903 state_2593048
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592903
  · exact cover_2593048
#print axioms cover_2592902

def state_2584870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2584870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584870 := by
  apply coveredState_split_literal (state := state_2584870) 0
    state_2584871 state_2592902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584871
  · exact cover_2592902
#print axioms cover_2584870

def state_2593086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2593086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593086 := by
  apply coveredState_split_literal (state := state_2593086) 1
    state_2593087 state_2593140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593087
  · exact cover_2593140
#print axioms cover_2593086

def state_2593187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 6)))
theorem cover_2593187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593187 := by
  apply coveredState_split_literal (state := state_2593187) 3
    state_2593188 state_2593199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593188
  · exact cover_2593199
#print axioms cover_2593187

def state_2593186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
theorem cover_2593186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593186 := by
  apply coveredState_split_literal (state := state_2593186) 2
    state_2593187 state_2593260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593187
  · exact cover_2593260
#print axioms cover_2593186

def state_2593185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_2593185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593185 := by
  apply coveredState_split_literal (state := state_2593185) 4
    state_2593186 state_2593315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593186
  · exact cover_2593315
#print axioms cover_2593185

def state_2593179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_2593179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593179 := by
  apply coveredState_split_literal (state := state_2593179) 3
    state_2593180 state_2593185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593180
  · exact cover_2593185
#print axioms cover_2593179

def state_2593178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2593178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593178 := by
  apply coveredState_split_literal (state := state_2593178) 2
    state_2593179 state_2593320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593179
  · exact cover_2593320
#print axioms cover_2593178

def state_2593177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2593177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593177 := by
  apply coveredState_split_literal (state := state_2593177) 1
    state_2593178 state_2593331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593178
  · exact cover_2593331
#print axioms cover_2593177

def state_2593085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2593085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593085 := by
  apply coveredState_split_literal (state := state_2593085) 0
    state_2593086 state_2593177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593086
  · exact cover_2593177
#print axioms cover_2593085

def state_2584869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_2584869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584869 := by
  apply coveredState_split_literal (state := state_2584869) 4
    state_2584870 state_2593085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584870
  · exact cover_2593085
#print axioms cover_2584869

def state_2593521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 38)))
theorem cover_2593521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593521 := by
  apply coveredState_split_literal (state := state_2593521) 2
    state_2593522 state_2593573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593522
  · exact cover_2593573
#print axioms cover_2593521

def state_2593509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 38)))
theorem cover_2593509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593509 := by
  apply coveredState_split_literal (state := state_2593509) 1
    state_2593510 state_2593521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593510
  · exact cover_2593521
#print axioms cover_2593509

def state_2593508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 19)))
theorem cover_2593508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593508 := by
  apply coveredState_split_literal (state := state_2593508) 4
    state_2593509 state_2593598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593509
  · exact cover_2593598
#print axioms cover_2593508

def state_2593504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 19)))
theorem cover_2593504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593504 := by
  apply coveredState_split_literal (state := state_2593504) 0
    state_2593505 state_2593508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593505
  · exact cover_2593508
#print axioms cover_2593504
end Mub6.Numerical.CircleFullD0.Forest
