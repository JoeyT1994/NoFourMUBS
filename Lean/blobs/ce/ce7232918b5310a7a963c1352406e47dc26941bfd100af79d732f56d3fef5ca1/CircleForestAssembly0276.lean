import CircleFullInterface
import CircleForestAssembly0275
import CircleForestChunk1057
import CircleForestChunk1058
import CircleForestChunk1059
import CircleForestChunk1060
import CircleForestChunk1061
import CircleForestChunk1062
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1553588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 20)))
theorem cover_1553588 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553588 := by
  apply coveredState_split_literal (state := state_1553588) 1
    state_1553589 state_1553760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553589
  · exact cover_1553760
#print axioms cover_1553588

def state_1554058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 42)))
theorem cover_1554058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554058 := by
  apply coveredState_split_literal (state := state_1554058) 2
    state_1554059 state_1554114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554059
  · exact cover_1554114
#print axioms cover_1554058

def state_1554057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 42)))
theorem cover_1554057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554057 := by
  apply coveredState_split_literal (state := state_1554057) 0
    state_1554058 state_1554129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554058
  · exact cover_1554129
#print axioms cover_1554057

def state_1554045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 42)))
theorem cover_1554045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554045 := by
  apply coveredState_split_literal (state := state_1554045) 3
    state_1554046 state_1554057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554046
  · exact cover_1554057
#print axioms cover_1554045

def state_1554241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 118) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 85)))
theorem cover_1554241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554241 := by
  apply coveredState_split_literal (state := state_1554241) 2
    state_1554242 state_1554291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554242
  · exact cover_1554291
#print axioms cover_1554241

def state_1554240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 118) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 85)))
theorem cover_1554240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554240 := by
  apply coveredState_split_literal (state := state_1554240) 0
    state_1554241 state_1554330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554241
  · exact cover_1554330
#print axioms cover_1554240

def state_1554239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 118) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 85)))
theorem cover_1554239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554239 := by
  apply coveredState_split_literal (state := state_1554239) 3
    state_1554240 state_1554347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554240
  · exact cover_1554347
#print axioms cover_1554239

def state_1554360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 85)))
theorem cover_1554360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554360 := by
  apply coveredState_split_literal (state := state_1554360) 2
    state_1554361 state_1554392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554361
  · exact cover_1554392
#print axioms cover_1554360

def state_1554359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 85)))
theorem cover_1554359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554359 := by
  apply coveredState_split_literal (state := state_1554359) 0
    state_1554360 state_1554453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554360
  · exact cover_1554453
#print axioms cover_1554359

def state_1554358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 85)))
theorem cover_1554358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554358 := by
  apply coveredState_split_literal (state := state_1554358) 3
    state_1554359 state_1554464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554359
  · exact cover_1554464
#print axioms cover_1554358

def state_1554238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 85)))
theorem cover_1554238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554238 := by
  apply coveredState_split_literal (state := state_1554238) 1
    state_1554239 state_1554358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554239
  · exact cover_1554358
#print axioms cover_1554238

def state_1554194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 42)))
theorem cover_1554194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554194 := by
  apply coveredState_split_literal (state := state_1554194) 4
    state_1554195 state_1554238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554195
  · exact cover_1554238
#print axioms cover_1554194

def state_1554581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 85)))
theorem cover_1554581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554581 := by
  apply coveredState_split_literal (state := state_1554581) 3
    state_1554582 state_1554621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554582
  · exact cover_1554621
#print axioms cover_1554581

def state_1554531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 85)))
theorem cover_1554531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554531 := by
  apply coveredState_split_literal (state := state_1554531) 1
    state_1554532 state_1554581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554532
  · exact cover_1554581
#print axioms cover_1554531

def state_1554483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 42)))
theorem cover_1554483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554483 := by
  apply coveredState_split_literal (state := state_1554483) 4
    state_1554484 state_1554531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554484
  · exact cover_1554531
#print axioms cover_1554483

def state_1554193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 42)))
theorem cover_1554193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554193 := by
  apply coveredState_split_literal (state := state_1554193) 2
    state_1554194 state_1554483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554194
  · exact cover_1554483
