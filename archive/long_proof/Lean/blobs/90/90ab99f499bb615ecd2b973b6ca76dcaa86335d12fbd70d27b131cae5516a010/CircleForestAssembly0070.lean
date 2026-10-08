import CircleFullInterface
import CircleForestAssembly0066
import CircleForestAssembly0067
import CircleForestAssembly0068
import CircleForestAssembly0069
import CircleForestChunk0274
import CircleForestChunk0278
import CircleForestChunk0279
import CircleForestChunk0280
import CircleForestChunk0281
import CircleForestChunk0282
import CircleForestChunk0283
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_142301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 15)))
theorem cover_142301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142301 := by
  apply coveredState_split_literal (state := state_142301) 4
    state_142302 state_142535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142302
  · exact cover_142535
#print axioms cover_142301

def state_142300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 15)))
theorem cover_142300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142300 := by
  apply coveredState_split_literal (state := state_142300) 2
    state_142301 state_142562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142301
  · exact cover_142562
#print axioms cover_142300

def state_142299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 15)))
theorem cover_142299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142299 := by
  apply coveredState_split_literal (state := state_142299) 1
    state_142300 state_142581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142300
  · exact cover_142581
#print axioms cover_142299

def state_142634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 15)))
theorem cover_142634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142634 := by
  apply coveredState_split_literal (state := state_142634) 1
    state_142635 state_142698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142635
  · exact cover_142698
#print axioms cover_142634

def state_142298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 15)))
theorem cover_142298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142298 := by
  apply coveredState_split_literal (state := state_142298) 3
    state_142299 state_142634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142299
  · exact cover_142634
#print axioms cover_142298

def state_142294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 15)))
theorem cover_142294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142294 := by
  apply coveredState_split_literal (state := state_142294) 0
    state_142295 state_142298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142295
  · exact cover_142298
#print axioms cover_142294

def state_141392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 7)))
theorem cover_141392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141392 := by
  apply coveredState_split_literal (state := state_141392) 4
    state_141393 state_142294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141393
  · exact cover_142294
#print axioms cover_141392

def state_141391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_141391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141391 := by
  apply coveredState_split_literal (state := state_141391) 2
    state_141392 state_142727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141392
  · exact cover_142727
#print axioms cover_141391

def state_141390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_141390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141390 := by
  apply coveredState_split_literal (state := state_141390) 1
    state_141391 state_142742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141391
  · exact cover_142742
#print axioms cover_141390

def state_142761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 7)))
theorem cover_142761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142761 := by
  apply coveredState_split_literal (state := state_142761) 1
    state_142762 state_142823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142762
  · exact cover_142823
#print axioms cover_142761

def state_141389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_141389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141389 := by
  apply coveredState_split_literal (state := state_141389) 3
    state_141390 state_142761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141390
  · exact cover_142761
#print axioms cover_141389

def state_141363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_141363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141363 := by
  apply coveredState_split_literal (state := state_141363) 0
    state_141364 state_141389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141364
  · exact cover_141389
#print axioms cover_141363

def state_141329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_141329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141329 := by
  apply coveredState_split_literal (state := state_141329) 4
    state_141330 state_141363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141330
  · exact cover_141363
#print axioms cover_141329

def state_141197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_141197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141197 := by
  apply coveredState_split_literal (state := state_141197) 3
    state_141198 state_141329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141198
  · exact cover_141329
#print axioms cover_141197

def state_140357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_140357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140357 := by
  apply coveredState_split_literal (state := state_140357) 2
    state_140358 state_141197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140358
  · exact cover_141197
#print axioms cover_140357

def state_139475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_139475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139475 := by
  apply coveredState_split_literal (state := state_139475) 1
    state_139476 state_140357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139476
  · exact cover_140357
#print axioms cover_139475

def state_139295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_139295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139295 := by
  apply coveredState_split_literal (state := state_139295) 0
    state_139296 state_139475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139296
  · exact cover_139475
#print axioms cover_139295

def state_139195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_139195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139195 := by
  apply coveredState_split_literal (state := state_139195) 4
    state_139196 state_139295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139196
  · exact cover_139295
#print axioms cover_139195

def state_142899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_142899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142899 := by
  apply coveredState_split_literal (state := state_142899) 1
    state_142900 state_142959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142900
  · exact cover_142959
#print axioms cover_142899

def state_142898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_142898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142898 := by
  apply coveredState_split_literal (state := state_142898) 4
    state_142899 state_142968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142899
  · exact cover_142968
#print axioms cover_142898

def state_142897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_142897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142897 := by
  apply coveredState_split_literal (state := state_142897) 3
    state_142898 state_142985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142898
  · exact cover_142985
#print axioms cover_142897

def state_142849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_142849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142849 := by
  apply coveredState_split_literal (state := state_142849) 2
    state_142850 state_142897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142850
  · exact cover_142897
#print axioms cover_142849

def state_142848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_142848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142848 := by
  apply coveredState_split_literal (state := state_142848) 1
    state_142849 state_142996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142849
  · exact cover_142996
#print axioms cover_142848

def state_143030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_143030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143030 := by
  apply coveredState_split_literal (state := state_143030) 1
    state_143031 state_143074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143031
  · exact cover_143074
#print axioms cover_143030

def state_143101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_143101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143101 := by
  apply coveredState_split_literal (state := state_143101) 1
    state_143102 state_143121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143102
  · exact cover_143121
#print axioms cover_143101

def state_143029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_143029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143029 := by
  apply coveredState_split_literal (state := state_143029) 0
    state_143030 state_143101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143030
  · exact cover_143101
#print axioms cover_143029

def state_143028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_143028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143028 := by
  apply coveredState_split_literal (state := state_143028) 4
    state_143029 state_143172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143029
  · exact cover_143172
#print axioms cover_143028

def state_143330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 9)))
theorem cover_143330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143330 := by
  apply coveredState_split_literal (state := state_143330) 1
    state_143331 state_143366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143331
  · exact cover_143366
#print axioms cover_143330

def state_143329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 9)))
theorem cover_143329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143329 := by
  apply coveredState_split_literal (state := state_143329) 0
    state_143330 state_143405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143330
  · exact cover_143405
#print axioms cover_143329

def state_143319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 4)))
theorem cover_143319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143319 := by
  apply coveredState_split_literal (state := state_143319) 4
    state_143320 state_143329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143320
  · exact cover_143329
#print axioms cover_143319

def state_143318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 4)))
theorem cover_143318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143318 := by
  apply coveredState_split_literal (state := state_143318) 3
    state_143319 state_143460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143319
  · exact cover_143460
#print axioms cover_143318

def state_143306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
theorem cover_143306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143306 := by
  apply coveredState_split_literal (state := state_143306) 2
    state_143307 state_143318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143307
  · exact cover_143318
#print axioms cover_143306
end Mub6.Numerical.CircleFullPrototype.Forest
