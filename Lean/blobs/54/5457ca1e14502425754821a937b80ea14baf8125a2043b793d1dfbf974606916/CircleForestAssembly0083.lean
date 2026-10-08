import CircleFullInterface
import CircleForestAssembly0082
import CircleForestChunk0332
import CircleForestChunk0333
import CircleForestChunk0334
import CircleForestChunk0335
import CircleForestChunk0336
import CircleForestChunk0337
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_155269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
theorem cover_155269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155269 := by
  apply coveredState_split_literal (state := state_155269) 3
    state_155270 state_155373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155270
  · exact cover_155373
#print axioms cover_155269

def state_155225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
theorem cover_155225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155225 := by
  apply coveredState_split_literal (state := state_155225) 0
    state_155226 state_155269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155226
  · exact cover_155269
#print axioms cover_155225

def state_155224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_155224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155224 := by
  apply coveredState_split_literal (state := state_155224) 4
    state_155225 state_155498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155225
  · exact cover_155498
#print axioms cover_155224

def state_155223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_155223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155223 := by
  apply coveredState_split_literal (state := state_155223) 3
    state_155224 state_155511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155224
  · exact cover_155511
#print axioms cover_155223

def state_155528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_155528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155528 := by
  apply coveredState_split_literal (state := state_155528) 3
    state_155529 state_155586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155529
  · exact cover_155586
#print axioms cover_155528

def state_155222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_155222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155222 := by
  apply coveredState_split_literal (state := state_155222) 2
    state_155223 state_155528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155223
  · exact cover_155528
#print axioms cover_155222

def state_155106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_155106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155106 := by
  apply coveredState_split_literal (state := state_155106) 1
    state_155107 state_155222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155107
  · exact cover_155222
#print axioms cover_155106

def state_155611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_155611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155611 := by
  apply coveredState_split_literal (state := state_155611) 3
    state_155612 state_155649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155612
  · exact cover_155649
#print axioms cover_155611

def state_155610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_155610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155610 := by
  apply coveredState_split_literal (state := state_155610) 2
    state_155611 state_155686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155611
  · exact cover_155686
#print axioms cover_155610

def state_155712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
theorem cover_155712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155712 := by
  apply coveredState_split_literal (state := state_155712) 3
    state_155713 state_155740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155713
  · exact cover_155740
#print axioms cover_155712

def state_155711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_155711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155711 := by
  apply coveredState_split_literal (state := state_155711) 4
    state_155712 state_155793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155712
  · exact cover_155793
#print axioms cover_155711

def state_155710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_155710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155710 := by
  apply coveredState_split_literal (state := state_155710) 3
    state_155711 state_155844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155711
  · exact cover_155844
#print axioms cover_155710

def state_155709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_155709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155709 := by
  apply coveredState_split_literal (state := state_155709) 2
    state_155710 state_155873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155710
  · exact cover_155873
#print axioms cover_155709

def state_155609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_155609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155609 := by
  apply coveredState_split_literal (state := state_155609) 1
    state_155610 state_155709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155610
  · exact cover_155709
#print axioms cover_155609

def state_155105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_155105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155105 := by
  apply coveredState_split_literal (state := state_155105) 0
    state_155106 state_155609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155106
  · exact cover_155609
#print axioms cover_155105

def state_156010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_156010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156010 := by
  apply coveredState_split_literal (state := state_156010) 0
    state_156011 state_156060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156011
  · exact cover_156060
#print axioms cover_156010

def state_155996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 6)))
theorem cover_155996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155996 := by
  apply coveredState_split_literal (state := state_155996) 4
    state_155997 state_156010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155997
  · exact cover_156010
#print axioms cover_155996

def state_155982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
theorem cover_155982 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155982 := by
  apply coveredState_split_literal (state := state_155982) 3
    state_155983 state_155996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155983
  · exact cover_155996
#print axioms cover_155982

def state_155974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_155974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155974 := by
  apply coveredState_split_literal (state := state_155974) 2
    state_155975 state_155982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155975
  · exact cover_155982
#print axioms cover_155974

def state_155973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_155973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155973 := by
  apply coveredState_split_literal (state := state_155973) 1
    state_155974 state_156079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155974
  · exact cover_156079
#print axioms cover_155973

def state_155972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_155972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155972 := by
  apply coveredState_split_literal (state := state_155972) 0
    state_155973 state_156084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155973
  · exact cover_156084
#print axioms cover_155972

def state_155971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_155971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155971 := by
  apply coveredState_split_literal (state := state_155971) 4
    state_155972 state_156103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155972
  · exact cover_156103
#print axioms cover_155971

def state_156140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_156140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156140 := by
  apply coveredState_split_literal (state := state_156140) 0
    state_156141 state_156204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156141
  · exact cover_156204
#print axioms cover_156140

def state_156138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_156138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156138 := by
  apply coveredState_split_literal (state := state_156138) 4
    state_156139 state_156140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156139
  · exact cover_156140
#print axioms cover_156138

def state_155970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_155970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155970 := by
  apply coveredState_split_literal (state := state_155970) 3
    state_155971 state_156138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155971
  · exact cover_156138
#print axioms cover_155970

def state_155938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_155938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155938 := by
  apply coveredState_split_literal (state := state_155938) 2
    state_155939 state_155970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155939
  · exact cover_155970
#print axioms cover_155938

def state_155937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_155937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155937 := by
  apply coveredState_split_literal (state := state_155937) 1
    state_155938 state_156219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155938
  · exact cover_156219
#print axioms cover_155937

def state_156275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_156275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156275 := by
  apply coveredState_split_literal (state := state_156275) 2
    state_156276 state_156305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156276
  · exact cover_156305
#print axioms cover_156275

def state_156274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_156274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156274 := by
  apply coveredState_split_literal (state := state_156274) 1
    state_156275 state_156346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156275
  · exact cover_156346
#print axioms cover_156274

def state_156273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_156273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156273 := by
  apply coveredState_split_literal (state := state_156273) 4
    state_156274 state_156347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156274
  · exact cover_156347
#print axioms cover_156273

def state_156247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_156247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156247 := by
  apply coveredState_split_literal (state := state_156247) 3
    state_156248 state_156273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156248
  · exact cover_156273
#print axioms cover_156247

def state_156229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_156229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156229 := by
  apply coveredState_split_literal (state := state_156229) 2
    state_156230 state_156247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156230
  · exact cover_156247
#print axioms cover_156229
end Mub6.Numerical.CircleFullPrototype.Forest
