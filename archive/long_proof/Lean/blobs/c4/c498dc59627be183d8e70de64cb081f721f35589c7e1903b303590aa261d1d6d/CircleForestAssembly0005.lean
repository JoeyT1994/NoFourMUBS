import CircleFullInterface
import CircleForestAssembly0004
import CircleForestChunk0024
import CircleForestChunk0025
import CircleForestChunk0026
import CircleForestChunk0027
import CircleForestChunk0028
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_162165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 13)))
theorem cover_162165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162165 := by
  apply coveredState_split_literal (state := state_162165) 0
    state_162166 state_163153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162166
  · exact cover_163153
#print axioms cover_162165

def state_162164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 13)))
theorem cover_162164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162164 := by
  apply coveredState_split_literal (state := state_162164) 2
    state_162165 state_163198
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162165
  · exact cover_163198
#print axioms cover_162164

def state_162163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 13)))
theorem cover_162163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162163 := by
  apply coveredState_split_literal (state := state_162163) 1
    state_162164 state_163219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162164
  · exact cover_163219
#print axioms cover_162163

def state_162123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 6)))
theorem cover_162123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162123 := by
  apply coveredState_split_literal (state := state_162123) 4
    state_162124 state_162163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162124
  · exact cover_162163
#print axioms cover_162123

def state_162079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_162079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162079 := by
  apply coveredState_split_literal (state := state_162079) 3
    state_162080 state_162123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162080
  · exact cover_162123
#print axioms cover_162079

def state_162078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_162078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162078 := by
  apply coveredState_split_literal (state := state_162078) 0
    state_162079 state_163242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162079
  · exact cover_163242
#print axioms cover_162078

def state_162077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_162077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162077 := by
  apply coveredState_split_literal (state := state_162077) 4
    state_162078 state_163267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162078
  · exact cover_163267
#print axioms cover_162077

def state_162076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_162076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162076 := by
  apply coveredState_split_literal (state := state_162076) 3
    state_162077 state_163564
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162077
  · exact cover_163564
#print axioms cover_162076

def state_161868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_161868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161868 := by
  apply coveredState_split_literal (state := state_161868) 2
    state_161869 state_162076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161869
  · exact cover_162076
#print axioms cover_161868

def state_161084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_161084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161084 := by
  apply coveredState_split_literal (state := state_161084) 1
    state_161085 state_161868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161085
  · exact cover_161868
#print axioms cover_161084

def state_161083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_161083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161083 := by
  apply coveredState_split_literal (state := state_161083) 0
    state_161084 state_164133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161084
  · exact cover_164133
#print axioms cover_161083

def state_158759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_158759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158759 := by
  apply coveredState_split_literal (state := state_158759) 4
    state_158760 state_161083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158760
  · exact cover_161083
#print axioms cover_158759

def state_156397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_156397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156397 := by
  apply coveredState_split_literal (state := state_156397) 3
    state_156398 state_158759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156398
  · exact cover_158759
#print axioms cover_156397

def state_154925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_154925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154925 := by
  apply coveredState_split_literal (state := state_154925) 2
    state_154926 state_156397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154926
  · exact cover_156397
#print axioms cover_154925

def state_149231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_149231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149231 := by
  apply coveredState_split_literal (state := state_149231) 1
    state_149232 state_154925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149232
  · exact cover_154925
#print axioms cover_149231

def state_132167 : State := rootState
theorem cover_132167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132167 := by
  apply coveredState_split_literal (state := state_132167) 0
    state_132168 state_149231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132168
  · exact cover_149231
#print axioms cover_132167

def state_164413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_164413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164413 := by
  apply coveredState_split_literal (state := state_164413) 3
    state_164414 state_165049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164414
  · exact cover_165049
#print axioms cover_164413

def state_166520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 14)))
theorem cover_166520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166520 := by
  apply coveredState_split_literal (state := state_166520) 2
    state_166521 state_167168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166521
  · exact cover_167168
#print axioms cover_166520

def state_166519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
theorem cover_166519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166519 := by
  apply coveredState_split_literal (state := state_166519) 4
    state_166520 state_167605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166520
  · exact cover_167605
#print axioms cover_166519

def state_166379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
theorem cover_166379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166379 := by
  apply coveredState_split_literal (state := state_166379) 1
    state_166380 state_166519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166380
  · exact cover_166519
