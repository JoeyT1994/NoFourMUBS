import D0FullInterface
import D0ForestAssembly0287
import D0ForestChunk1104
import D0ForestChunk1107
import D0ForestChunk1108
import D0ForestChunk1109
import D0ForestChunk1110
import D0ForestChunk1111
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1566070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 42 else 45)))
theorem cover_1566070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566070 := by
  apply coveredState_split_literal (state := state_1566070) 2
    state_1566071 state_1566212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566071
  · exact cover_1566212
#print axioms cover_1566070

def state_1566275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 54 else (if j.val < 4 then 86 else 90)))
theorem cover_1566275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566275 := by
  apply coveredState_split_literal (state := state_1566275) 2
    state_1566276 state_1566319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566276
  · exact cover_1566319
#print axioms cover_1566275

def state_1566274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 90)))
theorem cover_1566274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566274 := by
  apply coveredState_split_literal (state := state_1566274) 3
    state_1566275 state_1566356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566275
  · exact cover_1566356
#print axioms cover_1566274

def state_1566363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 91)))
theorem cover_1566363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566363 := by
  apply coveredState_split_literal (state := state_1566363) 3
    state_1566364 state_1566425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566364
  · exact cover_1566425
#print axioms cover_1566363

def state_1566273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 45)))
theorem cover_1566273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566273 := by
  apply coveredState_split_literal (state := state_1566273) 4
    state_1566274 state_1566363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566274
  · exact cover_1566363
#print axioms cover_1566273

def state_1566221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 62) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 45)))
theorem cover_1566221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566221 := by
  apply coveredState_split_literal (state := state_1566221) 0
    state_1566222 state_1566273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566222
  · exact cover_1566273
#print axioms cover_1566221

def state_1566444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 63) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 45)))
theorem cover_1566444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566444 := by
  apply coveredState_split_literal (state := state_1566444) 0
    state_1566445 state_1566464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566445
  · exact cover_1566464
#print axioms cover_1566444

def state_1566220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 45)))
theorem cover_1566220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566220 := by
  apply coveredState_split_literal (state := state_1566220) 1
    state_1566221 state_1566444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566221
  · exact cover_1566444
#print axioms cover_1566220

def state_1566524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 62) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 45)))
theorem cover_1566524 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566524 := by
  apply coveredState_split_literal (state := state_1566524) 0
    state_1566525 state_1566536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566525
  · exact cover_1566536
#print axioms cover_1566524

def state_1566595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 63) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 45)))
theorem cover_1566595 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566595 := by
  apply coveredState_split_literal (state := state_1566595) 0
    state_1566596 state_1566609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566596
  · exact cover_1566609
#print axioms cover_1566595

def state_1566523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 45)))
theorem cover_1566523 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566523 := by
  apply coveredState_split_literal (state := state_1566523) 1
    state_1566524 state_1566595
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566524
  · exact cover_1566595
#print axioms cover_1566523

def state_1566219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 43 else 45)))
theorem cover_1566219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566219 := by
  apply coveredState_split_literal (state := state_1566219) 2
    state_1566220 state_1566523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566220
  · exact cover_1566523
#print axioms cover_1566219

def state_1566069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 45)))
theorem cover_1566069 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566069 := by
  apply coveredState_split_literal (state := state_1566069) 3
    state_1566070 state_1566219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566070
  · exact cover_1566219
#print axioms cover_1566069

def state_1565915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 22)))
theorem cover_1565915 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565915 := by
  apply coveredState_split_literal (state := state_1565915) 4
    state_1565916 state_1566069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565916
  · exact cover_1566069
#print axioms cover_1565915

def state_1566694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 43 else 45)))
theorem cover_1566694 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566694 := by
  apply coveredState_split_literal (state := state_1566694) 2
    state_1566695 state_1566758
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566695
  · exact cover_1566758
#print axioms cover_1566694

