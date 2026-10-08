import CircleFullInterface
import CircleForestAssembly0165
import CircleForestChunk0646
import CircleForestChunk0647
import CircleForestChunk0648
import CircleForestChunk0649
import CircleForestChunk0650
import CircleForestChunk0651
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_760948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_760948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760948 := by
  apply coveredState_split_literal (state := state_760948) 2
    state_760949 state_760976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760949
  · exact cover_760976
#print axioms cover_760948

def state_761062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
theorem cover_761062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761062 := by
  apply coveredState_split_literal (state := state_761062) 1
    state_761063 state_761110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761063
  · exact cover_761110
#print axioms cover_761062

def state_761044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_761044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761044 := by
  apply coveredState_split_literal (state := state_761044) 4
    state_761045 state_761062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761045
  · exact cover_761062
#print axioms cover_761044

def state_761043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_761043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761043 := by
  apply coveredState_split_literal (state := state_761043) 3
    state_761044 state_761137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761044
  · exact cover_761137
#print axioms cover_761043

def state_761021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_761021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761021 := by
  apply coveredState_split_literal (state := state_761021) 2
    state_761022 state_761043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761022
  · exact cover_761043
#print axioms cover_761021

def state_760947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_760947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760947 := by
  apply coveredState_split_literal (state := state_760947) 1
    state_760948 state_761021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760948
  · exact cover_761021
#print axioms cover_760947

def state_761188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
theorem cover_761188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761188 := by
  apply coveredState_split_literal (state := state_761188) 0
    state_761189 state_761238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761189
  · exact cover_761238
#print axioms cover_761188

def state_761174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_761174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761174 := by
  apply coveredState_split_literal (state := state_761174) 4
    state_761175 state_761188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761175
  · exact cover_761188
#print axioms cover_761174

def state_761173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_761173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761173 := by
  apply coveredState_split_literal (state := state_761173) 3
    state_761174 state_761267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761174
  · exact cover_761267
#print axioms cover_761173

def state_761147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_761147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761147 := by
  apply coveredState_split_literal (state := state_761147) 2
    state_761148 state_761173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761148
  · exact cover_761173
#print axioms cover_761147

def state_761328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 7)))
theorem cover_761328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761328 := by
  apply coveredState_split_literal (state := state_761328) 2
    state_761329 state_761350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761329
  · exact cover_761350
#print axioms cover_761328

def state_761433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 15)))
theorem cover_761433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761433 := by
  apply coveredState_split_literal (state := state_761433) 0
    state_761434 state_761449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761434
  · exact cover_761449
#print axioms cover_761433

def state_761419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 7)))
theorem cover_761419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761419 := by
  apply coveredState_split_literal (state := state_761419) 4
    state_761420 state_761433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761420
  · exact cover_761433
#print axioms cover_761419

def state_761401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 7)))
theorem cover_761401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761401 := by
  apply coveredState_split_literal (state := state_761401) 2
    state_761402 state_761419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761402
  · exact cover_761419
#print axioms cover_761401

def state_761327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
theorem cover_761327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761327 := by
  apply coveredState_split_literal (state := state_761327) 3
    state_761328 state_761401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761328
  · exact cover_761401
#print axioms cover_761327

def state_761326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
theorem cover_761326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761326 := by
  apply coveredState_split_literal (state := state_761326) 1
    state_761327 state_761504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761327
  · exact cover_761504
#print axioms cover_761326

def state_761325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
theorem cover_761325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761325 := by
  apply coveredState_split_literal (state := state_761325) 0
    state_761326 state_761527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761326
  · exact cover_761527
#print axioms cover_761325

def state_761317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_761317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761317 := by
  apply coveredState_split_literal (state := state_761317) 4
    state_761318 state_761325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761318
  · exact cover_761325
#print axioms cover_761317

def state_761316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_761316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761316 := by
  apply coveredState_split_literal (state := state_761316) 3
    state_761317 state_761558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761317
  · exact cover_761558
#print axioms cover_761316

def state_761276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_761276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761276 := by
  apply coveredState_split_literal (state := state_761276) 2
    state_761277 state_761316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761277
  · exact cover_761316
#print axioms cover_761276

def state_761146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_761146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761146 := by
  apply coveredState_split_literal (state := state_761146) 1
    state_761147 state_761276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761147
  · exact cover_761276
#print axioms cover_761146

def state_760946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_760946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760946 := by
  apply coveredState_split_literal (state := state_760946) 0
    state_760947 state_761146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760947
  · exact cover_761146
#print axioms cover_760946

def state_760884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_760884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760884 := by
  apply coveredState_split_literal (state := state_760884) 4
    state_760885 state_760946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760885
  · exact cover_760946
#print axioms cover_760884

def state_760124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_760124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760124 := by
  apply coveredState_split_literal (state := state_760124) 3
    state_760125 state_760884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760125
  · exact cover_760884
#print axioms cover_760124

def state_759586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_759586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759586 := by
  apply coveredState_split_literal (state := state_759586) 2
    state_759587 state_760124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759587
  · exact cover_760124
#print axioms cover_759586

def state_761623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_761623 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761623 := by
  apply coveredState_split_literal (state := state_761623) 1
    state_761624 state_761671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761624
  · exact cover_761671
#print axioms cover_761623

def state_761622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_761622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761622 := by
  apply coveredState_split_literal (state := state_761622) 0
    state_761623 state_761688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761623
  · exact cover_761688
#print axioms cover_761622

def state_761621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_761621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761621 := by
  apply coveredState_split_literal (state := state_761621) 4
    state_761622 state_761733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761622
  · exact cover_761733
#print axioms cover_761621

def state_761906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
theorem cover_761906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761906 := by
  apply coveredState_split_literal (state := state_761906) 1
    state_761907 state_761962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761907
  · exact cover_761962
#print axioms cover_761906

def state_761905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 10)))
theorem cover_761905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761905 := by
  apply coveredState_split_literal (state := state_761905) 2
    state_761906 state_761977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761906
  · exact cover_761977
#print axioms cover_761905

def state_761904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 10)))
theorem cover_761904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761904 := by
  apply coveredState_split_literal (state := state_761904) 0
    state_761905 state_761990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761905
  · exact cover_761990
#print axioms cover_761904

def state_762007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_762007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762007 := by
  apply coveredState_split_literal (state := state_762007) 0
    state_762008 state_762061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762008
  · exact cover_762061
#print axioms cover_762007
end Mub6.Numerical.CircleFullPrototype.Forest