#print axioms cover_1554193

def state_1554192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 42)))
theorem cover_1554192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554192 := by
  apply coveredState_split_literal (state := state_1554192) 0
    state_1554193 state_1554680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554193
  · exact cover_1554680
#print axioms cover_1554192

def state_1554148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 42)))
theorem cover_1554148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554148 := by
  apply coveredState_split_literal (state := state_1554148) 3
    state_1554149 state_1554192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554149
  · exact cover_1554192
#print axioms cover_1554148

def state_1554044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 42)))
theorem cover_1554044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554044 := by
  apply coveredState_split_literal (state := state_1554044) 1
    state_1554045 state_1554148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554045
  · exact cover_1554148
#print axioms cover_1554044

def state_1554841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 238) else (if j.val < 3 then 208 else (if j.val < 4 then 82 else 172)))
theorem cover_1554841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554841 := by
  apply coveredState_split_literal (state := state_1554841) 3
    state_1554842 state_1554879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554842
  · exact cover_1554879
#print axioms cover_1554841

def state_1554840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 208 else (if j.val < 4 then 82 else 172)))
theorem cover_1554840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554840 := by
  apply coveredState_split_literal (state := state_1554840) 1
    state_1554841 state_1554910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554841
  · exact cover_1554910
#print axioms cover_1554840

def state_1554839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 208 else (if j.val < 4 then 82 else 86)))
theorem cover_1554839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554839 := by
  apply coveredState_split_literal (state := state_1554839) 4
    state_1554840 state_1554939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554840
  · exact cover_1554939
#print axioms cover_1554839

def state_1554941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 209 else (if j.val < 4 then 82 else 172)))
theorem cover_1554941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554941 := by
  apply coveredState_split_literal (state := state_1554941) 1
    state_1554942 state_1554977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554942
  · exact cover_1554977
#print axioms cover_1554941

def state_1554940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 209 else (if j.val < 4 then 82 else 86)))
theorem cover_1554940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554940 := by
  apply coveredState_split_literal (state := state_1554940) 4
    state_1554941 state_1555020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554941
  · exact cover_1555020
#print axioms cover_1554940

def state_1554838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 86)))
theorem cover_1554838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554838 := by
  apply coveredState_split_literal (state := state_1554838) 2
    state_1554839 state_1554940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554839
  · exact cover_1554940
#print axioms cover_1554838

def state_1554837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 86)))
theorem cover_1554837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554837 := by
  apply coveredState_split_literal (state := state_1554837) 0
    state_1554838 state_1555021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554838
  · exact cover_1555021
#print axioms cover_1554837

def state_1554836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 86)))
theorem cover_1554836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554836 := by
  apply coveredState_split_literal (state := state_1554836) 3
    state_1554837 state_1555056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554837
  · exact cover_1555056
#print axioms cover_1554836

def state_1554796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 86)))
theorem cover_1554796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554796 := by
  apply coveredState_split_literal (state := state_1554796) 1
    state_1554797 state_1554836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554797
  · exact cover_1554836
#print axioms cover_1554796

def state_1554795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 43)))
theorem cover_1554795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554795 := by
  apply coveredState_split_literal (state := state_1554795) 4
    state_1554796 state_1555089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554796
  · exact cover_1555089
#print axioms cover_1554795

def state_1555140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 86)))
theorem cover_1555140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555140 := by
  apply coveredState_split_literal (state := state_1555140) 2
    state_1555141 state_1555174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555141
  · exact cover_1555174
#print axioms cover_1555140

def state_1555139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 86)))
theorem cover_1555139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555139 := by
  apply coveredState_split_literal (state := state_1555139) 0
    state_1555140 state_1555205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555140
  · exact cover_1555205
#print axioms cover_1555139

def state_1555103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 86)))
theorem cover_1555103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555103 := by
  apply coveredState_split_literal (state := state_1555103) 3
    state_1555104 state_1555139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555104
  · exact cover_1555139
#print axioms cover_1555103
end Mub6.Numerical.CircleFullD0.Forest
