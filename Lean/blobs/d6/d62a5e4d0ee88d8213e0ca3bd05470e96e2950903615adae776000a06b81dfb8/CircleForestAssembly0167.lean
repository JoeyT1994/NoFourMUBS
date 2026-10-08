import CircleFullInterface
import CircleForestAssembly0161
import CircleForestAssembly0162
import CircleForestAssembly0166
import CircleForestChunk0617
import CircleForestChunk0636
import CircleForestChunk0637
import CircleForestChunk0638
import CircleForestChunk0639
import CircleForestChunk0640
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1336985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1336985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336985 := by
  apply coveredState_split_literal (state := state_1336985) 2
    state_1336986 state_1337921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336986
  · exact cover_1337921
#print axioms cover_1336985

def state_1341774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
theorem cover_1341774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341774 := by
  apply coveredState_split_literal (state := state_1341774) 0
    state_1341775 state_1341792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341775
  · exact cover_1341792
#print axioms cover_1341774

def state_1341770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 5)))
theorem cover_1341770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341770 := by
  apply coveredState_split_literal (state := state_1341770) 4
    state_1341771 state_1341774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341771
  · exact cover_1341774
#print axioms cover_1341770

def state_1341754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1341754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341754 := by
  apply coveredState_split_literal (state := state_1341754) 2
    state_1341755 state_1341770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341755
  · exact cover_1341770
#print axioms cover_1341754

def state_1336984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1336984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336984 := by
  apply coveredState_split_literal (state := state_1336984) 1
    state_1336985 state_1341754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336985
  · exact cover_1341754
#print axioms cover_1336984

def state_1336976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
theorem cover_1336976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336976 := by
  apply coveredState_split_literal (state := state_1336976) 4
    state_1336977 state_1336984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336977
  · exact cover_1336984
#print axioms cover_1336976

def state_1341854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_1341854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341854 := by
  apply coveredState_split_literal (state := state_1341854) 2
    state_1341855 state_1341894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341855
  · exact cover_1341894
#print axioms cover_1341854

def state_1341940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
theorem cover_1341940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341940 := by
  apply coveredState_split_literal (state := state_1341940) 3
    state_1341941 state_1342000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341941
  · exact cover_1342000
#print axioms cover_1341940

def state_1342055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 23)))
theorem cover_1342055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342055 := by
  apply coveredState_split_literal (state := state_1342055) 1
    state_1342056 state_1342113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342056
  · exact cover_1342113
#print axioms cover_1342055

def state_1342043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 11)))
theorem cover_1342043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342043 := by
  apply coveredState_split_literal (state := state_1342043) 4
    state_1342044 state_1342055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342044
  · exact cover_1342055
#print axioms cover_1342043

def state_1342042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 11)))
theorem cover_1342042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342042 := by
  apply coveredState_split_literal (state := state_1342042) 2
    state_1342043 state_1342126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342043
  · exact cover_1342126
#print axioms cover_1342042

def state_1342030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 11)))
theorem cover_1342030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342030 := by
  apply coveredState_split_literal (state := state_1342030) 0
    state_1342031 state_1342042
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342031
  · exact cover_1342042
#print axioms cover_1342030

def state_1342020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 5)))
theorem cover_1342020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342020 := by
  apply coveredState_split_literal (state := state_1342020) 4
    state_1342021 state_1342030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342021
  · exact cover_1342030
#print axioms cover_1342020

def state_1342019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 5)))
theorem cover_1342019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342019 := by
  apply coveredState_split_literal (state := state_1342019) 3
    state_1342020 state_1342145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342020
  · exact cover_1342145
#print axioms cover_1342019

def state_1341939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_1341939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341939 := by
  apply coveredState_split_literal (state := state_1341939) 2
    state_1341940 state_1342019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341940
  · exact cover_1342019
#print axioms cover_1341939

def state_1341853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_1341853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341853 := by
  apply coveredState_split_literal (state := state_1341853) 1
    state_1341854 state_1341939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341854
  · exact cover_1341939
#print axioms cover_1341853

def state_1341845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_1341845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341845 := by
  apply coveredState_split_literal (state := state_1341845) 4
    state_1341846 state_1341853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341846
  · exact cover_1341853
#print axioms cover_1341845

def state_1336975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_1336975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336975 := by
  apply coveredState_split_literal (state := state_1336975) 3
    state_1336976 state_1341845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336976
  · exact cover_1341845
#print axioms cover_1336975

def state_1336943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1336943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336943 := by
  apply coveredState_split_literal (state := state_1336943) 2
    state_1336944 state_1336975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336944
  · exact cover_1336975
#print axioms cover_1336943

def state_1342162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_1342162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342162 := by
  apply coveredState_split_literal (state := state_1342162) 3
    state_1342163 state_1342176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342163
  · exact cover_1342176
#print axioms cover_1342162

def state_1342158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1342158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342158 := by
  apply coveredState_split_literal (state := state_1342158) 2
    state_1342159 state_1342162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342159
  · exact cover_1342162
#print axioms cover_1342158

def state_1336942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1336942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336942 := by
  apply coveredState_split_literal (state := state_1336942) 1
    state_1336943 state_1342158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336943
  · exact cover_1342158
#print axioms cover_1336942

def state_1336810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1336810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336810 := by
  apply coveredState_split_literal (state := state_1336810) 0
    state_1336811 state_1336942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336811
  · exact cover_1336942
#print axioms cover_1336810

def state_1342288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1342288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342288 := by
  apply coveredState_split_literal (state := state_1342288) 2
    state_1342289 state_1342342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342289
  · exact cover_1342342
#print axioms cover_1342288

def state_1342230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1342230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342230 := by
  apply coveredState_split_literal (state := state_1342230) 1
    state_1342231 state_1342288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342231
  · exact cover_1342288
#print axioms cover_1342230

def state_1342433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 12)))
theorem cover_1342433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342433 := by
  apply coveredState_split_literal (state := state_1342433) 1
    state_1342434 state_1342465
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342434
  · exact cover_1342465
#print axioms cover_1342433

def state_1342421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 12)))
theorem cover_1342421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342421 := by
  apply coveredState_split_literal (state := state_1342421) 3
    state_1342422 state_1342433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342422
  · exact cover_1342433
#print axioms cover_1342421

def state_1342395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 12)))
theorem cover_1342395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342395 := by
  apply coveredState_split_literal (state := state_1342395) 0
    state_1342396 state_1342421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342396
  · exact cover_1342421
#print axioms cover_1342395

def state_1342394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 6)))
theorem cover_1342394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342394 := by
  apply coveredState_split_literal (state := state_1342394) 4
    state_1342395 state_1342518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342395
  · exact cover_1342518
#print axioms cover_1342394

def state_1342641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 24)))
theorem cover_1342641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342641 := by
  apply coveredState_split_literal (state := state_1342641) 3
    state_1342642 state_1342699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342642
  · exact cover_1342699
#print axioms cover_1342641

def state_1342640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 12)))
theorem cover_1342640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342640 := by
  apply coveredState_split_literal (state := state_1342640) 4
    state_1342641 state_1342724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342641
  · exact cover_1342724
#print axioms cover_1342640

def state_1342639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 12)))
theorem cover_1342639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342639 := by
  apply coveredState_split_literal (state := state_1342639) 2
    state_1342640 state_1342733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342640
  · exact cover_1342733
#print axioms cover_1342639
end Mub6.Numerical.CircleFullD0.Forest
