import CircleFullInterface
import CircleForestAssembly0044
import CircleForestAssembly0074
import CircleForestAssembly0079
import CircleForestAssembly0083
import CircleForestChunk0316
import CircleForestChunk0336
import CircleForestChunk0337
import CircleForestChunk0338
import CircleForestChunk0339
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1018068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 10)))
theorem cover_1018068 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018068 := by
  apply coveredState_split_literal (state := state_1018068) 3
    state_1018069 state_1018082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018069
  · exact cover_1018082
#print axioms cover_1018068

def state_1018067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 10)))
theorem cover_1018067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018067 := by
  apply coveredState_split_literal (state := state_1018067) 1
    state_1018068 state_1018197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018068
  · exact cover_1018197
#print axioms cover_1018067

def state_1018307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 88 else (if j.val < 4 then 63 else 44)))
theorem cover_1018307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018307 := by
  apply coveredState_split_literal (state := state_1018307) 4
    state_1018308 state_1018365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018308
  · exact cover_1018365
#print axioms cover_1018307

def state_1018306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 44)))
theorem cover_1018306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018306 := by
  apply coveredState_split_literal (state := state_1018306) 2
    state_1018307 state_1018384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018307
  · exact cover_1018384
#print axioms cover_1018306

def state_1018304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 44)))
theorem cover_1018304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018304 := by
  apply coveredState_split_literal (state := state_1018304) 0
    state_1018305 state_1018306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018305
  · exact cover_1018306
#print axioms cover_1018304

def state_1018268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 44)))
theorem cover_1018268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018268 := by
  apply coveredState_split_literal (state := state_1018268) 3
    state_1018269 state_1018304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018269
  · exact cover_1018304
#print axioms cover_1018268

def state_1018266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 44)))
theorem cover_1018266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018266 := by
  apply coveredState_split_literal (state := state_1018266) 1
    state_1018267 state_1018268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018267
  · exact cover_1018268
#print axioms cover_1018266

def state_1018265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 22)))
theorem cover_1018265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018265 := by
  apply coveredState_split_literal (state := state_1018265) 4
    state_1018266 state_1018401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018266
  · exact cover_1018401
#print axioms cover_1018265

def state_1018264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
theorem cover_1018264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018264 := by
  apply coveredState_split_literal (state := state_1018264) 2
    state_1018265 state_1018402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018265
  · exact cover_1018402
#print axioms cover_1018264

def state_1018262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
theorem cover_1018262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018262 := by
  apply coveredState_split_literal (state := state_1018262) 0
    state_1018263 state_1018264
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018263
  · exact cover_1018264
#print axioms cover_1018262

def state_1018242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 22)))
theorem cover_1018242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018242 := by
  apply coveredState_split_literal (state := state_1018242) 3
    state_1018243 state_1018262
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018243
  · exact cover_1018262
#print axioms cover_1018242

def state_1018415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
theorem cover_1018415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018415 := by
  apply coveredState_split_literal (state := state_1018415) 2
    state_1018416 state_1018467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018416
  · exact cover_1018467
#print axioms cover_1018415

def state_1018409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
theorem cover_1018409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018409 := by
  apply coveredState_split_literal (state := state_1018409) 0
    state_1018410 state_1018415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018410
  · exact cover_1018415
#print axioms cover_1018409

def state_1018403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 22)))
theorem cover_1018403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018403 := by
  apply coveredState_split_literal (state := state_1018403) 3
    state_1018404 state_1018409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018404
  · exact cover_1018409
#print axioms cover_1018403

def state_1018241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 22)))
theorem cover_1018241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018241 := by
  apply coveredState_split_literal (state := state_1018241) 1
    state_1018242 state_1018403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018242
  · exact cover_1018403
#print axioms cover_1018241

def state_1018240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 11)))
theorem cover_1018240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018240 := by
  apply coveredState_split_literal (state := state_1018240) 4
    state_1018241 state_1018482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018241
  · exact cover_1018482
#print axioms cover_1018240

def state_1018239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 11)))
theorem cover_1018239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018239 := by
  apply coveredState_split_literal (state := state_1018239) 2
    state_1018240 state_1018491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018240
  · exact cover_1018491
#print axioms cover_1018239

def state_1018229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 11)))
theorem cover_1018229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018229 := by
  apply coveredState_split_literal (state := state_1018229) 0
    state_1018230 state_1018239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018230
  · exact cover_1018239
#print axioms cover_1018229

def state_1018203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
theorem cover_1018203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018203 := by
  apply coveredState_split_literal (state := state_1018203) 3
    state_1018204 state_1018229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018204
  · exact cover_1018229
#print axioms cover_1018203

def state_1018202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
theorem cover_1018202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018202 := by
  apply coveredState_split_literal (state := state_1018202) 1
    state_1018203 state_1018498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018203
  · exact cover_1018498
#print axioms cover_1018202

def state_1018066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 5)))
theorem cover_1018066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018066 := by
  apply coveredState_split_literal (state := state_1018066) 4
    state_1018067 state_1018202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018067
  · exact cover_1018202
#print axioms cover_1018066

def state_1013452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1013452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013452 := by
  apply coveredState_split_literal (state := state_1013452) 2
    state_1013453 state_1018066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013453
  · exact cover_1018066
#print axioms cover_1013452

def state_1013412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1013412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013412 := by
  apply coveredState_split_literal (state := state_1013412) 0
    state_1013413 state_1013452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013413
  · exact cover_1013452
#print axioms cover_1013412

def state_1013386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_1013386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013386 := by
  apply coveredState_split_literal (state := state_1013386) 4
    state_1013387 state_1013412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013387
  · exact cover_1013412
#print axioms cover_1013386

def state_1013286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_1013286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013286 := by
  apply coveredState_split_literal (state := state_1013286) 3
    state_1013287 state_1013386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013287
  · exact cover_1013386
#print axioms cover_1013286

def state_1008532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1008532 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008532 := by
  apply coveredState_split_literal (state := state_1008532) 2
    state_1008533 state_1013286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008533
  · exact cover_1013286
#print axioms cover_1008532

def state_980302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_980302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980302 := by
  apply coveredState_split_literal (state := state_980302) 1
    state_980303 state_1008532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980303
  · exact cover_1008532
#print axioms cover_980302

def state_980172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_980172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980172 := by
  apply coveredState_split_literal (state := state_980172) 0
    state_980173 state_980302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980173
  · exact cover_980302
#print axioms cover_980172

def state_1018553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_1018553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018553 := by
  apply coveredState_split_literal (state := state_1018553) 3
    state_1018554 state_1018617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018554
  · exact cover_1018617
#print axioms cover_1018553

def state_1018552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1018552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018552 := by
  apply coveredState_split_literal (state := state_1018552) 2
    state_1018553 state_1018626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018553
  · exact cover_1018626
#print axioms cover_1018552

def state_1018719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
theorem cover_1018719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018719 := by
  apply coveredState_split_literal (state := state_1018719) 3
    state_1018720 state_1018741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018720
  · exact cover_1018741
#print axioms cover_1018719

def state_1018843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 48)))
theorem cover_1018843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018843 := by
  apply coveredState_split_literal (state := state_1018843) 3
    state_1018844 state_1018877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018844
  · exact cover_1018877
#print axioms cover_1018843
end Mub6.Numerical.CircleFullD0.Forest