def state_1566684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 45)))
theorem cover_1566684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566684 := by
  apply coveredState_split_literal (state := state_1566684) 3
    state_1566685 state_1566694
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566685
  · exact cover_1566694
#print axioms cover_1566684

def state_1566670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 22)))
theorem cover_1566670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566670 := by
  apply coveredState_split_literal (state := state_1566670) 4
    state_1566671 state_1566684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566671
  · exact cover_1566684
#print axioms cover_1566670

def state_1565914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 22)))
theorem cover_1565914 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565914 := by
  apply coveredState_split_literal (state := state_1565914) 0
    state_1565915 state_1566670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565915
  · exact cover_1566670
#print axioms cover_1565914

def state_1565416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 22)))
theorem cover_1565416 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565416 := by
  apply coveredState_split_literal (state := state_1565416) 1
    state_1565417 state_1565914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565417
  · exact cover_1565914
#print axioms cover_1565416

def state_1565382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 22)))
theorem cover_1565382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565382 := by
  apply coveredState_split_literal (state := state_1565382) 3
    state_1565383 state_1565416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565383
  · exact cover_1565416
#print axioms cover_1565382

def state_1559962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 22)))
theorem cover_1559962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559962 := by
  apply coveredState_split_literal (state := state_1559962) 2
    state_1559963 state_1565382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559963
  · exact cover_1565382
#print axioms cover_1559962

def state_1566884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 46)))
theorem cover_1566884 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566884 := by
  apply coveredState_split_literal (state := state_1566884) 2
    state_1566885 state_1566896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566885
  · exact cover_1566896
#print axioms cover_1566884

def state_1566883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 46)))
theorem cover_1566883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566883 := by
  apply coveredState_split_literal (state := state_1566883) 0
    state_1566884 state_1566953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566884
  · exact cover_1566953
#print axioms cover_1566883

def state_1566882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 23)))
theorem cover_1566882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566882 := by
  apply coveredState_split_literal (state := state_1566882) 4
    state_1566883 state_1566974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566883
  · exact cover_1566974
#print axioms cover_1566882

def state_1566842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 23)))
theorem cover_1566842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566842 := by
  apply coveredState_split_literal (state := state_1566842) 1
    state_1566843 state_1566882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566843
  · exact cover_1566882
#print axioms cover_1566842

def state_1566786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 23)))
theorem cover_1566786 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566786 := by
  apply coveredState_split_literal (state := state_1566786) 3
    state_1566787 state_1566842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1566787
  · exact cover_1566842
#print axioms cover_1566786

def state_1567104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 63) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 46)))
theorem cover_1567104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567104 := by
  apply coveredState_split_literal (state := state_1567104) 4
    state_1567105 state_1567166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567105
  · exact cover_1567166
#print axioms cover_1567104

def state_1567080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 46)))
theorem cover_1567080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567080 := by
  apply coveredState_split_literal (state := state_1567080) 1
    state_1567081 state_1567104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567081
  · exact cover_1567104
#print axioms cover_1567080

def state_1567196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 63) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 92)))
theorem cover_1567196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567196 := by
  apply coveredState_split_literal (state := state_1567196) 0
    state_1567197 state_1567202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567197
  · exact cover_1567202
#print axioms cover_1567196

def state_1567195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 63) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 46)))
theorem cover_1567195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567195 := by
  apply coveredState_split_literal (state := state_1567195) 4
    state_1567196 state_1567261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567196
  · exact cover_1567261
#print axioms cover_1567195

def state_1567183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 46)))
theorem cover_1567183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567183 := by
  apply coveredState_split_literal (state := state_1567183) 1
    state_1567184 state_1567195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567184
  · exact cover_1567195
#print axioms cover_1567183

def state_1567079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 43 else 46)))
theorem cover_1567079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567079 := by
  apply coveredState_split_literal (state := state_1567079) 2
    state_1567080 state_1567183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567080
  · exact cover_1567183
#print axioms cover_1567079
end Mub6.Numerical.CircleFullD0.Forest