#print axioms cover_166379

def state_166273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
theorem cover_166273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166273 := by
  apply coveredState_split_literal (state := state_166273) 0
    state_166274 state_166379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166274
  · exact cover_166379
#print axioms cover_166273

def state_166235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 7)))
theorem cover_166235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166235 := by
  apply coveredState_split_literal (state := state_166235) 3
    state_166236 state_166273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166236
  · exact cover_166273
#print axioms cover_166235

def state_166234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_166234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166234 := by
  apply coveredState_split_literal (state := state_166234) 2
    state_166235 state_168334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166235
  · exact cover_168334
#print axioms cover_166234

def state_166132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_166132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166132 := by
  apply coveredState_split_literal (state := state_166132) 4
    state_166133 state_166234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166133
  · exact cover_166234
#print axioms cover_166132

def state_166114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_166114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166114 := by
  apply coveredState_split_literal (state := state_166114) 3
    state_166115 state_166132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166115
  · exact cover_166132
#print axioms cover_166114

def state_166113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_166113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166113 := by
  apply coveredState_split_literal (state := state_166113) 2
    state_166114 state_168421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166114
  · exact cover_168421
#print axioms cover_166113

def state_166112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_166112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166112 := by
  apply coveredState_split_literal (state := state_166112) 1
    state_166113 state_168696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166113
  · exact cover_168696
#print axioms cover_166112

def state_166111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_166111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166111 := by
  apply coveredState_split_literal (state := state_166111) 0
    state_166112 state_168835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166112
  · exact cover_168835
#print axioms cover_166111

def state_166001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_166001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166001 := by
  apply coveredState_split_literal (state := state_166001) 4
    state_166002 state_166111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166002
  · exact cover_166111
#print axioms cover_166001

def state_169474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_169474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169474 := by
  apply coveredState_split_literal (state := state_169474) 4
    state_169475 state_169802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169475
  · exact cover_169802
#print axioms cover_169474

def state_169446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_169446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169446 := by
  apply coveredState_split_literal (state := state_169446) 1
    state_169447 state_169474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169447
  · exact cover_169474
#print axioms cover_169446

def state_169410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_169410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169410 := by
  apply coveredState_split_literal (state := state_169410) 0
    state_169411 state_169446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169411
  · exact cover_169446
#print axioms cover_169410

def state_169409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 7)))
theorem cover_169409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169409 := by
  apply coveredState_split_literal (state := state_169409) 3
    state_169410 state_170657
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169410
  · exact cover_170657
#print axioms cover_169409

def state_169408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_169408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169408 := by
  apply coveredState_split_literal (state := state_169408) 2
    state_169409 state_170666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169409
  · exact cover_170666
#print axioms cover_169408

def state_169358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_169358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169358 := by
  apply coveredState_split_literal (state := state_169358) 4
    state_169359 state_169408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169359
  · exact cover_169408
#print axioms cover_169358

def state_169357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_169357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169357 := by
  apply coveredState_split_literal (state := state_169357) 3
    state_169358 state_170763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169358
  · exact cover_170763
#print axioms cover_169357

def state_169356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_169356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169356 := by
  apply coveredState_split_literal (state := state_169356) 2
    state_169357 state_170766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169357
  · exact cover_170766
#print axioms cover_169356

def state_169355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_169355 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169355 := by
  apply coveredState_split_literal (state := state_169355) 1
    state_169356 state_170841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169356
  · exact cover_170841
#print axioms cover_169355

def state_169354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_169354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169354 := by
  apply coveredState_split_literal (state := state_169354) 0
    state_169355 state_171640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169355
  · exact cover_171640
#print axioms cover_169354

def state_169284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_169284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169284 := by
  apply coveredState_split_literal (state := state_169284) 4
    state_169285 state_169354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169285
  · exact cover_169354
#print axioms cover_169284

def state_166000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_166000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166000 := by
  apply coveredState_split_literal (state := state_166000) 3
    state_166001 state_169284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_166001
  · exact cover_169284
#print axioms cover_166000

def state_164412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_164412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164412 := by
  apply coveredState_split_literal (state := state_164412) 2
    state_164413 state_166000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164413
  · exact cover_166000
