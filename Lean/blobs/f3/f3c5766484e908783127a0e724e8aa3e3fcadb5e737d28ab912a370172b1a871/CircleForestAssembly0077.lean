import CircleFullInterface
import CircleForestAssembly0066
import CircleForestAssembly0070
import CircleForestAssembly0074
import CircleForestAssembly0075
import CircleForestAssembly0076
import CircleForestChunk0307
import CircleForestChunk0308
import CircleForestChunk0309
import CircleForestChunk0310
import CircleForestChunk0311
import CircleForestChunk0312
import CircleForestChunk0313
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_147300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_147300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147300 := by
  apply coveredState_split_literal (state := state_147300) 2
    state_147301 state_147620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147301
  · exact cover_147620
#print axioms cover_147300

def state_146468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_146468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146468 := by
  apply coveredState_split_literal (state := state_146468) 1
    state_146469 state_147300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146469
  · exact cover_147300
#print axioms cover_146468

def state_146390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_146390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146390 := by
  apply coveredState_split_literal (state := state_146390) 0
    state_146391 state_146468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146391
  · exact cover_146468
#print axioms cover_146390

def state_142846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_142846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142846 := by
  apply coveredState_split_literal (state := state_142846) 4
    state_142847 state_146390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142847
  · exact cover_146390
#print axioms cover_142846

def state_139194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_139194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139194 := by
  apply coveredState_split_literal (state := state_139194) 3
    state_139195 state_142846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139195
  · exact cover_142846
#print axioms cover_139194

def state_138306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_138306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138306 := by
  apply coveredState_split_literal (state := state_138306) 2
    state_138307 state_139194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138307
  · exact cover_139194
#print axioms cover_138306

def state_132168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_132168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132168 := by
  apply coveredState_split_literal (state := state_132168) 1
    state_132169 state_138306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132169
  · exact cover_138306
#print axioms cover_132168

def state_149277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_149277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149277 := by
  apply coveredState_split_literal (state := state_149277) 1
    state_149278 state_149311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149278
  · exact cover_149311
#print axioms cover_149277

def state_149395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_149395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149395 := by
  apply coveredState_split_literal (state := state_149395) 4
    state_149396 state_149439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149396
  · exact cover_149439
#print axioms cover_149395

def state_149385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_149385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149385 := by
  apply coveredState_split_literal (state := state_149385) 3
    state_149386 state_149395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149386
  · exact cover_149395
#print axioms cover_149385

def state_149375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_149375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149375 := by
  apply coveredState_split_literal (state := state_149375) 2
    state_149376 state_149385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149376
  · exact cover_149385
#print axioms cover_149375

def state_149374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_149374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149374 := by
  apply coveredState_split_literal (state := state_149374) 1
    state_149375 state_149462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149375
  · exact cover_149462
#print axioms cover_149374

def state_149276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_149276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149276 := by
  apply coveredState_split_literal (state := state_149276) 0
    state_149277 state_149374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149277
  · exact cover_149374
#print axioms cover_149276

def state_149234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_149234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149234 := by
  apply coveredState_split_literal (state := state_149234) 4
    state_149235 state_149276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149235
  · exact cover_149276
#print axioms cover_149234

def state_149507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_149507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149507 := by
  apply coveredState_split_literal (state := state_149507) 2
    state_149508 state_149537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149508
  · exact cover_149537
#print axioms cover_149507

def state_149481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_149481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149481 := by
  apply coveredState_split_literal (state := state_149481) 1
    state_149482 state_149507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149482
  · exact cover_149507
#print axioms cover_149481

def state_149599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_149599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149599 := by
  apply coveredState_split_literal (state := state_149599) 3
    state_149600 state_149651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149600
  · exact cover_149651
#print axioms cover_149599

def state_149598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_149598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149598 := by
  apply coveredState_split_literal (state := state_149598) 2
    state_149599 state_149676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149599
  · exact cover_149676
#print axioms cover_149598

def state_149582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_149582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149582 := by
  apply coveredState_split_literal (state := state_149582) 1
    state_149583 state_149598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149583
  · exact cover_149598
#print axioms cover_149582

def state_149480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_149480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149480 := by
  apply coveredState_split_literal (state := state_149480) 0
    state_149481 state_149582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149481
  · exact cover_149582
#print axioms cover_149480

def state_149808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_149808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149808 := by
  apply coveredState_split_literal (state := state_149808) 2
    state_149809 state_149850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149809
  · exact cover_149850
#print axioms cover_149808

def state_150029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 13)))
theorem cover_150029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150029 := by
  apply coveredState_split_literal (state := state_150029) 4
    state_150030 state_150079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150030
  · exact cover_150079
#print axioms cover_150029

def state_150250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 27)))
theorem cover_150250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150250 := by
  apply coveredState_split_literal (state := state_150250) 4
    state_150251 state_150306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150251
  · exact cover_150306
#print axioms cover_150250

def state_150347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 55 else 27)))
theorem cover_150347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150347 := by
  apply coveredState_split_literal (state := state_150347) 4
    state_150348 state_150389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150348
  · exact cover_150389
#print axioms cover_150347

def state_150249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 27 else 27)))
theorem cover_150249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150249 := by
  apply coveredState_split_literal (state := state_150249) 3
    state_150250 state_150347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150250
  · exact cover_150347
#print axioms cover_150249

def state_150221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
theorem cover_150221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150221 := by
  apply coveredState_split_literal (state := state_150221) 2
    state_150222 state_150249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150222
  · exact cover_150249
#print axioms cover_150221

def state_150191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
theorem cover_150191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150191 := by
  apply coveredState_split_literal (state := state_150191) 1
    state_150192 state_150221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150192
  · exact cover_150221
#print axioms cover_150191

def state_150190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
theorem cover_150190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150190 := by
  apply coveredState_split_literal (state := state_150190) 0
    state_150191 state_150452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150191
  · exact cover_150452
#print axioms cover_150190

def state_150134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 13)))
theorem cover_150134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150134 := by
  apply coveredState_split_literal (state := state_150134) 4
    state_150135 state_150190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150135
  · exact cover_150190
#print axioms cover_150134

def state_150028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 13)))
theorem cover_150028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150028 := by
  apply coveredState_split_literal (state := state_150028) 3
    state_150029 state_150134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150029
  · exact cover_150134
#print axioms cover_150028

def state_150502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 13)))
theorem cover_150502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150502 := by
  apply coveredState_split_literal (state := state_150502) 4
    state_150503 state_150528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150503
  · exact cover_150528
#print axioms cover_150502

def state_150605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 54)))
theorem cover_150605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150605 := by
  apply coveredState_split_literal (state := state_150605) 0
    state_150606 state_150669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150606
  · exact cover_150669
#print axioms cover_150605
end Mub6.Numerical.CircleFullPrototype.Forest
