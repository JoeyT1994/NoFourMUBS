import D0FullInterface
import D0ForestAssembly0142
import D0ForestChunk0554
import D0ForestChunk0555
import D0ForestChunk0556
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1322006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 44)))
theorem cover_1322006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322006 := by
  apply coveredState_split_literal (state := state_1322006) 1
    state_1322007 state_1322030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322007
  · exact cover_1322030
#print axioms cover_1322006

def state_1321994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 44)))
theorem cover_1321994 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321994 := by
  apply coveredState_split_literal (state := state_1321994) 3
    state_1321995 state_1322006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321995
  · exact cover_1322006
#print axioms cover_1321994

def state_1321980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 44)))
theorem cover_1321980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321980 := by
  apply coveredState_split_literal (state := state_1321980) 0
    state_1321981 state_1321994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321981
  · exact cover_1321994
#print axioms cover_1321980

def state_1321979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 22)))
theorem cover_1321979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321979 := by
  apply coveredState_split_literal (state := state_1321979) 4
    state_1321980 state_1322105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321980
  · exact cover_1322105
#print axioms cover_1321979

def state_1321969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 22)))
theorem cover_1321969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321969 := by
  apply coveredState_split_literal (state := state_1321969) 2
    state_1321970 state_1321979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321970
  · exact cover_1321979
#print axioms cover_1321969

def state_1321957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 22)))
theorem cover_1321957 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321957 := by
  apply coveredState_split_literal (state := state_1321957) 1
    state_1321958 state_1321969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321958
  · exact cover_1321969
#print axioms cover_1321957

def state_1321945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 22)))
theorem cover_1321945 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321945 := by
  apply coveredState_split_literal (state := state_1321945) 3
    state_1321946 state_1321957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321946
  · exact cover_1321957
#print axioms cover_1321945

def state_1321927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 22)))
theorem cover_1321927 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321927 := by
  apply coveredState_split_literal (state := state_1321927) 0
    state_1321928 state_1321945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321928
  · exact cover_1321945
#print axioms cover_1321927

def state_1321926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 11)))
theorem cover_1321926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321926 := by
  apply coveredState_split_literal (state := state_1321926) 4
    state_1321927 state_1322110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321927
  · exact cover_1322110
#print axioms cover_1321926

def state_1321916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
theorem cover_1321916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321916 := by
  apply coveredState_split_literal (state := state_1321916) 2
    state_1321917 state_1321926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321917
  · exact cover_1321926
#print axioms cover_1321916

def state_1321904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
theorem cover_1321904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321904 := by
  apply coveredState_split_literal (state := state_1321904) 1
    state_1321905 state_1321916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321905
  · exact cover_1321916
#print axioms cover_1321904

def state_1321244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 5)))
theorem cover_1321244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321244 := by
  apply coveredState_split_literal (state := state_1321244) 4
    state_1321245 state_1321904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321245
  · exact cover_1321904
#print axioms cover_1321244

def state_1322175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 21)))
theorem cover_1322175 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322175 := by
  apply coveredState_split_literal (state := state_1322175) 2
    state_1322176 state_1322193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322176
  · exact cover_1322193
#print axioms cover_1322175

def state_1322165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 21)))
theorem cover_1322165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322165 := by
  apply coveredState_split_literal (state := state_1322165) 1
    state_1322166 state_1322175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322166
  · exact cover_1322175
#print axioms cover_1322165

def state_1322163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 10)))
theorem cover_1322163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322163 := by
  apply coveredState_split_literal (state := state_1322163) 4
    state_1322164 state_1322165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322164
  · exact cover_1322165
#print axioms cover_1322163

def state_1322161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 10)))
theorem cover_1322161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322161 := by
  apply coveredState_split_literal (state := state_1322161) 0
    state_1322162 state_1322163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322162
  · exact cover_1322163
#print axioms cover_1322161

def state_1322160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 10)))
theorem cover_1322160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322160 := by
  apply coveredState_split_literal (state := state_1322160) 3
    state_1322161 state_1322256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322161
  · exact cover_1322256
#print axioms cover_1322160

def state_1322138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
theorem cover_1322138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322138 := by
  apply coveredState_split_literal (state := state_1322138) 2
    state_1322139 state_1322160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322139
  · exact cover_1322160
#print axioms cover_1322138

def state_1322118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
theorem cover_1322118 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322118 := by
  apply coveredState_split_literal (state := state_1322118) 1
    state_1322119 state_1322138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322119
  · exact cover_1322138
#print axioms cover_1322118

def state_1322327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 63) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 44)))
theorem cover_1322327 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322327 := by
  apply coveredState_split_literal (state := state_1322327) 2
    state_1322328 state_1322347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322328
  · exact cover_1322347
#print axioms cover_1322327

def state_1322313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 44)))
theorem cover_1322313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322313 := by
  apply coveredState_split_literal (state := state_1322313) 1
    state_1322314 state_1322327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322314
  · exact cover_1322327
#print axioms cover_1322313

def state_1322307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 44)))
theorem cover_1322307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322307 := by
  apply coveredState_split_literal (state := state_1322307) 0
    state_1322308 state_1322313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322308
  · exact cover_1322313
#print axioms cover_1322307

def state_1322306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 22)))
theorem cover_1322306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322306 := by
  apply coveredState_split_literal (state := state_1322306) 4
    state_1322307 state_1322404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322307
  · exact cover_1322404
#print axioms cover_1322306

def state_1322305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 22)))
theorem cover_1322305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322305 := by
  apply coveredState_split_literal (state := state_1322305) 3
    state_1322306 state_1322407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322306
  · exact cover_1322407
#print axioms cover_1322305

def state_1322293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 22)))
theorem cover_1322293 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322293 := by
  apply coveredState_split_literal (state := state_1322293) 2
    state_1322294 state_1322305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322294
  · exact cover_1322305
#print axioms cover_1322293

def state_1322283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 22)))
theorem cover_1322283 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322283 := by
  apply coveredState_split_literal (state := state_1322283) 1
    state_1322284 state_1322293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322284
  · exact cover_1322293
#print axioms cover_1322283

def state_1322277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 22)))
theorem cover_1322277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322277 := by
  apply coveredState_split_literal (state := state_1322277) 0
    state_1322278 state_1322283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322278
  · exact cover_1322283
#print axioms cover_1322277

def state_1322276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 11)))
theorem cover_1322276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322276 := by
  apply coveredState_split_literal (state := state_1322276) 4
    state_1322277 state_1322416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322277
  · exact cover_1322416
#print axioms cover_1322276

def state_1322275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 11)))
theorem cover_1322275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322275 := by
  apply coveredState_split_literal (state := state_1322275) 3
    state_1322276 state_1322419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322276
  · exact cover_1322419
#print axioms cover_1322275

def state_1322271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1322271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322271 := by
  apply coveredState_split_literal (state := state_1322271) 2
    state_1322272 state_1322275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322272
  · exact cover_1322275
#print axioms cover_1322271

def state_1322265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1322265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322265 := by
  apply coveredState_split_literal (state := state_1322265) 1
    state_1322266 state_1322271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322266
  · exact cover_1322271
#print axioms cover_1322265

def state_1322117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 5)))
theorem cover_1322117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322117 := by
  apply coveredState_split_literal (state := state_1322117) 4
    state_1322118 state_1322265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322118
  · exact cover_1322265
#print axioms cover_1322117
end Mub6.Numerical.CircleFullD0.Forest