#print axioms cover_164412

def state_172864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_172864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172864 := by
  apply coveredState_split_literal (state := state_172864) 1
    state_172865 state_173512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172865
  · exact cover_173512
#print axioms cover_172864

def state_172863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 11)))
theorem cover_172863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172863 := by
  apply coveredState_split_literal (state := state_172863) 3
    state_172864 state_173949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172864
  · exact cover_173949
#print axioms cover_172863

def state_172723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_172723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172723 := by
  apply coveredState_split_literal (state := state_172723) 2
    state_172724 state_172863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172724
  · exact cover_172863
#print axioms cover_172723

def state_172617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_172617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172617 := by
  apply coveredState_split_literal (state := state_172617) 0
    state_172618 state_172723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172618
  · exact cover_172723
#print axioms cover_172617

def state_172579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_172579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172579 := by
  apply coveredState_split_literal (state := state_172579) 4
    state_172580 state_172617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172580
  · exact cover_172617
#print axioms cover_172579

def state_172578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_172578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172578 := by
  apply coveredState_split_literal (state := state_172578) 1
    state_172579 state_174678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172579
  · exact cover_174678
#print axioms cover_172578

def state_172576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_172576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172576 := by
  apply coveredState_split_literal (state := state_172576) 4
    state_172577 state_172578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172577
  · exact cover_172578
#print axioms cover_172576

def state_172462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_172462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172462 := by
  apply coveredState_split_literal (state := state_172462) 3
    state_172463 state_172576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172463
  · exact cover_172576
#print axioms cover_172462

def state_172461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_172461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172461 := by
  apply coveredState_split_literal (state := state_172461) 2
    state_172462 state_174765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172462
  · exact cover_174765
#print axioms cover_172461

def state_172460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_172460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172460 := by
  apply coveredState_split_literal (state := state_172460) 1
    state_172461 state_174860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172461
  · exact cover_174860
#print axioms cover_172460

def state_172459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_172459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172459 := by
  apply coveredState_split_literal (state := state_172459) 0
    state_172460 state_175199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172460
  · exact cover_175199
#print axioms cover_172459

def state_175778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 12)))
theorem cover_175778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175778 := by
  apply coveredState_split_literal (state := state_175778) 3
    state_175779 state_176106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175779
  · exact cover_176106
#print axioms cover_175778

def state_175750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_175750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175750 := by
  apply coveredState_split_literal (state := state_175750) 2
    state_175751 state_175778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175751
  · exact cover_175778
#print axioms cover_175750

def state_175714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_175714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175714 := by
  apply coveredState_split_literal (state := state_175714) 0
    state_175715 state_175750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175715
  · exact cover_175750
#print axioms cover_175714

def state_175713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_175713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175713 := by
  apply coveredState_split_literal (state := state_175713) 4
    state_175714 state_176961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175714
  · exact cover_176961
#print axioms cover_175713

def state_175712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_175712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175712 := by
  apply coveredState_split_literal (state := state_175712) 1
    state_175713 state_176970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175713
  · exact cover_176970
#print axioms cover_175712

def state_175711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
theorem cover_175711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175711 := by
  apply coveredState_split_literal (state := state_175711) 4
    state_175712 state_177067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175712
  · exact cover_177067
#print axioms cover_175711

def state_175659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_175659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175659 := by
  apply coveredState_split_literal (state := state_175659) 3
    state_175660 state_175711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175660
  · exact cover_175711
#print axioms cover_175659

def state_175658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_175658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175658 := by
  apply coveredState_split_literal (state := state_175658) 2
    state_175659 state_177068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175659
  · exact cover_177068
#print axioms cover_175658

def state_175657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_175657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175657 := by
  apply coveredState_split_literal (state := state_175657) 1
    state_175658 state_177775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175658
  · exact cover_177775
#print axioms cover_175657

def state_175656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_175656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175656 := by
  apply coveredState_split_literal (state := state_175656) 0
    state_175657 state_177940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175657
  · exact cover_177940
#print axioms cover_175656

def state_172458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_172458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172458 := by
  apply coveredState_split_literal (state := state_172458) 4
    state_172459 state_175656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172459
  · exact cover_175656
#print axioms cover_172458
end Mub6.Numerical.CircleFullPrototype.Forest
